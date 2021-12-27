local autosave = require("autosave")

autosave.setup(
    {
        enabled= true,
        execution_message = "Saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        debounce_delay = 135
    }

)
