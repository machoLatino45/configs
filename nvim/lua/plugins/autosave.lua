local autosave = require("autosave")

autosave.setup(
    {
        enabled= true,
        execution_message = "",
        events = {"InsertLeave", "TextChanged"},
        debounce_delay = 135
    }

)
