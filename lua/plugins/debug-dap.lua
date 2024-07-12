return {
    'mfussenegger/nvim-dap',
    dependencies = {
        "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio"
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
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
            command = jit.os == 'Windows' and 'C:/Programs/netcoredbg/netcoredbg.exe' or '/user/local/bin/netcorebg',
            args = { '--interpreter=vscode' }
        }
        dap.configurations.cs = {
            {
                type = "coreclr",
                name = "launch - netcoredbg",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
                end,
            },
        }

        vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
        vim.keymap.set('n', '<Leader>d', dap.toggle_breakpoint, {})
        vim.keymap.set('n', '<Leader>dc', dap.continue, {})
    end
}
