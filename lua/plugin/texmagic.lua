require('texmagic').setup({
    engines = {
        pdflatex = {    -- This has the same name as a default engine but would
                        -- be preferred over the same-name default if defined
            executable = "tectonic",
            args = {
                "%f"
            },
            isContinuous = false
        },
        lualatex = {    -- This is *not* one of the defaults, but it can be
                        -- called via magic comment if defined here
            executable = "tectonic",
            args = {
                "%f"
            },
            isContinuous = false
        }
    }
})
