-----------------
---- WINDOWS ----
-----------------

-- Refer to https://wiki.hypr.land/configuring/core/config-options/
hl.config({
	general = {
		gaps_in = 7,
		gaps_out = 15,

		border_size = 2,

		col = {
			active_border = { colors = { "rgba(42FFB4ff)" } },
			inactive_border = "rgba(666666ff)",
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/configuring/extra/tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 5,
		rounding_power = 5,

		-- Change transparency of focused and unfocused windows
		active_opacity = 0.95,
		inactive_opacity = 0.8,

		shadow = {
			enabled = true,
			range = 20,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 12,
			passes = 3,
			vibrancy = 0.1696,
		},
	},
})
