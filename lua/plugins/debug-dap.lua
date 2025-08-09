return {
    'mfussenegger/nvim-dap',
    dependencies = {
        "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio", "Mofiqul/dracula.nvim"
    },
    config = function()
        local dap, dapui, colors = require("dap"), require("dapui"), require("dracula").colors()
        dapui.setup()
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
        dap.adapters.coreclr = {
            type = 'executable',
            command = jit.os == 'Windows' and 'netcoredbg' or '/user/local/bin/netcorebg',
            args = { '--interpreter=vscode' }
        }
        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
        };
        dap.configurations.rust = {
            {
                name = "Launch",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = "${workspaceFolder}",
                stopAtBeginningOfMainSubprogram = false,
            }
        }
        dap.configurations.cs = {
            {
                type = "coreclr",
                name = "launch - netcoredbg",
                request = "launch",
                console = 'integratedTerminal',
                program = function()
                    return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
                end,
            },
        }

        vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = colors.red, bg = colors.visual })
        vim.api.nvim_set_hl(0, 'DapLogPoint', { ctermbg = 0, fg = colors.blue, bg = colors.visual })
        vim.api.nvim_set_hl(0, 'DapStopped', { ctermbg = 0, fg = colors.green, bg = colors.visual })
        vim.fn.sign_define('DapBreakpoint', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
        vim.fn.sign_define('DapBreakpointCondition', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
        vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
        vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint', linehl='DapLogPoint', numhl= 'DapLogPoint' })
        vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='DapStopped', numhl= 'DapStopped' })

        vim.keymap.set('n', '<Leader>d', dap.toggle_breakpoint, { desc="Toggle debug breakpoint"})
        vim.keymap.set('n', '<Leader>dc', dap.continue, { desc = "Debug continue"})
    end
}
