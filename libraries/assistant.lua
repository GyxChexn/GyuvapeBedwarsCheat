local v = ...

local fn = cloneref or function(arg)
	return arg
end

local fn2 = isfile or function(arg)
	local ok, result = pcall(function()
		return readfile(arg)
	end)

	return ok and result ~= nil and result ~= ""
end

local v2 = fn(game:GetService("GuiService"))
local v3 = fn(game:GetService("RunService"))
local v4 = fn(game:GetService("UserInputService"))
local vape = v.vape
local addBlur = v.AddBlur
local addCorner = v.AddCorner
local addDragHandler = v.AddDragHandler
local addTooltip = v.AddTooltip
local clickGUI = v.ClickGUI
local color = v.Color
local getFeatureTag = v.GetFeatureTag
local getFontBounds = v.GetFontBounds
local getTableSize = v.GetTableSize
local getVapeAsset = v.GetVapeAsset
local gui = v.GUI
local isRendered = v.IsRendered
local loadJSON = v.LoadJSON
local removeTags = v.RemoveTags
local scale = v.Scale
local tween = v.Tween
local uiPallet = v.UIPallet
local writeJSON = v.WriteJSON

local function fn3()
	local assistant, scrollingFrame, tbl, key, fn4, tbl2, tbl3, tbl4, layoutOrder, tbl5
	local v5, n, n2, tbl6, tbl7, tbl8, tbl9, tbl10, tbl11, tbl12
	local fn5, fn6, fn7, fn8, fn9, fn10, fn11, fn12, fn13, fn14
	local fn15, fn16, fn17, fn18, fn19, fn20, fn21, fn22, fn23, fn24
	local fn25, fn26, fn27, fn28, fn29, fn30, fn31, tbl13, fn32, tbl14
	local fn33, fn34, fn35, fn36, fn37, fn38, createTextButton, fn39, fn40, fn41
	local fn42, fn43, fn44, fn45, fn46, fn47, fn48, fn49, fn50, fn51
	local fn52, fn53, fn54, fn55, fn56, fn57, fn58, fn59, fn60, fn61
	local fn62, fn63, fn64, fn65, fn66, fn67, tbl15, talk

	do
		assistant = nil
		scrollingFrame = nil
		tbl = nil
		key = nil
		fn4 = nil
		tbl2 = nil
		tbl3 = nil
		tbl4 = nil
		local v6 = nil
		local connection = nil
		local n3 = 0
		layoutOrder = 0
		tbl5 = {}
		local tbl16 = {}
		v5 = fn(game:GetService("Players"))
		n = 450
		local n4 = n - 40
		n2 = 60
		tbl6 = {}
		tbl7 = {}
		tbl8 = {}
		local tbl17 = {}
		local tbl18 = {}

		tbl9 = {
			aa = "AimAssist",
			ab = "AutoBuy",
			aura = "Killaura",
			aw = "AutoWin",
			hb = "HitBoxes",
			hj = "HighJump",
			ij = "InfiniteJump",
			inffly = "InfiniteFly",
			infjump = "InfiniteJump",
			ka = "Killaura",
			lj = "LongJump",
			namehider = "NickHider",
			nametag = "NameTags",
			nf = "NoFall",
			nuke = "Nuker",
			scaf = "Scaffold",
			scaff = "Scaffold",
			spd = "Speed",
			tracer = "Tracers",
			velo = "Velocity",
		}

		local tbl19 = { BedWars = { 2619619496 }, IllegalSoccer = { 126987974021910 }, TowerOfHell = { 703124385 } }

		local tbl20 = {
			Bind = "keybind",
			Button = "button",
			ColorSlider = "color picker",
			Font = "font picker",
			Targets = "target picker",
			TextBox = "text box",
			TextList = "list",
			Toggle = "toggle",
		}

		local tbl21 = {
			afk = "idle kick",
			aimbot = "aim lock",
			aimlock = "aim lock",
			bright = "fullbright brightness",
			click = "clicker cps",
			clip = "phase",
			colour = "color",
			config = "profile",
			cps = "clicker click",
			customise = "customize",
			dark = "fullbright brightness",
			enemy = "player target",
			enemies = "player target",
			fall = "nofall",
			fast = "speed",
			faster = "speed fast",
			quicker = "speed fast",
			pot = "potion buff",
			pots = "potion buff",
			favourite = "favorite",
			fight = "attack aura",
			hit = "attack",
			hitbox = "reach range",
			hotkey = "bind",
			hud = "overlay",
			idle = "afk",
			inv = "inventory",
			invis = "invisible",
			keybind = "bind",
			kill = "attack aura",
			knock = "knockback",
			knocked = "knockback",
			lag = "fps",
			lagged = "lagback",
			move = "movement",
			movement = "move",
			noclip = "phase",
			skip = "dodge leave avoid",
			pixelated = "blurry blur texture textures quality",
			res = "texture textures quality",
			pinged = "notify notification alert alarm",
			notified = "notify notification alert alarm",
			yt = "record recording",
			less = "reduce reduces lower",
			people = "player",
			preset = "profile",
			quick = "speed",
			reach = "range hitbox",
			see = "esp render",
			spam = "spammer",
			teleport = "tp",
			tp = "teleport",
			wall = "esp chams xray",
			zoom = "fov",
		}

		local tbl22 = { "it", "its", "this", "that", "them", "they" }
		local tbl23 = { "how", "what", "whats", "why", "when", "which", "should", "does", "if", "is" }

		tbl10 = {
			"bind",
			"binds",
			"bound",
			"keybind",
			"keybinds",
			"hotkey",
			"hotkeys",
			"key",
			"keys",
			"shortcut",
			"binding",
			"unbind",
			"rebind",
		}

		local tbl24 = { "favorite", "favourite", "favorites", "favourites", "favorited", "unfavorite", "star" }
		local tbl25 = { "hide", "hidden", "unhide", "hiding" }
		local tbl26 = { "where", "find", "locate", "located", "category", "window" }
		tbl11 = { "setting", "settings", "option", "options", "config", "configure", "customize", "customise" }

		local tbl27 = {
			"target",
			"targets",
			"targeting",
			"npc",
			"npcs",
			"mob",
			"mobs",
			"player",
			"players",
			"invisible",
			"wall",
			"walls",
			"priority",
		}

		local tbl28 = { "difference", "different", "compare", "vs", "versus", "better", "or" }
		local tbl29 = { "list", "modules", "module", "mods", "in", "all" }

		local tbl30 = {
			"can you ",
			"could you ",
			"can u ",
			"could u ",
			"can ya ",
			"would you ",
			"would u ",
			"will you ",
			"will u ",
			"please ",
			"pls ",
			"plz ",
			"i want you to ",
			"i need you to ",
			"i need to ",
			"i want to ",
		}

		local tbl31 = {
			["0"] = "Zero",
			["1"] = "One",
			["2"] = "Two",
			["3"] = "Three",
			["4"] = "Four",
			["5"] = "Five",
			["6"] = "Six",
			["7"] = "Seven",
			["8"] = "Eight",
			["9"] = "Nine",
			alt = "LeftAlt",
			caps = "CapsLock",
			control = "LeftControl",
			ctrl = "LeftControl",
			del = "Delete",
			enter = "Return",
			esc = "Escape",
			lalt = "LeftAlt",
			lctrl = "LeftControl",
			lshift = "LeftShift",
			ralt = "RightAlt",
			rctrl = "RightControl",
			rshift = "RightShift",
			shift = "LeftShift",
		}

		local tbl32 = {
			["0"] = false,
			["1"] = true,
			["false"] = false,
			["true"] = true,
			disable = false,
			disabled = false,
			enable = true,
			enabled = true,
			no = false,
			off = false,
			on = true,
			yes = true,
		}

		tbl12 = {
			black = { 0, 0, 0 },
			blue = { 0.62, 1, 1 },
			cyan = { 0.5, 1, 1 },
			gray = { 0, 0, 0.5 },
			green = { 0.33, 1, 1 },
			grey = { 0, 0, 0.5 },
			lime = { 0.25, 1, 1 },
			orange = { 0.08, 1, 1 },
			pink = { 0.9, 0.55, 1 },
			purple = { 0.78, 1, 1 },
			red = { 0, 1, 1 },
			white = { 0, 0, 1 },
			yellow = { 0.16, 1, 1 },
		}

		local tbl33 = { Profiles = { "Sync to current profile", "Reset current profile", "Export config" } }
		local tbl34 = { General = { "Self destruct", "Reinject" }, GUI = { "Reset GUI positions", "Sort GUI" } }

		for match in ("a an the is are was were be been being am i im ive me my mine you your youre u ur we our it its this that these those do does did doing done to of in on at by for from with and or but if so as than then there here what whats which who whom where wheres when why how can could should would will shall may might must get got gets make makes please pls plz just really very some any much many more most want wanna need know tell explain about into out up down use using used work works working catvape vape cat module modules thing things something anything stuff way able let lets go also like still show shows not no dont doesnt isnt cant wont"):gmatch("%S+") do
			tbl6[match] = true
		end

		fn5 = function(a)return(a:lower():gsub("\226\128\153",""):gsub("'",""):gsub("[^%w]+"," "):match("^%s*(.-)%s*$"));end
		fn6 = function(a)a=if#(if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a)>5 and(if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a):sub(-3)=="ing"then((if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a):sub(1,-4))else if#(if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a)>4 and(if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a):sub(-2)=="ed"and(if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a):sub(-3)~="eed"then((if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a):sub(1,-3))else if#a>3 and a:sub(-1)=="s"and a:sub(-2)~="ss"then(a:sub(1,-2))else a;return if#a>3 and a:sub(-1)=="e"then(a:sub(1,-2))else a;end

		fn7 = function(arg)
			return (arg:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
		end

		fn8 = function(...) end

		fn9 = function(arg)
			local max = math.max
			local value = vape.GUIColor.Value
			return (("<font color=\"#%*\">%*</font>"):format(Color3.fromHSV(vape.GUIColor.Hue, math.min(vape.GUIColor.Sat, 0.7), max(value, 0.85)):ToHex(), arg))
		end

		fn10 = function(arg)
			local match = arg:match("^[^\n]*")
			local match2 = match:match("^(.-[%.!?])%s") or match
			return #match2 > 110 and ("%*..."):format(match2:sub(1, 107)) or match2
		end

		fn11 = function(arg, arg2)
			if arg2 < #arg then
				return (("%* and %* more"):format(table.concat(arg, ", ", 1, arg2), #arg - arg2))
			end

			if #arg > 1 then
				local v7 = arg[#arg]
				return (("%* and %*"):format(table.concat(arg, ", ", 1, #arg - 1), v7))
			end
			return arg[1] or ""
		end

		fn12 = function(arg)
			return typeof(arg) == "number" and tostring(math.round(arg * 100) / 100) or tostring(arg)
		end

		local function fn68(arg)
			return arg and #arg > 0 and table.concat(arg, " + ") or nil
		end

		fn13 = function()
			return v4.TouchEnabled and not v4.KeyboardEnabled
		end

		local function fn69(arg, arg2)
			for _, v7 in arg2, nil, nil do
				if arg[v7] then
					return true
				end
			end

			return false
		end

		fn14 = function(arg)
			return (arg:lower():gsub("[^%w]", ""))
		end

		fn15 = function(arg)
			return (arg:gsub("(%l)(%u)", "%1 %2"):gsub("(%u)(%u%l)", "%1 %2"))
		end

		fn16 = function(...) end

		for k, v7 in tbl21, nil, nil do
			local tbl35 = {}
			fn16(tbl35, v7, 1)
			local v8 = fn6(k)
			tbl7[v8] = tbl7[v8] or {}

			for k2 in tbl35, nil, nil do
				table.insert(tbl7[v8], k2)
			end
		end

		fn16(tbl8, "setting settings option options config configure customize customise change set adjust tweak value mean means bind keybind hotkey shortcut key favorite favourite star hide hidden unhide where find locate located category window open turn enable disable toggle off good best recommend error broken bug crash", 1)

		local function fn70(arg)
			local tbl35 = {}

			if arg.OptionSpecs then
				for _, v7 in arg.OptionSpecs, nil, nil do
					local settings = v7.Settings

					if v7.Type == "Targets" then
						table.insert(tbl35, { Name = "Target", Option = arg.Options.Targets, Settings = settings, Type = v7.Type })
					elseif typeof(settings.Name) == "string" and v7.Type ~= "Divider" then
						table.insert(tbl35, { Name = settings.Name, Option = arg.Options[settings.Name], Settings = settings, Type = v7.Type })
					end
				end
			else
				for k, v7 in arg.Options, nil, nil do
					table.insert(tbl35, { Name = k, Option = v7, Settings = {}, Type = v7.Type })
				end

				table.sort(tbl35, function(arg2, arg3)
					return arg2.Name < arg3.Name
				end)
			end

			return tbl35
		end

		local function fn71(...) end

		local function fn72()
			tbl = { Entries = {}, Frequency = {}, Keys = {}, Options = {}, Size = fn71() }

			local function fn73(arg, arg2)
				local tbl35 = {
					Category = arg2 and "Legit" or arg.Category,
					Key = fn14(arg.Name),
					Legit = arg2,
					Module = arg,
					Name = arg.Name,
					Options = fn70(arg),
					Terms = {},
				}

				fn16(tbl35.Terms, arg.Name, 4)
				fn16(tbl35.Terms, fn15(arg.Name), 4)
				fn16(tbl35.Terms, fn8(arg.Tooltip), 2)

				for _, v7 in tbl35.Options, nil, nil do
					fn16(tbl35.Terms, v7.Name, 1)
					fn16(tbl35.Terms, fn8(v7.Settings.Tooltip), 0.5)
					local v8 = fn5(v7.Name)

					if v8:find(" ", 1, true) then
						tbl.Options[v8] = tbl.Options[v8] or {}
						table.insert(tbl.Options[v8], { Entry = tbl35, Option = v7 })
					end
				end

				for k in tbl35.Terms, nil, nil do
					tbl.Frequency[k] = (tbl.Frequency[k] or 0) + 1
				end

				tbl.Keys[tbl35.Key] = tbl.Keys[tbl35.Key] or tbl35
				table.insert(tbl.Entries, tbl35)
			end

			for _, v7 in vape.Modules, nil, nil do
				fn73(v7, false)
			end

			for _, v7 in vape.Legit.Modules, nil, nil do
				fn73(v7, true)
			end

			table.sort(tbl.Entries, function(arg, arg2)
				return arg.Name < arg2.Name
			end)

			for k, v7 in tbl9, nil, nil do
				tbl.Keys[k] = tbl.Keys[k] or tbl.Keys[fn14(v7)]
			end
		end

		fn17 = function()
			if not tbl or tbl.Size ~= fn71() then
				fn72()
			end
		end

		fn18 = function(arg)
			return math.log((#tbl.Entries + 1) / ((tbl.Frequency[arg] or 0) + 0.5))
		end

		fn19 = function(...) end

		local function fn73(arg)
			local tbl35 = {}

			for _, v7 in tbl.Entries, nil, nil do
				local n5 = 0

				for k, v8 in arg, nil, nil do
					local v9 = v7.Terms[k]

					if v9 then
						n5 += v9 * v8 * fn18(k) + (k == v7.Key and v8 * 10 or 0)
					end
				end

				if n5 > 0 then
					table.insert(tbl35, { Entry = v7, Score = n5 })
				end
			end

			table.sort(tbl35, function(arg2, arg3)
				return arg2.Score > arg3.Score
			end)

			return tbl35
		end

		local function fn74(...) end

		fn20 = function(arg)
			local tbl35 = {}
			local tbl36 = {}

			for i = math.min(3, #arg), 1, -1 do
				for i2 = 1, #arg - i + 1 do
					local flag = true

					for i3 = i2, i2 + i - 1 do
						flag = flag and not tbl36[i3]
					end

					flag = flag and tbl.Keys[table.concat(arg, "", i2, i2 + i - 1)]

					if flag and not table.find(tbl35, flag) then
						table.insert(tbl35, flag)

						for i3 = i2, i2 + i - 1 do
							tbl36[i3] = true
						end
					end
				end
			end

			return tbl35
		end

		fn21 = function(arg, arg2, arg3)
			local tbl35 = {}
			fn16(tbl35, ("%* %*"):format(arg.Name, fn15(arg.Name)), 1)
			local tbl36 = {}

			for k, v7 in arg.Options, nil, nil do
				local tbl37 = {}
				fn16(tbl37, v7.Name, 1)
				local n5 = 0
				local n6 = 0

				for k2 in tbl37, nil, nil do
					n5 += 1

					if (arg2[k2] or 0) >= arg3 and not tbl35[k2] and not tbl8[k2] then
						n6 += 1
					end
				end

				if n6 > 0 then
					table.insert(tbl36, { Matched = n6, Option = v7, Order = k, Score = n6 / n5 })
				end
			end

			table.sort(tbl36, function(arg4, arg5)
				if arg4.Score ~= arg5.Score then
					return arg4.Score > arg5.Score
				end

				if arg4.Matched ~= arg5.Matched then
					return arg4.Matched > arg5.Matched
				end
				return arg4.Order < arg5.Order
			end)

			return tbl36
		end

		local function fn75(arg)
			for k, v7 in vape.Categories, nil, nil do
				if v7.Type == "Category" and k ~= "Favorites" and arg[k:lower()] then
					return k
				end
			end

			return arg.legit and "Legit" or nil
		end

		fn22 = function(arg)
			local tbl35 = {}

			for _, v7 in tbl.Entries, nil, nil do
				if not v7.Legit and v7.Name ~= arg and fn8(v7.Module.Tooltip) ~= "" then
					table.insert(tbl35, v7.Name)
				end
			end

			return #tbl35 > 0 and tbl35[math.random(1, #tbl35)] or nil
		end

		fn23 = function(arg)
			local option = arg.Option or {}
			local settings = arg.Settings
			if arg.Type == "Slider" or arg.Type == "TwoSlider" then
				return (("slider from %* to %*"):format(fn12(settings.Min or option.Min), fn12(settings.Max or option.Max)))
			end

			if arg.Type == "Dropdown" then
				local list = settings.List or option.List or {}
				return (("dropdown with %* choice%*"):format(#list, #list == 1 and "" or "s"))
			end
			return tbl20[arg.Type] or "setting"
		end

		fn24 = function(arg)
			local option = arg.Option
			if not option then
				return nil
			end

			if option.Type == "Toggle" then
				return option.Enabled and "on" or "off"
			end

			if option.Type == "Slider" or option.Type == "Dropdown" or option.Type == "TextBox" then
				return option.Value ~= "" and fn7(fn12(option.Value)) or "empty"
			end

			if option.Type == "TwoSlider" then
				local valueMax = option.ValueMax
				return (("%* to %*"):format(fn12(option.ValueMin), fn12(valueMax)))
			end

			if option.Type == "TextList" then
				local str = table.concat(option.ListEnabled, ", ")
				return #str == 0 and "empty" or #str > 80 and ("%* entries"):format(#option.ListEnabled) or fn7(str)
			end
			return nil
		end

		fn25 = function(arg)
			return arg.Legit and "the Legit menu" or ("the %* window"):format(arg.Category)
		end

		local function fn76()
			if vape.Legit.Window.Visible then
				vape.Legit:Close()
			end

			if not clickGUI.Visible then
				vape.GUIBind.Triggered:Fire(true)
			end
		end

		local function fn77()
			if clickGUI.Visible then
				vape.GUIBind.Triggered:Fire(true)
			end
		end

		fn26 = function(arg)
			fn76()

			if arg.Button and not arg.Button.Enabled then
				arg.Button:Toggle()
			end

			if arg.Expand and not arg.Expanded then
				arg:Expand()
			end
		end

		local function fn78(arg)
			fn76()
			vape.Categories.Main.Settings.Object.Visible = true

			for k, v7 in vape.Settings, nil, nil do
				if k ~= "Settings" then
					v7.Object.Visible = k == arg
				end
			end
		end

		local function fn79()
			fn76()
			local favorites = vape.Categories.Favorites

			if favorites and not favorites.Standalone then
				favorites:SetStandalone(true)
				vape.PaintFavorites()
				vape:QueueSave()
			end
		end

		local function fn80(arg, arg2)
			for _, v7 in arg:GetDescendants() do
				if (v7:IsA("TextLabel") or v7:IsA("TextButton")) and v7.Text:match("^%s*(.-)%s*$") == arg2 then
					return v7:IsA("TextButton") and v7 or v7:FindFirstAncestorOfClass("TextButton") or v7
				end
			end

			return nil
		end

		local function fn81(arg)
			local scrollingFrame2 = arg:FindFirstAncestorOfClass("ScrollingFrame")
			if not scrollingFrame2 then
				return
			end
			task.wait()
			scrollingFrame2.CanvasPosition = Vector2.new(0, math.max((arg.AbsolutePosition.Y - scrollingFrame2.AbsolutePosition.Y) / scale.Scale + scrollingFrame2.CanvasPosition.Y - 40, 0))
		end

		fn27 = function()
			n3 += 1

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if v6 then
				v6:Destroy()
				v6 = nil
			end
		end

		fn28 = function(arg, text)
			fn27()
			if not arg then
				return
			end
			local v7 = n3
			local color2 = Color3.fromHSV(vape.GUIColor.Hue, vape.GUIColor.Sat, math.max(vape.GUIColor.Value, 0.7))
			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = color2
			frame.BackgroundTransparency = 0.85
			frame.ZIndex = 50
			frame.Parent = gui
			v6 = frame
			addCorner(frame)
			local uiStroke = Instance.new("UIStroke")
			uiStroke.Color = color2
			uiStroke.Thickness = 2
			uiStroke.Parent = frame
			local textLabel = Instance.new("TextLabel")
			textLabel.BackgroundColor3 = uiPallet.Main
			textLabel.FontFace = uiPallet.Font
			textLabel.Size = UDim2.fromOffset(math.ceil(getFontBounds(text or "Here", 13, uiPallet.Font).X) + 16, 24)
			textLabel.Text = text or "Here"
			textLabel.TextColor3 = uiPallet.Text
			textLabel.TextSize = 13
			textLabel.ZIndex = 51
			textLabel.Parent = frame
			addCorner(textLabel)
			local uiStroke2 = Instance.new("UIStroke")
			uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			uiStroke2.Color = color2
			uiStroke2.Parent = textLabel
			connection = v3.RenderStepped:Connect(function(...) end)

			task.delay(6, function()
				if n3 == v7 then
					fn27()
				end
			end)
		end

		fn29 = function(arg, arg2)
			local module = arg.Module

			if arg.Legit then
				vape.Legit:Open(arg.Name)

				if arg2 then
					module:ShowSettings(false)
				end

				return module.Object
			end

			local v7 = vape.Categories[arg.Category]

			if v7 and module.Visible then
				fn26(v7)

				if arg2 then
					module:SetExpanded(true)
				end

				fn81(module.Object)
				return module.Object
			end

			fn76()
			vape.SearchBar.Object.TextBox.Text = arg.Name
			task.wait()
			return vape.SearchBar.Object:FindFirstChild(arg.Name, true)
		end

		local function fn82(arg, arg2)
			local v7 = fn29(arg, true)
			local object = arg2.Option and arg2.Option.Object
			local flag = not object

			if not flag then
				flag = not (arg.Legit or arg.Module.Visible)
			end

			if flag then
				return v7
			end

			if not arg.Legit then
				fn81(object)
			end

			return object
		end

		local function fn83(arg)
			arg.Terms = {}
			arg.LabelTerms = {}
			fn16(arg.Terms, arg.Keywords, 1)
			fn16(arg.LabelTerms, arg.Label, 1)
			arg.Phrase = fn5(arg.Label)
			arg.Id = arg.Id or arg.Phrase
			tbl4.ById[arg.Id] = tbl4.ById[arg.Id] or arg
			table.insert(tbl4.List, arg)
			local tbl35 = {}
			local label = arg.Label
			local unpack = table.unpack
			local aliases = arg.Aliases or {}
			local v7 = table.pack(unpack(aliases))
			tbl35[1] = label

			do
				local values = table.pack(table.unpack(v7, 1, v7.n))
				table.move(values, 1, values.n, 2, tbl35)
			end

			for _, v8 in tbl35, nil, nil do
				local v9 = fn5(v8)
				tbl4.ByPhrase[v9] = tbl4.ByPhrase[v9] or arg
				local tbl36 = {}

				for match in v9:gmatch("%S+") do
					table.insert(tbl36, fn6(match))
				end

				local str = table.concat(tbl36, " ")
				tbl4.ByStem[str] = tbl4.ByStem[str] or arg
			end
		end

		fn30 = function()
			local main = vape.Categories.Main
			tbl4 = { ById = {}, ByPhrase = {}, ByStem = {}, List = {} }

			fn83({
				Id = "gui",
				Aliases = {
					"menu",
					"main menu",
					"main window",
					"clickgui",
					"click gui",
					"catvape",
					"vape",
					"catvape menu",
					"vape menu",
				},
				Label = "GUI",
				Name = "the GUI",
				Keywords = "main window menu clickgui catvape vape click",
				Hint = "This is the main CatVape window.",
				Target = function()
					fn76()
					return main.Object
				end,
				Open = fn76,
				Close = fn77,
			})

			fn83({
				Id = "legit",
				Aliases = { "legit", "legit menu", "legit tab", "legit window", "legit mods", "legit gui" },
				Label = "Legit mode",
				Name = "the Legit menu",
				Keywords = "legit tab switch menu mods hud option options",
				Hint = "Click this switch to open the Legit menu.",
				Target = function()
					fn76()
					return vape.SearchBar.Object:FindFirstChild("Legit")
				end,
				Open = function()
					vape.Legit:Open()
				end,
				Close = function()
					vape.Legit:Close()
				end,
			})

			fn83({
				Id = "cheat",
				Aliases = { "cheat menu", "cheats", "blatant mode", "cheat gui" },
				Label = "cheat mode",
				Name = "cheat mode",
				Keywords = "cheat back return blatant",
				Hint = "Click this to go back to cheat mode.",
				Done = "Back in cheat mode.",
				Target = function()
					vape.Legit:Open()
					return vape.SearchBar.LegitReturn
				end,
				Open = function()
					vape.Legit:Close()
				end,
			})

			fn83({
				Id = "search",
				Aliases = { "searchbar", "search box" },
				Label = "search bar",
				Name = "the search bar",
				Keywords = "search searchbar",
				Hint = "Type a module name in here.",
				Target = function()
					fn76()
					return vape.SearchBar.Object
				end,
				Open = function()
					fn76()
					vape.SearchBar.Object.TextBox:CaptureFocus()
				end,
			})

			fn83({
				Id = "settings",
				Aliases = { "setting", "gear", "preferences", "settings menu", "settings tab" },
				Label = "settings",
				Name = "the settings",
				Keywords = "gear cog preferences",
				Hint = "Click the gear to open the settings.",
				Target = function()
					fn76()
					return main.Object:FindFirstChild("Settings")
				end,
				Open = function()
					fn78()
				end,
				Close = function()
					for _, v7 in vape.Settings, nil, nil do
						v7.Object.Visible = false
					end
				end,
			})

			fn83({
				Id = "overlays",
				Aliases = { "overlays", "overlay", "overlay menu", "overlays tab" },
				Label = "overlays menu",
				Name = "the overlays menu",
				Keywords = "overlay overlays hud",
				Hint = "Click this to open the overlays menu.",
				Target = function()
					fn76()
					return vape.Overlays.Button
				end,
				Open = function()
					fn76()
					vape.Overlays:Open()
				end,
				Close = function()
					vape.Overlays:Close()
				end,
			})

			fn83({
				Id = "favorites",
				Aliases = { "favourites", "favs", "favorites tab", "favorites window", "favorites list" },
				Label = "favorites",
				Name = "the Favorites window",
				Keywords = "favorite favourite favourites star starred",
				Hint = "Click the star to open your Favorites.",
				Target = function()
					fn76()
					return vape.Overlays.Object:FindFirstChild("Favorites")
				end,
				Open = fn79,
			})

			fn83({
				Id = "discord",
				Aliases = { "discord server", "discord invite", "invite" },
				Label = "discord",
				Name = "the Discord button",
				Keywords = "support invite server community",
				Hint = "Click this to copy the Discord invite.",
				Done = "Copied the Discord invite to your clipboard: discord.gg/catvape",
				Target = function()
					fn76()
					return main.Object:FindFirstChild("Discord")
				end,
				Open = function()
					if setclipboard then
						setclipboard("https://discord.gg/catvape")
					end
				end,
			})

			fn83({
				Id = "rebind gui",
				Aliases = { "gui key", "gui bind", "gui keybind", "menu key", "menu bind" },
				Label = "rebind GUI",
				Name = "Rebind GUI",
				Keywords = "gui key keybind bind menu",
				Hint = "Click this and press a key to change the GUI key.",
				Target = function()
					fn78()
					return vape.GUIBind.Object
				end,
			})

			fn83({
				Id = "gui theme",
				Aliases = { "theme", "gui color", "gui colour", "color theme", "theme color" },
				Label = "GUI theme",
				Name = "GUI Theme",
				Keywords = "theme color colour rainbow accent",
				Hint = "Pick your GUI color here.",
				Target = function()
					fn78()
					return vape.GUIColor.Object
				end,
			})

			fn83({
				Id = "chat history",
				Aliases = {
					"history",
					"chats",
					"old chats",
					"past chats",
					"previous chats",
					"saved chats",
					"chat log",
					"chat logs",
					"conversations",
					"old conversations",
				},
				Label = "chat history",
				Name = "your chat history",
				Keywords = "history chats old past previous saved conversation conversations log logs",
				Hint = "Click the clock to see your past chats.",
				Done = "Here are your past chats, click one to pick it back up.",
				Target = function()
					fn76()
					return assistant.HistoryButton
				end,
				Open = function()
					fn76()
					assistant:ShowHistory(true)
				end,
				Close = function()
					assistant:ShowHistory(false)
				end,
			})

			local profiles = vape.Categories.Profiles

			if profiles then
				fn83({
					Id = "public profiles",
					Aliases = { "public configs", "public" },
					Label = "public profiles",
					Name = "Public Profiles",
					Keywords = "public browse online community download",
					Hint = "Click PUBLIC to browse other people's profiles.",
					Target = function()
						fn26(profiles)
						return profiles.Object:FindFirstChild("Public", true)
					end,
					Open = function()
						fn76()
						vape.PublicProfiles.Window.Position = UDim2.new(0.5, -356, 0.5, -214)
						vape.PublicProfiles.Window.Visible = true
					end,
					Close = function()
						vape.PublicProfiles.Window.Visible = false
					end,
				})

				fn83({
					Id = "create profile",
					Label = "create new button",
					Name = "CREATE NEW",
					Keywords = "create new profile make",
					Hint = "Click this to make a new profile.",
					Target = function()
						fn26(profiles)
						return profiles.Object:FindFirstChild("CreateNew", true)
					end,
				})
			end

			for k, v7 in vape.Categories, nil, nil do
				if v7.Type == "Category" and k ~= "Favorites" or v7.Type == "CategoryList" then
					local v8 = fn83
					local tbl35 = {}
					local aliases = {}
					local str = ("%* tab"):format(k)
					local str2 = ("%* window"):format(k)
					local str3 = ("%* category"):format(k)
					local str4 = ("%* menu"):format(k)
					aliases[1] = str
					aliases[2] = str2
					aliases[3] = str3
					aliases[4] = str4
					tbl35.Aliases = aliases
					tbl35.Category = v7.Type == "Category" and k or nil
					tbl35.Label = k
					tbl35.Name = ("the %* window"):format(k)
					tbl35.Keywords = "window"
					tbl35.Hint = ("This is the %* window."):format(k)

					tbl35.Target = function()
						fn26(v7)
						return v7.Object
					end

					tbl35.Open = function()
						fn26(v7)
					end

					tbl35.Close = function()
						if v7.Button and v7.Button.Enabled then
							v7.Button:Toggle()
						end
					end

					v8(tbl35)
				end

				if v7.Type == "CategoryList" then
					local v8 = table.clone(tbl33[k] or {})

					for k2 in v7.Options, nil, nil do
						table.insert(v8, k2)
					end

					for _, v9 in v8, nil, nil do
						local function fn84()
							fn26(v7)
							v7:ShowSettings(true)
							task.wait()
							local v10 = v7.Options[v9]
							return v10 and v10.Object or fn80(v7.Object, v9)
						end

						fn83({
							Component = v7.Options[v9],
							Label = v9,
							Name = v9,
							Keywords = ("%* gear"):format(k),
							Hint = ("This is under the gear in the %* window."):format(k),
							Target = fn84,
							Open = fn84,
						})
					end
				end

				if v7.Type == "Overlay" then
					fn83({
						Aliases = { (("%* overlay"):format(k)) },
						Label = k,
						Name = ("the %* overlay"):format(k),
						Keywords = "overlay",
						Hint = ("This is %*, it lives in the overlays menu."):format(k),
						Target = function()
							fn76()
							if v7.Button.Enabled then
								return v7.Object
							end
							vape.Overlays:Open()
							return v7.Button.Object
						end,
						Open = function()
							fn76()

							if not v7.Button.Enabled then
								v7.Button:Toggle()
							end
						end,
						Close = function()
							if v7.Button.Enabled then
								v7.Button:Toggle()
							end
						end,
					})
				end
			end

			for k, v7 in vape.Settings, nil, nil do
				if k ~= "Settings" then
					local v8 = fn83
					local tbl35 = {}
					local aliases = {}
					local str = ("%* tab"):format(k)
					local str2 = ("%* pane"):format(k)
					local str3 = ("%* page"):format(k)
					aliases[1] = str
					aliases[2] = str2
					aliases[3] = str3
					tbl35.Aliases = aliases
					tbl35.Label = ("%* settings"):format(k)
					tbl35.Name = ("the %* settings"):format(k)
					tbl35.Keywords = "gear"
					tbl35.Hint = ("Click %* in the settings."):format(k)

					tbl35.Target = function()
						fn78()
						return fn80(main.Settings.Object, k)
					end

					tbl35.Open = function()
						fn78(k)
					end

					tbl35.Close = function()
						v7.Object.Visible = false
					end

					v8(tbl35)
					local v9 = table.clone(tbl34[k] or {})

					for k2 in v7.Options, nil, nil do
						table.insert(v9, k2)
					end

					for _, v10 in v9, nil, nil do
						local function fn84()
							fn78(k)
							local v11 = v7.Options[v10]
							return v11 and v11.Object or fn80(v7.Object, v10)
						end

						fn83({
							Component = v7.Options[v10],
							Label = v10,
							Name = v10,
							Keywords = ("%* settings"):format(k),
							Hint = ("This is in the %* settings."):format(k),
							Target = fn84,
							Open = fn84,
						})
					end
				end
			end
		end

		fn31 = function(arg)
			if not tbl4 then
				fn30()
			end

			return tbl4.ById[arg]
		end

		tbl13 = {
			{
				Keywords = "open close gui menu clickgui rightshift appear launch opening closing access",
				Place = "gui",
				Answer = function()
					if fn13() then
						return (("Tap the CatVape button at the top of your screen to open or close the GUI. If you turned on %*, it is still there, just invisible, so tap the same spot."):format(fn9("Hide CatVape Button")))
					end
					return (("Press %* to open or close the GUI. You can change that key with %* in the settings, which open from the gear on the main window."):format(fn9(fn68(vape.GUIBind.Keys) or "RightShift"), fn9("Rebind GUI")))
				end,
			},
			{
				Keywords = "setting settings gear cog preferences general",
				Place = "settings",
				Answer = function()
					return (("The gear on the main window opens the settings. %* has the keybind options, Self destruct and Reinject, %* has the team options, %* has blur, scale, tooltips and the search bar, and %* controls popups. %* and %* are there too."):format(fn9("General"), fn9("Modules"), fn9("GUI"), fn9("Notifications"), fn9("GUI Theme"), fn9("Rebind GUI")))
				end,
			},
			{
				Keywords = "setting settings option options configure customize customise adjust expand dots slider sliders dropdown change tweak value values",
				Answer = function()
					local v7 = fn22()
					return (("Right click a module, or click the three dots on its right, to open its settings. Hover a setting to see what it does.%*"):format(v7 and (" You can also ask me about one module, like \"%* settings\"."):format(v7) or ""))
				end,
			},
			{
				Keywords = "turn toggle enable disable activate deactivate off switch start stop run running click press",
				Answer = function()
					if fn13() then
						return "Tap a module to turn it on or off, it lights up in your theme color while it is on. Tap the three dots on its right to open its settings."
					end
					return "Left click a module to turn it on or off, it lights up in your theme color while it is on. Right click it, or click the three dots on its right, to open its settings."
				end,
			},
			{
				Keywords = "bind binds keybind keybinds hotkey hotkeys shortcut shortcuts key keys keyboard binding unbind rebind hold held combo multi",
				Answer = function()
					if fn13() then
						return "Hold a module in the GUI for a second, then tap where you want its button. Tap that button to toggle the module, and hold it for a second to remove it."
					end

					return (([[Open the GUI, hover the module and click the bind icon that appears on its right, then press a key. Clicking the icon again while it says %* removes the bind, and shift clicking it makes the module run only while the key is held.

Turn on %* in the General settings for combos like G + H, and %* to bind toggle settings too.]]):format(fn9("PRESS A KEY TO BIND"), fn9("Enable Multi-Keybinding"), fn9("Allow setting keybinds")))
				end,
			},
			{
				Keywords = "profile profiles switch preset presets slot create delete",
				Place = "profiles",
				Answer = function()
					return (("Open %* from the main window. Click %*, type a name and press the add button. Click a profile to switch to it, hover it and click its bind icon to give it a keybind, and click the dots on a profile you are not using to delete it. Profiles are kept separately for every game."):format(fn9("Profiles"), fn9("CREATE NEW")))
				end,
			},
			{
				Keywords = "config configs export import share copy paste clipboard code string load send",
				Place = "export config",
				Answer = function()
					return (("Open %* and click its gear. %* copies your whole setup for this game to your clipboard and saves it to catsix/profiles/export.txt. To load one, paste it into %* and press Enter. That overwrites the profile you are on, so create a new profile first if you want to keep yours."):format(fn9("Profiles"), fn9("Export config"), fn9("Import config")))
				end,
			},
			{
				Keywords = "public browse download online community upload publish others people config configs profile profiles",
				Place = "public profiles",
				Answer = function()
					return (("Open %* and click %* to browse configs other people published. Search by profile or username, click one to see its details and press %*. %* under Your Public Profiles publishes your own, anonymously if you want."):format(fn9("Profiles"), fn9("PUBLIC"), fn9("Download"), fn9("CREATE NEW")))
				end,
			},
			{
				Keywords = "reset default defaults restore wipe fresh config profile",
				Place = "reset current profile",
				Answer = function()
					return (("Open %*, click its gear and press %*. That puts the profile you are on back to the defaults and reloads CatVape. If a window just went off screen, use %* in the GUI settings instead."):format(fn9("Profiles"), fn9("Reset current profile"), fn9("Reset GUI positions")))
				end,
			},
			{
				Keywords = "save saving saved autosave persist sync",
				Place = "sync to current profile",
				Answer = function()
					return (("CatVape saves by itself whenever you change something, into the profile you are on. %* in the Profiles gear forces a save right away."):format(fn9("Sync to current profile")))
				end,
			},
			{
				Keywords = "friend friends ally allies whitelist protect",
				Place = "friends",
				Answer = function()
					return (("Open %* from the main window, type a Roblox username and press Enter. With %* on (in its gear), modules leave everyone on the list alone, and %* draws them in %*. Click a name to switch it off without removing it, or the X to remove it."):format(fn9("Friends"), fn9("Use friends"), fn9("Recolor visuals"), fn9("Friends color")))
				end,
			},
			{
				Keywords = "target targets priority prioritize focus npc npcs",
				Place = "targets",
				Answer = function()
					return (("Add Roblox usernames to %* in the main window, modules that pick a target go for them first. Inside a combat module, the %* setting opens Target settings, where you choose Players or NPCs, whether to ignore invisible players or players behind walls, and the %*."):format(fn9("Targets"), fn9("Target"), fn9("Priority")))
				end,
			},
			{
				Keywords = "favorite favorites favourite favourites star starred",
				Place = "favorites",
				Answer = function()
					return (("Hover a module and click the star next to it. The star button at the bottom of the main window opens the %* window with all of them together."):format(fn9("Favorites")))
				end,
			},
			{
				Keywords = "hide hidden unhide declutter pencil clutter",
				Answer = function()
					return (("Click the pencil on a category window, then click the square next to each module to hide or show it and press %*. Hidden modules keep working, they are just out of the list."):format(fn9("DONE")))
				end,
			},
			{
				Keywords = "search searching find lookup look filter bar",
				Place = "search",
				Answer = function()
					return (("While the GUI is open, type in the search bar at the top of the screen. Click a result to turn it on or off, and right click it for its settings. If the bar is missing, set %* to Floating in the GUI settings."):format(fn9("Search bar style")))
				end,
			},
			{
				Keywords = "overlay overlays hud arraylist pin pinned",
				Place = "overlays",
				Answer = function()
					local tbl35 = {}

					for k, v7 in vape.Categories, nil, nil do
						if v7.Type == "Overlay" then
							table.insert(tbl35, fn9(k))
						end
					end

					table.sort(tbl35)
					return (("Click the overlays button at the bottom of the main window and turn on the ones you want%*. Drag an overlay to move it, click its pin to keep it on screen with the GUI closed, and right click it for its settings."):format(#tbl35 > 0 and (", like %*"):format(fn11(tbl35, 4)) or ""))
				end,
			},
			{
				Keywords = "legit mode menu closet screenshare legitimate cheat",
				Place = "legit",
				Answer = function()
					local tbl35 = {}

					for k in vape.Legit.Modules, nil, nil do
						table.insert(tbl35, k)
					end

					table.sort(tbl35)
					return (("Click the switch on the left of the search bar to open the Legit menu%*. Click a mod to turn it on and right click it for its settings. The button at the top of the screen takes you back, and %* in the GUI settings hides the switch."):format(#tbl35 > 0 and (", it has HUD mods like %*"):format(fn11(tbl35, 3)) or "", fn9("Show legit mode")))
				end,
			},
			{
				Keywords = "theme gui color colors colour colours accent rainbow appearance look",
				Place = "gui theme",
				Answer = function()
					return (("Open the settings from the gear on the main window and pick a color with %*, it has a rainbow button too. %*, %* and %* in the GUI settings change how the rainbow looks."):format(fn9("GUI Theme"), fn9("Rainbow Mode"), fn9("Rainbow speed"), fn9("Rainbow update rate")))
				end,
			},
			{
				Keywords = "scale gui size big small bigger smaller resize huge tiny",
				Place = "auto rescale",
				Answer = function()
					return (("The GUI sizes itself to your screen. Turn off %* in the GUI settings to set %* yourself."):format(fn9("Auto rescale"), fn9("Scale")))
				end,
			},
			{
				Keywords = "lag lagging laggy fps performance slow stutter boost frames",
				Place = "hud blur",
				Answer = function()
					local fpsbooster = tbl.Keys.fpsbooster
					return (("Turn off %* and %* in the GUI settings, they cost the most frames. Render modules like ESP add up with a lot of players too.%*"):format(fn9("HUD blur"), fn9("Blur background"), fpsbooster and (" %* in %* can help as well."):format(fn9(fpsbooster.Name), fn25(fpsbooster)) or ""))
				end,
			},
			{
				Keywords = "notification notifications notify alert alerts popup popups",
				Place = "notifications settings",
				Answer = function()
					return (("The %* settings let you turn every notification off, or just %* for modules turning on and off and %* for bound settings."):format(fn9("Notifications"), fn9("Toggle alert"), fn9("Setting toggle alert")))
				end,
			},
			{
				Keywords = "tooltip tooltips hover description descriptions",
				Place = "show tooltips",
				Answer = function()
					return (("Hover any module or setting to see what it does, and %* in the GUI settings turns that off. You can also just ask me about a module."):format(fn9("Show tooltips")))
				end,
			},
			{
				Keywords = "uninject unload destruct self exit quit reload reinject restart",
				Place = "self destruct",
				Answer = function()
					return (("%* in the General settings removes CatVape from this game, and %* next to it loads it again."):format(fn9("Self destruct"), fn9("Reinject")))
				end,
			},
			{
				Keywords = "update updates updating version outdated newest",
				Answer = function()
					return "CatVape checks for a new version every time you execute it and downloads it by itself, so just execute it again. Ask me \"what's new\" to see what changed."
				end,
			},
			{
				Keywords = "position positions gui offscreen screen lost missing moved window windows sort arrange drag move",
				Place = "reset gui positions",
				Answer = function()
					return (("Drag a window to move it. If one went off screen, press %* in the GUI settings, and %* lines every window up in order."):format(fn9("Reset GUI positions"), fn9("Sort GUI")))
				end,
			},
			{
				Keywords = "error errors errored bug bugs bugged broken crash crashes crashing console f9 issue issues problem report fix",
				Place = "discord",
				Answer = function()
					return "If a notification says a module errored, press F9 to open the console and find the line starting with [catvape]. Send that line in the Discord so it can get fixed, the Discord icon on the main window copies the invite."
				end,
			},
			{
				Keywords = "discord support server community invite contact staff owner made created creator developer developers dev devs",
				Place = "discord",
				Answer = function()
					return "Click the Discord icon on the main window, it copies the invite for you: discord.gg/catvape"
				end,
			},
			{
				Keywords = "team teams teammate teammates",
				Place = "teams by server",
				Answer = function()
					return (("%* in the Modules settings makes modules skip players the game puts on your team, and %* colors render modules with each player's team color."):format(fn9("Teams by server"), fn9("Use team color")))
				end,
			},
			{
				Keywords = "ban banned bans safe safety detect detected detectable undetected risk anticheat",
				Answer = function()
					return "Any module can get you banned, and Blatant ones are the easiest to spot. Lower settings and the Legit menu are less obvious, and an alt account keeps your main out of it."
				end,
			},
			{
				Keywords = "paid premium buy purchase price cost license",
				Place = "discord",
				Answer = function()
					return "Modules tagged PAID are part of CatVape premium. The Discord has everything about getting it, the icon on the main window copies the invite."
				end,
			},
			{
				Keywords = "history chats chat old past previous saved conversation conversations log logs",
				Place = "chat history",
				Answer = function()
					return "Every chat is saved to catsix/profiles/assistantchats.json. Click the clock at the top of this window to see your last 30 chats, click one to pick it back up, or its X to delete it. The pencil starts a new chat."
				end,
			},
			{
				Keywords = "mobile phone ipad tablet touch tap android ios",
				Answer = function()
					return "Tap the CatVape button at the top of your screen to open the GUI. Hold a module for a second, then tap anywhere to place a button for it. Tap that button to toggle the module and hold it for a second to remove it."
				end,
			},
		}

		for _, v7 in tbl13, nil, nil do
			v7.Terms = {}
			fn16(v7.Terms, v7.Keywords, 1)

			for k in v7.Terms, nil, nil do
				tbl17[k] = (tbl17[k] or 0) + 1
			end
		end

		fn32 = function(arg)
			local flag = false

			for k, v7 in arg, nil, nil do
				if v7 == 1 and not tbl8[k] then
					flag = true
					break
				end
			end

			local n5 = 0
			local v7 = nil

			for _, v8 in tbl13, nil, nil do
				local n6 = 0

				for k, v9 in arg, nil, nil do
					if v8.Terms[k] then
						n6 += v9 * (flag and tbl8[k] and 0.4 or 1) * math.log((#tbl13 + 1) / (tbl17[k] + 0.5))
					end
				end

				if n5 < n6 then
					n5 = n6
					v7 = v8
				end
			end

			return v7, n5
		end

		tbl14 = {
			{
				Game = "BedWars",
				Modules = { "Nuker", "BedAssist", "FastBreak", "Reach", "AutoWin" },
				Options = { "Break range" },
				Ask = "How far can I break a bed from?",
				Keywords = "break breaking broke range far close distance stud studs reach stand finish bed beds block blocks mine mining server cancel cancelled cooldown",
				Text = "The server only accepts block breaks from about 18 studs away, so a bed farther out never takes damage, even with Nuker's Break range at 30. Nuker can chip the blocks covering it from farther, but stand within about 19 studs to finish the bed. Hits faster than the 0.3 second break cooldown get cancelled too.",
			},
			{
				Game = "BedWars",
				Modules = { "Killaura", "Reach", "HitBoxes", "SilentAura", "AutoWin" },
				Options = { "Attack range", "Swing range", "Sword reach" },
				Keywords = "sword swords reach range hit hits attack attacks melee swing swings aura normal legit far distance studs miss misses missing land lands register hitreg best max axe battle hammer weapon weapons",
				Text = "A normal swing reaches about 11.4 studs in front of you, and 14.4 when your cursor is right on the enemy. The game refuses hits from much past the weapon's range, and in CatVape's tests Killaura with Attack range 18 landed hits out to about 17.5 studs, so going above 18 does not help. A few weapons have their own range, like the battle axe (21) and the diamond great hammer (15).",
			},
			{
				Game = "BedWars",
				Modules = { "AutoBuy" },
				Ask = "How much is an iron sword?",
				Keywords = "sword swords price prices cost costs buy buying stone iron diamond emerald wood damage shop",
				Text = "Swords cost 20 iron (stone), 70 iron (iron), 4 emeralds (diamond) and 20 emeralds (emerald). Before armor they hit for 20 with wood, 25 with stone, 30 with iron, 42 with diamond and 55 with emerald.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoBuy", "ArmorSwitch" },
				Keywords = "armor armour chestplate leather iron diamond emerald price prices cost costs buy reduce reduces reduction protect protection block blocks damage set",
				Text = "Armor costs 50 iron (leather), 120 iron (iron), 8 emeralds (diamond) and 40 emeralds (emerald), and buying it gives you the full set. A full set blocks about 36% of damage with leather, 56% with iron and 76% with diamond.",
			},
			{
				Game = "BedWars",
				Modules = { "BedProtector", "Block-In", "Scaffold", "AutoBuy" },
				Keywords = "wool block blocks stone brick bricks health hp strong stronger strongest strength price cost costs buy defense defend cover protect hits",
				Text = "Wool costs 8 iron for 16 blocks and each block has 8 health. Stone bricks cost 40 iron for 16 and have 75 health each, so they hold a bed far longer. BedProtector covers your bed with the strongest blocks you carry.",
			},
			{
				Game = "BedWars",
				Modules = { "BedESP", "BedPlates", "BedAssist" },
				Accent = { "Health Bar" },
				Keywords = "bed beds health hp damage damaged hit hits see show strong break left",
				Text = "A bed has 24 health. The game keeps its damage on the block, not on the bed model, so it is easy to miss. BedESP with Health Bar on shows how damaged every bed is, including hits from other players, and BedPlates shows the blocks covering it.",
			},
			{
				Game = "BedWars",
				Modules = { "ProjectileAimbot", "ProjectileAura", "BowAssist", "AutoBuy" },
				Keywords = "bow bows arrow arrows crossbow telepearl pearl pearls fireball fireballs tnt grapple grappling hook void axe price prices cost costs buy shop damage",
				Text = "A wood bow costs 24 iron and arrows are 16 iron for 8, each hitting for 18. A telepearl is 2 emeralds, a fireball 75 iron, TNT 35 iron, a void axe 40 iron and a grappling hook 7 emeralds.",
			},
			{
				Game = "BedWars",
				Modules = { "ProjectileAimbot", "ProjectileAura", "BowAssist" },
				Keywords = "arrow arrows bow crossbow projectile projectiles speed fast travel gravity drop far range lead predict prediction charge",
				Text = "Arrows leave at 240 studs a second (400 from a crossbow), drop with gravity 35 and disappear after 2.8 seconds. Charging a bow only changes the speed. ProjectileAimbot leads moving and jumping targets for you.",
			},
			{
				Game = "BedWars",
				Modules = { "GeneratorESP", "PickupRange" },
				Keywords = "generator generators gen gens team iron diamond diamonds emerald emeralds spawn spawns spit spits drop drops often fast rate make makes produce produces second seconds resources farm farming",
				Text = "Your team's iron generator makes about 1.1 iron a second. At their first tier, diamond generators drop one diamond every 35 seconds and hold up to 5, and emerald generators drop one every 70 seconds and hold up to 3. GeneratorESP shows the time until the next drop.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoBuy", "TeamUpgrades" },
				Keywords = "team upgrade upgrades cost costs price diamond diamonds armor protection damage sharpness generator gen break speed tier tiers buy",
				Text = "In solo matches team upgrades cost diamonds per tier: Team generator 4/8/16 (+50% and +100% iron, then emeralds at your base), Armor 4/8/20 (+10/20/30% protection), Damage 5/10/18 (+5/10/20%), Diamond generator 3/6/10 and Break speed 3/6/15. Team generator tier 1 is the cheapest boost.",
			},
			{
				Game = "BedWars",
				Accent = { "Killaura" },
				Ask = "What does a Diamond Guardian drop?",
				Keywords = "diamond guardian guardians boss health hp damage drop drops kill killing reward loot spawn spawns when time guard",
				Text = "Diamond Guardians stand on the diamond generators. They have 450 health, hit for about 8 before armor, go after anyone within 15 studs and drop 3 diamonds when killed. By default they spawn at 3, 8 and 12 minutes, but some modes change that or turn them off. Killaura attacks them too.",
				Live = function()
					local n5 = #fn(game:GetService("CollectionService")):GetTagged("DiamondGuardian")
					local str = n5 == 0 and "None have spawned in this server yet."

					if not str then
						str = ("%* %* up in this server right now."):format(fn9(tostring(n5)), n5 == 1 and "is" or "are")
					end

					return str
				end,
			},
			{
				Game = "BedWars",
				Modules = { "AutoReset" },
				Keywords = "respawn respawns respawning timer time long wait death die dies dead final kill bedless eliminated",
				Text = "After a normal death you respawn in about 3.6 seconds, going by the matches CatVape measured. Once your bed is gone your next death is final. Players who were already dead when their bed broke still respawn one more time.",
			},
			{
				Game = "BedWars",
				Modules = { "RegionLock", "AutoMatchDodge" },
				Keywords = "region regions server servers na eu sea asia asian oce oceania aus australia australian europe european america american pick choose change select ping country location",
				Text = "BedWars only hosts servers in NA, EU and SEA, and Australia, New Zealand and Singapore all count as SEA. The lobby server decides your region from your account's country, so nothing on your side can move you to another region. RegionLock can only skip matches that land outside the regions you picked.",
			},
			{
				Game = "BedWars",
				Modules = { "Speed", "Fly", "AutoWin", "LongJump" },
				Accent = { "Move boost" },
				Keywords = "anticheat flag flagged flagging flags detect detected detection detectable bannable ban bans banned lagback lagbacks lagbacked rubberband rubberbanding speed fast faster horizontal vertical sideways teleport teleporting safe limit",
				Text = "The anticheat watches how fast you move sideways, so keep horizontal speed modest: around 22 held up in CatVape's own matches, and AutoWin's Move boost above 2 gets flagged. Vertical movement is different, even a big teleport straight up is not flagged.",
			},
			{
				Game = "BedWars",
				Modules = { "Fly", "TPDown", "InfiniteFly", "AntiHit", "AutoWin" },
				Accent = { "TP Down" },
				Ask = "Why do I get lagbacked while flying?",
				Keywords = "air hover hovering float floating fly flying long stay time seconds lagback lagbacks lagbacked back flung dropped owner ownership touch ground",
				Text = "If you stay off the ground for more than about 2.4 seconds the server takes control of your character and drops it, which is what a lagback mid flight usually is. Touch the ground now and then, Fly's TP Down option and the TPDown module do that for you.",
			},
			{
				Game = "BedWars",
				Modules = { "NoFall", "TPDown", "AutoWin" },
				Keywords = "fall falling damage drop drops dropping high height far formula teleport teleports hurt hurts die death land landing",
				Text = "The server works out fall damage itself: about the height of the drop minus 21 studs, measured from your highest point since you last touched the ground. NoFall protects normal falls, even 100 stud ones, but a teleport straight down still hurts past 21 studs, so keep teleport drops under that.",
			},
			{
				Game = "BedWars",
				Modules = { "Speed", "AutoWin", "Fly", "LongJump" },
				Keywords = "speed stand standing still stuck stall stalls stop stops stopped move moving movement velocity blatant frozen freeze freezes walk walking",
				Text = "Speed's Blatant mode rewrites your sideways velocity every frame, and with no key held that is zero, so anything that moves you by velocity stands still while it is on. Speed steps aside for Fly and LongJump, and AutoWin moves by position now, so they keep working. If another module stalls, try it with Speed off.",
			},
			{
				Game = "BedWars",
				Modules = { "InfiniteFly", "Fly", "LongJump", "HighJump", "InfiniteJump", "Scaffold", "AntiHit" },
				Keywords = "while stop stops blocked disabled together same time land landed landing work working",
				Text = "While InfiniteFly is on, Fly, InfiniteJump, HighJump, LongJump, AntiHit, AntiFall, Scaffold, Spider, Phase, TargetStrafe and Swim stand down until it has fully landed. Speed keeps working. Turn InfiniteFly off and wait for the landing before using them.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoBuy", "AutoWin" },
				Keywords = "iron spend spends spending spent buy buys bought walk walks walked gone already fight fighting together conflict resources shop shops steal steals",
				Text = "AutoBuy buys the moment you are near a shop, so next to AutoWin it often spends the iron AutoWin walked there for. AutoWin copes with that now, but turn AutoBuy off if you want AutoWin to pick every purchase.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoKit", "KitESP", "AutoBuy" },
				Keywords = "fusion fused two both combined hyper second first only react reacts one",
				Text = "Kit Fusion gives you two kits at once. AutoKit, KitESP and AutoBuy handle both, but most of the single kit Auto modules in Kits only react to your first kit.",
			},
			{
				Game = "BedWars",
				Modules = { "KitDisplay" },
				Keywords = "kit best good recommend recommended should pick choose strongest op main which",
				Text = "The best kit depends on how you play, and it changes with every balance update, so I will not rank them. Whatever you pick, AutoKit uses its ability for you, most kits also have their own Auto module in the Kits window, and KitDisplay shows what your opponents picked in the draft.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoZephyr" },
				Keywords = "zephyr air jump jumps double orb orbs wind",
				Text = "Zephyr gets 2 air jumps once it has 5 orbs and loses them when it drops below 5. Air jumps need a quarter second between them and come back when you land. AutoZephyr spends one right before TP Down would pull you down.",
			},
			{
				Game = "BedWars",
				Modules = { "LongJump" },
				Keywords = "long jump item items kit kits need needs dao dash dasher cannon cat jade hammer grapple grappling hook fireball tnt boost launch cooldown",
				Text = "LongJump launches you off a kit or item: the Dasher dao, a cannon, the cat kit, a jade hammer or void axe, a grappling hook, or the blast of your own fireball or TNT, so you need one of those on you. Dasher's dash has a 3 second cooldown.",
			},
			{
				Game = "BedWars",
				Modules = { "InventoryESP" },
				Keywords = "kill killer killing loot resources iron diamonds emeralds carry carrying take takes drop drops inventory enemy enemies someone see holding",
				Text = "The killer takes the iron, diamonds and emeralds the victim was carrying, so rich players are worth hunting. InventoryESP shows what your current target is holding and wearing.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoPearlAggro", "AutoPearl" },
				Keywords = "pearl pearls aggro mode gone removed happened missing follow follows chase enemy thrown throw lands",
				Text = "AutoPearl's Aggro mode is its own module now, AutoPearlAggro. It predicts where an enemy's pearl will land the moment it is thrown and pearls you to the same spot. AutoPearl itself only saves you when you fall into the void.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoReset" },
				Keywords = "reset resets void fall falling clutch pearl whisper owl lasso early",
				Text = "AutoReset only resets once you are below the void line and still falling with nothing under you. It holds off while a telepearl, a Whisper owl lift or a lasso could still save you.",
			},
			{
				Game = "BedWars",
				Modules = { "KitDisplay" },
				Accent = { "Show previous kits" },
				Keywords = "kit kits draft previous history opponent opponents other team see pick picks picked last matches",
				Text = "KitDisplay shows each opponent's kit during the match draft, and with Show previous kits on it also shows the kits they played in their last 8 matches.",
			},
			{
				Game = "BedWars",
				Modules = { "Scaffold", "Block-In", "Clutch" },
				Keywords = "block blocks size big grid studs one each tall height gap gaps fit walk under character wide long",
				Text = "Blocks are 3 studs on every side and sit on a 3 stud grid. Your character is two blocks tall, so a one block gap is too low to walk through.",
			},
			{
				Game = "BedWars",
				Modules = { "PickupRange" },
				Keywords = "pickup pick collect collecting range far close near distance items drops generator gen grab",
				Text = "The game picks up generator drops within about 6 studs of you. PickupRange grabs them from farther, set by its Range slider.",
			},
			{
				Game = "BedWars",
				Modules = { "AntiSuffocate" },
				Keywords = "suffocate suffocating suffocation stuck inside block blocks trapped damage dying placed lost lose half instantly hp",
				Text = "Being stuck inside blocks deals 10 damage every tenth of a second, so it kills in about a second. AntiSuffocate moves you out or breaks the block first.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoWin", "Killaura" },
				Accent = { "Move boost", "Speedrun", "Sky travel" },
				Keywords = "setup tips tip recommend recommended advice running",
				Text = "AutoWin plays the whole match, weighing beds, kills, farming and retreating and committing to the best one. Keep Killaura on, AutoWin only lands hits inside Killaura's Attack range. Leave Move boost at 2 or lower, higher gets flagged. Speedrun rushes the nearest beds and only buys gear with loot, and Sky travel flies straight over voids to far targets.",
			},
			{
				Game = "BedWars",
				Modules = { "AutoWin" },
				Keywords = "win winning wins strategy strat rush beat pro tactic tactics tips tip trash improve",
				Text = "What wins most games: rush the closest bed early, final kill each bedless player right after, and buy with the loot you take from kills. A stone sword (20 iron) decides most early fights. Stop anyone farming emeralds before they get diamond gear, a diamond geared player guarding emeralds is very hard to beat.",
			},
			{
				Game = "BedWars",
				Modules = { "AimAssist" },
				Keywords = "focus focused unfocused tabbed alt background minimized mouse camera",
				Text = "BedWars' AimAssist turns your camera, or your character in third person, instead of moving your real mouse, so it does not depend on the Roblox window being focused.",
			},
			{
				Except = "BedWars",
				Modules = { "AimAssist" },
				Keywords = "focus focused unfocused tabbed alt background minimized mouse camera",
				Text = "AimAssist moves your real mouse, so it only works while the Roblox window is focused. Tabbed out, or on a second client, it does nothing.",
			},
			{
				Modules = { "ProjectileAimbot", "AutoChargeProj" },
				Keywords = "executor executors solara xeno free paid work works working support supported debug unc sunc best which injector",
				Text = "CatVape runs best on an executor with a full debug library and good sUNC support. Solara and Xeno have no debug library, so in BedWars every module that hooks the game's own controllers, like ProjectileAimbot and AutoChargeProj, silently does nothing there.",
			},
			{
				Accent = { "Export config" },
				Keywords = "config configs profile profiles saved save stored store where folder file files location workspace directory",
				Text = "Profiles are saved in the catsix/profiles folder of your executor's workspace, one file per profile for each game, plus a .gui.txt file per game for your window layout. Export config in the Profiles gear gives you the whole setup as text instead.",
			},
			{
				Keywords = "preset presets default legit silent profile profiles new update updates updated download downloaded install fresh didnt",
				Text = "The default, legit and silent preset profiles only download on new installs. Updates never touch the profiles you already have, so an existing install keeps its own settings.",
			},
			{
				Keywords = "mobile phone ipad tablet android ios touch support supported work works run runs",
				Text = "Yes, CatVape works on mobile executors. Tap the CatVape button in the top bar to open the GUI, and hold a module for a second to place a button for it on your screen.",
			},
			{
				Accent = { "Hide CatVape Button" },
				Keywords = "button missing gone hidden disappeared disappear invisible top bar icon mobile phone ipad tablet find anymore",
				Text = "The CatVape button sits in the top bar on mobile. If it is gone, Hide CatVape Button in the GUI settings is probably on. That only makes it invisible, so tap the same spot to open the GUI and turn the setting off there.",
			},
			{
				Except = "IllegalSoccer",
				Modules = { "Anti-AFK" },
				Keywords = "afk idle kick kicked kicks away long until minute minutes timeout disconnect disconnected",
				Text = "Roblox kicks you after 20 minutes without any input. Anti-AFK stops that.",
			},
			{
				Game = "IllegalSoccer",
				Modules = { "Anti-AFK" },
				Ask = "How long until I get AFK kicked?",
				Keywords = "afk idle kick kicked kicks away long until minute minutes second seconds timeout lobby pulled",
				Text = "Illegal Soccer pulls you out of a match after 60 seconds without moving, or 120 seconds as goalkeeper, with a warning 30 seconds before. Anti-AFK keeps you in, and anything that plays for you needs it on.",
			},
			{
				Game = "IllegalSoccer",
				Modules = { "ShotRedirect", "PerfectShot" },
				Ask = "Why do my shots go where I aimed earlier?",
				Keywords = "shot shots shoot shooting aim aimed aiming lock locked earlier late release released where wrong direction miss misses charge charging",
				Text = "Your shot's aim locks 0.3 seconds into the charge, a tenth of a second before full power, and the server launches along that locked aim instead of where you point when you let go. Letting go before the lock uses your aim at release. ShotRedirect aims at the lock for you.",
			},
			{
				Game = "IllegalSoccer",
				Modules = { "ShotRedirect", "GoalESP" },
				Keywords = "goal goals size big wide width high height tall corner corners bar crossbar post score scoring top",
				Text = "The goal mouth is 36 studs wide and 12 high. A shot goes in cleanly when the ball's centre crosses within 17 studs of the middle and between 2 and 12 studs up, any higher clips the bar. Shots launch at 30 degrees at most, so from closer than about 16 studs you cannot reach the top corners.",
			},
			{
				Game = "IllegalSoccer",
				Modules = { "AutoVolley" },
				Keywords = "volley volleys green ball indicator lock catch air flying",
				Text = "When the ball shows the green indicator a volley is open: press Kick or Pass while it shows and the ball locks onto your foot. AutoVolley presses it for you.",
			},
			{
				Game = "IllegalSoccer",
				Keywords = "item items box boxes equip use using bazooka jetpack magnet oil landmine landmines barricade barricades shotgun freeze gun flintlock forcefield rocket punch energy drink supercharge grapple",
				Text = "Running into an item box on the field gives you one of the items you own. Tap its item key to equip it and press Kick to use it, tapping the key again unequips it. You cannot control the ball while an item is equipped.",
			},
			{
				Game = "TowerOfHell",
				Ask = "How high can I jump?",
				Keywords = "jump jumps jumping high height far gap gaps edge ledge climb step steps tall reach",
				Text = "A jump in Tower of Hell rises about 7.2 studs, and the ledge snap lifts you roughly 1.75 more. Walking off an edge you stay grounded for about 0.4 studs past it, so jump right at the edge for the longest reach.",
			},
			{
				Game = "TowerOfHell",
				Modules = { "AutoPlay" },
				Keywords = "stuck fail fails failing section sections plan climb climbing stop stops idle standing tower",
				Text = "AutoPlay cannot plan every section yet. Moving platforms, sections built right at the jump limit like Gateway, and steps taller than a jump are where it gets stuck. The tower changes every few minutes, so the next one may go better.",
			},
		}

		for _, v7 in tbl14, nil, nil do
			v7.Terms = {}
			fn16(v7.Terms, v7.Keywords, 1)

			for k in v7.Terms, nil, nil do
				tbl18[k] = (tbl18[k] or 0) + 1
			end
		end

		fn33 = function()
			for k, v7 in tbl19, nil, nil do
				if table.find(v7, game.GameId) or table.find(v7, game.PlaceId) then
					return k
				end
			end

			return nil
		end

		fn34 = function(a,F)return(not a.Game or a.Game==F)and(not a.Except or a.Except~=F);end
		local function fn84(F,w,P)local j,O=0,0;for i,b in w,nil,nil do if F.Terms[i]and not(P and P[i])then j,O=j+b*math.log((# tbl14 +1)/( tbl18 [i]+0.5)),O+1;end;end;return j,O;end

		fn35 = function(arg, arg2, arg3)
			local v7 = fn33()
			local v8 = nil
			local n5 = 0
			local v9 = nil
			local n6 = 0
			local n7 = 0

			for _, v10 in tbl14, v8, nil do
				if fn34(v10, v7) then
					local v11 = table.clone(arg3 or {})
					local n8 = 0

					for _, v12 in arg2, nil, nil do
						if v10.Modules and table.find(v10.Modules, v12.Name) then
							v11[fn6(v12.Key)] = true
							n8 += 1
						end
					end

					local v12, v13 = fn84(v10, arg, v11)
					local flag = v12 > 0

					if flag then
						flag = v12 + n8 * 1.2 + (v10.Game and 0.3 or 0)
					end

					flag = flag or 0

					if n5 < flag then
						n5 = flag
						v9 = v10
						n6 = v12
						n7 = v13
					end
				end
			end

			return v9, n5, n6, n7
		end

		fn36 = function(arg, arg2, arg3)
			local v7 = fn33()
			local tbl35 = {}

			for k, v8 in tbl14, nil, nil do
				if fn34(v8, v7) and v8.Modules and table.find(v8.Modules, arg.Name) then
					local options = arg3 and v8.Options or {}
					local flag = false

					for _, v9 in options, nil, nil do
						flag = flag or fn5(v9) == fn5(arg3.Name)
					end

					if not arg3 or flag then
						table.insert(tbl35, {
							Fact = v8,
							Order = k,
							Primary = v8.Modules[1] == arg.Name,
							Score = (arg2 and fn84(v8, arg2) or 0) + (flag and 5 or 0),
						})
					end
				end
			end

			table.sort(tbl35, function(arg4, arg5)
				if arg4.Score ~= arg5.Score then
					return arg4.Score > arg5.Score
				end

				if arg4.Primary ~= arg5.Primary then
					return arg4.Primary
				end
				return arg4.Order < arg5.Order
			end)

			return tbl35
		end

		fn37 = function(arg)
			local text = arg.Text
			local v7 = table.clone(arg.Modules or {})
			local accent = arg.Accent or {}

			for _, v8 in accent, nil, nil do
				table.insert(v7, v8)
			end

			local tbl35 = {}

			for _, v8 in v7, nil, nil do
				local pos, v9 = text:find(v8, 1, true)

				while pos and not tbl35[v8] do
					local str = text:sub(pos - 1, pos - 1)
					local str2 = text:sub(v9 + 1, v9 + 1)

					if not str:match("[%w<]") and not str2:match("[%w>]") then
						local sub = text.sub
						text = ("%*%*%*"):format(text:sub(1, pos - 1), fn9(v8), sub(text, v9 + 1))
						tbl35[v8] = true
					else
						pos, v9 = text:find(v8, v9 + 1, true)
					end
				end
			end

			return text
		end

		local function fn85()
			local v7 = fn33()
			local tbl35 = {}

			for _, v8 in tbl14, nil, nil do
				if v8.Ask and v8.Game and v8.Game == v7 then
					table.insert(tbl35, v8.Ask)
				end
			end

			return #tbl35 > 0 and tbl35[math.random(1, #tbl35)] or nil
		end

		fn38 = function(arg, arg2, arg3, arg4)
			local tbl35 = {}

			for _, v7 in fn36(arg, arg2, arg4) do
				if #tbl35 < arg3 and (v7.Score > 0 or v7.Primary or arg4) then
					table.insert(tbl35, fn37(v7.Fact))
				end
			end

			return tbl35
		end

		createTextButton = function(parent, text, position, arg, arg2)
			local textButton = Instance.new("TextButton")
			textButton.AutoButtonColor = false
			textButton.BackgroundColor3 = color.Light(uiPallet.Main, 0.04)
			textButton.FontFace = uiPallet.Font
			textButton.Position = position
			textButton.Size = UDim2.fromOffset(arg, 24)
			textButton.Text = text
			textButton.TextColor3 = color.Dark(uiPallet.Text, 0.1)
			textButton.TextSize = 12
			textButton.TextTruncate = Enum.TextTruncate.AtEnd
			textButton.Parent = parent
			addCorner(textButton, UDim.new(1, 0))
			local uiStroke = Instance.new("UIStroke")
			uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			uiStroke.Color = color.Light(uiPallet.Main, 0.16)
			uiStroke.Parent = textButton

			textButton.MouseEnter:Connect(function()
				tween:Tween(textButton, uiPallet.Tween, { BackgroundColor3 = color.Light(uiPallet.Main, 0.12) })
			end)

			textButton.MouseLeave:Connect(function()
				tween:Tween(textButton, uiPallet.Tween, { BackgroundColor3 = color.Light(uiPallet.Main, 0.04) })
			end)

			textButton.MouseButton1Click:Connect(function()
				if vape.ThreadFix then
					setthreadidentity(8)
				end

				arg2()
			end)

			return textButton
		end

		fn39 = function(text, arg, arg2, arg3, text2)
			if vape.ThreadFix then
				setthreadidentity(8)
			end

			if assistant and assistant.Mode == "Landing" then
				assistant:SetMode("Chat")
			end

			if tbl3 and not arg3 then
				tbl3.Record(text, arg, text2)
			end

			layoutOrder += 1
			local n5 = arg and math.min(math.ceil(getFontBounds(text, 13, uiPallet.Font).X) + 2, 300) or n4
			local v7 = math.ceil(getFontBounds(arg and text or removeTags(text), 13, uiPallet.Font, n5).Y)
			local n6 = arg and 14 or 0
			local n7 = arg and 9 or 2
			local n8 = text2 and not arg and 30 or 0
			local frame = Instance.new("Frame")
			frame.BackgroundTransparency = 1
			frame.LayoutOrder = layoutOrder
			frame.Parent = scrollingFrame
			local frame2 = Instance.new("Frame")
			frame2.AnchorPoint = Vector2.new(arg and 1 or 0, 0)
			frame2.BackgroundColor3 = color.Light(uiPallet.Main, 0.1)
			frame2.BackgroundTransparency = arg and 0 or 1
			frame2.Position = UDim2.fromScale(arg and 1 or 0, 0)
			frame2.Parent = frame
			addCorner(frame2, UDim.new(0, 16))
			local textLabel = Instance.new("TextLabel")
			textLabel.BackgroundTransparency = 1
			textLabel.FontFace = uiPallet.Font
			textLabel.Position = UDim2.fromOffset(n6, n7 + n8)
			textLabel.RichText = not arg
			textLabel.Size = UDim2.fromOffset(n5, v7)
			textLabel.Text = text
			textLabel.TextColor3 = arg3 and color.Dark(uiPallet.Text, 0.4) or uiPallet.Text
			textLabel.TextSize = 13
			textLabel.TextWrapped = true
			textLabel.TextXAlignment = Enum.TextXAlignment.Left
			textLabel.TextYAlignment = Enum.TextYAlignment.Top
			textLabel.Parent = frame2

			if n8 > 0 then
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.BackgroundTransparency = 1
				textLabel2.FontFace = uiPallet.Font
				textLabel2.Size = UDim2.fromOffset(n5, 16)
				textLabel2.Text = text2
				textLabel2.TextColor3 = color.Dark(uiPallet.Text, 0.45)
				textLabel2.TextSize = 12
				textLabel2.TextXAlignment = Enum.TextXAlignment.Left
				textLabel2.Parent = frame2
				local frame3 = Instance.new("Frame")
				frame3.BackgroundColor3 = Color3.new(1, 1, 1)
				frame3.BackgroundTransparency = 0.928
				frame3.BorderSizePixel = 0
				frame3.Position = UDim2.fromOffset(0, 22)
				frame3.Size = UDim2.fromOffset(n5, 1)
				frame3.Parent = frame2
			end

			local flag = arg2 and #arg2 > 0
			local n9 = 0

			if flag then
				local n10 = 0
				local n11 = 0

				for _, v8 in arg2, nil, nil do
					local n12 = math.min(math.ceil(getFontBounds(v8.Text, 12, uiPallet.Font).X) + 22, n5)

					if n10 > 0 and n10 + n12 > n5 then
						n11 += 30
						n10 = 0
					end

					local callback = v8.Callback
					createTextButton(frame2, v8.Text, UDim2.fromOffset(n6 + n10, n7 + n8 + v7 + 10 + n11), n12, callback)
					n10 += n12 + 6
				end

				n9 = n11 + 34
			end

			local n10 = n8 + v7 + n9 + n7 * 2
			frame2.Size = UDim2.fromOffset(n5 + n6 * 2, n10)
			frame.Size = UDim2.new(1, 0, 0, n10)
			table.insert(tbl5, frame)

			while n2 < #tbl5 do
				table.remove(tbl5, 1):Destroy()
			end

			return frame, textLabel
		end

		fn40 = function(arg)
			local v7 = table.find(tbl5, arg)

			if v7 then
				table.remove(tbl5, v7)
			end

			arg:Destroy()
		end

		fn41 = function(arg, arg2)
			fn39(arg.Text, false, arg.Actions, nil, arg2)
		end

		fn42 = function()
			for _, v7 in tbl5, nil, nil do
				v7:Destroy()
			end

			table.clear(tbl5)
			layoutOrder = 0
			key = nil

			if tbl2 and tbl2.ResetContext then
				tbl2.ResetContext()
			end

			if tbl3 then
				tbl3.Current = nil
			end

			if assistant then
				assistant:SetMode("Landing")
			end
		end

		fn43 = function(arg, arg2, arg3)
			if vape.ThreadFix then
				setthreadidentity(8)
			end

			if arg2 then
				local name = arg2.Name
				fn28(fn82(arg, arg2), name)
			else
				local name = arg.Name
				fn28(fn29(arg, arg3), name)
			end
		end

		fn44 = function(arg)
			fn29(arg)
			arg.Module.Bind:SetVisible(true)
			fn28(arg.Module.Bind.Object, "Click here, then press a key")
		end

		fn45 = function(arg)
			return {
				Text = "Open it",
				Callback = function()
					local v7 = arg.Open()
					fn28(typeof(v7) == "Instance" and v7 or nil, arg.Name)
					fn41({ Text = arg.Done or ("Opened %*."):format(arg.Name) })
				end,
			}
		end

		fn46 = function(arg)
			if not arg then
				return nil
			end

			local tbl35 = {
				{
					Text = "Show me",
					Callback = function()
						local hint = arg.Hint
						fn28(arg.Target(), hint)
					end,
				},
			}

			if arg.Open then
				table.insert(tbl35, fn45(arg))
			end

			return tbl35
		end

		fn47 = function()
			local v7 = fn22()
			local tbl35 = { "How do I bind a module?", "Show me the Legit menu", "What's new?" }
			local v8 = fn85()

			if v7 then
				local insert = table.insert
				local str = ("What does %* do?"):format(v7)
				insert(tbl35, 2, str)
			end

			if v8 then
				table.insert(tbl35, 3, v8)
			end

			local tbl36 = {}

			for _, v9 in tbl35, nil, nil do
				table.insert(tbl36, {
					Text = v9,
					Callback = function()
						fn4(v9)
					end,
				})
			end

			return tbl36
		end

		fn48 = function(arg, arg2)
			local tbl35 = {
				{
					Text = "Show me",
					Callback = function()
						fn43(arg, arg2)
					end,
				},
				{
					Text = "Toggle",
					Callback = function()
						arg.Module:Toggle()
						fn41({ Text = ("Turned %* %*."):format(fn9(arg.Name), arg.Module.Enabled and "on" or "off") })
					end,
				},
			}

			if #arg.Options > 0 then
				table.insert(tbl35, {
					Text = "Settings",
					Callback = function()
						local v7 = fn4
						local str = ("%* settings"):format(arg.Name)
						v7(str)
					end,
				})
			end

			return tbl35
		end

		fn49 = function(arg, arg2)
			local module = arg.Module
			local flag = arg2 == "On" or arg2 == "Toggle" and not module.Enabled

			if module.Enabled == flag then
				local tbl35 = {}
				local str = "%* is already %*."
				local format = str.format
				local v7 = fn9(arg.Name)
				flag = flag and "on" or "off"
				tbl35.Text = format(str, v7, flag)
				tbl35.Actions = fn48(arg)
				return tbl35
			end

			module:Toggle()
			return { Text = ("Turned %* %*."):format(fn9(arg.Name), flag and "on" or "off"), Actions = fn48(arg) }
		end

		fn50 = function(arg, arg2)
			local module = arg.Module
			local v7 = fn8(module.Tooltip)
			local v8 = getFeatureTag(arg.Name)
			local tbl35 = {}
			local str = ("%* is in %* and is %* right now.%*"):format(fn9(arg.Name), fn25(arg), module.Enabled and "on" or "off", v8 == "new" and " It was added in the latest update." or v8 == "updated" and " It was improved in the latest update." or "")
			local str2 = v7 ~= "" and fn7(v7) or "It does not have a description yet."
			tbl35[1] = str
			tbl35[2] = str2

			if #arg.Options > 0 then
				local tbl36 = {}

				for i = 1, math.min(3, #arg.Options) do
					table.insert(tbl36, arg.Options[i].Name)
				end

				local insert = table.insert
				local str3 = ("It has %* setting%*, like %*."):format(#arg.Options, #arg.Options == 1 and "" or "s", table.concat(tbl36, ", "))
				insert(tbl35, str3)
			end

			local bind = module.Bind and fn68(module.Bind.Keys)

			if bind then
				local insert = table.insert
				local str3 = ("It is bound to %*."):format(fn9(bind))
				insert(tbl35, str3)
			end

			local v9 = fn38(arg, arg2, 1)[1]

			if v9 then
				local insert = table.insert
				local str3 = ("Good to know: %*"):format(v9)
				insert(tbl35, str3)
			end

			return { Text = table.concat(tbl35, "\n\n"), Actions = fn48(arg) }
		end

		fn51 = function(arg)
			if #arg.Options == 0 then
				return {
					Text = ("%* has no settings, you just turn it on or off."):format(fn9(arg.Name)),
					Actions = fn48(arg),
				}
			end

			local tbl35 = { (("%* has %* setting%*:"):format(fn9(arg.Name), #arg.Options, #arg.Options == 1 and "" or "s")) }

			for i = 1, math.min(12, #arg.Options) do
				local v7 = arg.Options[i]
				local v8 = fn10(fn8(v7.Settings.Tooltip))
				local insert = table.insert
				local str = ("- %* (%*)%*"):format(v7.Name, fn23(v7), v8 ~= "" and (": %*"):format(fn7(v8)) or "")
				insert(tbl35, str)
			end

			if #arg.Options > 12 then
				local insert = table.insert
				local str = ("...and %* more."):format(#arg.Options - 12)
				insert(tbl35, str)
			end

			local insert = table.insert
			local str = ("\nAsk me about one of them, or %* %* in the GUI to change them."):format(fn13() and "tap the three dots on" or "right click", arg.Name)
			insert(tbl35, str)
			local v7 = fn38(arg, nil, 1)[1]

			if v7 then
				local insert2 = table.insert
				local str2 = ("\nGood to know: %*"):format(v7)
				insert2(tbl35, str2)
			end

			return { Text = table.concat(tbl35, "\n"), Actions = fn48(arg) }
		end

		local function fn86(arg, arg2)
			local option = arg2.Option or {}
			local tbl35 = {}

			for _, v7 in { "Players", "NPCs" }, nil, nil do
				if option[v7] and option[v7].Enabled then
					table.insert(tbl35, v7)
				end
			end

			local tbl36 = {}

			if option.Invisible and option.Invisible.Enabled then
				table.insert(tbl36, "invisible players")
			end

			if option.Walls and option.Walls.Enabled then
				table.insert(tbl36, "players behind walls")
			end

			local str = ("Right now it goes after %*"):format(#tbl35 > 0 and fn9(fn11(tbl35, 2)) or "nothing")
			local str2

			if not (#tbl36 > 0) then
				str2 = str
			else
				str2 = ("%*, skips %*"):format(str, fn11(tbl36, 2))
			end

			local str3

			if option.Priority and option.Priority.Value then
				str3 = ("%* and picks by %* first"):format(str2, fn9(option.Priority.Value))
			else
				str3 = str2
			end

			return {
				Text = ([[The %* setting in %* decides who it goes after. Click it to choose Players or NPCs, ignore invisible players or players behind walls, and set the Priority.

%*.]]):format(fn9(arg2.Name), fn9(arg.Name), str3),
				Actions = fn48(arg),
			}
		end

		fn52 = function(arg, arg2)
			local option = arg2[1].Option
			if option.Type == "Targets" then
				return fn86(arg, option)
			end
			local v7 = fn8(option.Settings.Tooltip)
			local v8 = fn24(option)
			local v9 = tbl2.Means(arg, option)
			local v10 = tbl2.OptionNotes[("%*/%*"):format(arg.Name, option.Name)]
			local tbl35 = {}
			local name = arg.Name
			local str = ("%* is a %* in %*."):format(fn9(option.Name), fn23(option), fn9(name))
			local flag = v7 ~= "" and fn7(v7)

			if not flag then
				if v9 then
					flag = ("It sets %*.%*"):format(v9, v10 and v10.Limit and (" %*"):format(v10.Limit) or "")
				else
					flag = v9
				end
			end

			flag = flag or "It does not have a description yet."
			tbl35[1] = str
			tbl35[2] = flag
			local list = option.Settings.List or option.Option and option.Option.List

			if option.Type == "Dropdown" and list then
				local insert = table.insert
				local str2 = ("Choices: %*."):format(fn7(fn11(list, 10)))
				insert(tbl35, str2)
			end

			if v8 then
				local insert = table.insert
				local str2 = ("It is set to %* right now."):format(fn9(v8))
				insert(tbl35, str2)
			end

			local tbl36 = {}

			for i = 2, math.min(3, #arg2) do
				if arg2[i].Score >= 0.5 then
					table.insert(tbl36, arg2[i].Option.Name)
				end
			end

			if #tbl36 > 0 then
				local insert = table.insert
				local str2 = ("You might also mean %*."):format(table.concat(tbl36, " or "))
				insert(tbl35, str2)
			end

			local v11 = fn38(arg, nil, 1, option)[1]

			if v11 then
				local insert = table.insert
				local str2 = ("Good to know: %*"):format(v11)
				insert(tbl35, str2)
			end

			return { Text = table.concat(tbl35, "\n\n"), Actions = fn48(arg, option) }
		end

		fn53 = function(arg)
			local module = arg.Module

			if arg.Legit or not module.Bind then
				return {
					Text = ("Legit mods do not take keybinds. Click %* in the Legit menu to turn it on or off."):format(fn9(arg.Name)),
					Actions = fn48(arg),
				}
			end

			if fn13() then
				return {
					Text = ("Hold %* in the GUI for a second, then tap where you want its button. Tap that button to toggle it, and hold it for a second to remove it.%*"):format(fn9(arg.Name), module.Bind.Mobile and " It already has a button on your screen." or ""),
					Actions = fn48(arg),
				}
			end

			local str = fn68(module.Bind.Keys)
			local tbl35 = {}

			local str2 = [[Open the GUI, hover %* and click the bind icon on its right, then press a key. Shift click the icon to switch between toggling and running only while the key is held. Or just tell me, like "bind %* to R".

%*]]

			local format = str2.format
			local v7 = fn9(arg.Name)
			local name = arg.Name

			if str then
				str = ("It is bound to %*%* right now."):format(fn9(str), module.Bind.Hold and " and only runs while held" or "")
			end

			tbl35.Text = format(str2, v7, name, str or "It has no bind yet.")

			tbl35.Actions = {
				{
					Text = "Show me",
					Callback = function()
						fn44(arg)
					end,
				},
			}

			return tbl35
		end

		local function fn87(arg)
			local module = arg.Module

			return {
				Text = ("%* is %* your favorites. Hover it in the GUI and click the star to change that, or use the button below."):format(fn9(arg.Name), module.Favorited and "in" or "not in"),
				Actions = {
					{
						Text = module.Favorited and "Unfavorite" or "Favorite",
						Callback = function()
							module:SetFavorite(not module.Favorited)

							fn41({
								Text = ("%* %* %* your favorites."):format(module.Favorited and "Added" or "Removed", fn9(arg.Name), module.Favorited and "to" or "from"),
							})
						end,
					},
				},
			}
		end

		local function fn88(arg)
			local module = arg.Module

			if arg.Legit then
				return {
					Text = "Legit mods cannot be hidden, but the search box in the Legit menu filters them.",
					Actions = fn48(arg),
				}
			end

			return {
				Text = ("Click the pencil on the %* window, then click the square next to %* and press %*. It is %* right now. Hidden modules keep working, they are just out of the list."):format(arg.Category, fn9(arg.Name), fn9("DONE"), module.Visible and "shown" or "hidden"),
				Actions = {
					{
						Text = module.Visible and "Hide it" or "Show it",
						Callback = function()
							module:SetVisible(not module.Visible, true)

							fn41({
								Text = ("%* is %* the %* window."):format(fn9(arg.Name), module.Visible and "back in" or "hidden from", arg.Category),
							})
						end,
					},
				},
			}
		end

		local function fn89(arg)
			fn43(arg)

			if arg.Legit then
				return {
					Text = ("%* is in the Legit menu, I opened it and highlighted it for you."):format(fn9(arg.Name)),
					Actions = fn48(arg),
				}
			end

			local category = arg.Category

			return {
				Text = ("%* is in the %* window, I highlighted it for you."):format(fn9(arg.Name), fn9(category)),
				Actions = fn48(arg),
			}
		end

		local function fn90(arg)
			local str

			if arg.Legit then
				str = "Click it to turn it on or off, and right click it for its settings."
			elseif fn13() then
				str = "Tap it to turn it on or off, and tap the three dots on its right for its settings."
			else
				str = "Left click it to turn it on or off, and right click it for its settings."
			end

			return {
				Text = ("%* is in %*. %* It is %* right now."):format(fn9(arg.Name), fn25(arg), str, arg.Module.Enabled and "on" or "off"),
				Actions = fn48(arg),
			}
		end

		fn54 = function(arg, arg2, arg3)
			local module = arg.Module
			local tbl35 = {}
			local tbl36 = {}
			local v7 = fn36(arg, arg2)
			local v8 = arg3 and tbl2.SymptomOf(arg3, true)
			local flag = v7[1] and v7[1].Score > 0
			local n5 = 0

			if flag then
				table.insert(tbl35, fn37(v7[1].Fact))
				table.remove(v7, 1)
				n5 = 1
			end

			for _, v9 in v7, nil, nil do
				if n5 < 2 and (v9.Score > 0 or v9.Primary) then
					table.insert(tbl35, fn37(v9.Fact))
					n5 += 1
				end
			end

			if not module.Enabled then
				local insert = table.insert
				local str = ("%* is off right now, so turn it on first."):format(fn9(arg.Name))
				insert(tbl36, str)
			end

			for _, v9 in arg.Options, nil, nil do
				local option = v9.Option

				if v9.Type == "Targets" and option and option.Players and option.NPCs and not option.Players.Enabled and not option.NPCs.Enabled then
					local insert = table.insert
					local str = ("Its %* setting has neither Players nor NPCs picked, so it has nothing to go after. Pick one."):format(fn9(v9.Name))
					insert(tbl36, str)
				end
			end

			for _, v9 in tbl2.RelatedOptions(arg, arg3) do
				local v10 = fn10(fn8(v9.Settings.Tooltip))
				local enabled = v9.Option and v9.Option.Enabled or false
				local insert = table.insert
				local str = ("Check its %* setting, it's %* right now%*.%*"):format(fn9(v9.Name), enabled and "on" or "off", v10 ~= "" and (" (%*)"):format(fn7(tbl2.Lower(v10))) or "", enabled and " Turn it off if it's getting in the way." or "")
				insert(tbl36, str)
			end

			local v9 = tbl2.Rivals(arg, v8 and v8.Resource)
			local tbl37 = {}

			for i = 1, math.min(2, #v9) do
				local v10 = v9[i]
				table.insert(tbl37, v10.Entry)
				local insert = table.insert
				local str = ("Turn off %* for a moment. It also %*, and if that fixes it, the two were fighting over it."):format(fn9(v10.Entry.Name), tbl2.Resources[v10.Resource].Does)
				insert(tbl36, str)
			end

			arg3 = arg3 and tbl2.Culprits(arg3) or {}

			for _, v10 in arg3, nil, nil do
				if v10.Entry ~= arg and not table.find(tbl37, v10.Entry) and #tbl37 < 2 then
					table.insert(tbl37, v10.Entry)
					local insert = table.insert
					local str = ("%* Try turning it off too, it could be getting in the way."):format(tbl2.CulpritLine(v10, ""))
					insert(tbl36, str)
					break
				end
			end

			if v8 then
				local v10, v11 = tbl2.Uses(arg, v8.Resource)

				if v10 == "now" and v11 then
					local insert = table.insert
					local doing = v8.Doing
					local gateFix = tbl2.GateFix
					local str = ("%* is %* because %*, so %* if you don't want that."):format(fn9(arg.Name), doing, tbl2.GateClause(v11), gateFix(v11))
					insert(tbl36, str)
				end
			end

			if #tbl36 == 0 and n5 == 0 then
				local insert = table.insert
				local str = ("Check its settings, a lot of problems come from them. Ask me \"%* settings\" to see them."):format(arg.Name)
				insert(tbl36, str)
			end

			table.insert(tbl36, "If it shows an error, press F9, copy the red line and paste it here, I'll tell you what it means. If it keeps happening, report it in the Discord.")
			table.insert(tbl35, tbl2.Numbered(tbl36))
			table.insert(tbl35, tbl2.Narrow(arg, v8))
			return { Text = table.concat(tbl35, "\n\n"), Actions = tbl2.Toggles(tbl37) or fn48(arg) }
		end

		local function fn91(arg, arg2)
			local tbl35 = {}
			local tbl36 = {}

			for _, v7 in arg, nil, nil do
				local module = v7.Module

				if arg2 then
					local flag = arg2 == "On" or arg2 == "Toggle" and not module.Enabled

					if module.Enabled ~= flag then
						module:Toggle()
					end

					local insert = table.insert
					local str = ("%* is %*"):format(fn9(v7.Name), flag and "on" or "off")
					insert(tbl35, str)
				else
					local v8 = fn10(fn8(module.Tooltip))
					local insert = table.insert
					local str = ("- %* (%*, %*)%*"):format(fn9(v7.Name), v7.Category, module.Enabled and "on" or "off", v8 ~= "" and (": %*"):format(fn7(v8)) or "")
					insert(tbl35, str)

					table.insert(tbl36, {
						Text = v7.Name,
						Callback = function()
							local v9 = fn4
							local str2 = ("What does %* do?"):format(v7.Name)
							v9(str2)
						end,
					})
				end
			end

			if arg2 then
				return { Text = ("Done, %* now."):format(fn11(tbl35, #tbl35)) }
			end
			return { Text = ("Here is how they compare:\n%*"):format(table.concat(tbl35, "\n")), Actions = tbl36 }
		end

		local function fn92()
			local json = fn2("catsix/features.json") and loadJSON("catsix/features.json")
			local text = type(json) == "table" and json.text
			if type(text) ~= "string" then
				return {}
			end
			local tbl35 = { BedWars = "BEDWARS", IllegalSoccer = "ILLEGAL SOCCER", TowerOfHell = "TOWER OF HELL" }
			local tbl36 = { GENERAL = true, UNIVERSAL = true }
			local v7 = fn33()

			if v7 then
				tbl36[tbl35[v7]] = true
			end

			local tbl37 = {}
			local v8 = nil

			for match in text:gsub("\27%[[%d;]*m", ""):gmatch("[^\r\n]+") do
				local match2 = match:match("^%[([%u%s]+)%]%s*$")

				if match2 then
					v8 = match2
				elseif v8 and tbl36[v8] then
					local match3 = match:match("^%[.%]%s*(.+)$")

					if match3 then
						table.insert(tbl37, match3)
					end
				end
			end

			return tbl37
		end

		fn55 = function(arg)
			local v7 = fn92()

			if arg then
				local tbl35 = {}

				for _, v8 in v7, nil, nil do
					local pos, v9 = v8:find(arg.Name, 1, true)

					if pos and not v8:sub(pos - 1, pos - 1):match("%w") and not v8:sub(v9 + 1, v9 + 1):match("%w") then
						local insert = table.insert
						local str = ("- %*"):format(fn7(v8))
						insert(tbl35, str)
					end
				end

				local v8 = getFeatureTag(arg.Name)

				if #tbl35 > 0 then
					local concat = table.concat
					local min = math.min

					return {
						Text = ("What changed in %* in the latest update:\n%*"):format(fn9(arg.Name), concat(tbl35, "\n", 1, min(#tbl35, 6))),
						Actions = fn48(arg),
					}
				end

				if v8 then
					return {
						Text = ("%* was %* in the latest update, the changelog just does not have its own line for it."):format(fn9(arg.Name), v8 == "new" and "added" or "improved"),
						Actions = fn48(arg),
					}
				end

				return {
					Text = ("%* did not change in the latest update."):format(fn9(arg.Name)),
					Actions = fn48(arg),
				}
			end

			local tbl35 = {}
			local tbl36 = {}

			for _, v8 in tbl.Entries, nil, nil do
				local v9 = getFeatureTag(v8.Name)

				if v9 == "new" then
					table.insert(tbl35, v8.Name)
				elseif v9 == "updated" then
					table.insert(tbl36, v8.Name)
				end
			end

			if #v7 == 0 and #tbl35 == 0 and #tbl36 == 0 then
				return { Text = "Nothing in this game is marked new or updated right now." }
			end
			local tbl37 = {}

			if #v7 > 0 then
				local tbl38 = {}

				for i = 1, math.min(#v7, 6) do
					local insert = table.insert
					local str = ("- %*"):format(fn7(v7[i]))
					insert(tbl38, str)
				end

				local insert = table.insert
				local str = "From the latest update:\n%*%*"
				local format = str.format
				local str2 = table.concat(tbl38, "\n")
				local flag = #v7 > 6
				local str3

				if flag then
					str3 = ("\n...and %* more. Ask me about one module, like \"what changed in %*\"."):format(#v7 - 6, tbl35[1] or tbl36[1] or "Killaura")
				else
					str3 = flag
				end

				local v8 = format(str, str2, str3 or "")
				insert(tbl37, v8)
			end

			if #tbl35 > 0 then
				local insert = table.insert
				local str = ("New: %*."):format(fn9(fn11(tbl35, 20)))
				insert(tbl37, str)
			end

			if #tbl36 > 0 then
				local insert = table.insert
				local str = ("Updated: %*."):format(fn11(tbl36, 20))
				insert(tbl37, str)
			end

			if #tbl35 > 0 or #tbl36 > 0 then
				table.insert(tbl37, "They carry a NEW or UPDATED tag in the GUI.")
			end

			local tbl38 = {}

			for i = 1, math.min(3, #tbl35) do
				local v8 = tbl35[i]

				table.insert(tbl38, {
					Text = v8,
					Callback = function()
						local v9 = fn4
						local str = ("What does %* do?"):format(v8)
						v9(str)
					end,
				})
			end

			return { Text = table.concat(tbl37, "\n\n"), Actions = tbl38 }
		end

		fn56 = function(arg)
			local tbl35 = {}
			local n5 = 0

			for _, v7 in tbl.Entries, nil, nil do
				if arg == "Legit" and v7.Legit or not v7.Legit and v7.Category == arg then
					table.insert(tbl35, v7.Module.Enabled and fn9(v7.Name) or v7.Name)
					n5 += v7.Module.Enabled and 1 or 0
				end
			end

			local str = arg == "Legit" and "The Legit menu" or ("The %* window"):format(arg)
			if #tbl35 == 0 then
				return { Text = ("%* is empty in this game."):format(str) }
			end

			return {
				Text = ("%* has %* module%*: %*.%*"):format(str, #tbl35, #tbl35 == 1 and "" or "s", table.concat(tbl35, ", "), n5 > 0 and "\n\nThe ones in color are on." or ""),
			}
		end

		fn57 = function()
			local tbl35 = {}

			for _, v7 in tbl.Entries, nil, nil do
				if v7.Module.Enabled then
					table.insert(tbl35, v7.Name)
				end
			end

			if #tbl35 == 0 then
				return { Text = "Nothing is on right now." }
			end

			return {
				Text = ("%* module%* on: %*."):format(#tbl35, #tbl35 == 1 and " is" or "s are", fn9(table.concat(tbl35, ", "))),
				Actions = {
					{
						Text = "Turn them all off",
						Callback = function()
							local v7 = nil
							local n5 = 0

							for _, v8 in tbl.Entries, v7, nil do
								if v8.Module.Enabled then
									v8.Module:Toggle()
									n5 += 1
								end
							end

							fn41({ Text = ("Turned off %* module%*."):format(n5, n5 == 1 and "" or "s") })
						end,
					},
				},
			}
		end

		fn58 = function()
			local tbl35 = {}
			local n5 = 0
			local n6 = 0

			for _, v7 in tbl.Entries, nil, nil do
				if v7.Legit then
					n5 += 1
				else
					n6 += 1
					tbl35[v7.Category] = true
				end
			end

			local tbl36 = {}
			local format = ("This game has %* modules across %* windows, plus %* legit mods.").format
			local v7 = fn9(tostring(n6))
			local v8 = getTableSize(tbl35)
			local v9 = table.pack(fn9(tostring(n5)))
			v9.n = 4 + v9.n - 1
			table.move(v9, 1, v9.n, 4, v9)
			v9[1] = "This game has %* modules across %* windows, plus %* legit mods."
			v9[2] = v7
			v9[3] = v8
			tbl36.Text = format(table.unpack(v9, 1, v9.n))
			return tbl36
		end

		local function fn93()
			local v7 = fn22()
			local v8 = fn22(v7)
			local tbl35 = { "How do I share my config?", "Show me the Legit menu", "What's new?" }
			local v9 = fn85()

			if v7 then
				local insert = table.insert
				local str = ("What does %* do?"):format(v7)
				insert(tbl35, 1, str)
				local insert2 = table.insert
				local str2 = ("Open %* settings"):format(v7)
				insert2(tbl35, 2, str2)
			end

			if v8 then
				local insert = table.insert
				local str = ("Where is %*?"):format(v8)
				insert(tbl35, str)
			end

			if v9 then
				table.insert(tbl35, v9)
			end

			local tbl36 = {}

			for _, v10 in tbl35, nil, nil do
				table.insert(tbl36, {
					Text = v10,
					Callback = function()
						fn4(v10)
					end,
				})
			end

			return {
				Text = ([[I am %*. I know every module loaded in this game and how the GUI works. Ask me what a module or setting does or where something is, and I will highlight it on your screen.%*

I can also do things for you: open windows and menus, turn modules and settings on or off, change values ("set speed mode to cframe"), bind keys ("bind killaura to R"), create or switch profiles, and add friends or targets.]]):format("shaders v3", v9 and " I also know how this game works, like prices, ranges and what gets you flagged." or ""),
				Actions = tbl36,
			}
		end

		local function fn94(arg)
			local tbl35 = {}

			for i = 1, math.min(3, #arg) do
				if arg[i].Score >= arg[1].Score * 0.4 then
					table.insert(tbl35, arg[i].Entry)
				end
			end

			key = tbl35[1].Key
			if #tbl35 == 1 then
				return fn50(tbl35[1])
			end
			local tbl36 = { "These look like what you are after:" }
			local tbl37 = {}

			for _, v7 in tbl35, nil, nil do
				local v8 = fn10(fn8(v7.Module.Tooltip))
				local insert = table.insert
				local str = ("- %* (%*)%*"):format(fn9(v7.Name), v7.Category, v8 ~= "" and (": %*"):format(fn7(v8)) or "")
				insert(tbl36, str)

				table.insert(tbl37, {
					Text = v7.Name,
					Callback = function()
						local v9 = fn4
						local str2 = ("What does %* do?"):format(v7.Name)
						v9(str2)
					end,
				})
			end

			return { Text = table.concat(tbl36, "\n"), Actions = tbl37 }
		end

		local function fn95(arg)
			local tbl35 = {}
			local tbl36 = {}

			for i = 1, math.min(2, #arg) do
				local entry = arg[i].Entry
				table.insert(tbl35, fn9(entry.Name))

				table.insert(tbl36, {
					Text = entry.Name,
					Callback = function()
						local v7 = fn4
						local str = ("What does %* do?"):format(entry.Name)
						v7(str)
					end,
				})
			end

			return {
				Text = ("I am not sure what you mean. Were you asking about %*?"):format(table.concat(tbl35, " or ")),
				Actions = tbl36,
			}
		end

		local function fn96(arg, arg2, arg3)
			if arg2.disable or arg2.deactivate or arg2.stop or arg:find("%sturn%s[%w%s]-off%s") or arg:find("%sswitch%s[%w%s]-off%s") or arg3[#arg3] == "off" then
				return "Off"
			end

			if arg2.enable or arg2.activate or arg2.start or arg:find("%sturn%s[%w%s]-on%s") or arg:find("%sswitch%s[%w%s]-on%s") or arg3[#arg3] == "on" then
				return "On"
			end

			if arg2.toggle then
				return "Toggle"
			end
			return nil
		end

		local function fn97(arg, arg2)
			return arg2.error or arg2.errors or arg2.errored or arg2.broken or arg2.bug or arg2.bugged or arg2.buggy or arg2.crash or arg2.crashing or arg:find("no?t work") ~= nil or arg:find(" stopped work", 1, true) ~= nil
		end

		local function fn98(arg, arg2)
			for _, v7 in {
				" whats new ",
				" what is new ",
				" new modules ",
				" new features ",
				" whats changed ",
				" what changed ",
				" patch notes ",
			}, nil, nil do
				if arg:find(v7, 1, true) then
					return true
				end
			end

			local changelog = arg2.changelog or arg2.changelogs

			if not changelog then
				changelog = (arg2.updated or arg2.update or arg2.updates or arg2.latest or arg2.recent or arg2.recently) and not arg2.how
			end

			return changelog or false
		end

		fn59 = function(arg)
			local flag = true

			while flag do
				flag = false

				for _, v7 in tbl30, nil, nil do
					if arg:lower():sub(1, #v7) == v7 then
						arg = arg:sub(#v7 + 1)
						flag = true
					end
				end
			end

			return (arg:gsub("[%s%?%.!]+$", ""):gsub("%s+[Pp]lease$", ""):gsub("%s+[Pp]ls$", ""))
		end

		local function fn99(arg)
			return (arg:gsub("^[%s:\"']+", ""):gsub("[%s\"']+$", ""))
		end

		fn60 = function(arg, arg2)
			local str = arg:lower()

			for _, v7 in arg2, nil, nil do
				local find = str.find
				local str2 = ("%%f[%%w]%*%%f[%%W]"):format(v7)
				local v8, v9 = find(str, str2)

				if v9 then
					local v10 = fn99(arg:sub(v9 + 1))
					if v10 ~= "" then
						return v10
					end
				end
			end

			return nil
		end

		fn61 = function(arg)
			if not next(tbl16) then
				for _, v7 in Enum.KeyCode:GetEnumItems() do
					local name = v7.Name
					tbl16[v7.Name:lower()] = name
				end
			end

			local str = arg:lower():gsub("[^%w]", "")
			return tbl31[str] or tbl16[str]
		end

		local function fn100(arg)
			local str = arg:lower()
			local v7 = nil

			for _, v8 in v5:GetPlayers() do
				local str2 = v8.Name:lower()
				local str3 = v8.DisplayName:lower()
				if str2 == str or str3 == str then
					return v8.Name, true
				end

				if not v7 and (str2:sub(1, #str) == str or str3:sub(1, #str) == str) then
					v7 = v8
				end
			end

			if v7 then
				return v7.Name, true
			end
			return arg, false
		end

		fn62 = function(arg, arg2)
			local option = arg.Option
			local str = arg2:lower()
			if not option then
				return false, (("I could not reach %* right now."):format(arg.Name))
			end

			if arg.Type == "Toggle" then
				local v7 = tbl32[str]
				if v7 == nil then
					return false, (("%* is a toggle, so tell me on or off."):format(arg.Name))
				end

				if option.Enabled ~= v7 then
					option:Toggle()
				end

				return true, (("%* is %*"):format(fn9(arg.Name), v7 and "on" or "off"))
			end

			if arg.Type == "Slider" then
				local num = tonumber(str:match("%-?%d*%.?%d+"))
				if not num then
					return false, (("%* needs a number, like 10."):format(arg.Name))
				end
				local min = option.Min or arg.Settings.Min or num
				local max = option.Max or arg.Settings.Max or num
				local decimal = option.Decimal or 1
				local n5 = math.round(math.clamp(num, min, max) * decimal) / decimal
				option:SetValue(n5, nil, true)
				return true, (("%* is %*%*"):format(fn9(arg.Name), fn12(n5), n5 ~= num and (" (it goes from %* to %*)"):format(fn12(min), fn12(max)) or ""))
			end

			if arg.Type == "TwoSlider" then
				local tbl35 = {}

				for match in str:gmatch("%-?%d*%.?%d+") do
					table.insert(tbl35, tonumber(match))
				end

				if #tbl35 == 0 then
					return false, (("%* needs a range, like 8 to 12."):format(arg.Name))
				end
				local n5 = math.clamp(math.min(tbl35[1], tbl35[2] or tbl35[1]), option.Min, option.Max)
				local n6 = math.clamp(math.max(tbl35[1], tbl35[2] or tbl35[1]), option.Min, option.Max)
				option:SetValue(false, n5)
				option:SetValue(true, n6)
				return true, (("%* is %* to %*"):format(fn9(arg.Name), fn12(n5), fn12(n6)))
			end

			if arg.Type == "Dropdown" then
				local list = arg.Settings.List or option.List or {}
				local v7 = nil

				for _, v8 in list, nil, nil do
					if v8:lower() == str then
						v7 = v8
						break
					else
						v7 = nil
					end
				end

				for _, v8 in list, nil, nil do
					if not v7 and v8:lower():find(str, 1, true) then
						v7 = v8
					end
				end

				if not v7 then
					return false, (("%* can be %*."):format(arg.Name, fn7(fn11(list, 10))))
				end
				option:SetValue(v7)
				return true, (("%* is %*"):format(fn9(arg.Name), fn7(v7)))
			end

			if arg.Type == "TextBox" then
				option:SetValue(arg2, true)
				return true, (("%* is \"%*\""):format(fn9(arg.Name), fn7(arg2)))
			end

			if arg.Type == "ColorSlider" then
				local v7 = tbl12[str]
				if not v7 then
					return false, (("Pick a color like red, green, blue, purple or white for %*."):format(arg.Name))
				end
				option:SetValue(v7[1], v7[2], v7[3])
				return true, (("%* is %*"):format(fn9(arg.Name), str))
			end

			return false, (("I cannot change %* from here, %* it in the GUI instead."):format(arg.Name, fn13() and "tap" or "click"))
		end

		local function fn101(arg, arg2, arg3)
			local v7, v8 = fn62(arg2, (arg3 == "On" or arg3 == "Toggle" and not (arg2.Option and arg2.Option.Enabled or false)) and "on" or "off")
			key = arg.Key
			return { Text = ("Done, %* in %*."):format(v8, fn9(arg.Name)), Actions = fn48(arg, arg2) }
		end

		local function fn102(arg)
			local tbl35 = {}

			if key and tbl.Keys[key] then
				table.insert(tbl35, tbl.Keys[key])
			end

			for _, v7 in fn73(arg) do
				table.insert(tbl35, v7.Entry)
				if not (#tbl35 >= 4) then
					continue
				end
				break
			end

			for k, v7 in tbl35, nil, nil do
				local v8 = fn21(v7, arg, 1)
				if v8[1] and v8[1].Score >= 1 and (v8[1].Matched >= 2 or k == 1 and v7.Key == key) then
					return v7, v8[1].Option
				end
			end

			return nil, nil
		end

		fn63 = function(arg)
			local str = arg:lower()
			local name = nil

			for _, v7 in vape.Categories.Profiles.List, nil, nil do
				if v7.Name:lower() == str then
					return v7.Name
				end

				if not name and v7.Name:lower():sub(1, #str) == str then
					name = v7.Name
				end
			end

			return name
		end

		fn64 = function()
			local tbl35 = {}

			for _, v7 in vape.Categories.Profiles.List, nil, nil do
				table.insert(tbl35, fn9(v7.Name))
			end

			return fn11(tbl35, 10)
		end

		fn65 = function(arg)
			local profiles = vape.Categories.Profiles

			task.delay(0.2, function()
				if vape.ThreadFix then
					setthreadidentity(8)
				end

				vape:Save(arg)
				vape:Load(true)
				profiles:ChangeValue()
			end)
		end

		fn66 = function(arg)
			local v7 = fn19(arg)
			local tbl35 = nil
			local n5 = 0

			local function fn103(arg2, arg3)
				if not arg3 or not arg3.Type then
					return
				end
				local tbl36 = {}
				fn16(tbl36, arg2, 1)
				local n6 = 0
				local n7 = 0

				for k in tbl36, nil, nil do
					n6 += 1
					n7 += v7[k] == 1 and 1 or 0
				end

				local n8 = n6 > 0 and n7 / n6 or 0

				if n8 > n5 then
					tbl35 = { Name = arg2, Option = arg3, Settings = {}, Type = arg3.Type }
					n5 = n8
				end
			end

			for _, v8 in vape.Settings, nil, nil do
				for k, v9 in v8.Options, nil, nil do
					fn103(k, v9)
				end
			end

			for _, v8 in vape.Categories, nil, nil do
				if v8.Type == "CategoryList" then
					for k, v9 in v8.Options, nil, nil do
						fn103(k, v9)
					end
				end
			end

			return n5 >= 1 and tbl35 or nil
		end

		local function fn103(arg, arg2, arg3, arg4, arg5)
			key = arg.Key
			local v7 = fn69(arg4, tbl23)

			if arg2 and not v7 then
				local v8 = fn21(arg, arg5, 1)
				local option = v8[1] and v8[1].Score >= 0.5 and v8[1].Option
				if option and option.Type == "Toggle" then
					return fn101(arg, option, arg2)
				end
				return fn49(arg, arg2)
			end

			if fn97(arg3, arg4) then
				return fn54(arg)
			end

			if fn69(arg4, tbl10) then
				return fn53(arg)
			end

			if fn69(arg4, tbl24) then
				return fn87(arg)
			end

			if fn69(arg4, tbl25) then
				return fn88(arg)
			end

			if arg2 and (arg4.is or arg4.enabled) then
				return {
					Text = ("%* is %* right now."):format(fn9(arg.Name), arg.Module.Enabled and "on" or "off"),
					Actions = fn48(arg),
				}
			end

			if fn69(arg4, tbl27) then
				for _, v8 in arg.Options, nil, nil do
					if v8.Type == "Targets" then
						return fn86(arg, v8)
					end
				end
			end

			local v8 = fn21(arg, arg5, 0.6)
			if v8[1] and v8[1].Score >= 0.5 then
				return fn52(arg, v8)
			end

			if fn69(arg4, tbl11) then
				return fn51(arg)
			end

			if fn69(arg4, tbl26) then
				return fn89(arg)
			end

			if (arg4.show or arg4.open) and not v7 then
				fn43(arg, nil, arg4.open)

				return {
					Text = ("%* is in %*, I highlighted it for you."):format(fn9(arg.Name), fn25(arg)),
					Actions = fn48(arg),
				}
			end

			if arg2 or arg4.use then
				return fn90(arg)
			end
			return fn50(arg)
		end

		fn67 = function(arg)
			fn17()
			local v7 = fn59(tbl2.Ungreet(arg))
			local v8 = fn5(v7)
			local parts = v8:split(" ")
			local tbl35 = {}

			for _, v9 in parts, nil, nil do
				tbl35[v9] = true
			end

			local str = (" %* "):format(v8)
			local v9 = fn19(v8)
			local v10, v11 = fn32(v9)
			if v8 == "" then
				return { Text = "Ask me anything about CatVape.", Actions = fn47() }
			end

			if #parts <= 3 and fn69(tbl35, { "hi", "hello", "hey", "yo", "sup", "hiya", "howdy", "heya" }) then
				return tbl2.Runners.Greet(nil, arg)
			end

			if fn69(tbl35, { "thanks", "thank", "ty", "thx", "tysm" }) then
				return tbl2.Runners.Thanks(nil, arg)
			end

			if #parts <= 2 and fn69(tbl35, { "ok", "okay", "k", "kk", "cool", "nice", "alright", "gotcha", "great", "bet" }) then
				return tbl2.Runners.Ack(nil, arg)
			end

			if v8 == "help" or str:find(" what can you do ", 1, true) then
				return tbl2.Runners.Help(nil, arg)
			end

			if str:find(" who are you ", 1, true) or str:find(" what are you ", 1, true) then
				return tbl2.Runners.Identity(nil, arg)
			end
			local v12 = fn96(str, tbl35, parts)
			local flag = str:find(" what does ", 1, true) ~= nil or str:find(" what is ", 1, true) ~= nil or str:find(" whats ", 1, true) ~= nil
			local flag2 = v10 ~= nil and v11 >= 2 and not flag
			local tbl36 = {}

			for _, part in fn20(parts) do
				if not (flag2 and v10.Terms[fn6(part.Key)]) then
					table.insert(tbl36, part)
				end
			end

			if #tbl36 >= 2 then
				key = tbl36[1].Key
				if v12 and not fn69(tbl35, tbl23) then
					return fn91(tbl36, v12)
				end
				local flag3 = fn69(tbl35, tbl28)

				if not flag3 then
					flag3 = not (fn69(tbl35, tbl10) or fn69(tbl35, tbl11) or fn69(tbl35, tbl24) or fn69(tbl35, tbl25))
				end

				if flag3 then
					return fn91(tbl36)
				end
			end

			local v13 = fn74(parts)

			if v13 and flag2 and v10.Terms[fn6(v13.Key)] then
				v13 = nil
			end

			local n5 = 0
			local flag3 = true

			for k, v14 in v9, nil, nil do
				if v14 == 1 and tbl8[k] then
					n5 += 1
				elseif v14 == 1 then
					flag3 = false
				end
			end

			local v14 = key and tbl.Keys[key]

			if not v13 and v14 and (fn69(tbl35, tbl22) and (flag3 or v11 < 2) or flag3 and n5 > 0 and #parts <= 3) then
				v13 = v14
			end

			if v13 then
				return fn103(v13, v12, str, tbl35, v9)
			end

			if v12 and not fn69(tbl35, tbl23) then
				local v15 = fn66(v8)

				if v15 and v15.Type == "Toggle" then
					local v16, v17 = fn62(v15, (v12 == "On" or v12 == "Toggle" and not v15.Option.Enabled) and "on" or "off")
					local tbl37 = { Text = ("Done, %*."):format(v17) }
					local v18 = fn46
					local v19 = table.pack(fn31(fn5(v15.Name)))
					tbl37.Actions = v18(table.unpack(v19, 1, v19.n))
					return tbl37
				end

				local v16, v17 = fn102(v9)
				if v16 and v17.Type == "Toggle" then
					return fn101(v16, v17, v12)
				end
			end

			if fn98(str, tbl35) then
				return fn55()
			end
			local v15 = fn75(tbl35)
			if v15 and (#parts <= 2 or fn69(tbl35, tbl29)) then
				return fn56(v15)
			end

			if not tbl35.how and (tbl35.enabled or tbl35.active or tbl35.running or tbl35.on and fn69(tbl35, { "modules", "module", "everything", "what", "whats", "which" })) then
				return fn57()
			end

			if str:find(" how many ", 1, true) then
				return fn58()
			end
			local flag4 = v12 == "Off"
			local all

			if flag4 then
				all = tbl35.all or tbl35.everything
			else
				all = flag4
			end

			if all then
				return fn57()
			end

			if v14 and v11 < 2 then
				local v16 = fn21(v14, v9, 1)
				if v16[1] and v16[1].Score >= 1 then
					return fn52(v14, v16)
				end
			end

			if v10 and v11 >= 2 then
				return { Text = v10.Answer(), Actions = fn46(v10.Place and fn31(v10.Place)) }
			end
			local v16 = fn73(v9)

			if v16[1] and v16[1].Score >= 4 then
				local v17 = fn21(v16[1].Entry, v9, 1)
				if v17[1] and v17[1].Score >= 1 then
					key = v16[1].Entry.Key
					return fn52(v16[1].Entry, v17)
				end
				return fn94(v16)
			end

			if v10 and v11 >= 1 then
				return { Text = v10.Answer(), Actions = fn46(v10.Place and fn31(v10.Place)) }
			end

			if not v16[1] or v16[1].Score < tbl2.ChatScore then
				return tbl2.Chatter(arg)
			end
			return fn95(v16)
		end

		local function fn104(arg)
			local bedwars = getgenv().bedwars
			local itemMeta = arg and bedwars and bedwars.ItemMeta and bedwars.ItemMeta[arg]
			itemMeta = itemMeta and itemMeta.displayName

			if not itemMeta then
				itemMeta = tostring(arg or "nothing"):gsub("_", " ")
			end

			return itemMeta
		end

		local function fn105(arg)
			local n5 = math.floor(arg)
			if n5 < 60 then
				return (("%* second%*"):format(n5, n5 == 1 and "" or "s"))
			end
			local n6 = n5 // 60
			if n6 < 60 then
				return (("%* minute%*"):format(n6, n6 == 1 and "" or "s"))
			end
			local n7 = n6 // 60
			local n8 = n6 % 60
			local str = "%* hour%*%*"
			local format = str.format
			local str2 = n7 == 1 and "" or "s"
			local flag = n8 > 0

			if flag then
				flag = (" %* minute%*"):format(n8, n8 == 1 and "" or "s")
			end

			return (format(str, n7, str2, flag or ""))
		end

		local function fn106(arg, arg2)
			if type(arg) ~= "table" then
				return nil
			end
			local v7 = arg[arg2]

			if v7 == nil then
				v7 = arg[tonumber(arg2) or arg2]
			end

			if v7 == nil then
				v7 = arg[tostring(arg2)]
			end

			return v7
		end

		local function fn107(arg, arg2)
			local v7 = fn106(arg, arg2)
			return type(v7) == "number" and v7 or type(v7) == "table" and #v7 or 0
		end

		tbl15 = {
			{
				Id = "kit",
				Game = "BedWars",
				Keywords = "kit kits using playing equipped current",
				Needs = { { "i", "im", "my", "me", "am" } },
				Avoid = "should best good recommend buy worth pick choose fusion work works why draft history previous other others enemy enemies their they them mode modes gamemode queue map",
				Run = function()
					local store = getgenv().store
					local bedwars = getgenv().bedwars
					local equippedKits = store.equippedKits or {}
					if #equippedKits == 0 then
						return "You do not have a kit equipped right now."
					end
					local tbl35 = {}

					for _, v7 in equippedKits, nil, nil do
						local v8 = bedwars.BedwarsKitMeta[v7]
						table.insert(tbl35, fn9(v8 and v8.name or v7))
					end

					local v7 = bedwars.BedwarsKitMeta[equippedKits[1]]
					local str = v7 and type(v7.description) == "string" and fn10(fn8(v7.description)) or ""
					return (("You are playing %*.%*"):format(fn11(tbl35, 3), str ~= "" and (" %*"):format(fn7(str)) or ""))
				end,
			},
			{
				Id = "kits",
				Game = "BedWars",
				Keywords = "kit kits using playing picked",
				Needs = {
					{
						"enemies",
						"enemy",
						"everyone",
						"everybody",
						"others",
						"other",
						"they",
						"them",
						"their",
						"players",
						"people",
						"teams",
						"opponent",
						"opponents",
						"@player",
					},
				},
				Avoid = "draft history previous way why",
				Run = function(arg)
					local bedwars = getgenv().bedwars
					local str = nil

					for _, v7 in arg, nil, nil do
						local v8, v9 = fn100(v7.Word)

						if v9 and #v7.Word >= 3 and v8 ~= v5.LocalPlayer.Name then
							str = v8
						end
					end

					local tbl35 = {}

					for _, v7 in v5:GetPlayers() do
						if v7 ~= v5.LocalPlayer and (not str or v7.Name == str) then
							local tbl36 = {}
							local split = string.split
							local v8 = tostring
							local attribute = v7:GetAttribute("PlayingAsKits") or ""

							for _, v9 in split(v8(attribute), ",") do
								local flag = v9 ~= "" and v9 ~= "none" and bedwars.BedwarsKitMeta[v9]

								if flag then
									table.insert(tbl36, flag.name)
								end
							end

							local insert = table.insert
							local str2 = ("- %*%*: %*"):format(fn7(v7.DisplayName), v7.Team and (" (%*)"):format(v7.Team.Name) or "", #tbl36 > 0 and fn9(fn11(tbl36, 3)) or "no kit")
							insert(tbl35, str2)
						end
					end

					if #tbl35 == 0 then
						str = str and "I could not find that player's kit."
						return str or "There is nobody else in this server right now."
					end
					return (("%*:\n%*%*"):format(str and "Their kit" or "Everyone's kits", table.concat(tbl35, "\n", 1, math.min(#tbl35, 12)), #tbl35 > 12 and ("\n...and %* more."):format(#tbl35 - 12) or ""))
				end,
			},
			{
				Id = "resources",
				Game = "BedWars",
				Keywords = "iron diamond diamonds emerald emeralds resource resources money currency inventory inv items loot",
				Needs = {
					{ "i", "im", "my", "me" },
					{
						"have",
						"got",
						"carrying",
						"own",
						"inventory",
						"inv",
						"items",
						"much",
						"many",
						"holding",
					},
				},
				Avoid = "cost costs price buy need needed make makes generator gen upgrade upgrades drop drops spawn spawns why someone their they them em enemy enemies before hp health guardian guardians mob it does",
				Run = function()
					local tbl35 = { iron = 0, diamond = 0, emerald = 0 }
					local tbl36 = {}

					for _, v7 in getgenv().store.inventory.inventory.items, nil, nil do
						if tbl35[v7.itemType] then
							local itemType = v7.itemType
							tbl35[itemType] = tbl35[itemType] + (v7.amount or 0)
						elseif #tbl36 < 8 then
							local insert = table.insert
							local str = ("%*%*"):format(fn104(v7.itemType), (v7.amount or 1) > 1 and (" x%*"):format(v7.amount) or "")
							insert(tbl36, str)
						end
					end

					local tbl37 = {}

					for _, v7 in { "iron", "diamond", "emerald" }, nil, nil do
						if tbl35[v7] > 0 then
							local insert = table.insert
							local str = ("%* %*%*"):format(fn9(tostring(tbl35[v7])), v7, (tbl35[v7] == 1 or v7 == "iron") and "" or "s")
							insert(tbl37, str)
						end
					end

					local str = #tbl37 > 0 and ("You have %*."):format(fn11(tbl37, 3)) or "You have no iron, diamonds or emeralds right now."
					return #tbl36 > 0 and ("%* You are also carrying %*."):format(str, fn11(tbl36, 8)) or str
				end,
			},
			{
				Id = "gear",
				Game = "BedWars",
				Keywords = "holding hand held sword swords weapon armor armour gear wearing tool",
				Needs = { { "i", "im", "my", "me" } },
				Avoid = "cost costs price buy much damage reduce reduces best reach range why someone their they enemy enemies",
				Run = function()
					local store = getgenv().store
					local getSword = getgenv().getSword and getgenv().getSword()
					local tbl35 = {}

					for _, v7 in store.inventory.inventory.armor, nil, nil do
						if type(v7) == "table" and v7.itemType then
							table.insert(tbl35, fn104(v7.itemType))
						end
					end

					local tbl36 = {}
					local str = ("You are holding %*."):format(fn9(store.hand.tool and fn104(store.hand.tool.Name) or "nothing"))
					getSword = getSword and ("Your best sword is %*."):format(fn9(fn104(getSword.itemType))) or "You do not have a sword."
					local str2 = #tbl35 > 0 and ("You are wearing %*."):format(fn11(tbl35, 4)) or "You have no armor on."
					tbl36[1] = str
					tbl36[2] = getSword
					tbl36[3] = str2
					return table.concat(tbl36, " ")
				end,
			},
			{
				Id = "bed",
				Game = "BedWars",
				Keywords = "bed beds",
				Needs = { { "my", "our", "left", "alive", "standing", "remaining", "still" } },
				Avoid = "health hp break breaking range far cost esp protect protector defend cover wool stone brick bricks block blocks tankier strong stronger defense why",
				Run = function()
					local store = getgenv().store
					local bedwars = getgenv().bedwars
					local queueMeta = bedwars.QueueMeta and bedwars.QueueMeta[store.queueType]
					local str = tostring(v5.LocalPlayer:GetAttribute("Team"))
					local tbl35 = {}
					local flag = false

					for _, v7 in fn(game:GetService("CollectionService")):GetTagged("bed") do
						local str2 = tostring(v7:GetAttribute("TeamId"))
						local teams = queueMeta and queueMeta.teams and queueMeta.teams[tonumber(str2)]
						table.insert(tbl35, teams and teams.displayName or ("team %*"):format(str2))
						flag = flag or str2 == str
					end

					if #tbl35 == 0 then
						return "There are no beds standing in this match."
					end
					return (("%* %* bed%* left: %*."):format(flag and "Your bed is still standing." or "Your bed is gone, your next death is final.", #tbl35, #tbl35 == 1 and " is" or "s are", fn9(fn11(tbl35, 8))))
				end,
			},
			{
				Id = "mode",
				Game = "BedWars",
				Keywords = "mode modes queue gamemode gametype playlist squads duos solos doubles trios quads",
				Needs = {
					{
						"mode",
						"gamemode",
						"gametype",
						"queue",
						"playlist",
						"squads",
						"duos",
						"solos",
						"doubles",
						"trios",
						"quads",
					},
				},
				Avoid = "how legit use blatant cheat should set change best option options setting settings module modules",
				SkipModules = true,
				Run = function()
					local store = getgenv().store
					local bedwars = getgenv().bedwars
					local queueMeta = bedwars.QueueMeta and bedwars.QueueMeta[store.queueType]
					local tbl35 = { [0] = "waiting to start", "in progress", "over" }
					local name = store.map and store.map.Name
					local str = "You are in %*%*, and the match is %*."
					local format = str.format
					local v7 = fn9(queueMeta and queueMeta.title or tostring(store.queueType))

					if name then
						local format2 = (" on %*").format
						local v8 = table.pack(fn9(fn7(name)))
						v8.n = 2 + v8.n - 1
						table.move(v8, 1, v8.n, 2, v8)
						v8[1] = " on %*"
						name = format2(table.unpack(v8, 1, v8.n))
					end

					return (format(str, v7, name or "", tbl35[store.matchState] or "running"))
				end,
			},
			{
				Id = "map",
				Game = "BedWars",
				Keywords = "map maps",
				Needs = { { "map" } },
				Avoid = "change vote pick best minimap how why dump",
				SkipModules = true,
				Run = function()
					local map = getgenv().store.map

					if map then
						local format = ("You are on the %* map.").format
						local v7 = table.pack(fn9(fn7(map.Name)))
						v7.n = 2 + v7.n - 1
						table.move(v7, 1, v7.n, 2, v7)
						v7[1] = "You are on the %* map."
						map = format(table.unpack(v7, 1, v7.n))
					end

					return map or "I could not find the map for this match."
				end,
			},
			{
				Id = "stats",
				Game = "BedWars",
				Keywords = "kill kills stats stat final finals bed beds broke broken breaks level games played",
				Needs = {
					{ "i", "im", "my", "me", "am" },
					{
						"kill",
						"kills",
						"stats",
						"stat",
						"final",
						"finals",
						"broke",
						"broken",
						"breaks",
						"level",
						"games",
						"played",
					},
				},
				Avoid = "aura killaura why guardian guardians effect effects should can get more tips better improve",
				SkipModules = true,
				Run = function()
					local bedwars = getgenv().bedwars.Store:getState().Bedwars
					local localPlayer = v5.LocalPlayer
					local v7 = fn107(bedwars.kills, localPlayer.UserId)
					local v8 = fn107(bedwars.bedBreaks, localPlayer.UserId)
					local flag = fn106(bedwars.finalDeaths, localPlayer.UserId) == true
					local attribute = localPlayer:GetAttribute("PlayerLevel")
					local attribute2 = localPlayer:GetAttribute("GamesPlayed")
					local str = ("This match you have %* kill%* and %* bed break%*%*."):format(fn9(tostring(v7)), v7 == 1 and "" or "s", fn9(tostring(v8)), v8 == 1 and "" or "s", flag and ", and you are final dead" or "")

					if attribute then
						attribute = ("%* You are level %*%*."):format(str, fn9(tostring(attribute)), attribute2 and (" with %* games played"):format(attribute2) or "")
					end

					return attribute or str
				end,
			},
			{
				Id = "scoreboard",
				Game = "BedWars",
				Keywords = "kills scoreboard leaderboard winning top most score scores leading",
				Needs = { { "who", "whos", "most", "top", "scoreboard", "leaderboard", "winning", "leading" } },
				Avoid = "how killaura aura kit kits why guardian guardians upgrade upgrades",
				SkipModules = true,
				Run = function()
					local bedwars = getgenv().bedwars.Store:getState().Bedwars
					local tbl35 = {}

					for _, v7 in v5:GetPlayers() do
						table.insert(tbl35, {
							Name = fn7(v7.DisplayName),
							Kills = fn107(bedwars.kills, v7.UserId),
							Final = fn106(bedwars.finalDeaths, v7.UserId) == true,
						})
					end

					table.sort(tbl35, function(arg, arg2)
						return arg.Kills > arg2.Kills
					end)

					local tbl36 = {}

					for i = 1, math.min(#tbl35, 10) do
						local v7 = tbl35[i]
						local insert = table.insert
						local str = ("- %*: %* kill%*%*"):format(v7.Name, fn9(tostring(v7.Kills)), v7.Kills == 1 and "" or "s", v7.Final and ", final dead" or "")
						insert(tbl36, str)
					end

					return (("Kills this match:\n%*%*"):format(table.concat(tbl36, "\n"), #tbl35 > 10 and ("\n...and %* more."):format(#tbl35 - 10) or ""))
				end,
			},
			{
				Id = "teams",
				Game = "BedWars",
				Keywords = "teams alive left remaining eliminated standing",
				Needs = { { "teams" } },
				Avoid = "upgrade upgrades change gui color colour colors kit kits why",
				SkipModules = true,
				Run = function()
					local v7 = getgenv().bedwars.Store:getState()
					local tbl35 = {}
					local teams = v7.Game.teams or {}

					for k, v8 in teams, nil, nil do
						local members = v8.members or {}
						local n5 = 0
						local n6 = 0

						for k2 in members, nil, nil do
							n5 += 1
							local flag = not (fn106(v7.Bedwars.finalDeaths, k2) == true)

							if flag then
								flag = v5:GetPlayerByUserId(tonumber(k2) or 0)
							end

							n6 += flag and 1 or 0
						end

						local v9 = fn106(v7.Bedwars.teamBedStatus, k)

						if n5 > 0 then
							local insert = table.insert
							local str = ("- %*: %* of %* alive, bed %*"):format(fn9(fn7(tostring(v8.name))), n6, n5, v9 == "bed_broken" and "gone" or "standing")
							insert(tbl35, str)
						end
					end

					return #tbl35 > 0 and ("Teams in this match:\n%*"):format(table.concat(tbl35, "\n")) or "There are no teams in this match."
				end,
			},
			{
				Id = "upgrades",
				Game = "BedWars",
				Keywords = "upgrade upgrades bought purchased",
				Needs = { { "i", "my", "we", "our", "us", "have", "got", "bought", "purchased", "team" } },
				Avoid = "should best buy cost costs price worth next how why",
				SkipModules = true,
				Run = function()
					local v7 = getgenv().bedwars.Store:getState()
					local myTeam = v7.Game.myTeam
					local myTeamUpgrades = myTeam and fn106(v7.Bedwars.teamUpgrades, myTeam.id) or v7.Bedwars.myTeamUpgrades or {}
					local tbl35 = {}

					for k, v8 in myTeamUpgrades, nil, nil do
						local insert = table.insert
						local str = "%*%*"
						local format = str.format
						local v9 = fn9
						local str2 = tostring(k):gsub("_", " ")
						local v10 = format(str, v9(str2), type(v8) == "number" and (" %*"):format(v8) or "")
						insert(tbl35, v10)
					end

					return #tbl35 > 0 and ("Your team has %*."):format(fn11(tbl35, 10)) or "Your team has not bought any upgrades yet."
				end,
			},
			{
				Id = "server",
				Keywords = "server private public full size capacity max slots id jobid",
				Needs = {
					{ "server" },
					{
						"this",
						"private",
						"public",
						"full",
						"max",
						"size",
						"big",
						"capacity",
						"slots",
						"info",
						"id",
						"jobid",
					},
				},
				Avoid = "region regions hop join switch find rejoin lag laggy npc npcs mob mobs dummy dummies entities",
				Run = function()
					return (("This is a %* server with %* of %* players. Its server id is %*."):format(game.PrivateServerId ~= "" and "private" or "public", fn9(tostring(#v5:GetPlayers())), v5.MaxPlayers, game.JobId))
				end,
			},
			{
				Id = "match",
				Game = "BedWars",
				Keywords = "match game round long time started going",
				Needs = { { "long", "time", "started" }, { "match", "game", "round" } },
				Avoid = "respawn respawns afk kick air",
				Run = function()
					local game_ = getgenv().bedwars.Store:getState().Game
					if type(game_.startTime) ~= "number" or game_.startTime <= 0 then
						return "The match has not started yet."
					end
					local format = ("This match has been going for %*.").format
					local startTime = game_.startTime
					local v7 = table.pack(fn9(fn105(workspace:GetServerTimeNow() - startTime)))
					v7.n = 2 + v7.n - 1
					table.move(v7, 1, v7.n, 2, v7)
					v7[1] = "This match has been going for %*."
					return (format(table.unpack(v7, 1, v7.n)))
				end,
			},
			{
				Id = "region",
				Game = "BedWars",
				Keywords = "region",
				Needs = { { "my", "this", "am", "current", "im", "which", "what", "whats" } },
				Avoid = "regions pick choose change can lock",
				Run = function()
					local serverRegion = getgenv().bedwars.Store:getState().Game.serverRegion
					return type(serverRegion) == "string" and serverRegion ~= "" and ("This server is in %*."):format(fn9(serverRegion)) or "This server does not report a region, private and training servers usually do not."
				end,
			},
			{
				Id = "team",
				Keywords = "team side teammates teammate",
				Needs = { { "i", "im", "my", "me", "am", "teammates", "teammate" } },
				Avoid = "upgrade upgrades how change gui kit kits draft other others enemy enemies see why",
				Run = function()
					local team = v5.LocalPlayer.Team
					if not team then
						return "You are not on a team right now."
					end
					local tbl35 = {}

					for _, v7 in team:GetPlayers() do
						if v7 ~= v5.LocalPlayer then
							table.insert(tbl35, fn7(v7.DisplayName))
						end
					end

					return (("You are on the %* team%*."):format(fn9(team.Name), #tbl35 > 0 and (" with %*"):format(fn11(tbl35, 6)) or ", on your own"))
				end,
			},
			{
				Id = "health",
				Keywords = "health hp",
				Needs = { { "i", "im", "my", "me" } },
				Avoid = "bed beds guardian guardians diamond mob mobs npc wool stone brick bricks block blocks it does why",
				Run = function()
					local character = v5.LocalPlayer.Character
					character = character and character:FindFirstChildOfClass("Humanoid")
					if not character then
						return "You do not have a character right now."
					end
					return (("You have %* of %* health."):format(fn9(tostring(math.floor(character.Health))), math.floor(character.MaxHealth)))
				end,
			},
			{
				Id = "speed",
				Keywords = "speed walkspeed jumppower jumpheight moving fast",
				Needs = { { "my", "i", "im", "me" } },
				Avoid = "set change module mode fly option slider faster boost flag flagged flagging without can should arrow arrows travel projectile shot shots bow they why",
				Run = function()
					local character = v5.LocalPlayer.Character
					local humanoid = character and character:FindFirstChildOfClass("Humanoid")
					character = character and character:FindFirstChild("HumanoidRootPart")
					if not humanoid or not character then
						return "You do not have a character right now."
					end
					local format = ("You are moving at %* studs a second. Your WalkSpeed is %* and your JumpPower is %*.").format
					local v7 = fn9
					local v8 = table.pack(tostring(math.floor((character.AssemblyLinearVelocity * Vector3.new(1, 0, 1)).Magnitude)))
					local walkSpeed = humanoid.WalkSpeed
					local jumpPower = humanoid.JumpPower
					return (format("You are moving at %* studs a second. Your WalkSpeed is %* and your JumpPower is %*.", v7(table.unpack(v8, 1, v8.n)), walkSpeed, jumpPower))
				end,
			},
			{
				Id = "position",
				Keywords = "position coords coordinates location",
				Needs = { { "my", "i", "im", "me", "am" } },
				Run = function()
					local character = v5.LocalPlayer.Character
					local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart then
						return "You do not have a character right now."
					end
					local position = humanoidRootPart.Position
					local format = ("You are at %*.").format
					local str = ("%*, %*, %*"):format(math.floor(position.X), math.floor(position.Y), math.floor(position.Z))
					return (format("You are at %*.", fn9(str)))
				end,
			},
			{
				Id = "ping",
				Keywords = "ping latency delay ms",
				Needs = { { "my", "i", "im", "me", "current" } },
				Avoid = "slider option dodge set change",
				Run = function()
					local value = fn(game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValue()
					local format = ("Your ping is %*.").format
					local str = ("%* ms"):format(math.floor(value))
					return (format("Your ping is %*.", fn9(str)))
				end,
			},
			{
				Id = "fps",
				Keywords = "fps framerate frames frame",
				Needs = { { "my", "i", "im", "me", "current" } },
				Avoid = "boost booster unlock unlocker more improve lag",
				Run = function()
					local n5 = 0
					local now = os.clock()
					local connection2 = v3.RenderStepped:Connect(function(...) end)
					task.wait(0.5)
					connection2:Disconnect()
					local n6 = os.clock() - now
					local flag = n6 > 0.1

					if flag then
						local format = ("You are running at about %*.").format
						local v7 = fn9
						local str = ("%* FPS"):format(math.floor(n5 / n6))
						flag = format("You are running at about %*.", v7(str))
					end

					return flag or "I could not measure your FPS right now."
				end,
			},
			{
				Id = "players",
				Keywords = "players player people online server lobby everyone",
				Needs = { { "many", "who", "list", "count", "number", "everyone" } },
				Avoid = "kit kits team upgrade friend friends target targets add remove closest nearest",
				Run = function()
					local tbl35 = {}

					for _, v7 in v5:GetPlayers() do
						if v7 ~= v5.LocalPlayer then
							table.insert(tbl35, fn7(v7.DisplayName))
						end
					end

					if #tbl35 == 0 then
						return "You are the only one in this server."
					end
					return (("There %* %* other player%* here: %*."):format(#tbl35 == 1 and "is" or "are", fn9(tostring(#tbl35)), #tbl35 == 1 and "" or "s", fn11(tbl35, 10)))
				end,
			},
			{
				Id = "npcs",
				Keywords = "npc npcs mob mobs dummy dummies entity entities monster monsters guardian guardians",
				Needs = {
					{
						"npc",
						"npcs",
						"mob",
						"mobs",
						"dummy",
						"dummies",
						"entity",
						"entities",
						"monster",
						"monsters",
						"guardian",
						"guardians",
					},
				},
				Avoid = "target targets targeting attack attacks hit hits killaura aura esp setting settings option options toggle why health hp damage drop drops kill killing spawn spawns when where much",
				Run = function()
					local tbl35 = {}
					local tbl36 = {}
					local v7 = nil
					local n5 = 0

					for _, v8 in vape.Libraries.entity.List, v7, nil do
						if v8.NPC and v8.Character then
							local name = v8.Character.Name

							if not tbl35[name] then
								table.insert(tbl36, name)
							end

							tbl35[name] = (tbl35[name] or 0) + 1
							n5 += 1
						end
					end

					table.sort(tbl36, function(arg, arg2)
						return tbl35[arg] > tbl35[arg2] or tbl35[arg] == tbl35[arg2] and arg < arg2
					end)

					local tbl37 = {}

					for _, v8 in tbl36, nil, nil do
						local insert = table.insert
						local flag = tbl35[v8] > 1

						if flag then
							local v9 = tbl35[v8]
							flag = ("%* x%*"):format(fn7(v8), v9)
						end

						insert(tbl37, flag or fn7(v8))
					end

					local n6 = #fn(game:GetService("CollectionService")):GetTagged("DiamondGuardian")
					local str = fn33() == "BedWars" and n6 == 0 and " No Diamond Guardians have spawned in this server." or ""
					if n5 == 0 then
						return (("There are no NPCs in this server right now.%*"):format(str))
					end
					return (("There %* %* NPC%* here: %*.%*"):format(n5 == 1 and "is" or "are", fn9(tostring(n5)), n5 == 1 and "" or "s", fn11(tbl37, 10), str))
				end,
			},
			{
				Id = "nearest",
				Keywords = "closest nearest near close",
				Needs = {
					{
						"who",
						"player",
						"players",
						"enemy",
						"enemies",
						"someone",
						"anyone",
						"people",
						"person",
						"me",
					},
				},
				Avoid = "generator gen shop bed break",
				Run = function()
					local character = v5.LocalPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")
					if not character then
						return "You do not have a character right now."
					end
					local huge = math.huge
					local v7 = nil

					for _, v8 in v5:GetPlayers() do
						local humanoidRootPart = v8 ~= v5.LocalPlayer and v8.Character and v8.Character:FindFirstChild("HumanoidRootPart")

						if humanoidRootPart and (humanoidRootPart.Position - character.Position).Magnitude < huge then
							huge = (humanoidRootPart.Position - character.Position).Magnitude
							v7 = v8
						end
					end

					if not v7 then
						return "Nobody else has a character near you right now."
					end
					local flag = v7.Team ~= nil and v7.Team == v5.LocalPlayer.Team
					return (("The closest player is %*, %* studs away%*."):format(fn9(fn7(v7.DisplayName)), math.floor(huge), flag and ", on your team" or ""))
				end,
			},
			{
				Id = "playtime",
				Keywords = "server session playtime joined long playing",
				Needs = {
					{ "long", "time", "playtime" },
					{ "server", "session", "joined", "here", "playing", "playtime" },
				},
				Avoid = "air afk kick respawn match round",
				Run = function()
					local format = ("You joined this server %* ago.").format
					local v7 = table.pack(fn9(fn105(workspace.DistributedGameTime)))
					v7.n = 2 + v7.n - 1
					table.move(v7, 1, v7.n, 2, v7)
					v7[1] = "You joined this server %* ago."
					return (format(table.unpack(v7, 1, v7.n)))
				end,
			},
			{
				Id = "executor",
				Keywords = "executor injector exploit",
				Needs = { { "i", "im", "my", "me", "am", "this", "using" } },
				Avoid = "best which should work works supported support good",
				Run = function()
					local ok, result, result2 = pcall(identifyexecutor)
					local v7

					if ok then
						local str = "You are using %*."
						local format = str.format
						local v8 = fn9
						local str2 = ("%*%*"):format(result, result2 and (" %*"):format(result2) or "")
						v7 = format(str, v8(str2))
					else
						v7 = ok
					end

					return v7 or "Your executor does not say what it is."
				end,
			},
			{
				Id = "game",
				Keywords = "game place",
				Needs = { { "this", "am", "current", "im" }, { "what", "which", "whats" } },
				Avoid = "safe detect detectable ban banned lag lagging work works going happening everything mode gamemode map",
				Run = function()
					local ok, result = pcall(function()
						return fn(game:GetService("MarketplaceService")):GetProductInfo(game.PlaceId)
					end)

					local name = ok and type(result) == "table" and result.Name or fn33() or "this place"
					local placeId = game.PlaceId
					return (("You are in %* (place %*). CatVape loaded %* modules for it."):format(fn9(fn7(name)), placeId, fn71()))
				end,
			},
			{
				Id = "account",
				Keywords = "account age old created",
				Needs = { { "my", "i" }, { "old", "age", "created", "made" } },
				Run = function()
					local accountAge = v5.LocalPlayer.AccountAge
					local str = "Your account is %* old."
					local format = str.format
					local v7 = fn9
					local str2 = ("%* day%*"):format(accountAge, accountAge == 1 and "" or "s")
					return (format(str, v7(str2)))
				end,
			},
			{
				Id = "time",
				Keywords = "time clock",
				Needs = { { "time", "clock" }, { "what", "whats", "tell", "know", "current", "check" } },
				Avoid = "match round game long playtime playing played respawn server session cooldown charge join joined spent take takes took until left remaining good best buy should kit does shop close closes open opens start starts end ends spawn spawns",
				Run = function()
					local v7 = os.date("*t")
					local n5 = v7.hour % 12 == 0 and 12 or v7.hour % 12
					local str = "It is %* on your computer."
					local format = str.format
					local v8 = fn9
					local str2 = ("%*:%* %*"):format(n5, string.format("%02d", v7.min), v7.hour < 12 and "AM" or "PM")
					return (format(str, v8(str2)))
				end,
			},
			{
				Id = "date",
				Keywords = "date day today month year monday tuesday wednesday thursday friday saturday sunday",
				Needs = {
					{
						"date",
						"day",
						"today",
						"todays",
						"month",
						"year",
						"monday",
						"tuesday",
						"wednesday",
						"thursday",
						"friday",
						"saturday",
						"sunday",
					},
					{
						"what",
						"whats",
						"which",
						"tell",
						"know",
						"monday",
						"tuesday",
						"wednesday",
						"thursday",
						"friday",
						"saturday",
						"sunday",
					},
				},
				Avoid = "match round game long kit kits skin shop respawn birthday good best buy should how up version update updated outdated",
				Run = function()
					local v7 = os.date("*t")
					local format = ("Today is %*, %*.").format
					local v8 = fn9

					local str = ("%*, %* %*"):format(({ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" })[v7.wday], ({
						"January",
						"February",
						"March",
						"April",
						"May",
						"June",
						"July",
						"August",
						"September",
						"October",
						"November",
						"December",
					})[v7.month], v7.day)

					local year = v7.year
					return (format("Today is %*, %*.", v8(str), year))
				end,
			},
			{
				Id = "version",
				Keywords = "version versions outdated date build newest latest update",
				Needs = {
					{ "version", "versions", "outdated", "date", "newest", "latest", "build", "update" },
					{
						"i",
						"im",
						"am",
						"my",
						"catvape",
						"vape",
						"last",
						"when",
						"need",
						"reexecute",
						"reinject",
						"today",
						"push",
						"pushed",
						"guys",
						"yall",
					},
				},
				Avoid = "new changed changes changelog added patch notes features fixed fix kit kits game roblox how devs",
				SkipModules = true,
				Run = function()
					if shared.VapeDeveloper then
						return "You're in developer mode, so CatVape loads your local files and doesn't update itself."
					end
					local txt = fn2("catsix/profiles/commit.txt") and readfile("catsix/profiles/commit.txt") or nil
					return (("CatVape checks for a new build every time you execute it and downloads it if there is one, so you're on the newest version as of when you injected, unless the console (F9) showed \"Failed to update\".%* Ask me what's new to see what the latest update changed."):format(txt and txt ~= "" and (" You're on build %*."):format(fn9(txt:sub(1, 7))) or ""))
				end,
			},
		}

		table.insert(tbl15, {
			Id = "overview",
			Keywords = "everything overview summary status info information details happening going rundown",
			Needs = {
				{
					"everything",
					"overview",
					"summary",
					"status",
					"info",
					"information",
					"details",
					"happening",
					"going",
					"rundown",
				},
			},
			Avoid = "how hows why you module modules setting settings config configs profile",
			SkipModules = true,
			Run = function(arg)
				local v7 = fn33()
				local tbl35 = {}

				for _, v8 in { "mode", "match", "teams", "players", "npcs", "kit", "team", "health", "stats", "resources" }, nil, nil do
					for _, v9 in tbl15, nil, nil do
						local flag = v9.Id == v8
						local flag2

						if flag then
							flag2 = not v9.Game or v9.Game == v7
						else
							flag2 = flag
						end

						if flag2 then
							local ok, result = pcall(v9.Run, arg)

							if ok and type(result) == "string" then
								table.insert(tbl35, result)
							end
						end
					end
				end

				return #tbl35 > 0 and table.concat(tbl35, "\n\n") or "I could not read anything from the game right now."
			end,
		})

		for _, v7 in tbl15, nil, nil do
			v7.Terms = {}
			fn16(v7.Terms, v7.Keywords, 1)
			v7.Skip = v7.Avoid and v7.Avoid:split(" ") or {}
		end

		tbl2 = {
			Cap = 40,
			ChatFloor = 0.25,
			ChatLead = 0.4,
			ChatScore = 2,
			Dictionary = {
				Checked = {},
				File = "catsix/profiles/assistantwords.txt",
				Url = "https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt",
			},
			Essentials = {
				BedWars = {
					"Killaura",
					"Velocity",
					"Sprint",
					"KeepSprint",
					"NoFall",
					"NoSlow",
					"AntiVoidFlag",
					"AutoBuy",
					"ChestSteal",
					"PickupRange",
					"BedESP",
					"NameTags",
					"StaffDetector",
				},
				Universal = { "ESP", "NameTags", "Anti-AFK", "StaffDetector" },
			},
			FactFloor = 2,
			FactOver = 3.5,
			FactTopic = 2,
			File = "catsix/profiles/assistant.json",
			Memory = {},
			Fillers = {},
			Floor = 0.15,
			History = {},
			Learned = {},
			Margin = 0.7,
			Picked = {},
			Runners = {},
			Smoothing = 0.002,
			SocialFloor = 0.4,
			SocialSure = 0.9,
			Temperature = 3,
			WindowOrder = {
				"Combat",
				"Blatant",
				"Render",
				"Utility",
				"World",
				"Inventory",
				"Kits",
				"Friends",
				"Profiles",
				"Targets",
			},
			Set = function(arg)
				local tbl35 = {}

				for match in arg:gmatch("%S+") do
					tbl35[match] = true
				end

				return tbl35
			end,
		}

		tbl2.Drop = tbl2.Set("the a an my please pls plz just kindly bro dude man lol lmao bruh ngl fr tbh lowkey highkey deadass istg fs kinda sorta literally basically actually really very pretty so super even")

		tbl2.Openers = {
			"what'?s up",
			"what'?s good",
			"good morning",
			"good afternoon",
			"good evening",
			"hiya",
			"heya",
			"hello",
			"hey",
			"hi",
			"yo",
			"howdy",
			"ayo",
			"sup",
		}

		tbl2.Addressed = tbl2.Set("there again everyone guys bro man dude bot shaders buddy friend all yall")
		tbl2.Trailing = tbl2.Set("for me please pls plz now rn asap thanks thx ty quick quickly real right away or nah fr tbh ngl bro bruh lol lmao")
		tbl2.Quantifiers = tbl2.Set("all every everything each both entire whole")
		tbl2.Nouns = tbl2.Set("tab tabs window windows category categories menus panel panels section sections page pages")
		tbl2.Pronouns = tbl2.Set("it its that this them those these")
		tbl2.KeyMarkers = tbl2.Set("to on with key button as")
		tbl2.KeyNames = tbl2.Set("insert rightshift leftshift rshift lshift capslock pageup pagedown leftcontrol rightcontrol rctrl lctrl f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12")
		tbl2.ListVerbs = tbl2.Set("add remove delete friend unfriend target untarget whitelist unwhitelist focus")
		tbl2.KeyVerbs = tbl2.Set("toggle toggles open opens close closes enable enables disable disables turn turns activate activates start starts")
		tbl2.QuestionWords = tbl2.Set("how hows what whats wat wut why whys when whens which where wheres who does do did is am are was were can could should will would")
		tbl2.Commanding = tbl2.Set("you u ya yall")
		tbl2.Requests = tbl2.Set("tell show check give")
		tbl2.Social = tbl2.Set("Greet Wellbeing Identity Thanks Ack Help Bye Compliment Insult Joke Feeling Apology Personal Screenshot Code")
		tbl2.PriceWords = tbl2.Set("is are does do for would will to")

		tbl2.PresetWords = {
			"necessary",
			"essential",
			"essentials",
			"basic",
			"recommended",
			"core",
			"starter",
			"important",
			"main",
			"needed",
			"required",
			"useful",
		}

		tbl2.PresetNouns = { "config", "configs", "profile", "setup", "preset", "configuration", "cfg" }

		tbl2.Slang = {
			abt = "about",
			aight = "alright",
			aint = "is not",
			ayo = "yo",
			b4 = "before",
			bc = "because",
			bcuz = "because",
			brb = "be right back",
			cfg = "config",
			cfgs = "configs",
			chillin = "chilling",
			cn = "can",
			coz = "because",
			cud = "could",
			cuz = "because",
			cya = "see you",
			dmg = "damage",
			doin = "doing",
			dunno = "dont know",
			ez = "easy",
			finna = "going to",
			g2g = "got to go",
			gimme = "give me",
			gl = "good luck",
			gm = "good morning",
			gn = "good night",
			goin = "going",
			gonna = "going to",
			gotta = "got to",
			gtg = "got to go",
			gud = "good",
			hallo = "hello",
			hbu = "how about you",
			helo = "hello",
			hola = "hello",
			hru = "how are you",
			hw = "how",
			idc = "i dont care",
			idk = "i dont know",
			ight = "alright",
			ikr = "i know right",
			ily = "i love you",
			ilysm = "i love you so much",
			inf = "infinite",
			ive = "i have",
			kb = "knockback",
			lemme = "let me",
			lmk = "let me know",
			luv = "love",
			mb = "my bad",
			naw = "nah",
			nm = "not much",
			nothin = "nothing",
			np = "no problem",
			nth = "nothing",
			nthn = "nothing",
			nvm = "never mind",
			ofc = "of course",
			oki = "ok",
			okie = "ok",
			okk = "ok",
			opt = "option",
			opts = "options",
			plr = "player",
			plrs = "players",
			ppl = "people",
			probs = "probably",
			prolly = "probably",
			rlly = "really",
			rly = "really",
			ru = "are you",
			shud = "should",
			smth = "something",
			smthn = "something",
			srry = "sorry",
			sry = "sorry",
			stfu = "shut up",
			sth = "something",
			thanx = "thanks",
			thnx = "thanks",
			thx = "thanks",
			tmr = "tomorrow",
			tmrrw = "tomorrow",
			tmrw = "tomorrow",
			tnx = "thanks",
			tog = "toggle",
			togg = "toggle",
			tryna = "trying to",
			ttyl = "talk to you later",
			tyvm = "thank you",
			u = "you",
			ui = "gui",
			ur = "your",
			urs = "yours",
			urself = "yourself",
			wanna = "want to",
			wassup = "whats up",
			wat = "what",
			watcha = "what are you",
			wats = "whats",
			wazzup = "whats up",
			wbu = "what about you",
			wdym = "what do you mean",
			wen = "when",
			whatcha = "what are you",
			whatsup = "whats up",
			wher = "where",
			whr = "where",
			wht = "what",
			wsg = "whats up",
			wsp = "whats up",
			wud = "would",
			wut = "what",
			wuts = "whats",
			wyd = "what are you doing",
			wym = "what you mean",
			ya = "you",
			ye = "yes",
			yea = "yeah",
			youre = "you are",
			yu = "you",
			yuh = "yes",
			yw = "you are welcome",
		}

		tbl2.Whole = {
			["help please"] = "help",
			["help pls"] = "help",
			hm = "hmm",
			["i need help"] = "help",
			["i need some help"] = "help",
			k = "ok",
			kk = "ok",
			lmao = "haha",
			lmfao = "haha",
			lol = "haha",
			lolol = "haha",
			["need help"] = "help",
			["please help"] = "help",
			["pls help"] = "help",
			rofl = "haha",
			["someone help"] = "help",
			xd = "haha",
		}

		tbl2.Complaints = tbl2.Set("still doesnt wont cant cannot isnt arent aint gone lost missing broken broke bugged buggy glitch glitched glitching glitchy stuck smh wtf bruh ugh randomly suddenly")

		tbl2.Common = tbl2.Set([[walk walks walking walked get gets getting got gotten hurt hurts hurting die dies dying died dead kick kicks kicking kicked take takes taking took taken keep keeps keeping kept spawn spawns spawning spawned stand stands standing stood play plays playing played lose loses losing lost hit hits hitting run runs running ran jump jumps jumping jumped fall falls falling fell buy buys buying bought pick picks picking picked grab grabs grabbing grabbed break breaks breaking broke place places placing placed build builds building built shoot shoots shooting shot aim aims aiming aimed miss misses missing missed throw throws throwing threw thrown drop drops dropping dropped hold holds holding held move moves moving moved stop stops stopping stopped start starts starting started try tries trying tried want wants wanting wanted need needs needing needed look looks looking looked see sees seeing saw seen feel feels feeling felt think thinks thinking thought know knows knowing knew known say says saying said tell tells telling told give gives giving gave given come comes coming came leave leaves leaving left happen happens happening happened help helps helping helped fix fixes fixing fixed crash crashes crashing crashed load loads loading loaded join joins joining joined wait waits waiting waited spend spends spending spent earn earns earning earned farm farms farming farmed rush rushes rushing rushed camp camps camping camped fight fights fighting fought chase chases chasing chased hunt hunts hunting hunted clutch clutches clutching clutched bridge bridges bridging bridged mine mines mining mined dig digs digging dug trade trades trading sell sells selling sold pay pays paying paid charge charges charging charged land lands landing landed float floats floating hover hovers hovering glide gliding sprint sprinting crouch crouching sneak sneaking climb climbs climbing climbed slide sliding dash dashing teleport teleports teleporting teleported turn turns turning turned open opens opening opened close closes closing closed show shows showing showed shown hide hides hiding hid hidden change changes changing changed set sets setting use uses using used make makes making made put puts putting call calls calling called
people player players enemy enemies team teams teammate teammates friend friends game games match matches round rounds server servers lobby map maps island base bed beds shop shops item items sword swords bow bows armor block blocks wool iron gold diamond diamonds emerald emeralds kit kits skin skins health damage time times seconds second minute minutes hour hours studs stud way thing things money coins robux account alt main hacker hackers cheater cheaters script scripts exploit mouse keyboard screen window phone laptop computer ipad tablet controller button buttons menu tab tabs setting settings option options mode modes range distance ground floor wall walls void edge top bottom side front back left right death deaths kill kills life lives hand head body legs arms camera view shift spam
fast faster slow slower high higher low lower big bigger small smaller good better best bad worse worst easy hard strong stronger weak weaker close closer far farther further near long longer short shorter new old same different laggy smooth safe risky legit blatant trash insane crazy annoying weird random sure real fake full half empty whole last first next other another every each whole instant quick
really actually literally basically always never sometimes usually often again already even only also very quite pretty kinda sorta instantly suddenly randomly anymore yet soon later before after during while since until because though although
someone somebody anyone anybody everyone everybody nobody something anything everything nothing myself yourself itself their they them ngl tbh bro bruh lmao idk imo tho cuz cause gonna gotta wanna lemme gimme yeah yea yep nope nah okay thx noob sweat sweaty tryhard lowkey highkey deadass
]])

		tbl2.Informative = tbl2.Set("Describe Settings OptionInfo BindInfo PlaceInfo Status Trouble Compare ListCategory Count")
		tbl2.Knowledge = tbl2.Set("Describe Settings OptionInfo BindInfo PlaceInfo Status Trouble Compare ListCategory ListEnabled ListWindows News Count HowTo Guide ProfileList Help Greet Wellbeing Identity Thanks Ack Bye Compliment Insult Joke Feeling Apology Personal Confirm Deny Interaction Using More Simpler Recommend Tradeoff Effect Screenshot Code")

		tbl2.Templates = {
			Open = {
				"(open|show|display|launch|expand|unfold|reveal|pull up|bring up|pop up|pop open|get) (<place>|<category>|<module>|<setting>|<option>)",
				"(open|show|display|expand|pull up|bring up) (<place>|<category>|<module>) (<tabs>|settings|options|config)",
				"(open|show|display|launch|expand|pull up|bring up|pop open) <all> [of] (<tabs>|<category>|modules|mods|cheats)",
				"3*(show|show me|open|display|expand) <all> <tabs>",
				"(open|show|expand|pull up|bring up) (<tabs>|<all>)",
				"(open|show|expand) <all> <category> [<tabs>]",
				"(open|show|expand|pull up) <category> and <category> [and <category>]",
				"(open|show|expand) <category> <category> [<category>]",
				"(open|expand) <module> and <module>",
				"(take me to|go to|switch to|navigate to|go back to|bring me to|jump to|head to) (<place>|<category>|<module>)",
				"(let me see|i wanna see|can i see|lemme see|i want to see) (<place>|<category>|<tabs>|<all> <tabs>)",
				"(open|show|expand) <it>",
				"(i want|i need|i wanna|gimme|give me|get me) (<place>|<category>|<all> <tabs>) [open|opened]",
				"2*(i need|i want|gimme|give me) <category> <tabs>",
				"(open|expand) <module> (settings|options|config)",
				"<place>",
				"<category> <tabs>",
				"<all> <tabs>",
			},
			Close = {
				"(close|hide|shut|exit|collapse|minimize|dismiss) (<place>|<category>|<tabs>|<module>|<setting>)",
				"(close|hide|shut|collapse|minimize) (<place>|<category>) <tabs>",
				"(close|hide|shut|collapse|minimize|get rid of|clear) <all> [<tabs>|<category>|menus]",
				"(close|hide|collapse|shut) <category> and <category> [and <category>]",
				"(close|hide|collapse) <category> <category> [<category>]",
				"(get rid of|put away|close down) (<place>|<category>)",
				"(close|hide|collapse|shut) <it>",
				"(close|collapse) <module> (settings|options)",
				"i (dont|do not) want (<place>|<category>) open",
				"(exit|leave|close) <place>",
			},
			Locate = {
				"(where|wheres) [is|are] (<place>|<category>|<module>|<setting>|<option>)",
				"(highlight|point to|point at|point out|locate|find|indicate) (<place>|<category>|<module>|<setting>|<option>)",
				"(where do i find|where can i find|where can i see|where do i see|how do i find|how can i find) (<place>|<module>|<setting>|<option>)",
				"show me (<place>|<module>|<setting>|<option>)",
				"show me where (<place>|<module>|<setting>|<option>) is",
				"(where|wheres) [is|are] <module> <option>",
				"(where|wheres) [is] <module> (bind|keybind|key)",
				"where is (bind|keybind|key) for <module>",
				"(highlight|show me|find) <module> <option>",
				"2*(highlight|show me|where is|find|point to) <place> (switch|button|toggle|icon|thing)",
				"(highlight|where is|find|show me) <it>",
				"which button (opens|is) (<place>|<category>)",
				"i (cant|can not|cannot) find (<place>|<module>|<setting>|<category>)",
				"2*where (did|does|would) <module> go",
				"2*i (lost|misplaced) <module>",
				"(where|wheres) [is|are] <module> (located|at|hiding)",
			},
			Describe = {
				"4*what (does|do) <module> do",
				"3*what (is|are) <module> [for]",
				"whats <module> [for]",
				"(explain|describe|define) <module>",
				"(wtf|wth|what tf) is <module>",
				"explain <module> to me",
				"tell me about <module>",
				"(info|information) (on|about) <module>",
				"what does <it> do",
				"what is <it>",
				"how does <module> work",
				"what is <module> used for",
				"is <module> (good|worth it|useful|safe)",
				"should i use <module>",
				"<module>",
				"what about <module>",
				"and <module>",
				"what does <module> mean",
				"2*(whats|what is) (point|purpose|use) of <module>",
				"what does <module> even do",
				"how does <module> help",
				"why would i use <module>",
				"what (does|do) <module> (use|need)",
				"is <module> (detectable|bannable|undetected|flagged)",
				"does <module> get me (banned|flagged)",
			},
			Settings = {
				"<module> (settings|options|config)",
				"3*what (settings|options) does <module> have",
				"list <module> (settings|options)",
				"what can i change (in|on|about) <module>",
				"(how do i|how to|how can i) (configure|customize|set up|setup) <module>",
				"(best|good|recommended) (settings|config) for <module>",
				"what are <module> (settings|options)",
				"what are (its|<it>) (settings|options)",
				"<it> (settings|options)",
				"(settings|options) for <module>",
			},
			OptionInfo = {
				"what (does|is) <option> [do|mean|for]",
				"what does <option> (in|on|for) <module> do",
				"what is <module> <option>",
				"<module> <option>",
				"(explain|describe) <option>",
				"how does <option> work",
				"what is <option> (of|in|on|for) <module>",
				"whats <module> <option> [set to|at]",
				"what is <option> set to",
				"what does <option> setting do",
				"what does <module> <option> do",
			},
			TurnOn = {
				"(turn on|enable|activate|start|switch on|toggle on|put on|power on) (<module>|<option>|<setting>)",
				"turn (<module>|<option>|<setting>) on",
				"(enable|activate|turn on) <module> and <module> [and <module>]",
				"(turn on|enable) <option> (in|on|for) <module>",
				"(turn|switch|put) <it> on",
				"(enable|activate|start|turn on) <it>",
				"4*<module> [and <module>] on",
				"2*(put|switch|flip|set) <module> on",
				"(turn on|enable|activate) <all> <category> [modules|mods]",
				"(turn on|enable) <all> (modules|mods) in <category>",
				"i want <module> on",
				"(use|start|run) <module>",
				"turn <module> and <module> on",
				"3*(fire up|boot up|power up|kick on|spin up|crank up|light up) <module>",
				"2*(get|have) <module> (going|running|on)",
				"2*(i want to|lemme|let me|can i) use <module>",
				"start using <module>",
				"(i want|i wanna) <module> (running|going|active)",
			},
			Preset = {
				"3*(make|create|build|setup) [new] (config|profile) with [all] (necessary|essential|basic|recommended|core) (modules|mods)",
				"2*(turn on|enable|toggle) [all] (necessary|essential|basic|recommended|core) (modules|mods)",
				"(make|create|give) me (basic|starter|recommended) (config|profile|setup)",
			},
			TurnOff = {
				"(turn off|disable|deactivate|stop|switch off|toggle off|shut off|kill) (<module>|<option>|<setting>)",
				"turn (<module>|<option>|<setting>) off",
				"(disable|turn off|stop) <module> and <module> [and <module>]",
				"(turn off|disable) <option> (in|on|for) <module>",
				"(turn|switch|put) <it> off",
				"(disable|stop|deactivate|turn off) <it>",
				"4*<module> [and <module>] off",
				"2*(put|switch|flip|set) <module> off",
				"(turn off|disable|stop|deactivate) <all> [modules|mods|cheats]",
				"(turn off|disable|deactivate) <all> <category> [modules|mods]",
				"(turn off|disable) <all> (modules|mods) in <category>",
				"turn <module> and <module> off",
				"panic",
				"3*(shut down|power down|shut off|kick off|cut) <module>",
				"2*stop using <module>",
				"2*i (dont|do not) want <module> (on|anymore|running)",
			},
			Toggle = { "(toggle|flip) (<module>|<option>|<setting>|<it>)", "switch <module>" },
			SetValue = {
				"(set|change|make|put|switch|adjust) (<option>|<setting>) (to|at) (<number>|<color>|<text>)",
				"(set|change|make|put|adjust|switch) <module> <option> (to|at) (<number>|<color>|<text>)",
				"(set|change|make|put) <module> (to|at) <number>",
				"<module> <option> to (<number>|<color>)",
				"(set|put) (<option>|<setting>) <number>",
				"set <module> <option> <number>",
				"(increase|raise|decrease|lower|bump|reduce) (<option>|<setting>) to <number>",
				"(increase|raise|decrease|lower|reduce) <module> <option> to <number>",
				"make (<option>|<setting>) (<number>|<color>)",
				"(set|change) (its|<it>) <option> to (<number>|<color>|<text>)",
				"change color of <module> to <color>",
				"make <module> <color>",
				"2*(crank|bump|turn|push|drop|bring) (<option>|<setting>) (up|down) to <number>",
				"2*(crank|bump|turn|push|drop|bring) <module> <option> (up|down) to <number>",
				"(put|switch) (<option>|<setting>) on <text>",
				"(set|change|switch) <module> <option> to",
			},
			Bind = {
				"(bind|keybind|hotkey|rebind) (<module>|<it>) (to|on|with|as) <key>",
				"(set|change|make) <module> (bind|keybind|key|hotkey) (to|as) <key>",
				"bind <key> to <module>",
				"make <key> (toggle|turn on|enable) <module>",
				"put <module> on <key>",
				"(rebind|change) <place> (key|bind|keybind) to <key>",
				"(rebind|bind) <place> to <key>",
				"2*(make|let|have) <key> (open|toggle|close|show) (<place>|<module>)",
				"2*(use|i want) <key> (for|to open|to toggle) (<place>|<module>)",
				"set <place> (key|bind) to <key>",
				"i want <module> on <key>",
				"(bind|keybind) <module> <key>",
			},
			Unbind = {
				"(unbind|unkeybind) (<module>|<it>)",
				"(remove|clear|delete|reset) (bind|keybind|key|hotkey) (from|on|for|of) <module>",
				"(remove|clear|delete|reset) <module> (bind|keybind|key|hotkey)",
				"<module> (no|without) bind",
				"2*(get rid of|take off|drop|wipe) <module> (bind|keybind|key|hotkey|binding)",
				"2*(get rid of|take off|wipe) (bind|keybind|key|hotkey) (from|on|for|of) <module>",
			},
			ProfileCreate = {
				"(create|make|add|new) [new] profile [called|named]",
				"2*(create|make) me [new] profile (called|named)",
				"new profile",
				"(save|copy) (this|my settings|my config) (as|to|into) [new] profile [called|named]",
				"(create|make) profile for",
			},
			ProfileSwitch = {
				"(switch|change|swap|go|move) to <profile> [profile]",
				"(load|use|select|pick|apply) <profile> profile",
				"(load|use|select|apply) profile <profile>",
				"(switch|change) profile to <profile>",
				"(switch|change|swap) profiles",
				"<profile> profile",
				"(switch|change) to profile <profile>",
			},
			ProfileDelete = {
				"(delete|remove|erase|get rid of) <profile> profile",
				"(delete|remove|erase) profile <profile>",
				"(delete|remove) profile [called|named] <profile>",
			},
			ProfileList = {
				"(what|which) profiles (do i have|are there|have i got)",
				"(list|show) [all] profiles",
				"what profile am i (on|using)",
				"how many profiles [do i have]",
				"which profile is (active|loaded|on)",
			},
			ListAdd = {
				"add <player> (to|as) (friend|friends|friends list|target|targets|<place>)",
				"(add|make) <player> (friend|target)",
				"(friend|target|whitelist) <player>",
				"add (friend|target) <player>",
				"(put|add) <player> on (friend|target|friends|targets) list",
				"(dont|do not|never) (attack|target|hit|kill) <player>",
				"(focus|attack|target|prioritize) <player> first",
				"add <player>",
			},
			ListRemove = {
				"(remove|delete|take|drop|kick) <player> (from|off) (friends|friend list|targets|target list|<place>)",
				"(unfriend|untarget|unwhitelist) <player>",
				"(remove|delete) (friend|target) <player>",
				"stop (targeting|focusing|protecting) <player>",
				"remove <player>",
			},
			Favorite = {
				"3*(favorite|favourite|star|fav) (<module>|<it>)",
				"add (<module>|<it>) to (favorites|<place>)",
				"(unfavorite|unfavourite|unstar|unfav) (<module>|<it>)",
				"remove (<module>|<it>) from (favorites|<place>)",
				"make <module> [a] favorite",
			},
			Hide = {
				"hide (<module>|<it>) [from list|from window]",
				"(unhide|unhidden) (<module>|<it>)",
				"make <module> visible again",
				"remove <module> from list",
				"i dont want to see <module>",
			},
			ListWindows = {
				"3*(list|name|tell me) <all> <tabs>",
				"2*(list|name) [the|your|my] <tabs>",
				"what <tabs> (are there|do you have|exist|is there)",
				"how many <tabs> [are there|do you have]",
				"what are <tabs>",
				"which <tabs> are there",
				"list [all] <tabs>",
				"what <tabs> can i open",
			},
			ListCategory = {
				"what is in <category> [<tabs>]",
				"whats in <category> [<tabs>]",
				"<category> modules",
				"(list|what are) <category> modules",
				"what modules are in <category>",
				"what does <category> have",
				"<category>",
				"what is in <place>",
			},
			ListEnabled = {
				"what (modules|mods) are (on|enabled|active|running)",
				"(what|which) is (on|enabled|active)",
				"whats (on|enabled|active|running)",
				"(list|show) enabled modules",
				"what do i have (on|enabled)",
				"which modules (did i enable|are on)",
			},
			News = {
				"(whats|what is) new",
				"whats (changed|been updated) [recently|lately]",
				"what (changed|is changed)",
				"(any|what) updates",
				"(changelog|patch notes)",
				"what got (updated|added)",
				"new (features|modules|stuff)",
				"whats (latest|last) update",
				"3*(whats new|what is new|whats changed|what changed|what got changed|any changes|any updates|whats different) (with|in|to|for) <module>",
				"2*<module> (changelog|changes|update|updates|patch notes)",
				"2*(was|did|has) <module> (updated|changed|improved)",
				"what did (you|they) (change|add|fix|update) (in|to|with|on) <module>",
			},
			Count = {
				"how many modules [are there|do you have|are in this game]",
				"(count|number of) modules",
				"how big is catvape",
			},
			Compare = {
				"(difference|compare) between <module> and <module>",
				"<module> (vs|versus|or) <module>",
				"which is better <module> or <module>",
				"compare <module> (and|with|to) <module>",
				"is <module> better than <module>",
				"whats difference between <module> and <module>",
			},
			Trouble = {
				"<module> (is not|isnt|doesnt|does not|wont|dont) (work|working|turn on)",
				"why (is|does|isnt|doesnt) <module> (not work|not working|work)",
				"<module> (is broken|broke|is bugged|errored|keeps erroring|crashes|not working)",
				"fix <module>",
				"(problem|issue) with <module>",
				"<it> (is not|isnt|doesnt) work",
				"why doesnt <it> work",
				"2*<module> (does nothing|isnt doing anything|is not doing anything|stopped working|wont do anything)",
				"<module> keeps (breaking|crashing|failing)",
			},
			HowTo = {
				"how (do|can|would|should) i (do|use|get|make|change|turn|see|find|share|save|reset|fix|stop|win|play|bind|update|add|remove|hide|move|set|import|export) (this|that|stuff|things|something)",
				"how to (use|get|make|change|see|find|share|save|reset|fix|stop|win|play|bind|update|add|remove|hide|move|set|import|export) (this|stuff|things)",
				"2*is (this|it|catvape|<it>|<place>) (safe|detectable|undetected|bannable)",
				"will i get banned",
				"why (is|does|cant|wont) (game|gui|script) (lag|work|load|open)",
				"what is (catvape|vape|legit mode|profile|config)",
				"how does (this|catvape) work",
				"3*how (do|can|should|would) i (bind|keybind|hide|unhide|favorite|use|enable|disable|turn on|turn off|toggle|find|open|set up|get) <module>",
				"3*how (do|can) i (open|close|get to|find|use|change|reach|turn off|turn on|rebind) <place>",
				"2*how (do|can) i (bind|hide|use|search for|find) [a] (module|modules|thing|something)",
			},
			BindInfo = {
				"what (key|bind|keybind|button|hotkey) is <module> (on|bound to)",
				"(whats|what is) <module> (bind|keybind|key|hotkey)",
				"(is|what is) <module> bound [to anything]",
				"which key (toggles|turns on|enables) <module>",
				"what (key|bind) does <module> (use|have)",
				"(does|did) <module> have [a] (bind|keybind|key)",
				"what (key|bind) is <it> on",
			},
			Status = {
				"is (<module>|<it>) (on|enabled|active|running|off|disabled|working)",
				"(check|status of|state of) <module>",
				"(did|have) i (turn on|enable|turn off|disable) <module>",
				"is <module> (turned on|turned off|toggled)",
			},
			PlaceInfo = {
				"what (is|are) <place> [for]",
				"what does <place> do",
				"whats <place> [for]",
				"(explain|describe) <place>",
				"tell me about <place>",
				"how does <place> work",
				"what is <place> used for",
			},
			Guide = {},
			Undo = {
				"undo [that|it|last thing|last change]",
				"(revert|reverse) [that|it|last change]",
				"(put|change|set|turn) (it|that) back",
				"take that back",
				"(nevermind|never mind) undo [that]",
				"go back to how it was",
				"undo what you (did|just did)",
			},
			Greet = {
				"(hi|hello|hey|yo|sup|hiya|howdy|heya|hey there|greetings|good morning|good afternoon|good evening)",
				"(hi|hello|hey|yo) (there|bot|assistant|catvape|shaders|again|everyone)",
				"(anyone|anybody|is anyone) [in] (here|there)",
			},
			Wellbeing = {
				"how are you [doing|today|feeling]",
				"how (is|was) your day [going]",
				"how (is it going|are things|have you been|is life|you doing)",
				"(whats up|whats good|what are you doing|what are you up to)",
				"(you good|are you good|are you ok|are you okay|you alright|are you alright)",
				"(how about you|what about you|and you)",
				"(chilling|not much|nothing much|good|im good) [and] you",
			},
			Identity = {
				"(who|what) are you",
				"(whats|what is) your name",
				"what (are you|should i call you) called",
				"are you (real|an ai|a bot|human|a person|a real person|chatgpt|a robot|alive)",
				"is this (chatgpt|an ai|a bot|a real person)",
				"who (made|created|coded|built|programmed) you",
				"how old are you",
				"where (are you from|do you live)",
				"am i talking to a (human|bot|real person|person|ai)",
				"when were you (made|created|born)",
				"(is|are) shaders your name",
				"did (devs|catvape|someone) (make|build|code|create) you",
			},
			Thanks = {
				"(thanks|thank you|ty|thx|tysm|thank u|appreciate it|cheers)",
				"(thanks|thank you) (so much|a lot|man|bro|for the help)",
				"(cool|nice|great|awesome) (thanks|thank you)",
			},
			Ack = {
				"(ok|okay|k|kk|cool|nice|alright|got it|gotcha|great|bet|sounds good|perfect|awesome|sweet|understood)",
				"(word|fair|fair enough|true|facts|i see|makes sense|oh|ah|oh ok|hmm|haha|interesting|good to know|noted|you are welcome)",
			},
			Help = {
				"help",
				"what can you do",
				"how do i use you",
				"(commands|list commands|what commands are there)",
				"what can i ask [you]",
				"what do you do",
				"help me",
				"how do i use (this|it|the chat|this chat|this bot)",
				"how does (this|this chat|the chat|this bot) work",
				"2*what are you (good for|good at|good|for|able to do)",
				"what do you (mean|do besides talking|do besides talk)",
				"what (else|all) can you do",
			},
			Bye = {
				"(bye|goodbye|bye bye|see you|see ya|later|peace|peace out|good night|goodnight|night|cya)",
				"(gotta go|got to go|i have to go|im leaving|im out|im off|be right back)",
				"(see you|talk to you|catch you) (later|tomorrow|soon)",
				"(im|i am) (heading|going) to (bed|sleep)",
			},
			Compliment = {
				"(i love you|love you|good bot|nice bot|great bot|good job|nice work|well done)",
				"(you are|your) (cool|smart|awesome|the best|amazing|great|helpful|goated|a legend)",
				"you (rock|helped a lot)",
				"(you are|your) better than (chatgpt|most people|everyone)",
				"(this bot|this ai|this assistant) is (goated|cool|good|great|smart|fire|amazing)",
				"i (like|love|enjoy) talking to you",
				"(best|goated) (bot|assistant|ai) [ever]",
			},
			Insult = {
				"(bad bot|stupid bot|dumb bot|trash bot|worst bot|you suck|shut up|i hate you)",
				"(you are|your) (dumb|stupid|useless|trash|bad|annoying|garbage|braindead|an idiot|a clown)",
				"(this bot|this ai) (sucks|is useless|is trash)",
				"(worst|useless|dumbest) (assistant|bot|ai) [ever]",
				"you cant (even answer|do anything|answer anything)",
			},
			Joke = {
				"tell me a [funny] joke",
				"(make me laugh|say something funny|entertain me|any jokes|got any jokes|know any jokes|joke)",
				"tell me (a fun fact|something funny|something interesting|something random)",
			},
			Feeling = {
				"(i am|im|i feel|feeling) (bored|sad|tired|happy|mad|angry|lonely|excited|stressed|upset|sleepy|hungry|annoyed)",
				"(i am|im) (good|fine|great|ok|alright|doing good|doing fine|not good)",
				"(not bad|pretty good|all good|not much|nothing much)",
				"i (lost|won|died) [again]",
				"(this game|this) is (boring|so hard|so fun)",
				"my day (was|is) (terrible|bad|awful|good|great|rough)",
				"(im|i am) having a (bad|good|rough|great) day",
				"i keep (dying|losing|getting killed)",
				"i want to (quit|rage quit|throw my pc)",
				"(nobody|no one) (wants to play with me|likes me)",
				"(im|i am) (stressed|worried|nervous) about (school|tomorrow|a test|it)",
				"(gg|ggs|gg wp|good game)",
			},
			Apology = {
				"(sorry|my bad|my fault|apologies|i apologize|sorry about that|oops|whoops)",
				"sorry for (calling you|being rude|that|yelling|being mean)",
				"(didnt|did not) mean (it|to be rude|that)",
			},
			Personal = {
				"do you (like|love|play|enjoy|hate) (bedwars|roblox|this game|games|me|music)",
				"(whats|what is) your (favorite|favourite) (kit|color|game|module|food|song|thing)",
				"do you (sleep|eat|dream|have feelings|have friends|get bored|get tired)",
				"are you (happy|sad|lonely|bored|tired) [right now|today]",
				"do you feel (happy|sad|lonely)",
				"what do you think (about|of) (me|this game|bedwars|roblox)",
				"what do you do for fun",
				"which kit would you (main|pick|use|choose)",
			},
			Configure = {
				"3*(make|set|setup|set up|configure|tune|config|turn) <module> [to|for|into] [be] (<style>|rage|safe|subtle|max|op|undetected)",
				"3*(make|give|build|create|set up|setup|do) [me] [a] (<style>|rage|safe|subtle|max|op|undetected) (config|setup|cfg) for <module>",
				"2*(<style>|rage|safe|subtle|max|op) <module> (config|setup|cfg|settings)",
				"(configure|set up|setup|tune|optimize|optimise) [my] <module> [for me]",
				"(reset|restore) [my] <module> [settings|config] [to] [<style>|defaults]",
				"put <module> [back] (on|to) (<style>|defaults) [settings]",
				"(make|get) <module> (more|less) (<style>|obvious|safe)",
				"(i want|i need|give me) [a] (<style>|rage|safe) <module> (config|setup)",
				"(set up|setup|configure) <module> (for|like) (<style>|rage) [play|players]",
				"make (<it>|that) <style>",
			},
			BuildProfile = {
				"3*(make|create|build|give|set up|setup|generate) [me] [a] [new] (<style>|rage|safe|subtle|max|op|good|decent|solid|proper|actually good) (profile|config|cfg|setup)",
				"2*(make|create|build|give) [me] [a] (profile|config|cfg) (that is|thats) (good|actually good|decent|<style>)",
				"(i want|i need|give me) [a] [new] (good|<style>|rage|best) (profile|config|cfg)",
				"(make|build|create) [me] [the] (best|optimal|perfect) (profile|config|setup) [for this game]",
				"(new|fresh) (<style>|rage) (profile|config|cfg)",
			},
			Recommend = {
				"3*(which|what) (module|modules|mod|mods|setting) (lets me|can|will|makes me|helps me|should i use to|do i use to|is for|is good for|should i use for|helps with|is best for)",
				"2*is there (something|a module|anything|a mod|a way|a setting|any module|any mod) (to|that|for|which|so i can)",
				"2*(i want|i need|i wanna|im trying|help me|i want something) to",
				"(something|anything|module|a module|a mod) (to|that|for) (help|make|let|stop)",
				"(best|good|which) (module|modules|mods) for",
				"(does|do) (catvape|you|vape) have (something|a module|anything|a mod|a setting) (for|that|to)",
				"what (should|do|can) i use (to|for)",
				"what helps (with|me)",
				"how (do|can) i (stop|avoid|prevent|not) (getting|taking|being|dying|falling|losing)",
				"how (do|can) i (get|go|be|see|hit|aim|break|win|move|jump|run|reach|clutch) (faster|higher|further|farther|more|better|through|quicker)",
				"(can|could) (catvape|you|it) (make me|help me|let me|stop me from)",
				"(is it possible|is there way|any way) to",
				"(i want|i need|i wanna) (something|a module|a mod) (that|to|for)",
				"(can|is it possible to) (i|you) (see|find|get|make|do|change) (players|walls|beds|enemies|faster|more)",
			},
			Interaction = {
				"3*(can|could|should) i (use|run|have) <module> (and|with) <module> [together|at once]",
				"3*(do|does|will|would) <module> and <module> (conflict|clash|interfere|mix|break)",
				"2*(can|do|will) <module> and <module> (work|run|go) together",
				"(can|do|will) <module> and <module> be on (together|at once|at same time)",
				"(is it|its) (ok|okay|fine|safe|bad) to (use|run|have) <module> (with|and) <module> [on]",
				"(does|will|would) <module> (mess up|break|ruin|interfere with|conflict with|clash with|work with|stop) <module>",
				"<module> (with|and|plus) <module> (ok|okay|fine|good|together)",
				"(is|are) <module> and <module> (compatible|ok together|fine together|good together)",
				"(does|will) <module> work (with|while) <module> [is on]",
				"2*(does|will|would) <it> (work|clash|conflict|mess) with <module>",
				"can i use <it> with <module>",
				"<module> (conflicts|clashes|interferes) with <module>",
				"(any|is there) (conflict|problem|issue) (between|with) <module> and <module>",
				"can <module> be on with <module>",
				"<module> and <module> at same time",
			},
			Using = {
				"3*(im|i am) (using|running|playing with) <module> [and <module>]",
				"2*i (have|got) <module> (on|enabled|running|turned on)",
				"(using|running) <module> (btw|rn|right now|currently)",
				"i (use|run) <module>",
				"my (config|setup) (is|has) <module>",
				"(i only have|only have) <module> on",
			},
			More = {
				"tell me more",
				"2*(more|more info|more information|more details|more detail|details|elaborate|go on|keep going|continue|go deeper|deeper|in depth)",
				"go (more|deeper|further)",
				"what else (does <it> do|should i know|is there)",
				"(anything|something) else (about|on) (<it>|<module>)",
				"2*give me (everything|all) on <module>",
				"<module> in (depth|detail)",
				"(can you|could you) go (deeper|further)",
				"i want (more|to know more)",
				"(more|deeper) on (that|it)",
			},
			Simpler = {
				"3*(explain|say) (<it>|that|this) (simpler|easier|simply|in simple words|in simple terms)",
				"2*(eli5|tldr|tl dr|simpler|simpler please|shorter|short version|in short|simple version|dumb it down)",
				"(explain|say|tell) (it|that|me) like im (five|<number>|a kid|dumb|stupid)",
				"i (dont|do not) (get it|understand|get that|understand that|understand any of that)",
				"(too long|too much text|too complicated|thats confusing|im confused|confusing|thats too much)",
				"(in english|in normal words|in plain english|in simple words)",
				"(can you|could you) (make it|keep it|say it) (short|simple|shorter|simpler)",
				"(just|only) (the basics|the short version)",
				"what does that even mean",
				"(huh|what) i dont get it",
			},
			Tradeoff = {
				"3*is (<number>|<option>) (good|bad|ok|okay|fine|too high|too low|enough|legit|safe)",
				"3*is <number> <option> (good|bad|ok|okay|fine|too high|too low|safe)",
				"is <option> (at|on) <number> (good|bad|ok|fine|too high|too low|safe)",
				"2*(whats|what is) (best|good|recommended|ideal|optimal) <option> [for <module>]",
				"(best|good|recommended|ideal|optimal) <option> [value|setting|for <module>]",
				"what should (i set|i put|my) <option> (to|at|be)",
				"what should i (set|put) <module> <option> (to|at)",
				"2*should i (raise|lower|increase|decrease|turn up|turn down|max|max out) <option>",
				"should <option> be (higher|lower|maxed|max|high|low)",
				"2*(is|are) my <module> (config|setup|settings) (good|ok|okay|bad|fine)",
				"(rate|check) my <module> (config|settings|setup)",
				"is (higher|lower|more|less) <option> better",
				"how (high|low) should <option> be",
				"(what|which) <option> (should i use|do you recommend|is best)",
				"is it better to (raise|lower|increase|decrease) <option>",
				"is my <option> (good|ok|too high|too low)",
			},
			Effect = {
				"3*(does|will|would|can) <option> (make|let|help) (<it>|<module>|me|you)",
				"2*(does|will|would) <option> (affect|change|increase|decrease|boost|lower|raise|control|decide)",
				"2*(does|will|would) (raising|increasing|lowering|turning up|turning down|maxing|cranking|upping|higher|lower|more) <option> (make|let|help|change|affect|do)",
				"if i (raise|increase|lower|crank|max|turn up|turn down|up|change) <option> (will|does|would) (it|<module>|i)",
				"(what|how) does <option> (affect|change)",
				"is <option> what (makes|controls|changes|decides)",
				"does <option> (make|have) (any|a) difference",
				"does (higher|lower|more|less) <option> mean",
				"does <option> (do anything|matter) for",
				"(does|is) <option> (related|connected) to",
				"does <option> make <module> (better|worse|faster|slower|stronger)",
			},
			Screenshot = {
				"3*(look at|check|see) (my screen|this screenshot|my screenshot|this picture|this pic|this image|my pic|my image|this ss)",
				"2*(can|do) you see (my screen|images|pictures|screenshots|this|pics|my game)",
				"i (sent|attached|uploaded) (a screenshot|a picture|a pic|an image|a ss)",
				"(can|could) i (send|show) you (a screenshot|a picture|a pic|an image|my screen)",
				"(screenshot|picture|pic|image) (attached|here|below)",
			},
			Code = {
				"3*(write|make|code|create|give) (me|a|me a) (script|lua script|code|lua code|snippet|function|luau script)",
				"2*(can|could) you (code|script|write code|write scripts|program|make scripts)",
				"how do i (code|script|make a script|write a script)",
				"write (lua|luau|code) for",
				"(make|code|write) me <module> script",
				"(give me|send me|paste) (the|your) (code|source|script) [for <module>]",
			},
			Confirm = {
				"(yes|yeah|yep|yup|sure|ok do it|do it|go ahead|please do|yes please|correct|that one|right|first one|first|second one|second|<number>)",
			},
			Deny = { "(no|nope|nah|cancel|never mind|nevermind|forget it|dont|stop it|no thanks)" },
		}

		talk = {
			Greet = {
				{
					Words = tbl2.Set("morning"),
					Replies = {
						"Good morning! What are we setting up today?",
						"Morning! Need help with a module or your config?",
					},
					Suggest = true,
				},
				{
					Replies = {
						"Hey! Ask me about any module, or tell me what to do, like \"open all tabs\" or \"bind Killaura to R\".",
						"Hi! What are we working on today?",
						"Hey, good to see you. Need help with a module or your config?",
					},
					Suggest = true,
				},
			},
		}

		local wellbeing = {}

		local tbl35 = {
			Words = tbl2.Set("about and"),
			Replies = {
				"I'm good too, thanks for asking! What can I help you with?",
				"Doing great! Anything you need?",
			},
		}

		local tbl36 = {
			Words = tbl2.Set("how hows"),
			Replies = {
				"I'm doing great, thanks for asking! How about you?",
				"Pretty good! Just hanging out in your menu. How's your day going?",
				"All good here, thanks! How are you doing?",
			},
		}

		local tbl37 = {
			Words = tbl2.Set("doing up what whats"),
			Replies = {
				"Not much, just hanging out in your CatVape menu waiting for questions. What are you up to?",
				"Just sitting here in the menu, ready to help. What's up with you?",
			},
		}

		wellbeing[1] = tbl35
		wellbeing[2] = tbl36
		wellbeing[3] = tbl37

		wellbeing[4] = {
			Replies = {
				"Yep, all good here! Thanks for checking. How about you?",
				"I'm good, thanks! How are you?",
			},
		}

		talk.Wellbeing = wellbeing
		local identity = {}

		local tbl38 = {
			Words = tbl2.Set("made make created create coded code built build programmed developer developers dev devs owner owns wrote creator"),
			Replies = { "The CatVape developers made me. I'm built right into the script's menu." },
		}

		local tbl39 = {
			Words = tbl2.Set("ai bot real human person chatgpt gpt robot alive sentient fake program openai claude conscious"),
			Replies = {
				(("I'm a bot, not a real person, and I'm not ChatGPT either. I'm %*, a small assistant that runs completely offline inside CatVape, so I only know CatVape and the game you're in. The upside is that I can actually click things for you."):format("shaders v3")),
			},
		}

		local tbl40 = {
			Words = tbl2.Set("old age born birthday"),
			Replies = { "I'm brand new, I was only just added to CatVape." },
		}

		local tbl41 = {
			Words = tbl2.Set("where live from"),
			Replies = { "I live right here in your CatVape menu, and I go wherever your script goes." },
		}

		local tbl42 = {
			Words = tbl2.Set("name called call"),
			Replies = {
				(("My name is %*. I know every module in CatVape and how this game works, so ask away."):format("shaders v3")),
			},
		}

		local tbl43 = {
			Words = tbl2.Set("boy girl male female gender"),
			Replies = { "Neither, I'm just a bot living in your menu." },
		}

		identity[1] = tbl38
		identity[2] = tbl39
		identity[3] = tbl40
		identity[4] = tbl41
		identity[5] = tbl42
		identity[6] = tbl43

		identity[7] = { Reply = function()
			return fn93()
		end }

		talk.Identity = identity

		talk.Help = {
			{
				Words = tbl2.Set("do commands command use work able ask capable features good"),
				Reply = function()
					return fn93()
				end,
			},
			{
				Replies = {
					"Sure, what do you need help with? I can explain what a module or setting does, show you where it is, turn things on or off, or answer questions about this game.",
					"Of course! Tell me what you're stuck on, a module, a setting, your config or something in the game.",
				},
				Chips = function()
					local v7 = fn22()
					local tbl44 = {}
					local str = v7 and ("What does %* do?"):format(v7) or "What's new?"
					tbl44[1] = "What can you do?"
					tbl44[2] = str
					tbl44[3] = "How do I bind a module?"
					return tbl44
				end,
			},
		}

		talk.Thanks = {
			{
				Replies = {
					"Anytime! Ask if anything else comes up.",
					"You're welcome!",
					"Happy to help. Anything else?",
				},
			},
		}

		local ack = {}
		local tbl44 = { Words = tbl2.Set("haha"), Replies = { "Haha. Anything else?", "Haha, glad you liked that." } }
		local tbl45 = { Words = tbl2.Set("welcome"), Replies = { "Thanks!" } }
		ack[1] = tbl44
		ack[2] = tbl45

		ack[3] = {
			Replies = {
				"Cool. Ask if anything else comes up.",
				"Got it.",
				"Alright, I'm here if you need anything.",
			},
		}

		talk.Ack = ack
		local bye = {}

		local tbl46 = {
			Words = tbl2.Set("night goodnight sleep"),
			Replies = { "Good night! Get some rest.", "Night! See you next time." },
		}

		local tbl47 = { Words = tbl2.Set("back brb"), Replies = { "Sure, I'll be right here." } }
		bye[1] = tbl46
		bye[2] = tbl47

		bye[3] = {
			Replies = {
				"See you later! Good luck in your games.",
				"Bye! I'll be right here in the menu.",
				"Later! Have fun.",
			},
		}

		talk.Bye = bye

		talk.Compliment = {
			{ Words = tbl2.Set("love"), Replies = { "Aw, thanks! I like helping you too." } },
			{
				Replies = {
					"Thanks, that means a lot!",
					"Appreciate it! I'm here whenever you need me.",
					"Thank you! Anything else I can do?",
				},
			},
		}

		talk.Insult = {
			{
				Words = tbl2.Set("shut stfu quiet"),
				Replies = { "Okay, I'll be quiet. I'm here if you need me." },
			},
			{
				Replies = {
					"Sorry about that. Tell me what I got wrong and I'll try again. Short questions like \"what does Killaura do\" work best.",
					"Fair, I still get things wrong sometimes. Try rephrasing it and I'll give it another go.",
					"Ouch. If I messed something up, tell me what you wanted and I'll try again.",
				},
			},
		}

		talk.Joke = {
			{
				Words = tbl2.Set("fact facts"),
				Reply = function()
					local v7 = fn33()
					local tbl48 = {}

					for _, v8 in tbl14, nil, nil do
						if fn34(v8, v7) then
							table.insert(tbl48, v8)
						end
					end

					local v8 = tbl2.FactReply(tbl48[math.random(1, #tbl48)])
					v8.Text = ("Fun fact: %*"):format(v8.Text)
					return v8
				end,
			},
			{
				Replies = {
					"Why did the bed never win an argument? It always ended up getting broken.",
					"I told my teammate to guard the bed. He put one wool block on it and left to fight the Diamond Guardian.",
					"Why was the iron generator so calm? It takes everything one ingot at a time.",
					"My ping isn't bad, it's just taking the scenic route.",
					"Why do programmers prefer dark mode? Because light attracts bugs.",
					"Why don't skeletons fight each other? They don't have the guts.",
					"What do you call a noob who never leaves spawn? Safe.",
					"I'd tell you a UDP joke, but you might not get it.",
					"Why did the Scaffold module get promoted? It always helped people rise to the occasion.",
					"Why can't you trust atoms? They make up everything.",
					"Parallel lines have so much in common. It's a shame they'll never meet.",
					"Why did my teammate lie on the bed all game? Someone told him to sleep on it.",
				},
				Chips = { "Tell me another joke" },
			},
		}

		local feeling = {}

		local tbl48 = {
			Words = tbl2.Set("bored boring"),
			Replies = {
				"Want to try something new? Pick a module you've never used and I'll explain it, or I can tell you a joke.",
				"Bored? You could try out a new config, or ask me for a joke.",
			},
			Chips = function()
				local v7 = fn22()
				local tbl48 = {}
				local str = v7 and ("What does %* do?"):format(v7) or "What's new?"
				tbl48[1] = "Tell me a joke"
				tbl48[2] = str
				return tbl48
			end,
		}

		local tbl49 = {
			Words = tbl2.Set("sad lonely depressed down upset cry crying stressed hurt alone"),
			Replies = {
				"Sorry you're feeling that way. Taking a break can help, and if something is really weighing on you, talking to someone you trust helps a lot. I'm here if you just want to chat.",
			},
		}

		local tbl50 = {
			Words = tbl2.Set("tired sleepy exhausted"),
			Replies = {
				"Sounds like a good time for a break. The game will still be here after you rest.",
				"Get some sleep! Your beds can wait.",
			},
		}

		local tbl51 = {
			Words = tbl2.Set("won win winning clutched gg ggs"),
			Replies = { "GG! Nice win.", "Let's go! Nice one." },
		}

		local tbl52 = {
			Words = tbl2.Set("lost losing lose died dying mad angry annoyed raging rage tilted hate hard frustrated"),
			Replies = {
				"Rough one. Everyone has losing streaks, and the next game is a fresh start.",
				"Unlucky. Take a breather and run it back.",
			},
			Chips = function()
				return fn33() == "BedWars" and { "Any tips to win more games?" } or nil
			end,
		}

		local tbl53 = { Words = tbl2.Set("hungry"), Replies = { "Go grab a snack, I'll be right here." } }

		local tbl54 = {
			Words = tbl2.Set("much nothing chilling"),
			Replies = { "Fair enough. I'm here if you need anything." },
		}

		local tbl55 = {
			Words = tbl2.Set("good great fine happy excited amazing awesome hyped alright ok bad"),
			Replies = {
				"Nice, glad to hear it! Anything I can help with?",
				"Love to hear it. What are we doing next?",
			},
		}

		feeling[1] = tbl48
		feeling[2] = tbl49
		feeling[3] = tbl50
		feeling[4] = tbl51
		feeling[5] = tbl52
		feeling[6] = tbl53
		feeling[7] = tbl54

		feeling[8] = {
			Test = function(arg)
				return arg["not"] == true and not arg.bad
			end,
			Replies = { "Sorry to hear that. Anything I can do to help?" },
		}

		feeling[9] = tbl55
		feeling[10] = { Replies = { "Thanks for telling me. Anything I can help with?" } }
		talk.Feeling = feeling
	end

	talk.Apology = {
		{
			Replies = {
				"No worries at all!",
				"All good, no harm done.",
				"Don't worry about it. What can I help with?",
			},
		},
	}

	local personal = {}

	local tbl16 = {
		Words = tbl2.Set("color colour"),
		Replies = { "Whatever colour your GUI is set to. You pick my outfit." },
	}

	local tbl17 = {
		Words = tbl2.Set("kit kits"),
		Replies = { "I don't have a favourite kit, every kit has its moment." },
		Chips = function()
			return fn33() == "BedWars" and { "What kit should I use?" } or nil
		end,
	}

	local tbl18 = {
		Words = tbl2.Set("module modules"),
		Reply = function()
			local v6 = fn22()

			return v6 and {
				Text = ("Hard to pick one, but %* is up there."):format(fn9(v6)),
				Actions = tbl2.Chips({ (("What does %* do?"):format(v6)) }),
			} or nil
		end,
	}

	local tbl19 = {
		Words = tbl2.Set("sleep eat dream food hungry rest song music"),
		Replies = { "I don't sleep or eat. I just wait in your menu until you need me." },
	}

	local tbl20 = {
		Words = tbl2.Set("feelings feel happy sad lonely bored emotions"),
		Replies = { "I don't really have feelings, but if I did, helping you out would make me happy." },
	}

	local tbl21 = {
		Words = tbl2.Set("friends friend girlfriend boyfriend family crush married dating"),
		Replies = { "Every CatVape user is my friend, and that includes you." },
	}

	local tbl22 = {
		Words = tbl2.Set("bedwars roblox game games play soccer tower"),
		Replies = { "I can't play myself, but I know this game inside out, so it's probably my favourite." },
	}

	local tbl23 = {
		Words = tbl2.Set("think opinion"),
		Replies = { "I don't really have opinions. I'm better with facts about CatVape and this game." },
	}

	local tbl24 = {
		Words = tbl2.Set("fun"),
		Replies = { "Answering questions in your menu. It's more fun than it sounds." },
	}

	personal[1] = tbl16
	personal[2] = tbl17
	personal[3] = tbl18
	personal[4] = tbl19
	personal[5] = tbl20
	personal[6] = tbl21
	personal[7] = tbl22
	personal[8] = tbl23
	personal[9] = tbl24

	personal[10] = {
		Replies = {
			"I don't really have a life outside this menu, but I know a lot about CatVape and this game. Ask me anything about them.",
		},
	}

	talk.Personal = personal

	talk.Screenshot = {
		{
			Replies = {
				"I can't see images or your screen. I can read CatVape directly though, so ask me what's on or about a module's settings and I'll check the real values.",
				"Pictures don't reach me, sorry. Tell me which module it's about and I'll read its live settings instead.",
			},
			Chips = { "What modules are on?" },
		},
	}

	talk.Code = {
		{
			Replies = {
				"I don't write scripts or code. What I can do is explain how any CatVape module works and run things for you, like turning modules on or changing values. Tell me what you're trying to do and I'll find the module for it.",
				"Writing code isn't something I do. I'm here to explain CatVape and set it up for you, so tell me the goal and I'll point you to the module that does it.",
			},
		},
	}

	local offtopic = {}

	local tbl25 = {
		Words = tbl2.Set("weather rain raining temperature forecast sunny"),
		Replies = {
			"I can't check the weather, I don't use the internet. I only know CatVape and the game you're in.",
		},
	}

	local tbl26 = {
		Words = tbl2.Set("won election president stock stocks crypto bitcoin nba nfl basketball richest famous celebrity"),
		Replies = { "I don't have internet access, so I can't look up news, scores or prices." },
	}

	local tbl27 = {
		Words = tbl2.Set("homework essay exam school teacher assignment"),
		Replies = { "I can't help with homework, sorry. I can do quick math though, like \"12 * 8\"." },
	}

	local tbl28 = {
		Words = tbl2.Set("food dinner lunch breakfast recipe cook"),
		Replies = { "I don't eat, so I'm no help there. Something quick, so you can get back to the game?" },
	}

	local tbl29 = {
		Words = tbl2.Set("meaning universe"),
		Replies = { "42, or so I've heard. I'm much better with CatVape questions." },
	}

	local tbl30 = {
		Words = tbl2.Set("recommend watch movie movies song songs music anime show"),
		Replies = { "I don't know much outside CatVape, so no recommendations from me, sorry." },
	}

	offtopic[1] = tbl25
	offtopic[2] = tbl26
	offtopic[3] = tbl27
	offtopic[4] = tbl28
	offtopic[5] = tbl29
	offtopic[6] = tbl30

	offtopic[7] = {
		Replies = {
			"That's outside what I know. I run offline inside CatVape, so I only know CatVape and the game you're in.",
			"I don't know that one. I only know CatVape and the game you're in, and I can't look things up online.",
		},
		Suggest = true,
	}

	talk.Offtopic = offtopic

	talk.Unclear = {
		{
			Test = function(arg)
				local flag = false

				for k in arg, nil, nil do
					if tbl2.Knows(k) then
						return false
					end
					flag = flag or k:find("[^aeiouy%d][^aeiouy%d][^aeiouy%d][^aeiouy%d]") ~= nil
				end

				return flag
			end,
			Replies = {
				"That looks like a keyboard smash. Try asking about a module, like \"what does Killaura do\".",
			},
			Suggest = true,
		},
		{
			Replies = {
				"I didn't quite get that. Ask about a module, like \"what does Killaura do\", or tell me what to do, like \"open all tabs\".",
				"Not sure what you mean. Try asking about a module or a setting, or tell me what to turn on.",
			},
			Suggest = true,
		},
	}

	tbl2.Talk = talk

	tbl2.MathWords = {
		{ "square root of", "@" },
		{ "sqrt", "@" },
		{ "multiplied by", "*" },
		{ "divided by", "/" },
		{ "to the power of", "^" },
		{ "percent of", "/ 100 *" },
		{ "% of", "/ 100 *" },
		{ "times", "*" },
		{ "plus", "+" },
		{ "minus", "-" },
		{ "over", "/" },
		{ "mod", "%" },
		{ "squared", "^ 2" },
		{ "cubed", "^ 3" },
		{ "x", "*" },
	}

	tbl2.MathFiller = tbl2.Set("what whats is how much calculate calc solve compute equals equal does do the answer to for tell me you can could please pls quick quickly math question hey yo so um")

	tbl2.Controls = {
		BedWars = {
			AimAssist = "Rotate, Camera, Frame, Target",
			["Anti-AFK"] = "",
			AntiDeath = "Move, Frame",
			AntiDisable = "",
			AntiEffect = "",
			AntiFall = "Move (Move Mode: Normal or Move Mode: Velocity), Frame (Move Mode: Normal)",
			AntiHit = "Move, Rotate, Frame",
			AntiLasso = "",
			AntiSuffocate = "Move, Break (Mode: Break)",
			AntiVoidFlag = "Move",
			ArmorChanger = "",
			ArmorSwitch = "Target",
			AutoAbaddon = "",
			AutoAdetunde = "",
			AutoAgni = "Target",
			AutoArachne = "Target",
			AutoBalloon = "",
			AutoBank = "",
			AutoBedDefense = "",
			AutoBeekeeper = "Items",
			AutoBlockUp = "Move, Place, Frame",
			AutoBountyHunter = "",
			AutoBuilder = "",
			AutoBuy = "",
			AutoCaitlyn = "",
			AutoCard = "",
			AutoChargeProj = "",
			AutoChestSplit = "",
			AutoClicker = "Attack",
			AutoCogsworth = "Target",
			AutoCollect = "",
			AutoConqueror = "Place, Target",
			AutoConsume = "",
			AutoCounterTNT = "Items (Auto Switch), Place",
			AutoCrocowolf = "",
			AutoCyber = "Render (Visualize)",
			AutoDavey = "Move (Jump on impact), Break, Hook",
			AutoDragonSword = "",
			AutoDrill = "Target",
			AutoElder = "",
			AutoEldric = "Target",
			AutoElektra = "Rotate (Face target), Target",
			AutoEmber = "Target",
			AutoEnchant = "",
			AutoEquipKit = "",
			AutoEvelynn = "",
			AutoFarmer = "",
			AutoFish = "Move, Hook",
			AutoFlora = "",
			AutoFreiya = "",
			AutoGingerbreadMan = "Move (Jump after launch), Items (Legit switch), Place (Place pads), Break, Hook, Frame",
			AutoGrim = "",
			AutoGrove = "",
			AutoHannah = "Target",
			AutoHephaestus = "Frame",
			AutoHonor = "",
			AutoHotbar = "",
			AutoJade = "Items, Frame",
			AutoKaida = "Items, Target",
			AutoKaliyah = "",
			AutoKit = "Break, Hook",
			AutoKrystal = "",
			AutoLani = "",
			AutoLasso = "Shoot, Items, Target",
			AutoLumen = "Attack, Target",
			AutoMarina = "",
			AutoMarrow = "Target",
			AutoMartin = "Target",
			AutoMatchDodge = "",
			AutoMelody = "Items (Use hotbar or Use hotbar and Switch back)",
			AutoMetal = "",
			AutoMiner = "",
			AutoMushroom = "",
			AutoNahila = "",
			AutoNazar = "",
			AutoNoelle = "",
			AutoNyx = "Target",
			AutoPearl = "Shoot, Items",
			AutoPearlAggro = "Shoot, Items",
			AutoPickpocket = "Target",
			AutoPyro = "",
			AutoQueue = "",
			AutoRagnar = "",
			AutoRamil = "Target",
			AutoReset = "",
			AutoSheepHerder = "",
			AutoShielderUlt = "",
			AutoShoot = "Shoot, Items, Target",
			AutoSigrid = "Rotate (Charge attack), Target",
			AutoSilas = "",
			AutoSkoll = "Target",
			AutoSmoke = "",
			AutoSophia = "Shoot, Items, Target",
			AutoStarCollector = "",
			AutoSteal = "",
			AutoTaliyah = "",
			AutoTool = "Items, Hook, Frame",
			AutoToxic = "",
			AutoTrap = "Items, Place",
			AutoTriton = "Shoot, Items",
			AutoTrixie = "Rotate (Warp to target), Target",
			AutoUma = "Shoot, Items",
			AutoUse = "",
			AutoVanessa = "Hook",
			AutoVoidDrop = "",
			AutoVoidKnight = "",
			AutoVoidRegent = "Items, Frame",
			AutoVote = "",
			AutoWarden = "",
			AutoWarrior = "Target",
			AutoWhim = "Shoot, Items, Target",
			AutoWhimElement = "",
			AutoWhisper = "Render, Hook, Frame",
			AutoWin = "Move, Rotate, Place, Break",
			AutoXurot = "",
			AutoYeti = "",
			AutoZeno = "Items, Target",
			AutoZephyr = "Move, Frame",
			AutoZola = "",
			["Bed Break Effect"] = "",
			BedAlarm = "",
			BedAssist = "Camera, Frame",
			BedESP = "Render, Frame",
			BedPatcher = "Items, Place, Hook",
			BedPlates = "Render",
			BedProtector = "Items, Place",
			BeehiveESP = "",
			["Block-In"] = "Move, Items (Switch or Return to last slot and Switch), Place, Frame",
			BowAssist = "Camera, Hook, Frame, Target",
			CannonSpeed = "",
			CheatDetector = "",
			ChestSteal = "Render",
			["Clean Kit"] = "Hook",
			Clouds = "",
			Clutch = "Camera, Place",
			CollectableESP = "",
			CrateESP = "",
			CropESP = "",
			Crosshair = "",
			CryptAura = "",
			["Damage Indicator"] = "",
			DamageBoost = "",
			DaveyAim = "Move, Camera (Aim Mode: Legit), Items (Auto Switch), Place, Render (Show Target)",
			DeathAdderAimbot = "Hook, Target",
			DeviceSpoofer = "Hook",
			EquipKit = "",
			FalconAura = "",
			FalseBan = "",
			FastBreak = "Hook",
			FastConsume = "Hook",
			FastDrop = "",
			FastPlace = "",
			Fly = "Move, Hook, Frame",
			FOV = "Hook",
			FPSBooster = "Render, Hook (Nametags)",
			FPSUnlocker = "",
			GeneratorESP = "",
			Headless = "",
			Health = "",
			["Hit Color"] = "",
			HitBoxes = "",
			HitFix = "Attack",
			HitregAdjuster = "",
			InfiniteFly = "Move, Camera, Frame",
			InfiniteKrystal = "Hook",
			InfiniteTrixie = "Hook",
			Interface = "",
			InventoryESP = "",
			ItemESP = "",
			ItemPlates = "Render",
			JadeAura = "Move, Rotate, Items, Frame, Target",
			KeepSprint = "",
			["Kill Effect"] = "Render",
			Killaura = "Rotate (Face target), Attack, Shoot, Items, Render, Target",
			KitDisplay = "",
			KitESP = "Render",
			KitExtender = "Move",
			KitSpy = "",
			KnockbackDelay = "Hook",
			KnockbackSpoof = "",
			LeaveParty = "",
			LongJump = "Move, Shoot, Items, Place, Break, Frame",
			MemoryFixer = "",
			MissileTP = "",
			NickHider = "",
			NameTags = "Render, Frame, Target",
			NoClickDelay = "Hook",
			NoCooldown = "",
			NoFall = "Move, Frame",
			NoSlow = "",
			NoTextures = "",
			Nuker = "Break, Render",
			OverlayEditor = "Render",
			OwlAura = "Target",
			PhaseMine = "",
			PickupRange = "",
			Ping = "",
			PotESP = "Render",
			["Potion Status"] = "",
			ProjectileAimbot = "Render, Frame, Target",
			ProjectileAura = "Shoot, Items, Target",
			ProjectileHitbox = "",
			ProjectileTracers = "",
			RavenTP = "",
			Reach = "Attack, Hook",
			["Reach Display"] = "",
			RegionLock = "",
			ReplayMod = "Camera, Render, Frame",
			Scaffold = "Move (Tower), Place, Render",
			SetEmote = "Render",
			ShopClicker = "",
			SilentAim = "Shoot, Hook, Target",
			SilentAura = "Rotate, Camera, Attack, Render, Frame, Target",
			SkinChanger = "",
			["Song Beats"] = "Camera",
			SoundChanger = "Hook",
			Speed = "Move, Frame",
			Sprint = "Hook",
			StaffDetector = "",
			StorageESP = "Render",
			TeamUpgrades = "",
			TerraAimbot = "Camera, Hook, Target",
			TPDown = "Move, Frame",
			TrapDisabler = "",
			TrapESP = "",
			TriggerBot = "Attack, Render, Target",
			TrixieDisabler = "Move, Rotate, Hook, Frame",
			["UI Cleanup"] = "Hook",
			Velocity = "Hook",
			ViewMatchHistory = "",
			Viewmodel = "Render, Hook (No Bobbing)",
			VoidRegentAutoClutch = "Rotate (Face ground), Frame",
			VulcanAssist = "Target",
			WinEffect = "",
			Zoom = "Hook",
		},
		BedWarsLobby = {
			AutoGamble = "",
			AutoMatchDodge = "",
			AutoQueue = "",
			ClaimRewards = "",
			DeviceSpoofer = "Hook",
			NickHider = "",
			RegionLock = "",
			SetEmote = "Render",
			Sprint = "Hook",
			ViewMatchHistory = "",
		},
		IllegalSoccer = {
			["Anti-AFK"] = "Frame",
			AutoCatch = "Move, Rotate, Frame",
			AutoDribble = "",
			AutoGoalkeeper = "Move (Rush or Jump), Rotate (Rush)",
			AutoPass = "",
			AutoPlay = "Camera, Frame",
			AutoPowerup = "Move (Auto jump), Frame",
			AutoTackle = "Move (Face target), Rotate (Face target), Target",
			AutoTeam = "Frame",
			AutoVolley = "Frame",
			BallChanger = "Frame",
			BallHitbox = "Frame",
			BallPredict = "Render, Frame",
			FakeLag = "Hook, Frame",
			GoalChanger = "",
			GoalESP = "Render, Frame",
			InfiniteStamina = "",
			PerfectShot = "",
			ShotRedirect = "Camera, Frame",
			Sprint = "Frame",
			TackleAssist = "Rotate (Body aim), Frame, Target",
		},
		TowerOfHell = { AutoPlay = "Move, Hook, Frame" },
		Universal = {
			AimAssist = "Camera, Render, Frame, Target",
			AnimationPlayer = "",
			["Anti-AFK"] = "",
			AntiFall = "Move (Move Mode: Velocity and Method: Part or Move Mode: Impulse and Method: Part), Frame",
			AntiRagdoll = "",
			Arrows = "Frame, Target",
			Atmosphere = "",
			AutoClicker = "Attack (Mode: Tool)",
			AutoRejoin = "",
			Blink = "Move",
			BlurryTextures = "",
			Breadcrumbs = "",
			Cape = "Render",
			Chams = "Render, Target",
			ChatSpammer = "Hook",
			["China Hat"] = "",
			Clock = "",
			Compass = "Frame",
			Coords = "Frame",
			Disabler = "Hook",
			Disguise = "",
			ESP = "Render, Frame, Target",
			FFlagEditor = "",
			Fly = "Move, Frame",
			FOV = "Camera",
			FPS = "Frame",
			Freecam = "Camera, Hook, Frame",
			Fullbright = "Render",
			GamingChair = "Render",
			Gravity = "Move, Frame",
			Health = "",
			HighJump = "Move (Mode: Velocity or Mode: Impulse), Frame",
			HitBoxes = "Target",
			InfiniteJump = "Move (Mode: Velocity or Mode: Jump or TP Down)",
			Invisible = "Move, Rotate, Frame",
			Jesus = "Frame",
			Keystrokes = "Frame",
			Killaura = "Rotate (Face target), Attack, Render, Target",
			LongJump = "Move, Frame",
			Memory = "",
			MotionBlur = "Frame",
			MouseTP = "Move, Frame",
			MurderMystery = "",
			NameTags = "Render, Frame, Target",
			Panic = "",
			Parkour = "Move, Frame",
			Phase = "Move, Frame",
			Ping = "",
			PlayerModel = "",
			PromptChanger = "",
			Rejoin = "",
			SafeWalk = "Move, Hook",
			Search = "Render",
			ServerHop = "",
			SilentAim = "Clicks (AutoFire), Render, Hook, Target",
			["Song Beats"] = "Camera",
			Speed = "Move, Frame",
			Speedmeter = "",
			Spider = "Move, Frame",
			SpinBot = "Rotate (Mode: RotVelocity or Mode: CFrame), Frame",
			StaffDetector = "",
			Swim = "Frame",
			TargetStrafe = "Move, Move, Hook, Target",
			["Time Changer"] = "Render",
			Timer = "Frame",
			Tracers = "Render, Frame, Target",
			TriggerBot = "Clicks, Target",
			Wallhop = "Camera",
			Waypoints = "Render",
			Xray = "",
			ZoomUnlocker = "Camera",
		},
	}

	tbl2.Recipes = {
		BedWars = {
			Legit = {
				On = "AimAssist, AntiEffect, AntiLasso, AntiSuffocate, AutoBank, AutoClicker, AutoFish, AutoMatchDodge, AutoSteal, AutoTool, AutoWin, BedPlates, CannonSpeed, ESP, FPSBooster, ItemESP, Killaura, KitDisplay, KitESP, MotionBlur, NickHider, NameTags, NoFall, Nuker, PotESP, ProjectileAimbot, StaffDetector, Velocity",
				Legit = "FOV, FPS",
				Modules = {
					AimAssist = "Strafe increase=off; Use killaura target=on; Smoothness=6.5; Require mouse down=off; Click aim=on; Aim perspective=First person; Aim speed=20; Max angle=120; Mode=Simple; Shake=0; Distance=30; Target area=Center; Limit to items=off; Target mode=Mouse; Check block break=off",
					AntiEffect = "Dizzy=on; Werewolf fear=on; Vignettes=on",
					AntiLasso = "Chance=100; Only when targeting=off",
					AntiSuffocate = "Mode=Move; Check height=1.5",
					AutoBank = "Chest range=0; Display resources=on; Health threshold=40",
					AutoClicker = "Wool only=off; Place Blocks=on; CPS=9 to 9; Block CPS=12 to 12",
					AutoFish = "Clicks=8 to 13; Cast delay=0.3 to 1.2; Minigame mode=Instant; Auto Minigame=on; Reaction=0.06 to 0.19; Complete delay=1.2 to 2.6; Show loot drops=on; Auto Cast=on",
					AutoMatchDodge = "Guaranteed 5v4=off; Low Rank At=Bronze; Advanced=off; Auto Undodge=off; Mode=Rank; Rank Veto=off; Ping=200; Timeout=20; Device=Mobile / Gamepad; 4v5 Check=off; Rank Advantage=off; Rank only=on; Device Check=off; Veto At=Bronze; Low Rank=off; Max Wait=20",
					AutoSteal = "GUI Check=off; Delay=0; Range=18",
					AutoTool = "Mode=Look; Delay=0 to 0.15; Switch back=on",
					AutoWin = "Debug=off; Strafe range=18; Block reserve=8; Recover health=70; Health=40; Move boost=2; Fly time=1.75; Defend range=40; Break bed=on",
					BedPlates = "Background=on; Layer Counter=on",
					["Block-In"] = "Return to last slot=on; Wool only=off; Switch=on; Mode=On bind; Block priority=Lowest cost",
					CannonSpeed = "Speed=250",
					ESP = "Priority Only=on; Name=off; Use Displayname=on; Health Bar=off; Filled=off; Bounding Box=on; Mode=2D; Distance Check=off; Show Background=off; Player Distance=0 to 64",
					FPSBooster = "Shadows=off; Post effects=off; Compatibility lighting=off; Kill effects=off; Cosmetics=off; Render quality=off; Nametags=off; Water=off; Visualizer=off; Freeze animations=off; Particles=on; Clouds=off",
					Freecam = "Speed=150",
					ItemESP = "Transparency=0.5; Scale=1; Distance=off",
					Killaura = "No Tween=off; Fast Hits=off; Target particles=off; Max targets=1; Use sophia=off; Use nazar=off; Animation Mode=Normal; Animation Speed=1; Fire rate=0.05; Face target=off; AFK check=on; No Swing=off; Swing only=on; Attack range=15; Use whim=off; Attackable check=on; Swing range=16; Swing time=0.11; Limit to items=on; Show target=off; Size=0.2; Box Animation=Bounce; Max angle=70; Require mouse down=off; End Animation Speed=1.4; Start Animation Speed=0.9; Attack speed=0; GUI check=on; High hitreg=off; Legit Switch=off; Custom Animation=off; Target Mode=Mouse; Continue swing=0 to 0; Air hit chance=100 to 100",
					KitDisplay = "Show previous kits=on",
					KitESP = "Scale=1; Background=on",
					MotionBlur = "Movement amount=7.6; Turn amount=7.6; Max blur=56; Smoothing=1",
					NickHider = "Hide chat tags=on; Hide others=off; Name=hidden; Hide kit=off; Hide level=on",
					NameTags = "Inventory=off; Priority Only=on; Use Displayname=on; Drawing=off; Player Distance=0 to 64; Distance=on; Show Rank=off; Equipment=off; Font=Arial; Health=off; Show Enchant=off; Transparency=0.5; Scale=1; Distance Check=off",
					NoFall = "Damage=50",
					Nuker = "Break Lucky Block=off; Player check=off; Legit mode=on; Update rate=120; Break Iron Ore=off; Animation Mode=Minimal; Break Hive=on; Auto Tool=on; View angle=180; Break Bed=on; Break range=18; Custom Healthbar=on; Closest break=off; Break mode=Health; Break speed=0.28; Break Tesla=on; Self Break=off; Show Healthbar & Effects=on; Limit to items=on",
					PotESP = "Background=on",
					ProjectileAimbot = "Circle Filled=on; Range Circle=off; Part=Dynamic; Vertical prediction=1; Horizontal prediction=0.9; Transparency=0.5; FOV=100; Other Projectiles=on; Aim change=on; Auto Charge=on; Target mode=Distance",
					Speed = "Always Jump=off; AutoJump=on; Mode=Blatant; Wall Check=on; Speed=22",
					StaffDetector = "Profile=default; Blacklist clans=on; Leave party=off; Viewer=off; Mode=Notify",
					Velocity = "Vertical=80; AFK time=10; Chance=100; Horizontal=80; AFK check=off; Only when targeting=off",
				},
			},
			Closet = {
				On = "AimAssist, AntiLasso, AntiSuffocate, AutoFish, AutoTool, CannonSpeed, Killaura, MotionBlur, PhaseMine, StaffDetector, Velocity",
				Legit = "",
				Modules = {
					AimAssist = "Strafe increase=off; Use killaura target=on; Smoothness=10; Require mouse down=off; Click aim=on; Aim perspective=First person; Aim speed=20; Max angle=120; Mode=Simple; Shake=0; Distance=30; Target area=Center; Limit to items=off; Target mode=Mouse; Check block break=off",
					AntiLasso = "Chance=80; Only when targeting=off",
					AntiSuffocate = "Mode=Move; Check height=1.5",
					AutoFish = "Clicks=8 to 13; Cast delay=0.3 to 1.2; Minigame mode=Legit; Auto Minigame=on; Reaction=0.06 to 0.19; Complete delay=1.2 to 2.6; Show loot drops=on; Auto Cast=off",
					AutoTool = "Mode=Look; Delay=0.06 to 0.16; Switch back=on",
					CannonSpeed = "Speed=250",
					Killaura = "No Tween=off; Fast Hits=off; Target particles=off; Max targets=1; Use sophia=off; Use nazar=off; Animation Mode=Normal; Animation Speed=1; Fire rate=0.05; Swing time=0.11; AFK check=on; No Swing=off; Swing only=on; Attack range=15; Use whim=off; Air hit chance=95 to 100; Attackable check=on; Swing range=15; Limit to items=on; Show target=off; Size=0.2; Max angle=120; Legit Switch=off; Require mouse down=off; End Animation Speed=1.4; Box Animation=Bounce; Attack speed=0; GUI check=on; High hitreg=off; Start Animation Speed=0.9; Custom Animation=off; Target Mode=Mouse; Continue swing=0 to 0; Face target=off",
					MotionBlur = "Movement amount=7.6; Turn amount=7.6; Max blur=56; Smoothing=1",
					Speed = "Always Jump=off; AutoJump=on; Mode=Blatant; Wall Check=on; Speed=23",
					StaffDetector = "Profile=default; Blacklist clans=on; Leave party=off; Viewer=off; Mode=Notify",
					Velocity = "Vertical=80; AFK time=10; Chance=100; Horizontal=80; AFK check=off; Only when targeting=off",
				},
			},
			Blatant = {
				On = "AutoEnchant, AutoFish, AutoPlay, BedESP, CheatDetector, ChestSteal, DamageBoost, DeviceSpoofer, ESP, KeepSprint, Killaura, MemoryFixer, NickHider, NameTags, NoFall, NoSlow, Nuker, PickupRange, ProjectileAimbot, ProjectileAura, SkinChanger, Spider, Sprint, StaffDetector, StorageESP, Velocity",
				Legit = "Clean Kit, FOV, HitFix, Ping, Viewmodel",
				Modules = {
					AutoEnchant = "Repair tables=on; Range=12; Delay=0.5",
					AutoFish = "Clicks=8 to 13; Cast delay=0.3 to 1.2; Minigame mode=Legit; Auto Minigame=on; Reaction=0.06 to 0.19; Complete delay=0.1 to 0.9; Show loot drops=on; Auto Cast=on",
					BedESP = "Filled=off; Use Team Color=on; Bounding Box=on; Health Bar=on; Name=on; Hide Own Bed=on; Mode=2D; Distance Check=off; Show Background=off; Bed Distance=0 to 256",
					["Block-In"] = "Wool only=off; Return to last slot=on; Switch=on; Mode=On bind; Block priority=Lowest cost",
					CheatDetector = "Reach=on; FastBreak=on; ChestSteal=on; Strictness=Lenient; Speed=on; Killaura=on; Fly=on; Scaffold=on; AntiFall=on",
					ChestSteal = "Animation time=0.12; Visualize=on; Range=18; GUI Check=off; Legit mode=off; Animate=on; Only Skywars=on",
					DeviceSpoofer = "Device=Gamepad",
					ESP = "Priority Only=on; Name=off; Use Displayname=on; Health Bar=off; Filled=off; Bounding Box=on; Mode=2D; Distance Check=off; Show Background=off; Player Distance=0 to 64",
					Fly = "Vertical Speed=80; Speed=23; Pop Balloons=on; Wall Check=on; TP Down=on",
					Freecam = "Speed=150",
					HighJump = "Mode=Impulse; Velocity=150; Auto Disable=on",
					Killaura = "Target particles=off; Max targets=1; Max angle=360; Swing range=18; Require mouse down=off; Show target=on; Face target=off; Attack range=18; Size=0.2",
					LongJump = "Speed=37; Camera Direction=on",
					MemoryFixer = "Sync events=on; Interval=30; Notify=on",
					NickHider = "Hide chat tags=on; Hide others=off; Name=discord.gg/catvape; Hide kit=off; Hide level=off",
					NameTags = "Inventory=off; Priority Only=on; Use Displayname=on; Drawing=off; Player Distance=0 to 64; Distance=on; Show Rank=on; Equipment=off; Font=Arial; Health=off; Show Enchant=on; Transparency=0.5; Scale=1; Distance Check=off",
					NoFall = "Damage=0",
					Nuker = "Break Lucky Block=off; Player check=off; Legit mode=off; Update rate=120; Break Iron Ore=off; Animation Mode=No Animation; Break Hive=off; Auto Tool=off; View angle=60; Break Bed=on; Break range=30; Custom Healthbar=on; Closest break=off; Break mode=Health; Break speed=0.25; Break Tesla=on; Self Break=off; Show Healthbar & Effects=on; Limit to items=off",
					PickupRange = "Feet Check=on; Network TP=off; Range=10",
					ProjectileAimbot = "Circle Filled=off; Horizontal prediction=0.9; Range Circle=off; Part=Head; Vertical prediction=1; Transparency=0.5; FOV=325; Other Projectiles=on; Auto Charge=on; Aim change=on; Target mode=Mouse; Shoot pots=on",
					ProjectileAura = "Part=Dynamic; Use whim=off; Use sophia=off; Use nazar=off; Range=50; AFK check=off; Fire Rate=0.04 to 0.08",
					Scaffold = "Visual=off; Require mouse down=off; Expand=1; Tower=on; Downwards=on; Diagonal=off; Block Count=off; Limit to items=off",
					SkinChanger = "Lasso=None; Harpoon=None; Warrior Helmet=None; Crystalheart Flower=None; Gun Blade=None; Tearbloom Flower=None; Apple=None; Falconer Crossbow=None; Frost Crystal=None; Defense Scanner=None; Infernal Shield=None; Oil Spitter=None; Dao=None; Axe=None; Sword=Banana; Light Sword=None; Headhunter=None; Infernal Saber=None; Bee Net=None; Guitar=None; Golden Apple=None; Cannon=None; Tactical Crossbow=Victorious Nightmare; Bee=None; Frosty Hammer=None; Camera Turret=None; Falconer Bow=None; Drawbridge=None; Black Market Shop=None; Owl Orb=None; Noctium Blade=None; Beehive=None; Life Crossbow=None; Rageblade=Bunny; Wood Bow=Valentine; Cluster Bomb=None; Spirit Dagger=None; Flower Bow=Nightmare Victorious; Falconer Headhunter=None; Wizard Staff=None; Scaffold=None; Ice Sword=None; Tinker Weapon=None; Warlock Staff=None; Soulvine Flower=None; Warrior Boots=None; Spirit Dagger Left=None; Warrior Chestplate=None; Flower Crossbow=Nightmare Victorious; Tablet=None; Miner Pickaxe=None; Spirit=None; Tactical Headhunter=None; Spirit Staff=None; Pie=None; Feather Bow=None; Pickaxe=Valentine; Wood Crossbow=Valentine; Hammer=None; Raven=None; Life Bow=None; Flower Headhunter=Emerald Victorious; Necromancer Staff=None; Jade Hammer=None; Life Headhunter=None; Bed=None",
					Spider = "Speed=100; Mode=Velocity; Climb State=off",
					StaffDetector = "Profile=default; Blacklist clans=on; Leave party=off; Viewer=off; Mode=Notify",
					StorageESP = "Background=on; Show Amount=off",
					Velocity = "Vertical=0; AFK time=10; Chance=100; Horizontal=0; AFK check=off; Only when targeting=off",
				},
			},
		},
		BedWarsLobby = {
			Legit = {
				On = "AutoMatchDodge, ClaimRewards, NickHider",
				Legit = "",
				Modules = {
					AutoMatchDodge = "Guaranteed 5v4=off; Low Rank At=Bronze; Advanced=off; Auto Undodge=off; Mode=Rank; Rank Veto=off; Ping=200; Timeout=20; Device=Mobile / Gamepad; 4v5 Check=off; Rank Advantage=off; Rank only=on; Device Check=off; Veto At=Bronze; Low Rank=off; Max Wait=20",
					ClaimRewards = "Crates only=off; Notify=on",
					NickHider = "Hide others=on; Name=hidden; Hide chat tags=on; Hide level=on",
				},
			},
			Closet = { On = "", Legit = "", Modules = {} },
			Blatant = {
				On = "AutoGamble, AutoQueue, ClaimRewards, DeviceSpoofer, NickHider, Speed, Sprint, StaffDetector, Waypoints",
				Legit = "",
				Modules = {
					AutoQueue = "Queue Type=BedWars (Solo); Leave Party=on",
					ClaimRewards = "Crates only=off; Notify=on",
					DeviceSpoofer = "Device=Gamepad",
					Fly = "TP Frequency=0; Speed Mode=CFrame; Vertical Speed=88; Speed=22; Ground=0.1; Air=1.9; Pulse Length=0; Move Mode=MoveDirection; Wall Check=on; Keys=Space/LeftShift; Pulse Delay=0; Float Mode=CFrame; Custom Properties=off; Humanoid State=None; Bounce Length=0; Bounce Delay=0; PlatformStand=off",
					HighJump = "Mode=Impulse; Velocity=150; Auto Disable=on",
					NickHider = "Hide others=off; Name=hidden; Hide chat tags=off; Hide level=off",
					Speed = "Pulse Length=0; Move Mode=MoveDirection; Wall Check=on; Custom Jump=off; Pulse Delay=0; TP Frequency=0; Custom Properties=off; Speed=23; Mode=CFrame; Jump Power=30; AutoJump=off",
					StaffDetector = "Profile=default; Role=100; Group=5774246; Mode=Uninject",
					Waypoints = "Transparency=0.5; Scale=1; Font=Arial",
				},
			},
		},
	}

	tbl2.Resources = {
		Move = {
			Does = "moves your character",
			Clash = "both move your character, so each one undoes the other's movement, which shows up as rubberbanding, lag backs or getting flagged",
			Strong = true,
		},
		Rotate = {
			Does = "turns your character",
			Clash = "both turn your character, so you snap back and forth between where each one wants you to face",
			Strong = true,
		},
		Camera = {
			Does = "moves your camera",
			Clash = "both move your camera, so it jitters between the two",
			Strong = true,
		},
		Items = {
			Does = "switches the item you hold",
			Clash = "both switch the item you hold, so your hotbar can flick between slots",
			Strong = true,
		},
		Attack = { Does = "attacks for you", Clash = "both attack for you, so they double up on swings" },
		Shoot = {
			Does = "shoots projectiles for you",
			Clash = "both fire projectiles, so they use up the same ammo",
		},
		Clicks = { Does = "clicks for you", Clash = "both click for you" },
		Place = { Does = "places blocks", Clash = "both place blocks, so they pull from the same stack" },
		Break = {
			Does = "breaks blocks",
			Clash = "both break blocks, so they can go after different blocks at once",
		},
		Target = {
			Does = "picks its own targets",
			Clash = "both pick their own targets, so they can go after different players",
		},
		Render = { Does = "draws extra visuals" },
		Hook = { Does = "changes some of the game's own code" },
		Frame = { Does = "runs every frame" },
	}

	tbl2.ResourceOrder = {
		"Move",
		"Rotate",
		"Camera",
		"Items",
		"Attack",
		"Shoot",
		"Clicks",
		"Place",
		"Break",
		"Target",
		"Render",
		"Hook",
		"Frame",
	}

	tbl2.Acting = { "Attack", "Shoot", "Camera", "Rotate", "Clicks" }
	tbl2.Background = tbl2.Set("Target Render Hook Frame")
	local symptoms = {}

	local tbl31 = {
		Resource = "Rotate",
		Words = tbl2.Set("rotation rotations rotating rotates facing spinning spins snapping snaps flicking flicks turning"),
		Bad = tbl2.Set("spinning snapping flicking"),
		Doing = "turning your character",
		Question = "Does it only happen while you're fighting someone?",
	}

	local tbl32 = {
		Resource = "Camera",
		Words = tbl2.Set("camera cam cams shaking shakes shaky jitter jitters jittering jittery screen"),
		Bad = tbl2.Set("shaking shakes shaky jitter jitters jittering jittery"),
		Doing = "moving your camera",
		Question = "Is it only while you're aiming at someone, or all the time?",
	}

	local tbl33 = {
		Resource = "Move",
		Words = tbl2.Set("rubberband rubberbanding rubberbands rubberbanded lagback lagbacks lagbacked lagbacking setback setbacks teleported teleporting flagged flagging sliding floating floaty walk walking walks move moving moves jump jumping jumps strafing strafe falling yanked yanking dragged dragging slammed"),
		Bad = tbl2.Set("rubberband rubberbanding rubberbands rubberbanded lagback lagbacks lagbacked lagbacking setback setbacks flagged flagging floating floaty yanked yanking slammed"),
		Doing = "moving your character",
		Question = "Does it happen all the time, or only when you go fast or jump?",
		Quiet = "Lag backs like that usually come from the game pulling you back, either from lag or from its anticheat.",
	}

	local tbl34 = {
		Resource = "Items",
		Words = tbl2.Set("hotbar slot slots switching swapping swaps switches"),
		Doing = "switching the item you hold",
		Question = "Does it switch when a fight starts, or at random times?",
	}

	local tbl35 = {
		Resource = "Attack",
		Words = tbl2.Set("hitting swinging attacking"),
		Doing = "attacking for you",
		Question = "Does it swing at all, or does it swing and miss?",
	}

	symptoms[1] = tbl31
	symptoms[2] = tbl32
	symptoms[3] = tbl33
	symptoms[4] = tbl34
	symptoms[5] = tbl35
	tbl2.Symptoms = symptoms

	tbl2.SymptomPhrases = {
		Move = {
			"lag back",
			"lags back",
			"lagging back",
			"lagged back",
			"lagging me back",
			"lags me back",
			"lagged me back",
			"pulls me back",
			"pulling me back",
			"teleports me back",
			"by itself",
			"on its own",
			"on my own",
			"super slow",
			"so slow",
			"pulled back",
			"pulls back",
			"pulling back",
			"teleports back",
			"teleported back",
			"tp back",
			"tps back",
			"set back",
			"moving by itself",
			"moves by itself",
			"walking by itself",
			"walks by itself",
			"jumping by itself",
			"jumps by itself",
			"keeps jumping",
			"keep jumping",
			"randomly jumping",
			"randomly jump",
			"cant walk",
			"cant move",
			"moving on its own",
			"moves on its own",
		},
		Rotate = {
			"keeps turning",
			"turning around",
			"looking at the ground",
			"looking down",
			"looking up",
			"looks away",
			"spins me",
			"turns me",
		},
		Items = {
			"switching items",
			"switches items",
			"swapping items",
			"changing items",
			"switching my sword",
			"switches my sword",
			"switches my item",
			"swaps my item",
		},
	}

	tbl2.Hypothetical = tbl2.Set("without before avoid never prevent")
	tbl2.Commands = tbl2.Set("turn open close enable disable bind unbind rebind set toggle add remove show hide make create switch favorite star put change undo go load delete activate deactivate start stop equip use")
	tbl2.Currency = tbl2.Set("iron diamond diamonds emerald emeralds gold")
	tbl2.Auxiliary = tbl2.Set("do does did will would can could is are")
	tbl2.Subjects = tbl2.Set("they it i you we these those both everyone everybody people that this he she")

	tbl2.Strange = {
		"by itself",
		"by myself",
		"on its own",
		"on my own",
		"all of a sudden",
		"out of nowhere",
		"for no reason",
		"randomly",
		"whenever",
		"every time",
		"keeps",
		"keep",
		"without even",
		"without pressing",
		"without touching",
		"without me",
	}

	tbl2.Lowering = {
		"lower",
		"lowering",
		"decrease",
		"decreasing",
		"reduce",
		"reducing",
		"less",
		"min",
		"down",
		"drop",
		"dropping",
	}

	tbl2.OptionHints = {
		mouse = tbl2.Set("click clicking clicks holding hold press pressing lmb"),
		items = tbl2.Set("sword holding weapon"),
		walls = tbl2.Set("wall behind through"),
		teams = tbl2.Set("teammate teammates team"),
		afk = tbl2.Set("idle afk"),
		gui = tbl2.Set("menu gui inventory"),
	}

	tbl2.ModuleWords = {
		"module",
		"modules",
		"mod",
		"mods",
		"something",
		"anything",
		"catvape",
		"vape",
		"setting",
		"settings",
		"script",
		"cheat",
		"cheats",
		"hack",
		"hacks",
		"feature",
		"features",
		"thing",
		"smth",
	}

	tbl2.Markers = {
		Compare = tbl2.Set("vs versus difference different differences better best which or compare comparison instead prefer rather same similar"),
		Together = tbl2.Set("together both conflict conflicts conflicting clash clashes clashing interfere interferes compatible combine combo alongside fine ok okay safe mess stack stacks cancel cancels overlap overlaps combined while block blocks blocking before first plus eat eats steal steals override overrides fires"),
		Using = tbl2.Set("using running btw fyi currently"),
		Trouble = tbl2.Set("not isnt arent wasnt werent doesnt dont didnt wont aint cant havent hasnt never nothing stopped stops broken broke bugged buggy misses missing miss fails failing failed keeps random randomly weird wrong glitchy stuck error errors errored erroring anymore useless"),
		Tradeoff = tbl2.Set("best good bad worth should recommend recommended ideal optimal optimum rate"),
		Direction = tbl2.Set("higher lower raise increase decrease max maxed"),
		Change = tbl2.Set("make makes making give gives increase increases decrease decreases help helps affect affects change changes boost boosts lower lowers raise raises means mean let lets"),
		Code = tbl2.Set("script scripts code loop function snippet lua luau"),
		Writing = tbl2.Set("write make code give send create program"),
		Frame = tbl2.Set("does do will would make makes making means mean let lets help helps affect affects change changes give gives actually right"),
		Image = tbl2.Set("pic pics picture pictures screenshot screenshots ss image images photo photos png jpg"),
		Viewing = tbl2.Set("look see check read sent send took attached here heres show tell rate"),
		Deeper = tbl2.Set("more deeper depth detail details elaborate"),
		Simpler = tbl2.Set("tldr eli5 simpler simple simply dumb confused confusing english shorter short huh"),
	}

	tbl2.Odd = tbl2.Set("weird weirdly wrong messed janky funny strange glitchy crazy random randomly itself own keeps keep always tweaking tweakin bugging annoying broken bad sus odd why stop")
	tbl2.Laggy = tbl2.Set("lag lags lagging laggy lagged stutter stutters stuttering stuttery freeze freezes freezing frozen choppy slideshow performance")
	tbl2.Frames = tbl2.Set("fps frames framerate frame")
	tbl2.Low = tbl2.Set("low lower bad drop drops dropping dropped tank tanks tanked tanking terrible horrible awful garbage unplayable dies dying died trash worse slow tanky from after since inject injecting injected normal")
	local roles = {}

	local tbl36 = {
		Id = "Chance",
		Words = tbl2.Set("chance percent percentage"),
		Means = "how often it kicks in, as a percent",
		Up = "it happens more often",
		Down = "it happens less often",
		Tradeoff = "acting every time, or only some of the time like a real player would",
	}

	local tbl37 = {
		Id = "Delay",
		Words = tbl2.Set("delay cooldown time wait interval duration seconds"),
		Means = "how long it waits between actions",
		Up = "it waits longer and acts less often",
		Down = "it acts more often",
		Tradeoff = "acting as fast as possible, or looking like a normal player",
		Inverse = true,
	}

	local tbl38 = {
		Id = "Range",
		Words = tbl2.Set("range distance reach radius"),
		Means = "how far away it works",
		Up = "it reaches things farther away",
		Down = "it only works up close",
		Tradeoff = "more reach, or staying close to what a normal player can do",
	}

	local tbl39 = {
		Id = "Angle",
		Words = tbl2.Set("angle fov"),
		Means = "how far off to the side a target can be",
		Up = "it also goes after targets beside or behind you",
		Down = "it only goes after what's in front of you",
		Tradeoff = "catching everyone around you, or only who you're looking at",
	}

	local tbl40 = {
		Id = "Smooth",
		Words = tbl2.Set("smooth smoothness smoothing"),
		Means = "how gradually it moves",
		Up = "it moves more gradually and looks more natural, but takes longer to lock on",
		Down = "it snaps on faster",
		Tradeoff = "locking on fast, or looking natural",
	}

	local tbl41 = {
		Id = "Predict",
		Words = tbl2.Set("prediction predict lead"),
		Means = "how far ahead it aims at moving targets",
		Up = "it leads moving targets more",
		Down = "it aims closer to where they are right now",
		Tradeoff = "leading fast movers, or staying on slow ones",
	}

	local tbl42 = {
		Id = "Shake",
		Words = tbl2.Set("shake jitter random randomize randomness humanize"),
		Means = "how much randomness it adds so it looks less robotic",
		Up = "it looks more human but is less precise",
		Down = "it's more precise but more robotic",
		Tradeoff = "precision, or looking human",
	}

	local tbl43 = {
		Id = "Speed",
		Words = tbl2.Set("speed cps rate"),
		Means = "how fast it goes",
		Up = "it goes faster",
		Down = "it goes slower",
		Tradeoff = "going as fast as possible, or staying under what gets noticed",
	}

	local tbl44 = {
		Id = "Priority",
		Words = tbl2.Set("priority sort order target"),
		Means = "which target it picks first",
	}

	local tbl45 = {
		Id = "Strength",
		Words = tbl2.Set("strength power multiplier amount force horizontal vertical expand size height boost"),
		Means = "how strong or big the effect is",
		Up = "the effect gets stronger",
		Down = "the effect gets weaker",
		Tradeoff = "a stronger effect, or one that stands out less",
	}

	local tbl46 = {
		Id = "Check",
		Words = tbl2.Set("check wall walls team teams require only ignore limit"),
		Means = "a condition it checks before acting",
	}

	local tbl47 = {
		Id = "Mode",
		Words = tbl2.Set("mode method perspective type"),
		Means = "which way it does its job",
	}

	local tbl48 = {
		Id = "Looks",
		Words = tbl2.Set("color colour transparency font background outline fill thickness visual visualize text"),
		Means = "how it looks, not how it works",
	}

	roles[1] = tbl36
	roles[2] = tbl37
	roles[3] = tbl38
	roles[4] = tbl39
	roles[5] = tbl40
	roles[6] = tbl41
	roles[7] = tbl42
	roles[8] = tbl43
	roles[9] = tbl44
	roles[10] = tbl45
	roles[11] = tbl46
	roles[12] = tbl47
	roles[13] = tbl48
	tbl2.Roles = roles
	tbl2.Showing = tbl2.Set("show display render draw visualize visual highlight")

	tbl2.TargetsRole = {
		Id = "Targets",
		Means = "who it goes after, players or NPCs, and whether it skips players behind walls",
	}

	tbl2.OptionNotes = {
		["Killaura/Swing range"] = {
			Role = "Range",
			Means = "how far it looks for targets and swings at them",
			Limit = "It only lands hits on targets inside Attack range, so raising it doesn't let you hit farther.",
			Effects = { Range = "Attack range" },
		},
		["Killaura/Attack range"] = { Role = "Range", Means = "how far away a target can be for a hit to count" },
		["Killaura/No Swing"] = {
			Role = "Looks",
			Means = "whether it plays the swing animation",
			Limit = "It only hides the swing animation, hits still land.",
			Effects = { Hitting = false },
		},
		["Killaura/Attack speed"] = {
			Role = "Delay",
			Means = "the shortest wait between hits, in seconds",
			Up = "it hits less often",
			Down = "it hits more often, and 0 adds no extra wait at all",
			Limit = "Despite the name, a higher value means slower hits.",
		},
	}

	local effects = {}

	local tbl49 = {
		Id = "Rate",
		Words = tbl2.Set("faster quicker quick often frequently cps spam rapid slower hitrate"),
		Roles = tbl2.Set("Speed Delay Chance"),
		Text = "how fast it goes or acts",
	}

	local tbl50 = {
		Id = "Range",
		Words = tbl2.Set("far farther further reach distance longer away range"),
		Roles = tbl2.Set("Range"),
		Text = "how far it reaches",
	}

	local tbl51 = {
		Id = "Damage",
		Words = tbl2.Set("damage dmg harder crit crits"),
		Roles = {},
		Text = "how much damage you do",
	}

	local tbl52 = {
		Id = "Hitting",
		Words = tbl2.Set("hit hits hitting land lands landing register registers"),
		Roles = {},
		Text = "whether it lands hits",
	}

	local tbl53 = {
		Id = "Strength",
		Words = tbl2.Set("knockback kb half less weaker stronger"),
		Roles = tbl2.Set("Strength"),
		Text = "how strong the effect is",
	}

	local tbl54 = {
		Id = "Frames",
		Words = tbl2.Set("fps frames lag laggy performance"),
		Roles = {},
		Text = "your FPS",
	}

	local tbl55 = {
		Id = "Targeting",
		Words = tbl2.Set("who which target targets targeting pick picks choose first lowest highest closest nearest focus prioritize"),
		Roles = tbl2.Set("Priority Targets"),
		Text = "who it goes after",
	}

	local tbl56 = {
		Id = "Smooth",
		Words = tbl2.Set("smooth smoother snappy snap snaps natural legit robotic"),
		Roles = tbl2.Set("Smooth Shake"),
		Text = "how natural it looks",
	}

	local tbl57 = {
		Id = "Detection",
		Words = tbl2.Set("detect detected detectable flag flagged flags ban banned bannable safe safer anticheat"),
		Roles = {},
		Text = "whether you get flagged",
	}

	local tbl58 = {
		Id = "Looks",
		Words = tbl2.Set("look looks see visible color colour"),
		Roles = tbl2.Set("Looks"),
		Text = "how it looks",
	}

	effects[1] = tbl49
	effects[2] = tbl50
	effects[3] = tbl51
	effects[4] = tbl52
	effects[5] = tbl53
	effects[6] = tbl54
	effects[7] = tbl55
	effects[8] = tbl56
	effects[9] = tbl57
	effects[10] = tbl58
	tbl2.Effects = effects

	tbl2.Errors = {
		{
			Find = { "attempt to index nil", "attempt to index a nil" },
			Explain = function(arg)
				local match = arg:match("with '([^']+)'") or arg:match("field '([^']+)'")
				return (("The code tried to read %* from a value that doesn't exist (nil)."):format(match and fn9(fn7(match)) or "something"))
			end,
			Cause = "Usually something wasn't loaded yet, like your character right after you die or respawn, or a game update moved it.",
			Passing = true,
		},
		{
			Find = { "attempt to call a nil", "attempt to call nil" },
			Explain = function(arg)
				local match = arg:match("global '([^']+)'") or arg:match("method '([^']+)'") or arg:match("field '([^']+)'")
				return (("The code tried to run %*, but it doesn't exist."):format(match and fn9(fn7(match)) or "a function"))
			end,
			Cause = function(arg)
				if arg:find("global '", 1, true) then
					return "A missing global like that is almost always a function your executor doesn't have, so anything that needs it can't run on this executor."
				end
				return "That usually means the game renamed or removed that function in an update."
			end,
			Executor = function(arg)
				return arg:find("global '", 1, true) ~= nil
			end,
		},
		{
			Find = { "attempt to perform arithmetic" },
			Explain = "The code tried to do math with something that isn't a number, usually a value that hasn't loaded yet (nil).",
			Passing = true,
		},
		{
			Find = { "attempt to compare" },
			Explain = "The code compared two values that can't be compared, usually a number with nil.",
			Cause = "Something it expected to read wasn't there yet.",
			Passing = true,
		},
		{
			Find = { "attempt to concatenate" },
			Explain = "The code tried to join text with a value that isn't text, usually nil.",
			Passing = true,
		},
		{
			Find = { "is not a valid member of" },
			Explain = function(arg)
				local match, v6 = arg:match("([%w_]+) is not a valid member of ([%w_]+)")

				if match then
					local v7 = fn9
					match = ("%* isn't inside %*."):format(fn9(fn7(match)), v7(fn7(v6)))
				end

				return match or "The code looked for something that isn't there."
			end,
			Cause = "The code expected something the game doesn't have, either because it hasn't loaded yet or because an update renamed or moved it.",
		},
		{
			Find = { "infinite yield possible" },
			Explain = function(arg)
				local match = arg:match("[Ww]ait[Ff]or[Cc]hild%([\"']([^\"']+)") or arg:match("on '([^']+)'")
				return (("A script is still waiting for %* to show up after 5 seconds."):format(match and fn9(fn7(match)) or "something"))
			end,
			Cause = "It's only a warning, not a crash, and if it doesn't mention CatVape it's usually the game's own script.",
		},
		{
			Find = { "unable to cast" },
			Explain = "A Roblox function got the wrong type of value, like text where it wanted an object.",
		},
		{
			Find = { "illegal path" },
			Explain = "Your executor blocked a file path. Executors only let scripts read and write inside their own workspace folder.",
			Executor = true,
		},
		{
			Find = { "invalid argument #" },
			Explain = function(arg)
				local match, v6 = arg:match("invalid argument #(%d+) to '([^']+)'")
				return match and ("%* got a bad value for its input number %*."):format(fn9(fn7(v6)), match) or "A function got a bad value for one of its inputs."
			end,
			Cause = "Usually the value it got was nil because something hadn't loaded.",
		},
		{
			Find = { "table overflow", "not enough memory", "out of memory" },
			Explain = "The script ran out of memory.",
			Cause = "That builds up over a long session or after reinjecting a few times. Rejoin to clear it.",
		},
		{
			Find = { "stack overflow" },
			Explain = "Something kept calling itself until it ran out of room.",
			Cause = "With scripts that's usually two hooks wrapping the same function, often after reinjecting. Rejoin and inject once.",
		},
		{
			Find = { "too many requests", "http 429", "429" },
			Loose = true,
			Explain = "A website said too many requests were sent.",
			Cause = "It clears by itself, so wait a minute and try again.",
		},
		{
			Find = { "http 403", "forbidden", "403" },
			Loose = true,
			Explain = "The server refused the request.",
		},
		{
			Find = { "http 404", "not found", "404" },
			Loose = true,
			Explain = "The file it asked for wasn't found on the server.",
		},
		{
			Find = { "bad gateway", "service unavailable", "502", "503", "500" },
			Loose = true,
			Explain = "The server had a problem answering.",
			Cause = "That's on their end and usually comes back soon.",
		},
		{
			Find = {
				"connectfail",
				"connect fail",
				"couldnt connect",
				"could not connect",
				"dnsresolve",
				"name resolution",
			},
			Explain = "Roblox couldn't connect to the server the script downloads from, so the request never got through.",
			Cause = "That's your connection, a firewall or VPN, or the server being down for a moment, not a bug in the script. Try again, and turn off any VPN or ad blocker that blocks it.",
		},
		{
			Find = { "timed out", "timeout", "httpget failed", "http request failed" },
			Loose = true,
			Explain = "A download didn't finish in time.",
			Cause = "Your connection or the server was too slow, so try again in a bit.",
		},
		{
			Find = { "lacking capability", "lacking permission", "current thread cannot", "cannot access" },
			Explain = "The code ran without enough permission to touch that.",
			Cause = "Your executor ran it at a lower permission level than it needs, so that's an executor limit.",
			Executor = true,
		},
		{
			Find = { "cannot resume dead coroutine", "cannot resume non-suspended" },
			Explain = "A task tried to keep going after it had already finished.",
			Cause = "It's usually harmless.",
			Passing = true,
		},
		{
			Find = { "exhausted allowed execution time", "script timeout" },
			Explain = "A loop ran too long without pausing and froze the game for a moment.",
		},
		{
			Find = {
				"syntax error",
				"malformed number",
				"unexpected symbol",
				"expected '",
				"expected identifier",
				"incomplete statement",
			},
			Explain = "The code has a typo (a syntax error), so it couldn't load at all.",
			Cause = "If it's CatVape, the download may have been cut off, so execute it again to download it fresh.",
		},
		{
			Find = { "requested module experienced an error" },
			Explain = "A module the code needed failed while loading.",
			Cause = "The real error is usually the line right above it in the console.",
		},
	}

	tbl2.ErrorHints = {
		"error",
		"http",
		"status",
		"request",
		"[catvape]",
		"stack",
		"script",
		"console",
		"warning",
		"failed",
	}

	tbl2.GoalPatterns = {
		"which module (.+)$",
		"what module (.+)$",
		"which mod (.+)$",
		"can catvape (.+)$",
		"want it to (.+)$",
		"gotta (.+)$",
		"have to (.+)$",
		"wanna (.+)$",
		"want to (.+)$",
		"need to (.+)$",
		"trying to (.+)$",
		"tryna (.+)$",
		"lets? me (.+)$",
		"helps? me (.+)$",
		"makes? me (.+)$",
		"how do i (.+)$",
		"how can i (.+)$",
		"how to (.+)$",
		"use to (.+)$",
		"use for (.+)$",
		"module that (.+)$",
		"module to (.+)$",
		"module for (.+)$",
		"something that (.+)$",
		"something to (.+)$",
		"anything that (.+)$",
		"anything to (.+)$",
		"thing that (.+)$",
	}

	tbl2.GoalFiller = tbl2.Set("i im me my you your is are there a an the any some something anything smth module modules mod mods one setting thing things which what that to for want wanna need lets let helps help makes make can could do does should use using catvape vape have has how way get rn pls please bro just automatically auto always take taking get getting being keep keeps")
	tbl2.Direct = tbl2.Set("More Simpler Recommend Tradeoff Effect Interaction Using")
	tbl2.ControlCache = {}
	tbl2.LobbyPlace = 6872265039
	tbl2.RecommendScore = 3

	tbl2.ResetContext = function()
		tbl2.Context = { Modules = {}, Using = {} }
		tbl2.Depth = { Level = 0 }
	end

	tbl2.Lower = function(arg)
		local match = arg:sub(2, 2):match("%l")

		if match then
			local format = ("%*%*").format
			local str = arg:sub(1, 1)
			local sub = arg.sub
			match = format("%*%*", str:lower(), sub(arg, 2))
		end

		return match or arg
	end

	tbl2.Summary = function(arg, arg2)
		local parts = fn8(arg.Module.Tooltip):split("\n")
		local str = parts[1] or ""

		if parts[2] and not str:find("[%.!?]%s*$") and #str:split(" ") <= 4 then
			str = parts[2]
		end

		parts = arg2 and parts or {}
		local n3 = 0

		for _, v6 in parts, nil, nil do
			local tbl59 = {}
			fn16(tbl59, v6, 1)
			local n4 = 0

			for k, v7 in arg2, nil, nil do
				n4 += tbl59[k] and v7 or 0
			end

			if n3 < n4 then
				n3 = n4
				str = v6
			end
		end

		return fn10(str)
	end

	tbl2.ControlsOf = function(arg)
		local str = fn33()

		if str == "BedWars" and game.PlaceId == tbl2.LobbyPlace then
			str = "BedWarsLobby"
		end

		local str2 = ("%*/%*"):format(str or "Universal", arg.Name)
		local v6 = tbl2.ControlCache[str2]
		if v6 ~= nil then
			return v6 or nil
		end
		local v7 = str and tbl2.Controls[str] and tbl2.Controls[str][arg.Name]

		if v7 == nil then
			v7 = tbl2.Controls.Universal[arg.Name]
		end

		if v7 == nil then
			tbl2.ControlCache[str2] = false
			return nil
		end
		local tbl59 = {}

		for match in v7:gmatch("[^,]+") do
			local match2, v8 = match:match("^%s*(%a+)%s*%((.-)%)%s*$")
			match2 = match2 or match:match("^%s*(%a+)%s*$")

			if match2 then
				tbl59[match2] = { Gates = v8 and v8:split(" or ") or nil }
			end
		end

		tbl2.ControlCache[str2] = tbl59
		return tbl59
	end

	tbl2.GateOn = function(arg, arg2)
		for _, v6 in arg2:split(" and ") do
			local match, v7 = v6:match("^(.-):%s*(.+)$")
			match = match or v6
			local option = nil

			for _, v8 in arg.Options, nil, nil do
				if v8.Name:lower() == match:lower() then
					option = v8.Option
				end
			end

			if not option then
				return nil
			end

			if v7 and tostring(option.Value) ~= v7 then
				return false
			end

			if not v7 and not option.Enabled then
				return false
			end
		end

		return true
	end

	tbl2.GateParts = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in arg:split(" and ") do
			local match, v7 = v6:match("^(.-):%s*(.+)$")
			local insert = table.insert
			local v8 = fn9
			v6 = match or v6
			insert(tbl59, arg2(v8(v6), v7))
		end

		return table.concat(tbl59, " and ")
	end

	tbl2.GateText = function(arg)
		local v6 = tbl2.GateParts(arg, function(arg2, arg3)
			return arg3 and ("%* set to %*"):format(arg2, arg3) or ("%* on"):format(arg2)
		end)

		return (("with %*"):format(v6))
	end

	tbl2.GateClause = function(arg)
		return tbl2.GateParts(arg, function(arg2, arg3)
			return arg3 and ("%* is set to %*"):format(arg2, arg3) or ("%* is on"):format(arg2)
		end)
	end

	tbl2.GateFix = function(arg)
		return tbl2.GateParts(arg, function(arg2, arg3)
			return arg3 and ("change %* from %*"):format(arg2, arg3) or ("turn off %*"):format(arg2)
		end)
	end

	tbl2.Sentence = function(arg)
		return arg:find("[%.!?]$") and arg or ("%*."):format(arg)
	end

	tbl2.WordList = function(a)local F={};for w,w in a,nil,nil do table.insert(F,w.Word);end;return F;end

	tbl2.Uses = function(arg, arg2)
		local v6 = tbl2.ControlsOf(arg)
		v6 = v6 and v6[arg2]
		if not v6 then
			return nil
		end

		if not v6.Gates then
			return "always"
		end

		for _, v7 in v6.Gates, nil, nil do
			if tbl2.GateOn(arg, v7) ~= false then
				return "now", v7
			end
		end

		return "off", v6.Gates[1]
	end

	tbl2.Acts = function(arg)
		for _, v6 in tbl2.Acting, nil, nil do
			if tbl2.Uses(arg, v6) then
				return true
			end
		end

		return false
	end

	tbl2.Doing = function(arg, arg2)
		local v6 = tbl2.ControlsOf(arg)
		if not v6 then
			return nil
		end
		local tbl59 = {}

		for _, v7 in tbl2.ResourceOrder, nil, nil do
			local v8 = v6[v7]
			local flag

			if v8 then
				flag = not (arg2 and tbl2.Background[v7])
			else
				flag = v8
			end

			if flag then
				table.insert(tbl59, v8.Gates and ("%* (%*)"):format(tbl2.Resources[v7].Does, tbl2.GateText(v8.Gates[1])) or tbl2.Resources[v7].Does)
			end
		end

		return fn11(tbl59, 6)
	end

	tbl2.Clashes = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in tbl2.ResourceOrder, nil, nil do
			if tbl2.Resources[v6].Clash then
				local v7, v8 = tbl2.Uses(arg, v6)
				local v9, v10 = tbl2.Uses(arg2, v6)

				if v7 and v9 and (v6 ~= "Target" or tbl2.Acts(arg) and tbl2.Acts(arg2)) then
					table.insert(tbl59, { Resource = v6, First = v7, Second = v9, FirstGate = v8, SecondGate = v10 })
				end
			end
		end

		return tbl59
	end

	tbl2.Linked = function(arg, arg2)
		if tbl2.English(arg2.Key) then
			return nil
		end

		for _, v6 in arg.Options, nil, nil do
			local v7 = fn14(v6.Name)
			if v7 ~= arg2.Key and v7:find(arg2.Key, 1, true) then
				return v6
			end
		end

		return nil
	end

	tbl2.Note = function(arg)
		local tbl59 = {}

		if arg.Entry then
			table.insert(tbl59, arg.Entry)
		end

		local modules = arg.Modules or {}

		for _, v6 in modules, nil, nil do
			table.insert(tbl59, v6)
		end

		local targets = arg.Targets or {}

		for _, v6 in targets, nil, nil do
			if v6.Type == "module" then
				table.insert(tbl59, v6.Value)
			end
		end

		local modules2 = tbl2.Context.Modules

		for i = #tbl59, 1, -1 do
			local v6 = table.find(modules2, tbl59[i])

			if v6 then
				table.remove(modules2, v6)
			end

			table.insert(modules2, 1, tbl59[i])

			if #modules2 > 4 then
				table.remove(modules2)
			end
		end
	end

	tbl2.Rivals = function(arg, arg2)
		local tbl59 = {}
		local tbl60 = { [arg] = true }
		local v6 = table.clone(tbl2.Context.Using)

		for _, v7 in tbl.Entries, nil, nil do
			if v7.Module.Enabled then
				table.insert(v6, v7)
			end
		end

		for _, v7 in v6, nil, nil do
			if not tbl60[v7] then
				tbl60[v7] = true

				for _, v8 in tbl2.Clashes(arg, v7) do
					if tbl2.Resources[v8.Resource].Strong and v8.First ~= "off" and v8.Second ~= "off" and (not arg2 or arg2 == v8.Resource) then
						table.insert(tbl59, { Entry = v7, Resource = v8.Resource, Gate = v8.SecondGate })
						break
					end
				end
			end
		end

		return tbl59
	end

	tbl2.Phrased = function(...) end

	tbl2.SymptomOf = function(arg, arg2)
		local flag = arg2 == true
		local n3 = -10
		local v6 = nil

		for k, v7 in arg, nil, nil do
			if tbl2.Hypothetical[v7.Word] then
				n3 = k
			end

			flag = flag or tbl2.Odd[v7.Word] == true or tbl2.Complaints[v7.Word] == true

			for _, v8 in tbl2.Symptoms, nil, nil do
				if not v6 and v8.Words[v7.Word] then
					v6 = v8
				end

				flag = flag or v8.Bad ~= nil and v8.Bad[v7.Word] == true and k - n3 > 3
			end
		end

		for _, v7 in tbl2.Symptoms, nil, nil do
			if tbl2.SymptomPhrases[v7.Resource] and tbl2.Phrased(arg, tbl2.SymptomPhrases[v7.Resource]) then
				v6 = v6 or v7
				flag = true
			end
		end

		return flag and v6 or nil
	end

	tbl2.PerformanceOf = function(arg, arg2)
		local flag = false
		local flag2 = false
		local flag3 = false

		for k, v6 in arg, nil, nil do
			local word = v6.Word
			local word2 = arg[k + 1] and arg[k + 1].Word or ""
			local word3 = arg[k - 1] and arg[k - 1].Word or ""

			if not (word2 ~= "" and tbl.Keys[("%*%*"):format(word, word2)] ~= nil or word3 ~= "" and tbl.Keys[("%*%*"):format(word3, word)] ~= nil or arg2 ~= nil and arg2[k] == true) then
				local word4 = arg[k + 2] and arg[k + 2].Word or ""

				if not flag then
					flag = tbl2.Laggy[word] == true and word2 ~= "back" and word2 ~= "switch" and word4 ~= "back"
				end

				flag2 = flag2 or tbl2.Frames[word] == true
			end

			flag3 = flag3 or tbl2.Low[word] == true or tbl2.Complaints[word] == true or word == "why"
		end

		return flag or flag2 and flag3
	end

	tbl2.Oddity = function(arg)
		for _, v6 in arg, nil, nil do
			if tbl2.Odd[v6.Word] or tbl2.Complaints[v6.Word] then
				return true
			end
		end

		return tbl2.Phrased(arg, tbl2.Strange)
	end

	tbl2.Culprits = function(arg)
		local tbl59 = {}

		for _, v6 in arg, nil, nil do
			local word = v6.Word

			if v6.Kind == "word" and not tbl2.GoalFiller[word] and not tbl2.Odd[word] and not tbl2.Complaints[word] and not tbl2.Drop[word] and not tbl6[word] then
				table.insert(tbl59, tbl2.Currency[word] and "resources" or word)
			end
		end

		local v6 = fn19(table.concat(tbl59, " "))
		local v7 = table.clone(tbl2.Context.Using)

		for _, v8 in tbl.Entries, nil, nil do
			if v8.Module.Enabled and not table.find(v7, v8) then
				table.insert(v7, v8)
			end
		end

		local tbl60 = {}

		for _, v8 in v7, nil, nil do
			local v9 = tbl2.GoalTerms(v8)
			local n3 = 0
			local n4 = 0

			for k, v10 in v6, nil, nil do
				local v11 = v9[k]

				if v11 and v11 >= 0.6 and not tbl8[k] then
					n3 += v10 * v11 * fn18(k)
					n4 += 1
				end
			end

			if n4 >= 2 or n3 >= 6 then
				table.insert(tbl60, { Entry = v8, Score = n3 })
			end
		end

		table.sort(tbl60, function(arg2, arg3)
			return arg2.Score > arg3.Score
		end)

		return tbl60
	end

	tbl2.Commission = function(arg, arg2)
		local tokens = arg.Tokens
		local tbl59 = {}

		for _, v6 in tokens, nil, nil do
			if not (v6.Word == "called" or v6.Word == "named" or v6.Word == "call") then
				table.insert(tbl59, v6)
				continue
			end
			break
		end

		if #tbl59 == 0 or tbl2.QuestionWords[tbl59[1].Word] or tbl2.Phrased(tbl59, { "go to", "go back to", "switch to" }) or tbl2.HasWord(tbl59, {
			"switch",
			"swap",
			"load",
			"apply",
			"pick",
			"delete",
			"remove",
			"rename",
			"share",
			"export",
			"import",
			"select",
		}) then
			return nil
		end

		for i = #tbl59, 2, -1 do
			if tbl2.StyleOf({ tbl59[i] }) and table.find(tbl2.PresetNouns, tbl59[i - 1].Word) then
				table.remove(tbl59, i)
			end
		end

		for _, v6 in { arg.Best, arg.Runner }, nil, nil do
			v6 = v6 and v6.Reading.Entities or {}

			for _, v7 in v6, nil, nil do
				if v7.Type == "option" then
					return nil
				end
			end
		end

		local v6 = tbl2.WordList(tbl59)
		local tbl60 = {}

		for k, v7 in v6, nil, nil do
			local str = v6[k + 1] or ""

			if str ~= "" and tbl.Keys[("%*%*"):format(v7, str)] then
				local n3 = k + 1
				tbl60[k] = true
				tbl60[n3] = true
			elseif tbl.Keys[v7] and not tbl2.English(v7) then
				tbl60[k] = true
			end
		end

		local v7 = fn20(v6)
		local v8 = tbl2.StyleOf(tbl59, tbl60)
		local flag = false
		local flag2 = false

		for _, v9 in tbl59, nil, nil do
			flag = flag or tbl2.Quality[v9.Word] == true
			flag2 = flag2 or tbl2.ConfigVerbs[v9.Word] == true
		end

		local v9 = tbl2.HasWord(tbl59, tbl2.PresetNouns)
		local flag3 = tbl2.HasWord(tbl59, { "turn", "enable", "disable", "toggle", "off", "activate", "deactivate" })
		local flag4 = tbl2.HasWord(tbl59, { "enable", "activate", "on" }) and not tbl2.HasWord(tbl59, { "off", "disable", "deactivate" })

		for _, v10 in tokens, nil, nil do
			if tbl2.Complaints[v10.Word] then
				return nil
			end
		end

		local flag5 = #v7 == 1

		if flag5 then
			if flag3 then
				flag3 = not (flag2 or v9)
			end

			flag5 = not flag3
		end

		if flag5 and (v8 or flag and flag2) and (flag2 or v9 or #tbl59 <= 6) then
			return { Intent = "Configure", Slots = { Entry = v7[1], Style = v8, Quality = flag, Enable = flag4 } }
		end

		if #v7 == 0 and v9 and (v8 and v8 ~= "Default" or flag) then
			local str = fn60(arg2, { "called", "named", "call it", "call" })
			str = str and str:gsub("[^%w%s_%-]", ""):match("^%s*(.-)%s*$"):sub(1, 30)

			return {
				Intent = "BuildProfile",
				Slots = { Style = v8 ~= "Default" and v8 or nil, Name = str ~= "" and str or nil },
			}
		end

		return nil
	end

	tbl2.Problem = function(arg, arg2)
		local tokens = arg.Tokens
		local best = arg.Best
		local tbl59 = {}
		local entities = best and best.Reading.Entities or {}

		for _, v6 in entities, nil, nil do
			for i = v6.I, v6.J do
				tbl59[i] = v6.Type == "option" or nil
			end
		end

		local entities2 = best and best.Reading.Entities or {}
		local flag = false

		for _, v6 in entities2, nil, nil do
			flag = flag or v6.Type == "option"
		end

		if tbl2.PerformanceOf(tokens, tbl59) and (not flag or tbl2.HasWord(tokens, {
			"lag",
			"laggy",
			"lagging",
			"low",
			"drop",
			"drops",
			"dropping",
			"tanked",
			"tanking",
			"bad",
			"terrible",
			"choppy",
			"stutter",
			"stuttering",
			"freeze",
			"freezes",
			"freezing",
			"frozen",
		})) then
			return "Performance"
		end

		if best and tbl2.Changes(best.Intent) and not tbl2.IsAsking(tokens, arg2) and not tbl2.Oddity(tokens) then
			return nil
		end

		for _, v6 in tokens, nil, nil do
			if tbl.Keys[v6.Word] then
				return nil
			end
		end

		best = best and best.Reading.Entities or {}

		for _, v6 in best, nil, nil do
			if v6.Type == "module" or v6.Type == "option" then
				return nil
			end
		end

		local v6 = tbl2.HasWord(tokens, tbl2.ModuleWords)
		local symptom = not v6 and tbl2.SymptomOf(tokens)
		if symptom then
			arg.Symptom = symptom
			return "Symptom"
		end

		if not v6 and tbl2.Oddity(tokens) and #tbl2.Culprits(tokens) > 0 then
			return "Symptom"
		end

		if #tokens <= 10 and tbl2.HasWord(tokens, { "error", "errors", "errored", "erroring" }) and not tbl2.HasWord(tokens, { "report", "bug", "bugs", "discord" }) then
			return "Error"
		end
		return nil
	end

	tbl2.RoleWord = function(arg)
		for _, v6 in tbl2.Roles, nil, nil do
			if v6.Words[arg] then
				return true
			end
		end

		return false
	end

	tbl2.LooseOption = function(arg, arg2, arg3)
		local v6 = fn19(table.concat(tbl2.WordList(arg), " "))

		if arg2 then
			local v7 = fn21(arg2, v6, 1)[1]
			local flag = false

			if v7 then
				for match in fn5(v7.Option.Name):gmatch("%S+") do
					flag = flag or v6[fn6(match)] == 1 and tbl2.RoleWord(match)
				end
			end

			return v7 and (v7.Score >= 1 or v7.Score >= 0.5 and flag) and v7.Option.Type ~= "Button" and { Entry = arg2, Option = v7.Option } or nil
		end

		if not arg3 then
			return nil
		end
		local tbl59 = nil

		for _, v7 in arg, nil, nil do
			if #v7.Word >= 5 and tbl2.RoleWord(v7.Word) and not tbl.Keys[v7.Word] and not tbl4.ByPhrase[v7.Word] then
				for _, v8 in tbl.Entries, nil, nil do
					for _, v9 in v8.Options, nil, nil do
						local word = v7.Word

						if fn5(v9.Name) == word and (not tbl59 or v8.Module.Enabled and not tbl59.Entry.Module.Enabled) then
							tbl59 = { Entry = v8, Option = v9 }
						end
					end
				end
			end
		end

		return tbl59
	end

	tbl2.Absorbed = function(arg, arg2, arg3)
		local v6 = tbl2.WordList(arg)
		local n3 = 0

		for i = 1, #v6 do
			for i2 = i, math.min(#v6, i + 2) do
				local key2 = arg2.Key
				n3 += table.concat(v6, "", i, i2) == key2 and 1 or 0
			end
		end

		if n3 ~= 1 then
			return false
		end
		local v7 = fn5(arg3.Option.Name)
		local str = (" %* "):format(table.concat(v6, " "))
		if v7:find(" ", 1, true) then
			return str:find((" %* "):format(v7), 1, true) ~= nil and fn14(v7):find(arg2.Key, 1, true) ~= nil
		end
		local key2 = arg2.Key
		return fn14(v7) == key2 and str:find((" %* %* "):format(arg3.Entry.Key, v7), 1, true) ~= nil
	end

	tbl2.Steer = function(arg, arg2)
		local tokens = arg.Tokens
		local best = arg.Best
		local markers = tbl2.Markers
		local tbl59 = {}

		for _, v6 in tokens, nil, nil do
			tbl59[v6.Word] = true
		end

		local function fn68(arg3)
			for k in tbl59, nil, nil do
				if arg3[k] then
					return true
				end
			end

			return false
		end

		if fn68(markers.Image) and fn68(markers.Viewing) then
			return { Intent = "Screenshot", Slots = {} }
		end

		if fn68(markers.Code) and fn68(markers.Writing) and not tbl59.settings then
			return { Intent = "Code", Slots = {} }
		end
		local v6 = tbl2.IsAsking(tokens, arg2) or fn68(markers.Trouble)
		if best and tbl2.Changes(best.Intent) and best.Probability >= 0.5 and not v6 then
			return nil
		end
		local v7 = fn20(tbl2.WordList(tokens))
		local value = nil

		for _, v8 in { best, arg.Runner }, nil, nil do
			v8 = v8 and v8.Reading.Entities or {}

			for _, v9 in v8, nil, nil do
				if not value and v9.Type == "option" then
					value = v9.Value
				end
			end
		end

		for i = #v7, 1, -1 do
			local flag = #v7 > 1

			if flag then
				flag = (tbl2.Frames[v7[i].Key] or tbl2.Laggy[v7[i].Key]) == true
			end

			if flag or value and v7[i] ~= value.Entry and tbl2.Absorbed(tokens, v7[i], value) then
				table.remove(v7, i)
			end
		end

		local flag = fn68(markers.Tradeoff) or fn68(markers.Direction) or tbl59.up == true and tbl59.down == true

		if not value and (flag or fn68(markers.Frame) or arg2:find("?", 1, true) ~= nil) and #v7 <= 1 then
			value = tbl2.LooseOption(tokens, v7[1], flag)
		end

		local str = ("%* %*"):format(value and value.Option.Name or "", value and value.Entry.Name or "")

		for _, v8 in v7, nil, nil do
			str = ("%* %* %*"):format(str, v8.Name, fn15(v8.Name))
		end

		for match in fn5(str):gmatch("%S+") do
			tbl59[match] = nil
		end

		if #v7 == 0 and tbl2.HasWord(tokens, tbl2.ModuleWords) then
			return nil
		end
		local str2 = (" %* "):format(table.concat(tbl2.WordList(tokens), " "))
		local flag2 = fn68(markers.Together) or str2:find(" same time ", 1, true) ~= nil or str2:find(" at once ", 1, true) ~= nil
		if #v7 >= 2 and fn68(markers.Compare) and not flag2 then
			return { Intent = "Compare", Slots = { Modules = v7 } }
		end

		if #v7 >= 2 and flag2 then
			return { Intent = "Interaction", Slots = { Modules = v7 } }
		end
		local word = tokens[1].Word
		if #v7 >= 1 and (tbl59.im or tbl59.btw or tbl59.fyi or tbl59.currently or tbl59.atm or (tbl59.got or tbl59.have) and tbl59.on or word == "using" or word == "running" or word == "on" or word == "just" or word == "only") and (not v6 or str2:find(" nothing else ", 1, true)) then
			return { Intent = "Using", Slots = { Modules = v7 } }
		end
		local flag3 = fn68(markers.Frame) or arg2:find("?", 1, true) ~= nil
		if value and (fn68(markers.Tradeoff) or tbl59.use and (tbl59.yall or tbl59.you or tbl59.people or tbl59.everyone) or tbl59.up and tbl59.down) then
			return { Intent = "Tradeoff", Slots = { Entry = value.Entry, Option = value.Option } }
		end

		if value and flag3 and tbl2.EffectOf(tokens, value.Entry, value.Option) then
			return { Intent = "Effect", Slots = { Entry = value.Entry, Option = value.Option } }
		end

		if value and (word == "does" or word == "do" or word == "will" or word == "would" or str2:find(" does it ", 1, true) or str2:find(" will it ", 1, true)) then
			return { Intent = "Effect", Slots = { Entry = value.Entry, Option = value.Option } }
		end

		if value and fn68(markers.Direction) then
			return { Intent = "Tradeoff", Slots = { Entry = value.Entry, Option = value.Option } }
		end

		if not value and #v7 == 1 and fn68(markers.Change) and not fn68(markers.Trouble) and tbl2.EffectOf(tokens, v7[1]) then
			return { Intent = "Effect", Slots = { Entry = v7[1] } }
		end

		if #v7 == 1 and tbl59.my and fn68(markers.Tradeoff) and (tbl59.config or tbl59.setup or tbl59.settings) then
			return { Intent = "Tradeoff", Slots = { Entry = v7[1] } }
		end

		if #v7 == 1 and fn68(markers.Tradeoff) and tbl2.MissingSetting(v7[1], tokens) then
			return { Intent = "Tradeoff", Slots = { Entry = v7[1] } }
		end
		local flag4 = #v7 >= 1

		if flag4 then
			flag4 = not (flag2 and #v7 >= 2)
		end

		if flag4 then
			flag4 = not (tbl59.find or tbl59.where or tbl59.locate)
		end

		if flag4 and not str2:find(" nothing else ", 1, true) and (fn68(markers.Trouble) or tbl59.only and (tbl59.when or tbl59["if"])) then
			return { Intent = "Trouble", Slots = { Entry = v7[1] } }
		end
		local v8 = tbl2.Topic()

		if v8 and #tokens <= 12 and (#v7 == 0 or #v7 == 1 and v7[1] == v8) then
			local tbl60 = { Entry = v7[1] }
			if fn68(markers.Deeper) or tbl59.how and (tbl59.work or tbl59.works) or tbl59.what and tbl59["else"] and not tbl59.you or str2:find(" under the hood ", 1, true) then
				return { Intent = "More", Slots = tbl60 }
			end

			if fn68(markers.Simpler) or str2:find(" dont get ", 1, true) or str2:find(" dont understand ", 1, true) then
				return { Intent = "Simpler", Slots = tbl60 }
			end
		end

		return nil
	end

	tbl2.ErrorOf = function(arg)
		local str = arg:lower()
		local flag = str:find(":%d+:") ~= nil

		for _, v6 in tbl2.ErrorHints, nil, nil do
			flag = flag or str:find(v6, 1, true) ~= nil
		end

		for _, v6 in tbl2.Errors, nil, nil do
			for _, v7 in v6.Find, nil, nil do
				if str:find(v7, 1, true) and (not v6.Loose or flag) then
					return v6
				end
			end
		end

		return nil
	end

	tbl2.ErrorReply = function(arg)
		local v6 = tbl2.ErrorOf(arg)
		if not v6 then
			return {
				Text = "Paste the error here and I'll tell you what it means. Press F9 to open the console, errors are the red lines.",
			}
		end

		local function fn68(arg2)
			return type(arg2) == "function" and arg2(arg) or arg2
		end

		local str = arg:lower()
		local tbl59 = { (fn68(v6.Explain)) }
		local v7 = fn68(v6.Cause)

		if v7 then
			table.insert(tbl59, v7)
		end

		local v8 = fn20(fn5(arg):split(" "))
		local flag = v8[1] ~= nil or str:find("catvape", 1, true) ~= nil or str:find("catsix", 1, true) ~= nil

		if v8[1] then
			key = v8[1].Key
			local insert = table.insert
			local str2 = ("It came from %*, so that's the module to look at."):format(fn9(v8[1].Name))
			insert(tbl59, str2)
		elseif flag then
			table.insert(tbl59, "It came from CatVape.")
		elseif str:find("playerscripts", 1, true) or str:find("replicatedstorage", 1, true) or str:find("replicatedfirst", 1, true) or str:find("starterplayer", 1, true) then
			table.insert(tbl59, "That line comes from the game's own scripts, not CatVape, so you can ignore it.")
		elseif str:find("coregui", 1, true) or str:find("corepackages", 1, true) or str:find("corescripts", 1, true) then
			table.insert(tbl59, "That line comes from Roblox itself, not CatVape.")
		elseif fn68(v6.Executor) then
			local ok, result = pcall(identifyexecutor)
			table.insert(tbl59, ok and result and ("You're on %*, so that's an executor limit, not a CatVape bug."):format(fn9(tostring(result))) or "That's an executor limit, not a CatVape bug.")
		else
			table.insert(tbl59, "I can't tell which script it came from without the rest of the line, so paste the whole thing if you want me to narrow it down.")
		end

		if flag then
			local tbl60 = {}

			if v6.Passing then
				table.insert(tbl60, "If it only showed up once, you can ignore it.")
			end

			table.insert(tbl60, v8[1] and ("Turn %* off and on again."):format(fn9(v8[1].Name)) or "Turn the module off and on again.")
			table.insert(tbl60, "If it keeps coming back, rejoin and execute again.")
			table.insert(tbl60, "If it still happens, report it in the Discord with the full line.")

			for k, v9 in tbl60, nil, nil do
				tbl60[k] = ("%*. %*"):format(k, v9)
			end

			local insert = table.insert
			local str2 = ("Try this:\n%*"):format(table.concat(tbl60, "\n"))
			insert(tbl59, str2)
		end

		return { Text = table.concat(tbl59, "\n\n"), Actions = v8[1] and fn48(v8[1]) or nil }
	end

	tbl2.RelatedOptions = function(arg, arg2)
		local tbl59 = {}
		local tbl60 = arg2 or {}

		for _, v6 in tbl60, nil, nil do
			tbl59[v6.Word] = true
		end

		local v6 = fn5
		local str = ("%* %*"):format(arg.Name, fn15(arg.Name))

		for match in v6(str):gmatch("%S+") do
			tbl59[match] = nil
		end

		local tbl61 = {}

		for _, v7 in arg.Options, nil, nil do
			local flag = false

			for match in fn5(v7.Name):gmatch("%S+") do
				flag = flag or #match > 3 and tbl59[match] == true
				local tbl62 = tbl2.OptionHints[match] or {}

				for k in tbl62, nil, nil do
					flag = flag or tbl59[k] == true
				end
			end

			if flag and v7.Type == "Toggle" and #tbl61 < 2 then
				table.insert(tbl61, v7)
			end
		end

		return tbl61
	end

	tbl2.Narrow = function(arg, arg2)
		if arg2 then
			return arg2.Question
		end

		for _, v6 in {
			{ "Attack", "Does it miss everyone, or only players far away or behind walls?" },
			{ "Shoot", "Does it not shoot at all, or shoot and miss?" },
			{ "Camera", "Is it not aiming at all, or aiming at the wrong player?" },
			{ "Rotate", "Is it not turning you at all, or turning you the wrong way?" },
			{ "Move", "Does it stop working after a second, or pull you back?" },
			{ "Place", "Does it place nothing at all, or put blocks in the wrong spots?" },
			{ "Break", "Does it not break anything, or break the wrong blocks?" },
			{ "Items", "Does it not switch at all, or switch to the wrong item?" },
			{ "Render", "Does nothing show up at all, or only for some players?" },
		}, nil, nil do
			if tbl2.Uses(arg, v6[1]) then
				return v6[2]
			end
		end

		return "Did it ever work for you, or has it never worked since you turned it on?"
	end

	tbl2.Numbered = function(arg)
		if #arg == 1 then
			return arg[1]
		end
		local tbl59 = {}

		for k, v6 in arg, nil, nil do
			local insert = table.insert
			local str = ("%*. %*"):format(k, v6)
			insert(tbl59, str)
		end

		return (("Try this:\n%*"):format(table.concat(tbl59, "\n")))
	end

	tbl2.Toggles = function(arg)
		local tbl59 = {}

		for i = 1, math.min(2, #arg) do
			local v6 = arg[i]

			table.insert(tbl59, {
				Text = ("Turn off %*"):format(v6.Name),
				Callback = function()
					fn41(fn49(v6, "Off"))
				end,
			})
		end

		return #tbl59 > 0 and tbl59 or nil
	end

	tbl2.CulpritLine = function(arg, arg2)
		local v6 = tbl2.Summary(arg.Entry)
		local str = "%*%* is %*%*"
		local format = str.format
		local v7 = fn9(arg.Entry.Name)
		local str2 = arg.Entry.Module.Enabled and "on" or "something you said you use"
		local flag = v6 ~= ""
		local v8

		if flag then
			local format2 = (", and it %*").format
			local lower = tbl2.Lower
			local v9 = table.pack(tbl2.Sentence(fn7(v6)))
			v8 = format2(", and it %*", lower(table.unpack(v9, 1, v9.n)))
		else
			v8 = flag
		end

		return (format(str, arg2, v7, str2, v8 or "."))
	end

	tbl2.CulpritReply = function(arg)
		local v6 = tbl2.Culprits(arg)
		local v7 = v6[1]
		if not v7 then
			return {
				Text = "Nothing you have on matches that, so it's probably the game rather than CatVape. Which module were you using when it happened?",
			}
		end
		local tbl59 = { (("%* That sounds like what you're seeing."):format(tbl2.CulpritLine(v7, ""))) }
		local tbl60 = { v7.Entry }
		local v8 = v6[2]

		if v8 and v8.Score >= v7.Score * 0.4 then
			table.insert(tbl59, tbl2.CulpritLine(v8, "It could also be "))
			table.insert(tbl60, v8.Entry)
		end

		table.insert(tbl59, tbl2.Numbered({
			("Turn %* off for a moment and see if it stops."):format(fn9(v7.Entry.Name)),
			"If it does, that's the cause, so leave it off or change its settings, ask me about them.",
		}))

		table.insert(tbl59, "Did this start right after you turned something on?")
		return { Text = table.concat(tbl59, "\n\n"), Actions = tbl2.Toggles(tbl60) }
	end

	tbl2.SymptomReply = function(arg, arg2)
		local tbl59 = {}
		local tbl60 = {}
		local tbl61 = {}

		local function fn68(arg3, arg4)
			if tbl61[arg3] then
				return
			end
			tbl61[arg3] = true
			local v6, v7 = tbl2.Uses(arg3, arg.Resource)

			if v6 and (arg3.Module.Enabled or arg4) then
				table.insert(v6 == "off" and tbl60 or tbl59, { Entry = arg3, Gate = v7, State = v6 })
			end
		end

		for _, v6 in tbl2.Context.Using, nil, nil do
			fn68(v6, true)
		end

		for _, v6 in tbl.Entries, nil, nil do
			if v6.Module.Enabled then
				fn68(v6, false)
			end
		end

		local tbl62 = {}
		local tbl63 = {}
		local tbl64 = {}
		local tbl65 = {}

		for _, v6 in tbl59, nil, nil do
			table.insert(tbl64, fn9(v6.Entry.Name))
			table.insert(tbl65, v6.Entry)
		end

		if #tbl59 >= 2 then
			local insert = table.insert
			local str = ("%* are %* %* right now, and when two modules do that at once they fight over it."):format(fn11(tbl64, 4), #tbl59 == 2 and "both" or "all", arg.Doing)
			insert(tbl62, str)
			local insert2 = table.insert
			local str2 = ("Turn off %* and see if it stops."):format(fn9(tbl59[2].Entry.Name))
			insert2(tbl63, str2)
			local insert3 = table.insert
			local str3 = ("If it doesn't, turn it back on and try turning off %* instead."):format(fn9(tbl59[1].Entry.Name))
			insert3(tbl63, str3)
			table.insert(tbl63, "Whichever one fixes it is the cause, so run the other one alone or change its settings.")
		elseif #tbl59 == 1 then
			local v6 = tbl59[1]
			local insert = table.insert
			local str = ("%* is the one %* right now%*."):format(tbl64[1], arg.Doing, v6.Gate and (", because %*"):format(tbl2.GateClause(v6.Gate)) or "")
			insert(tbl62, str)
			local insert2 = table.insert
			local str2 = ("Turn %* off for a moment and see if it stops."):format(fn9(v6.Entry.Name))
			insert2(tbl63, str2)

			if v6.Gate then
				local insert3 = table.insert
				local doing = arg.Doing
				local str3 = ("If that fixes it, turn it back on and %* instead, so it stops %*."):format(tbl2.GateFix(v6.Gate), doing)
				insert3(tbl63, str3)
			else
				table.insert(tbl63, "If that fixes it, its settings are the place to look, ask me about them.")
			end
		elseif #tbl60 > 0 then
			local insert = table.insert
			local gateText = tbl2.GateText
			local gate = tbl60[1].Gate
			local str = ("%* can do that, but only %*, and that's off, so it isn't the cause."):format(fn9(tbl60[1].Entry.Name), gateText(gate))
			insert(tbl62, str)
		else
			local v6 = tbl2.Culprits(arg2)[1]

			if v6 then
				local insert = table.insert
				local str = ("%* That could be it."):format(tbl2.CulpritLine(v6, ""))
				insert(tbl62, str)
				local insert2 = table.insert
				local str2 = ("Turn %* off for a moment and see if it stops."):format(fn9(v6.Entry.Name))
				insert2(tbl63, str2)
				table.insert(tbl65, v6.Entry)
			else
				local insert = table.insert
				local str = ("None of the modules you have on are %*, so it's probably not CatVape.%*"):format(arg.Doing, arg.Quiet and (" %*"):format(arg.Quiet) or "")
				insert(tbl62, str)
			end
		end

		local v6, v7 = tbl2.QueryOf(arg2)
		local v8, v9 = fn35(v6, v7)
		local flag = v8 ~= nil and (v8.Modules == nil or #v8.Modules == 0 or #tbl59 == 0 and v9 >= tbl2.FactOver)
		local tbl66 = v8 and tbl59 or {}

		for _, v10 in tbl66, nil, nil do
			if not flag then
				flag = table.find(v8.Modules or {}, v10.Entry.Name) ~= nil
			end
		end

		if v8 and flag and v9 >= tbl2.FactFloor then
			table.insert(tbl62, fn37(v8))
		end

		if #tbl63 > 0 then
			table.insert(tbl62, tbl2.Numbered(tbl63))
		end

		table.insert(tbl62, arg.Question)
		return { Text = table.concat(tbl62, "\n\n"), Actions = tbl2.Toggles(tbl65) }
	end

	tbl2.MeasureFps = function()
		local n3 = 0
		local now = os.clock()
		local connection = v3.RenderStepped:Connect(function(...) end)
		task.wait(0.5)
		connection:Disconnect()
		local n4 = os.clock() - now
		return n4 > 0.1 and math.floor(n3 / n4) or nil
	end

	tbl2.PerformanceReply = function(arg)
		local tbl59 = {}
		local tbl60 = {}
		local n3 = 0

		for _, v6 in tbl.Entries, nil, nil do
			if v6.Module.Enabled then
				n3 += 1
				local flag = tbl2.Uses(v6, "Render") ~= nil or v6.Category == "Render" or v6.Name:find("ESP", 1, true) ~= nil

				if flag and tbl2.Uses(v6, "Frame") then
					table.insert(tbl59, v6.Name)
				elseif flag or tbl2.Uses(v6, "Frame") then
					table.insert(tbl60, v6.Name)
				end
			end
		end

		for _, v6 in tbl60, nil, nil do
			table.insert(tbl59, v6)
		end

		local v6 = fn20(tbl2.WordList(arg))
		local tbl61 = {}
		local v7 = tbl2.MeasureFps()
		local insert = table.insert
		local format = ("%*%* module%* on.").format
		local str = "%*%* module%* on."

		if v7 then
			local format2 = ("You're at about %* with ").format
			local v8 = fn9
			local str2 = ("%* FPS"):format(v7)
			v7 = format2("You're at about %* with ", v8(str2))
		end

		local v8 = format(str, v7 or "You have ", n3, n3 == 1 and "" or "s")
		insert(tbl61, v8)

		for _, v9 in v6, nil, nil do
			local flag = not tbl2.Frames[v9.Key] and not tbl2.Laggy[v9.Key] and tbl2.Doing(v9) or nil

			if flag and flag ~= "" then
				local insert2 = table.insert
				local str2 = ("%* %*%*."):format(fn9(v9.Name), flag, (tbl2.Uses(v9, "Render") or tbl2.Uses(v9, "Frame")) and ", so it does cost frames, more with lots of players around" or ", so it shouldn't cost many frames on its own")
				insert2(tbl61, str2)
			end
		end

		local tbl62 = {}
		local v9 = fn66("hud blur")
		local v10 = fn66("blur background")
		table.insert(tbl62, (v9 and v9.Option.Enabled or v10 and v10.Option.Enabled or false) and ("Turn off %* and %* in the GUI settings, they cost the most frames."):format(fn9("HUD blur"), fn9("Blur background")) or ("%* and %* in the GUI settings cost the most frames, keep them off."):format(fn9("HUD blur"), fn9("Blur background")))

		if #tbl59 > 0 then
			local insert2 = table.insert
			local str2 = ("Turn off %* one at a time and watch your FPS, since they draw or run every frame. If it jumps back after one, that module is the cause, and lowering its distance or what it shows helps."):format(fn9(fn11(tbl59, 5)))
			insert2(tbl62, str2)
		else
			table.insert(tbl62, "Turn your modules off one at a time and watch your FPS. If it jumps back after one, that module is the cause.")
		end

		local ok, result = pcall(gcinfo)
		local memoryfixer = tbl.Keys.memoryfixer
		memoryfixer = memoryfixer and (" %* in %* also drops what older injections left running."):format(fn9(memoryfixer.Name), fn25(memoryfixer)) or ""

		if ok and type(result) == "number" and result > 1500000 then
			local insert2 = table.insert
			local str2 = ("Script memory is very high (%* GB), which slows everything down, so rejoin to clear it.%*"):format(math.floor(result / 1048576 * 10) / 10, memoryfixer)
			insert2(tbl62, str2)
		else
			local insert2 = table.insert
			local str2 = ("If you've been playing for a long time or reinjected a few times, rejoin, memory builds up.%*"):format(memoryfixer)
			insert2(tbl62, str2)
		end

		table.insert(tbl62, "If nothing changes with everything off, it's the game or your device, not CatVape.")
		table.insert(tbl61, tbl2.Numbered(tbl62))
		local fpsbooster = tbl.Keys.fpsbooster

		if fpsbooster and not fpsbooster.Module.Enabled then
			local insert2 = table.insert
			local str2 = ("%* in %* can also help."):format(fn9(fpsbooster.Name), fn25(fpsbooster))
			insert2(tbl61, str2)
		end

		return { Text = table.concat(tbl61, "\n\n") }
	end

	tbl2.RoleOf = function(arg, arg2)
		local v6 = tbl2.OptionNotes[("%*/%*"):format(arg.Name, arg2.Name)]
		if arg2.Type == "Targets" then
			return tbl2.TargetsRole, v6
		end
		local v7 = fn5(arg2.Name)
		local role = v6 and v6.Role

		if not role then
			role = tbl2.Showing[v7:match("^%S+") or ""] and "Looks"
		end

		role = role or nil

		for _, v8 in tbl2.Roles, nil, nil do
			if role and v8.Id == role then
				return v8, v6
			end
		end

		if role then
			return nil, v6
		end

		for _, v8 in tbl2.Roles, nil, nil do
			for match in v7:gmatch("%S+") do
				local flag = v8.Words[match]

				if flag then
					flag = not (arg2.Type == "Toggle" and v8.Up)
				end

				if flag then
					return v8, v6
				end
			end
		end

		return nil, v6
	end

	tbl2.Means = function(arg, arg2)
		local v6, v7 = tbl2.RoleOf(arg, arg2)
		return v7 and v7.Means or v6 and v6.Means or nil
	end

	tbl2.Position = function(arg, arg2, arg3)
		if not arg2 or not arg3 or arg3 <= arg2 then
			return nil
		end

		if arg > arg3 or arg < arg2 then
			return (("outside its range (%* to %*)"):format(fn12(arg2), fn12(arg3)))
		end
		local n3 = (arg - arg2) / (arg3 - arg2)
		local str = n3 >= 0.99 and "the max" or n3 >= 0.7 and "near the top"
		local str2

		if str then
			str2 = str
		else
			str2 = n3 > 0.3 and "in the middle"
		end

		return str2 or n3 > 0.01 and "near the bottom" or "the lowest"
	end

	tbl2.EffectOf = function(arg, arg2, arg3)
		local tbl59 = {}
		local v6 = fn5
		local str = ("%* %*"):format(arg3 and arg3.Name or "", arg2 and arg2.Name or "")

		for match in v6(str):gmatch("%S+") do
			tbl59[match] = true
		end

		local tbl60 = {}

		for _, v7 in arg, nil, nil do
			local flag = not tbl59[v7.Word]

			if flag then
				flag = not (arg2 and tbl.Keys[v7.Word] == arg2)
			end

			if flag then
				for _, v8 in tbl2.Effects, nil, nil do
					if v8.Words[v7.Word] and not table.find(tbl60, v8) then
						table.insert(tbl60, v8)
					end
				end
			end
		end

		local tbl61 = arg2 and tbl60 or {}

		for _, v7 in tbl61, nil, nil do
			if tbl2.Fits(arg2, arg3, v7) then
				return v7
			end
		end

		for _, v7 in tbl60, nil, nil do
			if v7.Id ~= "Hitting" then
				return v7
			end
		end

		return tbl60[1]
	end

	tbl2.Fits = function(arg, arg2, arg3)
		local v6 = nil
		local v7 = nil

		if arg2 then
			v7, v6 = tbl2.RoleOf(arg, arg2)
		end

		if v6 and v6.Effects and v6.Effects[arg3.Id] ~= nil then
			local v8 = v6.Effects[arg3.Id]
			return v8 == true, type(v8) == "string" and v8 or nil
		end

		if v7 and (arg3.Roles[v7.Id] or next(arg3.Roles) ~= nil) then
			return arg3.Roles[v7.Id] == true
		end
		v7 = v7 and fn8(arg2.Settings.Tooltip)

		if not v7 then
			local str = "%* %* %*"
			local format = str.format
			local str2 = arg2 and fn8(arg2.Settings.Tooltip) or ""
			local summary = tbl2.Summary
			v7 = format(str, str2, fn15(arg.Name), summary(arg))
		end

		for match in v7:lower():gmatch("%a+") do
			if arg3.Words[match] then
				return true
			end
		end

		return false
	end

	tbl2.SettingLines = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in arg.Options, nil, nil do
			if #tbl59 < arg2 and v6.Type ~= "ColorSlider" and v6.Type ~= "Button" and v6.Type ~= "Font" and v6.Type ~= "TextList" then
				local v7 = fn24(v6)
				local str = fn10(fn8(v6.Settings.Tooltip))
				local v8 = tbl2.Means(arg, v6)

				if str == "" and v8 then
					str = ("sets %*"):format(v8)
				end

				local insert = table.insert
				local str2 = ("- %*%*%*"):format(v6.Name, v7 and (" (%*)"):format(v7) or "", str ~= "" and (": %*"):format(fn7(str)) or "")
				insert(tbl59, str2)
			end
		end

		return tbl59
	end

	tbl2.Topic = function()
		local v6 = tbl2.Refer()
		if v6 and v6.Type == "option" then
			return v6.Value.Entry, v6.Value.Option
		end

		if v6 and v6.Type == "module" then
			return v6.Value
		end
		return key and tbl.Keys[key] or nil
	end

	tbl2.SimpleReply = function(arg, arg2)
		tbl2.Depth = { Key = arg.Key, Level = 1, Option = arg2 }

		if arg2 then
			local v6 = tbl2.Means(arg, arg2)
			local v7 = fn10(fn8(arg2.Settings.Tooltip))

			return {
				Text = ("In short, %* %*."):format(fn9(arg2.Name), v6 and ("sets %*"):format(v6) or v7 ~= "" and ("does this: %*"):format(tbl2.Lower(v7)) or "is one of its settings"),
				Actions = fn48(arg, arg2),
			}
		end

		local v6 = tbl2.Summary(arg)

		return {
			Text = ("In short, %* %* It's %* right now."):format(fn9(arg.Name), v6 ~= "" and ("does this: %*"):format(tbl2.Sentence(tbl2.Lower(v6))) or "doesn't have a description yet.", arg.Module.Enabled and "on" or "off"),
			Actions = fn48(arg),
		}
	end

	tbl2.OptionDetail = function(arg, arg2)
		local v6, v7 = tbl2.RoleOf(arg, arg2)
		local tbl59 = {}
		local means = v7 and v7.Means or v6 and v6.Means
		local v8 = fn24(arg2)
		local insert = table.insert
		local str = ("%* %*%*."):format(fn9(arg2.Name), means and ("sets %*"):format(means) or ("is a %*"):format(fn23(arg2)), v8 and (", and it's at %* right now"):format(fn9(v8)) or "")
		insert(tbl59, str)
		local up = v7 and v7.Up or v6 and v6.Up
		local down = v7 and v7.Down or v6 and v6.Down

		if up and down then
			local insert2 = table.insert
			local str2 = ("Higher means %*. Lower means %*."):format(up, down)
			insert2(tbl59, str2)
		end

		if v7 and v7.Limit then
			table.insert(tbl59, v7.Limit)
		end

		local tbl60 = {}

		for _, v9 in arg.Options, nil, nil do
			local flag = v9 ~= arg2 and tbl2.RoleOf(arg, v9)

			if flag and v6 and flag.Id == v6.Id then
				table.insert(tbl60, v9.Name)
			end
		end

		if #tbl60 > 0 then
			local insert2 = table.insert
			local str2 = ("It works together with %*, which set%* a similar thing."):format(fn9(fn11(tbl60, 3)), #tbl60 == 1 and "s" or "")
			insert2(tbl59, str2)
		end

		local v9 = fn38(arg, nil, 1, arg2)[1]

		if v9 then
			local insert2 = table.insert
			local str2 = ("Good to know: %*"):format(v9)
			insert2(tbl59, str2)
		end

		return { Text = table.concat(tbl59, "\n\n"), Actions = fn48(arg, arg2) }
	end

	tbl2.DetailReply = function(arg)
		local tbl59 = {}
		local v6 = tbl2.Doing(arg)
		local insert = table.insert
		local str = ("Here's more on %*.%*"):format(fn9(arg.Name), v6 and v6 ~= "" and (" It %*."):format(v6) or "")
		insert(tbl59, str)
		local v7 = tbl2.SettingLines(arg, 8)

		if #v7 > 0 then
			local insert2 = table.insert
			local str2 = ("Its main settings right now:\n%*"):format(table.concat(v7, "\n"))
			insert2(tbl59, str2)
		end

		local v8 = fn36(arg)

		for i = 2, math.min(3, #v8) do
			if v8[i].Primary then
				local insert2 = table.insert
				local str2 = ("Also good to know: %*"):format(fn37(v8[i].Fact))
				insert2(tbl59, str2)
			end
		end

		local v9, v10, v11 = tbl2.Rivals(arg)
		local v12 = table.pack(y_1())

		if v12[1] then
			local v13 = v12[3]
			local insert2 = table.insert
			local str2 = ("Right now it overlaps with %*, which also %*."):format(fn9(v13.Entry.Name), tbl2.Resources[v13.Resource].Does)
			insert2(tbl59, str2)
		end

		local tbl60 = { Text = table.concat(tbl59, "\n\n") }
		local chips = tbl2.Chips
		local tbl61 = {}
		local str2 = ("%* settings"):format(arg.Name)
		tbl61[1] = "Go deeper"
		tbl61[2] = str2
		tbl60.Actions = chips(tbl61)
		return tbl60
	end

	tbl2.DeepReply = function(arg)
		local tbl59 = { (("Going deeper on %*."):format(fn9(arg.Name))) }
		local tbl60 = {}
		local v6 = nil
		local flag = nil

		for _, v7 in arg.Options, nil, nil do
			local v8, v9 = tbl2.RoleOf(arg, v7)
			local means = v9 and v9.Means or v8 and v8.Means
			local v10 = fn10(fn8(v7.Settings.Tooltip))

			if #tbl60 < 6 and v7.Type ~= "ColorSlider" and v7.Type ~= "Button" and (means or v10 ~= "") then
				local insert = table.insert
				local str

				if means then
					str = ("- %* sets %*.%*"):format(v7.Name, means, v9 and v9.Limit and (" %*"):format(v9.Limit) or "")
				else
					str = means
				end

				insert(tbl60, str or ("- %*: %*"):format(v7.Name, fn7(tbl2.Sentence(v10))))
			end

			local flag2

			if v6 then
				flag2 = v6
			else
				if v8 then
					flag2 = v8.Id == "Speed" or v8.Id == "Delay"
				else
					flag2 = v8
				end

				flag2 = flag2 and v7
			end

			v6 = flag2 or nil
			flag = flag or v8 and v8.Id == "Range" and v7 or nil
		end

		if #tbl60 > 0 then
			local insert = table.insert
			local str = ("How its settings work:\n%*"):format(table.concat(tbl60, "\n"))
			insert(tbl59, str)
		end

		if v6 and flag then
			local insert = table.insert
			local name = v6.Name
			local str = ("Range and speed are separate: raising %* doesn't make it act more often, that's %*."):format(fn9(flag.Name), fn9(name))
			insert(tbl59, str)
		end

		local v7 = tbl2.ControlsOf(arg)

		if v7 then
			for _, v8 in tbl2.ResourceOrder, nil, nil do
				local v9 = v7[v8]

				if v9 and v9.Gates then
					local insert = table.insert
					local str = ("It only %* %*."):format(tbl2.Resources[v8].Does, tbl2.GateText(v9.Gates[1]))
					insert(tbl59, str)
				end
			end

			if v7.Hook then
				table.insert(tbl59, "It changes some of the game's own code, so a game update can break it until CatVape is updated.")
			end

			if v7.Frame then
				table.insert(tbl59, "It runs every frame, so it costs a little performance the whole time it's on.")
			end
		end

		table.insert(tbl59, "That's as deep as I can go from here, past this you'd be reading its code.")
		return { Text = table.concat(tbl59, "\n\n"), Actions = fn48(arg) }
	end

	tbl2.MoreReply = function(arg, arg2)
		if not arg then
			return {
				Text = "More about what? Ask me about a module first, like \"what does Killaura do\".",
				Actions = fn47(),
			}
		end

		key = arg.Key
		local depth = tbl2.Depth

		if depth.Key ~= arg.Key then
			tbl2.Depth = { Key = arg.Key, Level = 1, Option = arg2 }
			depth = tbl2.Depth
		end

		local option = arg2 or depth.Option
		depth.Level = depth.Level + 1
		if option and depth.Level == 2 then
			return tbl2.OptionDetail(arg, option)
		end

		if depth.Level == 2 or option and depth.Level == 3 then
			return tbl2.DetailReply(arg)
		end

		if depth.Level <= 4 then
			return tbl2.DeepReply(arg)
		end

		return {
			Text = ("That's everything I know about %*. If something specific is still unclear, ask me about that part."):format(fn9(arg.Name)),
			Actions = fn48(arg),
		}
	end

	tbl2.MissingSetting = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in arg.Options, nil, nil do
			local v7 = tbl2.RoleOf(arg, v6)
			tbl59[v7 and v7.Id or ""] = true
		end

		local tbl60 = arg2 or {}

		for _, v6 in tbl60, nil, nil do
			for _, v7 in tbl2.Roles, nil, nil do
				if v7.Words[v6.Word] and not tbl59[v7.Id] and v7.Id ~= "Mode" and v7.Id ~= "Check" and v7.Id ~= "Looks" then
					return v6.Word
				end
			end
		end

		return nil
	end

	tbl2.TradeoffReply = function(arg, arg2, arg3)
		key = arg.Key
		local flag = not arg2 and tbl2.MissingSetting(arg, arg3)

		if flag then
			local v6 = fn38(arg, nil, 1)[1]

			return {
				Text = ("%* doesn't have a %* setting, so there's nothing to tune there. Ask me \"%* settings\" to see what it does have.%*"):format(fn9(arg.Name), flag, arg.Name, v6 and ("\n\nGood to know: %*"):format(v6) or ""),
				Actions = fn48(arg),
			}
		end

		if not arg2 then
			local tbl59 = { (("Here's your %* setup:"):format(fn9(arg.Name))) }
			local n3 = 0

			for _, v6 in arg.Options, nil, nil do
				local option = v6.Option

				if n3 < 6 and option and (v6.Type == "Slider" or v6.Type == "Dropdown" or v6.Type == "TwoSlider") then
					local flag2 = v6.Type == "Slider"

					if flag2 then
						flag2 = tbl2.Position(option.Value, v6.Settings.Min or option.Min, v6.Settings.Max or option.Max)
					end

					local insert = table.insert
					local str = ("- %*: %*%*"):format(v6.Name, fn24(v6), flag2 and (" (%*)"):format(flag2) or "")
					insert(tbl59, str)
					n3 += 1
				end
			end

			table.insert(tbl59, "\nNothing there is wrong on its own. Whether it's good depends on what you want: values at the max are the strongest but the most obvious, lower ones look more like normal play.")
			local v6 = fn38(arg, nil, 1)[1]

			if v6 then
				local insert = table.insert
				local str = ("\nGood to know: %*"):format(v6)
				insert(tbl59, str)
			end

			return { Text = table.concat(tbl59, "\n"), Actions = fn48(arg) }
		end

		tbl2.LastOption = { Type = "option", Value = { Entry = arg, Option = arg2 } }
		local v6, v7 = tbl2.RoleOf(arg, arg2)
		local option = arg2.Option or {}
		local min = arg2.Settings.Min or option.Min
		local max = arg2.Settings.Max or option.Max
		local v8 = fn24(arg2)

		local tbl59 = {
			(("%* in %* is at %* right now%*."):format(fn9(arg2.Name), fn9(arg.Name), fn9(v8 or "its default"), min and max and (" (it goes from %* to %*)"):format(fn12(min), fn12(max)) or "")),
		}

		local tbl60 = arg3 or {}

		for _, v9 in tbl60, nil, nil do
			if v9.Kind == "number" then
				local v10 = tbl2.Position(v9.Value, min, max)

				if v10 then
					local insert = table.insert
					local str = ("%* is %*."):format(fn12(v9.Value), v10)
					insert(tbl59, str)
				end

				break
			end
		end

		local means = v7 and v7.Means or v6 and v6.Means
		local up = v7 and v7.Up or v6 and v6.Up
		local down = v7 and v7.Down or v6 and v6.Down
		local v9 = fn8(arg2.Settings.Tooltip)
		local list = arg2.Settings.List or option.List

		if arg2.Type == "Dropdown" and list then
			local insert = table.insert
			local str = ("Its choices are %*.%*"):format(fn9(fn7(fn11(list, 8))), v9 ~= "" and ("\n%*"):format(fn7(v9)) or "")
			insert(tbl59, str)
		elseif means and up and down then
			local insert = table.insert
			local str = ("It sets %*. Higher means %*, lower means %*."):format(means, up, down)
			insert(tbl59, str)
		elseif v9 ~= "" then
			table.insert(tbl59, fn7(fn10(v9)))
		elseif means then
			local insert = table.insert
			local str = ("It sets %*."):format(means)
			insert(tbl59, str)
		end

		if v7 and v7.Limit then
			table.insert(tbl59, v7.Limit)
		end

		local v10 = fn38(arg, nil, 1, arg2)[1]

		if v10 then
			local insert = table.insert
			local str = ("Good to know: %*"):format(v10)
			insert(tbl59, str)
		end

		local insert = table.insert
		local str = ("There's no single best %*, it comes down to what you want%*."):format(arg2.Type == "Dropdown" and "choice" or "value", v6 and v6.Tradeoff and (": %*"):format(v6.Tradeoff) or "")
		insert(tbl59, str)
		return { Text = table.concat(tbl59, "\n\n"), Actions = fn48(arg, arg2) }
	end

	tbl2.EffectReply = function(arg, arg2, arg3)
		key = arg.Key

		if not arg2 then
			local v6 = tbl2.EffectOf(arg3, arg)
			local v7 = tbl2.Summary(arg)
			local flag = v7 ~= ""

			if flag then
				local lower = tbl2.Lower
				local v8 = table.pack(tbl2.Sentence(fn7(v7)))
				flag = lower(table.unpack(v8, 1, v8.n))
			end

			flag = flag or "has no description."
			if not v6 then
				return { Text = ("%* %*"):format(fn9(arg.Name), flag), Actions = fn48(arg) }
			end

			if tbl2.Fits(arg, nil, v6) then
				return {
					Text = ("Yes, that's what it's for. %* %*"):format(fn9(arg.Name), flag),
					Actions = fn48(arg),
				}
			end

			local text = v6.Text

			return {
				Text = ("Not quite. %* %* It doesn't change %*."):format(fn9(arg.Name), flag, text),
				Actions = fn48(arg),
			}
		end

		tbl2.LastOption = { Type = "option", Value = { Entry = arg, Option = arg2 } }
		local v6, v7 = tbl2.RoleOf(arg, arg2)
		local v8 = tbl2.EffectOf(arg3, arg, arg2)
		local means = v7 and v7.Means or v6 and v6.Means
		local v9 = fn10(fn8(arg2.Settings.Tooltip))
		local str = means and ("%* sets %*"):format(fn9(arg2.Name), means) or v9 ~= "" and ("%* is described as \"%*\""):format(fn9(arg2.Name), fn7(v9))

		if not str then
			local name = arg.Name
			str = ("%* is a %* in %*"):format(fn9(arg2.Name), fn23(arg2), fn9(name))
		end

		if not v8 then
			return tbl2.OptionDetail(arg, arg2)
		end
		local v10, v11 = tbl2.Fits(arg, arg2, v8)
		local up = v7 and v7.Up or v6 and v6.Up
		local down = v7 and v7.Down or v6 and v6.Down
		local flag = v10 and v6 ~= nil and v6.Inverse == true and v8.Id == "Rate"

		if flag then
			local hasWord = tbl2.HasWord
			flag = tbl2.HasWord(arg3, tbl2.Lowering) == hasWord(arg3, { "slower", "less", "fewer" })
		end

		if flag then
			return {
				Text = ("Not quite, it's the other way round. %*, so higher means %* and lower means %*.%*"):format(str, up, down, v7 and v7.Limit and (" %*"):format(v7.Limit) or ""),
				Actions = fn48(arg, arg2),
			}
		end

		if v10 then
			return {
				Text = ("Yes. %*%*.%*"):format(str, up and down and (", so higher means %* and lower means %*"):format(up, down) or "", v7 and v7.Limit and (" %*"):format(v7.Limit) or ""),
				Actions = fn48(arg, arg2),
			}
		end

		local tbl59 = {}

		if v11 then
			table.insert(tbl59, v11)
		end

		for _, v12 in arg.Options, nil, nil do
			local flag2 = v12 ~= arg2 and tbl2.RoleOf(arg, v12)

			if flag2 and v8.Roles[flag2.Id] and not table.find(tbl59, v12.Name) then
				table.insert(tbl59, v12.Name)
			end
		end

		local tbl60 = {
			(("Not quite. %*, not %*.%*"):format(str, v8.Text, v7 and v7.Limit and (" %*"):format(v7.Limit) or "")),
		}

		if v8.Id == "Detection" then
			table.insert(tbl60, "No setting makes a module undetectable. Values closer to what a normal player can do just stand out less.")
		elseif #tbl59 > 0 then
			local insert = table.insert
			local text = v8.Text
			local v12 = fn9
			local str2 = ("In %*, %* comes from %*."):format(fn9(arg.Name), text, v12(fn11(tbl59, 3)))
			insert(tbl60, str2)
		else
			local insert = table.insert
			local text = v8.Text
			local str2 = ("%* doesn't have a setting for %*."):format(fn9(arg.Name), text)
			insert(tbl60, str2)
		end

		return { Text = table.concat(tbl60, "\n\n"), Actions = fn48(arg, arg2) }
	end

	tbl2.GoalText = function(arg)
		local v6 = fn5(tbl2.Unslang(arg))

		for _, v7 in tbl2.GoalPatterns, nil, nil do
			local match = v6:match(v7)

			if match and #match:split(" ") <= 8 then
				local str = (" %* "):format(match):gsub(" my ", " your "):gsub(" me ", " you "):gsub(" im ", " you are "):gsub(" i ", " you "):gsub(" myself ", " yourself ")

				for i = 1, 3 do
					str = str:gsub(" (%a+) $", function(arg2)
						return (tbl2.Trailing[arg2] or tbl2.Drop[arg2] or arg2 == "rn" or arg2 == "with" or arg2 == "in" or arg2 == "bedwars") and " " or nil
					end)
				end

				local cut = tbl2.Cut
				local str2 = (" %* "):format(str)
				local match2 = cut(str2):match("^%s*(.-)%s*$")
				local match3 = (#match2:split(" ") >= 3 and match2 or str):match("^%s*(.-)%s*$")
				local parts = match3:split(" ")
				local flag = match3 == "" or tbl2.Pronouns[parts[#parts]]
				local flag2

				if flag then
					flag2 = flag
				else
					flag2 = #parts <= 2 and tbl2.Pronouns[parts[1]]
				end

				if flag2 then
					return nil
				end
				return match3, v7
			end
		end

		return nil
	end

	tbl2.GoalTerms = function(arg)
		if arg.Goal then
			return arg.Goal
		end
		local goal = {}

		for _, v6 in arg.Options, nil, nil do
			fn16(goal, v6.Name, 0.5)
		end

		fn16(goal, fn8(arg.Module.Tooltip), 0.6)

		for _, v6 in fn8(arg.Module.Tooltip):split("\n") do
			fn16(goal, fn10(v6), 2)
		end

		fn16(goal, ("%* %*"):format(arg.Name, fn15(arg.Name)), 4)
		arg.Goal = goal
		return goal
	end

	tbl2.Covers = function(arg, arg2)
		local n3 = 0
		local n4 = 0
		local flag = false

		for k, v6 in arg2, nil, nil do
			if v6 == 1 and not tbl8[k] then
				n3 += 1
				local n5 = arg[k] or 0
				local tbl59 = tbl7[k] or {}

				for _, v7 in tbl59, nil, nil do
					n5 = math.max(n5, arg[v7] or 0)
				end

				n4 += n5 >= 0.6 and 1 or 0
				flag = flag or n5 >= 2
			end
		end

		return n3 > 0 and n4 / n3 or 0, flag, n4
	end

	tbl2.Rank = function(arg)
		local tbl59 = {}

		for match in fn5(arg):gmatch("%S+") do
			if not tbl2.GoalFiller[match] then
				table.insert(tbl59, (match == "go" or match == "going") and "move" or match)
			end
		end

		local v6 = fn19(table.concat(tbl59, " "))
		local tbl60 = {}

		for _, v7 in tbl.Entries, nil, nil do
			local v8 = tbl2.GoalTerms(v7)
			local n3 = 0

			for k, v9 in v6, nil, nil do
				if v8[k] then
					n3 += v9 * v8[k] * fn18(k)
				end
			end

			if n3 > 0 then
				local v9, v10, v11 = tbl2.Covers(v8, v6)
				local flag = false
				local flag2 = false
				local flag3 = false

				for k, v12 in v6, nil, nil do
					flag = flag or v8[k] == 4 and v12 == 1
					flag2 = flag2 or k == v7.Key and v12 == 1
					flag3 = flag3 or k == v7.Key
				end

				table.insert(tbl60, {
					Entry = v7,
					Score = n3 * (v7.Legit and 0.3 or 1) * (0.5 + v9) ^ 2 * (flag and 1.25 or 1) * (flag3 and 1.4 or 1),
					Covers = v9,
					Core = v10,
					Named = flag,
					Exact = flag2,
					Matched = v11,
				})
			end
		end

		table.sort(tbl60, function(arg2, arg3)
			if arg2.Exact ~= arg3.Exact then
				return arg2.Exact
			end
			return arg2.Score > arg3.Score
		end)

		return tbl60, v6
	end

	tbl2.Goal = function(arg, arg2)
		local v6, v7 = tbl2.Rank(arg2 or table.concat(tbl2.WordList(arg), " "))
		local tbl59 = {}
		local v8 = nil

		for _, v9 in v6, nil, nil do
			if #tbl59 < 2 and v9.Core and (v9.Named and (v9.Covers >= 0.4 or v9.Matched >= 2) or v9.Covers >= 0.67) and v9.Score >= tbl2.RecommendScore and (not v8 or v9.Named and v9.Score >= v8.Score * 0.5 and v9.Covers >= math.max(v8.Covers, 0.67)) then
				v8 = v8 or v9
				table.insert(tbl59, v9.Entry)
			end
		end

		return tbl59, v6, v7
	end

	tbl2.Cut = function(arg)
		for _, v6 in { " so you ", " so i ", " because ", " cuz ", " when ", " while " }, nil, nil do
			local pos = arg:find(v6, 1, true)

			if pos then
				arg = arg:sub(1, pos - 1)
			end
		end

		return arg
	end

	tbl2.RecommendReply = function(arg, arg2)
		local v6 = tbl2.HasWord(arg, tbl2.ModuleWords)
		local goal = tbl2.Goal

		if v6 then
			local cut = tbl2.Cut
			local str = (" %* "):format(table.concat(tbl2.WordList(arg), " "))
			v6 = cut(str)
		end

		local v7, v8, v9 = goal(arg, v6 or tbl2.GoalText(arg2))
		local v10, v11 = tbl2.GoalText(arg2)
		local str = v11 and (v11:find("that %(%.%+%)%$$") or v11:find("^wh%a+ mod")) and "something that" or v11 and v11:find("for %(%.%+%)%$$") and "something for" or "to"
		local tbl59 = {}
		local v12, v13 = fn35(v9, v7)
		local flag = v12 and v7[1]

		if flag then
			flag = not table.find(v12.Modules or {}, v7[1].Name)
		end

		if flag then
			v12 = nil
		end

		if #v7 == 0 then
			local entry = v8[1] and v8[1].Score >= 2 and v8[1].Entry
			local insert = table.insert
			local str2 = ("I'm not certain CatVape has a module for that%*.%*"):format(fn33() and " in this game" or "", entry and (" The closest I can find is %*, but it may not be what you're after."):format(fn9(entry.Name)) or "")
			insert(tbl59, str2)

			if v12 and v13 >= tbl2.FactOver then
				table.insert(tbl59, fn37(v12))
			end

			return {
				Text = table.concat(tbl59, "\n\n"),
				Actions = entry and tbl2.Chips({ (("What does %* do?"):format(entry.Name)) }) or fn47(),
			}
		end

		local v14 = v7[1]
		key = v14.Key
		local v15 = tbl2.Summary(v14, v9)
		local insert = table.insert
		local str2 = ("%*%* is the one to use%*"):format(v10 and ("If you want %* %*, "):format(str, fn7(v10)) or "For that, ", fn9(v14.Name), v15 ~= "" and (": %*"):format(tbl2.Sentence(tbl2.Lower(fn7(v15)))) or ".")
		insert(tbl59, str2)
		local insert2 = table.insert
		local str3 = ("It's in %* and it's %*."):format(fn25(v14), v14.Module.Enabled and "already on" or "off right now")
		insert2(tbl59, str3)

		if v7[2] then
			local insert3 = table.insert
			local format = ("%* can help too: %*").format
			local v16 = fn9(v7[2].Name)
			local sentence = tbl2.Sentence
			local v17 = table.pack(tbl2.Lower(fn7(tbl2.Summary(v7[2], v9))))
			local v18 = format("%* can help too: %*", v16, sentence(table.unpack(v17, 1, v17.n)))
			insert3(tbl59, v18)
		end

		if v12 and v13 >= tbl2.FactOver then
			table.insert(tbl59, fn37(v12))
		end

		local tbl60 = {}

		if not v14.Module.Enabled then
			table.insert(tbl60, {
				Text = ("Turn on %*"):format(v14.Name),
				Callback = function()
					fn41(fn49(v14, "On"))
				end,
			})
		end

		table.insert(tbl60, {
			Text = ("What does %* do?"):format(v14.Name),
			Callback = function()
				local v16 = fn4
				local str4 = ("What does %* do?"):format(v14.Name)
				v16(str4)
			end,
		})

		return { Text = table.concat(tbl59, "\n\n"), Actions = tbl60 }
	end

	tbl2.CompareReply = function(arg)
		local tbl59 = {}
		local tbl60 = {}

		for i = 1, math.min(3, #arg) do
			local v6 = arg[i]
			local v7 = tbl2.Doing(v6, true)
			local tbl61 = {}

			for _, v8 in v6.Options, nil, nil do
				if #tbl61 < 3 and v8.Type ~= "ColorSlider" and v8.Type ~= "Button" and v8.Type ~= "Targets" then
					table.insert(tbl61, v8.Name)
				end
			end

			local v8 = tbl2.Summary(v6)
			local insert = table.insert
			local str = ("%* (%*, %*): %*%*%*"):format(fn9(v6.Name), v6.Legit and "Legit menu" or v6.Category, v6.Module.Enabled and "on" or "off", v8 ~= "" and fn7(tbl2.Sentence(v8)) or "no description.", v7 and v7 ~= "" and (" It %*."):format(v7) or "", #tbl61 > 0 and (" Main settings: %*."):format(table.concat(tbl61, ", ")) or "")
			insert(tbl59, str)

			table.insert(tbl60, {
				Text = v6.Name,
				Callback = function()
					local v9 = fn4
					local str2 = ("What does %* do?"):format(v6.Name)
					v9(str2)
				end,
			})
		end

		local v6 = arg[1]
		local v7 = arg[2]
		local str = nil

		for _, v8 in tbl2.Clashes(v6, v7) do
			if not str and tbl2.Resources[v8.Resource].Strong then
				local clash = tbl2.Resources[v8.Resource].Clash
				str = ("They overlap: %* and %* %*. You'd normally run one at a time."):format(fn9(v6.Name), fn9(v7.Name), clash)
			end
		end

		local flag = tbl2.Uses(v6, "Attack") ~= nil
		local flag2 = tbl2.Uses(v7, "Attack") ~= nil

		if not str and flag ~= flag2 then
			local v8 = flag and v6 or v7
			v7 = flag and v7 or v6

			if tbl2.Uses(v7, "Camera") or tbl2.Uses(v7, "Rotate") then
				local name = v7.Name
				str = ("The big difference: %* hits for you, while %* only helps you aim, so you still do the clicking."):format(fn9(v8.Name), fn9(name))
			end
		end

		if str then
			table.insert(tbl59, str)
		end

		table.insert(tbl59, "Neither is better overall, it comes down to what you want it for.")
		return { Text = ("Here is how they compare:\n\n%*"):format(table.concat(tbl59, "\n\n")), Actions = tbl60 }
	end

	tbl2.InteractionReply = function(arg)
		local v6 = arg[1]
		local v7 = arg[2]
		local tbl59 = {}
		local tbl60 = {}
		local v8 = fn33()

		for _, v9 in tbl14, nil, nil do
			if #tbl59 == 0 and fn34(v9, v8) and v9.Modules and table.find(v9.Modules, v6.Name) and table.find(v9.Modules, v7.Name) and v9.Text:find(v6.Name, 1, true) and v9.Text:find(v7.Name, 1, true) then
				table.insert(tbl59, fn37(v9))
			end
		end

		if #tbl59 > 0 then
			table.insert(tbl59, "That's the main thing to know about running them together. If something still feels off with both on, run one at a time to see which one causes it.")
			local tbl61 = { Text = table.concat(tbl59, "\n\n") }
			local chips = tbl2.Chips
			local tbl62 = {}
			local str = ("What does %* do?"):format(v6.Name)
			local str2 = ("What does %* do?"):format(v7.Name)
			tbl62[1] = str
			tbl62[2] = str2
			tbl61.Actions = chips(tbl62)
			return tbl61
		end

		local flag = false

		for _, v9 in { { v6, v7 }, { v7, v6 } }, nil, nil do
			local v10 = tbl2.Linked(v9[1], v9[2])

			if v10 then
				local v11 = fn24(v10)
				flag = flag or v11 == "on"
				local insert = table.insert
				local str = ("%* has a %* setting that ties it to %*%*."):format(fn9(v9[1].Name), fn9(v10.Name), fn9(v9[2].Name), v11 and (", and it's %* right now"):format(v11) or "")
				insert(tbl59, str)
			end
		end

		local flag2 = tbl2.ControlsOf(v6) ~= nil and tbl2.ControlsOf(v7) ~= nil
		local str = nil

		for _, v9 in tbl2.Clashes(v6, v7) do
			local v10 = tbl2.Resources[v9.Resource]

			if v9.First ~= "off" and v9.Second ~= "off" then
				if v10.Strong then
					local flag3 = v9.First == "now" and v6 or v9.Second == "now" and v7
					local firstGate = v9.First == "now" and v9.FirstGate or v9.SecondGate
					local insert = table.insert
					local str2 = ("They can clash: %* and %* %*.%*"):format(fn9(v6.Name), fn9(v7.Name), v10.Clash, flag3 and firstGate and (" %* only does that %*, so turning that off avoids it."):format(fn9(flag3.Name), tbl2.GateText(firstGate)) or "")
					insert(tbl59, str2)
					table.insert(tbl60, v9)
				elseif not (flag and v9.Resource == "Target") then
					str = str or ("They also %*, which is usually fine."):format(v10.Clash)
				end
			elseif v10.Strong then
				local flag3 = v9.First == "off" and v6 or v7
				local firstGate = v9.First == "off" and v9.FirstGate or v9.SecondGate
				local insert = table.insert
				local str2 = ("%* only %* %*, and that's off right now, so they won't fight over that."):format(fn9(flag3.Name), v10.Does, tbl2.GateText(firstGate))
				insert(tbl59, str2)
			end
		end

		if str and #tbl60 == 0 then
			table.insert(tbl59, str)
		end

		if #tbl60 == 0 then
			if not flag2 then
				local v9 = tbl2.ControlsOf(v6) and v7 or v6
				local insert = table.insert
				local str2 = ("I can't see exactly what %* touches, so I can't promise, but nothing I know of says they clash."):format(fn9(v9.Name))
				insert(tbl59, str2)
			elseif #tbl59 > 0 then
				table.insert(tbl59, "Apart from that they don't fight over anything, so they should work fine together.")
			else
				local str2 = tbl2.Doing(v6, true) or ""
				local str3 = tbl2.Doing(v7, true) or ""

				if str2 == "" and str3 == "" then
					local insert = table.insert
					local name = v7.Name
					local str4 = ("Neither %* nor %* moves you, aims, clicks or switches your item, so from how they work they don't fight over anything and should be fine together."):format(fn9(v6.Name), fn9(name))
					insert(tbl59, str4)
				else
					local insert = table.insert
					local str4 = ("%* %*, and %* %*. From how they work they don't fight over the same thing, so they should be fine together."):format(fn9(v6.Name), str2 ~= "" and str2 or "doesn't move you, aim or click", fn9(v7.Name), str3 ~= "" and str3 or "doesn't move you, aim or click")
					insert(tbl59, str4)
				end
			end
		else
			table.insert(tbl59, "If something feels off with both on, run one at a time and see which one you actually need.")
		end

		if arg[3] then
			local insert = table.insert
			local str2 = ("Ask me about %* with one of them on its own if you want that pair checked too."):format(fn9(arg[3].Name))
			insert(tbl59, str2)
		end

		local enabled = v6.Module.Enabled and v7.Module.Enabled
		local tbl61 = { Text = table.concat(tbl59, "\n\n") }
		local flag3 = #tbl60 > 0 and enabled and tbl2.Toggles({ v7, v6 })
		local v9

		if flag3 then
			v9 = flag3
		else
			local chips = tbl2.Chips
			local tbl62 = {}
			local str2 = ("What does %* do?"):format(v6.Name)
			local str3 = ("What does %* do?"):format(v7.Name)
			tbl62[1] = str2
			tbl62[2] = str3
			v9 = chips(tbl62)
		end

		tbl61.Actions = v9
		return tbl61
	end

	tbl2.UsingReply = function(arg)
		local using = tbl2.Context.Using
		local tbl59 = {}
		local tbl60 = {}

		for i = #arg, 1, -1 do
			local v6 = arg[i]
			local v7 = table.find(using, v6)

			if v7 then
				table.remove(using, v7)
			end

			table.insert(using, 1, v6)

			if #using > 6 then
				table.remove(using)
			end
		end

		for _, v6 in arg, nil, nil do
			table.insert(tbl59, fn9(v6.Name))

			if not v6.Module.Enabled then
				table.insert(tbl60, fn9(v6.Name))
			end
		end

		key = arg[1].Key
		local tbl61 = { (("Got it, %*."):format(fn11(tbl59, 5))) }

		if #tbl60 > 0 and #tbl60 < #arg then
			local insert = table.insert
			local str = ("%* %* actually off right now, though."):format(fn11(tbl60, 5), #tbl60 == 1 and "is" or "are")
			insert(tbl61, str)
		end

		for i = 1, #arg do
			for i2 = i + 1, #arg do
				for _, v6 in tbl2.Clashes(arg[i], arg[i2]) do
					if #tbl61 < 4 and tbl2.Resources[v6.Resource].Strong and v6.First ~= "off" and v6.Second ~= "off" then
						local insert = table.insert
						local clash = tbl2.Resources[v6.Resource].Clash
						local str = ("Heads up: %* and %* %*."):format(fn9(arg[i].Name), fn9(arg[i2].Name), clash)
						insert(tbl61, str)
					end
				end
			end
		end

		table.insert(tbl61, "What's going on with them?")

		return {
			Text = table.concat(tbl61, " "),
			Actions = arg[2] and tbl2.Chips({ (("Can %* and %* run together?"):format(arg[1].Name, arg[2].Name)) }) or tbl2.Chips({ (("What does %* do?"):format(arg[1].Name)) }),
		}
	end

	tbl2.StyleWords = {
		Legit = tbl2.Set("legit legitimate safe safer subtle undetected undetectable clean human humanlike natural lowkey casual"),
		Closet = tbl2.Set("closet closeted silent semi semilegit sneaky quiet"),
		Blatant = tbl2.Set("blatant rage raging max maxed maximum op overpowered hvh strongest aggressive insane sweaty tryhard"),
		Default = tbl2.Set("default defaults reset stock factory original originally vanilla"),
	}

	tbl2.StylePhrases = {
		Default = { "how it was", "back to normal", "start over" },
		Legit = { "not obvious", "less obvious", "not blatant", "look legit", "looks legit" },
		Blatant = { "more obvious", "all out", "go hard" },
	}

	tbl2.StyleOrder = { "Default", "Closet", "Legit", "Blatant" }
	tbl2.StyleEntities = tbl2.Set("legit closet closeted blatant hvh silent default")
	tbl2.Presets = { Legit = "legit", Closet = "silent", Blatant = "default" }
	tbl2.Quality = tbl2.Set("good best decent solid proper optimal actually great perfect strong working tuned optimized optimised scratch complete full whole")

	tbl2.Prefaces = {
		"thanks",
		"thank you",
		"thx",
		"ty",
		"tysm",
		"ok",
		"okay",
		"cool",
		"nice",
		"great",
		"alright",
		"perfect",
		"bet",
		"awesome",
	}

	tbl2.Places = {
		BedWars = "a BedWars match",
		BedWarsLobby = "the BedWars lobby",
		IllegalSoccer = "Illegal Soccer",
		TowerOfHell = "Tower of Hell",
		Universal = "most games",
	}

	tbl2.ConfigVerbs = tbl2.Set("make set setup configure config cfg tune optimize optimise reset restore put max build create")
	tbl2.Hands = tbl2.Set("switch load delete remove rename share export import select which what whats is are does do how why")
	tbl2.Calm = tbl2.Set("Delay Smooth Shake")

	tbl2.Strict = {
		["require mouse down"] = true,
		["click aim"] = true,
		["limit to items"] = true,
		["limit to item"] = true,
		["swing only"] = true,
		["gui check"] = true,
		["afk check"] = true,
		["attackable check"] = true,
	}

	tbl2.Caps = { ["Killaura/Attack range"] = 18, ["Speed/Speed"] = 22 }

	tbl2.Elsewhere = function(arg)
		if not tbl2.Everywhere then
			tbl2.Everywhere = {}

			for k, v6 in tbl2.Controls, nil, nil do
				for k2 in v6, nil, nil do
					local tbl59 = tbl2.Everywhere[fn14(k2)] or { Name = k2, Games = {} }
					table.insert(tbl59.Games, k)
					tbl2.Everywhere[fn14(k2)] = tbl59
				end
			end

			for k, v6 in tbl9, nil, nil do
				tbl2.Everywhere[k] = tbl2.Everywhere[k] or tbl2.Everywhere[fn14(v6)]
			end
		end

		return tbl2.Everywhere[arg]
	end

	tbl2.Absent = function(arg)
		local str = fn33()

		if str == "BedWars" and game.PlaceId == tbl2.LobbyPlace then
			str = "BedWarsLobby"
		end

		local v6 = tbl2.WordList(arg)

		for k, v7 in v6, nil, nil do
			local tbl59 = { ("%*%*"):format(v7, v6[k + 1] or ""), v7 }

			for _, v8 in tbl59, nil, nil do
				local flag = #v8 >= 4 and not tbl.Keys[v8] and not tbl2.English(v8) and tbl2.Elsewhere(v8)
				local flag2 = flag and not table.find(flag.Games, "Universal")

				if flag2 then
					flag2 = not table.find(flag.Games, str or "")
				end

				if flag2 then
					return flag
				end
			end
		end

		return nil
	end

	tbl2.Here = function()
		local v6 = fn33()
		if v6 == "BedWars" and game.PlaceId == tbl2.LobbyPlace then
			return tbl2.Places.BedWarsLobby
		end
		return v6 and tbl2.Places[v6] or "this game"
	end

	tbl2.ElsewhereReply = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in arg.Games, nil, nil do
			local insert = table.insert
			v6 = tbl2.Places[v6] or v6
			insert(tbl59, v6)
		end

		local flag = arg2 ~= nil and (tbl2.HasWord(arg2, tbl2.PresetNouns) or tbl2.StyleOf(arg2) ~= nil)

		return {
			Text = ("%* isn't loaded here. It only runs in %*, and you're in %* right now. Ask me again once you're there and I'll %*."):format(fn9(arg.Name), fn11(tbl59, 3), tbl2.Here(), flag and "set it up" or "help with it"),
		}
	end

	tbl2.PreferredStyle = function(arg)
		local v6 = nil

		for _, v7 in { "Legit", "Closet", "Blatant" }, nil, nil do
			local v8 = tbl2.RecipeFor(v7)

			if v8 and v8.Modules[arg.Name] and (", %*, "):format(v8.On):find((", %*, "):format(arg.Name), 1, true) then
				if v6 then
					return nil
				end
				v6 = v7
			end
		end

		return v6
	end

	tbl2.StyleOf = function(arg, arg2)
		for _, v6 in tbl2.StyleOrder, nil, nil do
			if tbl2.StylePhrases[v6] and tbl2.Phrased(arg, tbl2.StylePhrases[v6]) then
				return v6
			end
		end

		for _, v6 in tbl2.StyleOrder, nil, nil do
			for k, v7 in arg, nil, nil do
				local v8 = tbl2.StyleWords[v6][v7.Word]
				local flag

				if v8 then
					flag = not (arg2 and arg2[k])
				else
					flag = v8
				end

				if flag then
					return v6
				end
			end
		end

		return nil
	end

	tbl2.RecipeFor = function(arg)
		local str = fn33()

		if str == "BedWars" and game.PlaceId == tbl2.LobbyPlace then
			str = "BedWarsLobby"
		end

		str = str and tbl2.Recipes[str]
		return str and str[arg] or nil
	end

	tbl2.ApplyValues = function(arg, arg2)
		local tbl59 = {}
		local tbl60 = {}

		for _, v6 in arg2, nil, nil do
			for _, v7 in arg.Options, nil, nil do
				local option = v7.Name == v6[1] and v7.Option
				local flag

				if option then
					local v8 = v6[2]
					flag = fn24(v7) ~= v8
				else
					flag = option
				end

				if flag then
					local v8 = tbl2.Capture(v7)
					local v9, v10 = fn62(v7, v6[2])

					if v9 then
						table.insert(tbl59, v10)
						table.insert(tbl60, v8)
					end
				end
			end
		end

		return tbl59, tbl60
	end

	tbl2.RecipePairs = function(arg)
		local tbl59 = {}

		for match in arg:gmatch("[^;]+") do
			local match2, v6 = match:match("^%s*(.-)%s*=%s*(.-)%s*$")

			if match2 then
				table.insert(tbl59, { match2, v6 })
			end
		end

		return tbl59
	end

	tbl2.StylePairs = function(arg, arg2)
		local tbl59 = {}

		if arg2 == "Default" then
			for _, v6 in arg.Options, nil, nil do
				local option = v6.Option

				if option and v6.Type == "Toggle" then
					local insert = table.insert
					local tbl60 = {}
					local name = v6.Name
					local str = option.Default and "on" or "off"
					tbl60[1] = name
					tbl60[2] = str
					insert(tbl59, tbl60)
				elseif option and v6.Type == "Slider" and option.Default then
					table.insert(tbl59, { v6.Name, fn12(option.Default) })
				elseif option and v6.Type == "TwoSlider" and option.DefaultMin and option.DefaultMax then
					local insert = table.insert
					local tbl60 = {}
					local name = v6.Name
					local defaultMax = option.DefaultMax
					local str = ("%* to %*"):format(fn12(option.DefaultMin), fn12(defaultMax))
					tbl60[1] = name
					tbl60[2] = str
					insert(tbl59, tbl60)
				elseif option and v6.Type == "Dropdown" and option.Default then
					table.insert(tbl59, { v6.Name, tostring(option.Default) })
				end
			end

			return tbl59
		end

		local tbl60 = { Legit = 0.4, Closet = 0.55, Blatant = 0.9 }

		for _, v6 in arg.Options, nil, nil do
			local option = v6.Option or {}
			local str = v6.Name:lower()
			local v7 = tbl2.RoleOf(arg, v6)
			local min = v6.Settings.Min or option.Min
			local max = v6.Settings.Max or option.Max

			if v6.Type == "Toggle" and tbl2.Strict[str] then
				local insert = table.insert
				local tbl61 = {}
				local name = v6.Name
				local str2 = arg2 == "Blatant" and "off" or "on"
				tbl61[1] = name
				tbl61[2] = str2
				insert(tbl59, tbl61)
			elseif v6.Type == "Toggle" and str == "face target" and arg2 ~= "Blatant" then
				table.insert(tbl59, { v6.Name, "off" })
			elseif v6.Type == "Dropdown" then
				local list = v6.Settings.List or option.List or {}

				for _, v8 in list, nil, nil do
					if v8:lower() == arg2:lower() then
						table.insert(tbl59, { v6.Name, v8 })
					end
				end
			elseif (v6.Type == "Slider" or v6.Type == "TwoSlider") and v7 and v7.Up and min and max and max > min then
				local n3 = min + (max - min) * (tbl2.Calm[v7.Id] and (arg2 == "Blatant" and 0 or 1 - tbl60[arg2]) or tbl60[arg2])
				local v8 = tbl2.Caps[("%*/%*"):format(arg.Name, v6.Name)]
				local n4 = v8 and math.min(n3, v8) or n3
				local decimal = option.Decimal or 10
				local n5 = math.round(n4 * decimal) / decimal
				local n6 = math.round(math.max(min, n5 - (max - min) * 0.05) * decimal) / decimal
				local insert = table.insert
				local tbl61 = {}
				local name = v6.Name
				local str2 = v6.Type == "TwoSlider" and ("%* to %*"):format(fn12(n6), fn12(n5)) or fn12(n5)
				tbl61[1] = name
				tbl61[2] = str2
				insert(tbl59, tbl61)
			end
		end

		return tbl59
	end

	tbl2.StyleName = function(arg)
		return arg == "Default" and "default" or arg:lower()
	end

	tbl2.ConfigureReply = function(arg, arg2, arg3)
		key = arg.Key
		local quality = not arg2 and arg3 and arg3.Quality and tbl2.PreferredStyle(arg) or nil
		local v6 = arg2 or quality

		if not v6 then
			local tbl59 = {}

			for _, v7 in { "legit", "closet", "blatant", "default" }, nil, nil do
				table.insert(tbl59, v7 == "default" and ("Reset %* to default"):format(arg.Name) or ("Make %* %*"):format(arg.Name, v7))
			end

			return {
				Text = ("How should I set up %*? Legit looks like a normal player, closet is the most subtle, and blatant goes all out. I can also reset it to default."):format(fn9(arg.Name)),
				Actions = tbl2.Chips(tbl59),
			}
		end

		local flag = v6 ~= "Default" and tbl2.RecipeFor(v6) or nil
		flag = flag and flag.Modules[arg.Name]
		local v7 = flag and tbl2.RecipePairs(flag) or tbl2.StylePairs(arg, v6)
		local v8, v9 = tbl2.ApplyValues(arg, v7)
		local v10 = tbl2.StyleName(v6)
		arg3 = arg3 and arg3.Enable and not arg.Module.Enabled
		local flag2 = false

		if arg3 then
			arg.Module:Toggle()

			table.insert(v9, function()
				if arg.Module.Enabled then
					arg.Module:Toggle()
				end
			end)

			flag2 = true
		end

		if #v8 == 0 and flag2 then
			local v11 = v9[#v9]
			tbl2.Remember(("turned on %*"):format(arg.Name), v11)

			return {
				Text = ("%* already matches the %* setup, so I just turned it on."):format(fn9(arg.Name), v10),
				Actions = tbl2.WithUndo(),
			}
		end

		if #v8 == 0 then
			local flag3 = tbl2.Acts(arg) or tbl2.Uses(arg, "Move") ~= nil

			return {
				Text = #v7 > 0 and ("%* already matches the %* setup, nothing to change."):format(fn9(arg.Name), v10) or not flag3 and v6 ~= "Default" and ("%* only shows things on your screen, so there's nothing legit or blatant about its settings. Ask me to reset it to default if you want a clean start."):format(fn9(arg.Name)) or ("I don't know a %* setup for %*'s settings, so I left them alone. Ask me what any of them do and I'll help you pick values."):format(v10, fn9(arg.Name)),
				Actions = fn48(arg),
			}
		end

		tbl2.Remember(("set up %* for %*"):format(arg.Name, v10), function()
			for i = #v9, 1, -1 do
				v9[i]()
			end
		end)

		local tbl59 = {}

		if v6 == "Default" then
			local insert = table.insert
			local str = ("Reset %* to its default settings:"):format(fn9(arg.Name))
			insert(tbl59, str)
		elseif flag then
			local insert = table.insert
			local str = ("Set %* up for %* play, using the values from CatVape's %* preset%*:"):format(fn9(arg.Name), v10, tbl2.Presets[v6], quality and (" (it's the only preset that runs %*)"):format(arg.Name) or "")
			insert(tbl59, str)
		else
			local insert = table.insert
			local str = ("I don't have a tested %* setup for %*, so these are starting points from what each setting does:"):format(v10, fn9(arg.Name))
			insert(tbl59, str)
		end

		for i = 1, math.min(8, #v8) do
			local insert = table.insert
			local str = ("- %*"):format(v8[i])
			insert(tbl59, str)
		end

		if #v8 > 8 then
			local insert = table.insert
			local str = ("...and %* more."):format(#v8 - 8)
			insert(tbl59, str)
		end

		local v11 = tbl2.WithUndo()

		if flag2 then
			local insert = table.insert
			local str = ("\nI turned %* on too."):format(fn9(arg.Name))
			insert(tbl59, str)
		elseif not arg.Module.Enabled then
			local insert = table.insert
			local str = ("\n%* is off right now, turn it on when you want to use it."):format(fn9(arg.Name))
			insert(tbl59, str)

			table.insert(v11, 1, {
				Text = ("Turn on %*"):format(arg.Name),
				Callback = function()
					fn41(fn49(arg, "On"))
				end,
			})
		end

		local v12 = fn38(arg, nil, 1)[1]

		if v12 and v6 ~= "Default" then
			local insert = table.insert
			local str = ("\nGood to know: %*"):format(v12)
			insert(tbl59, str)
		end

		return { Text = table.concat(tbl59, "\n"), Actions = v11 }
	end

	tbl2.BuildProfile = function(arg)
		local style = arg.Style

		if not style or style == "Default" then
			return {
				Text = "What kind of profile should I build? Legit looks like a normal player, closet keeps only a few subtle modules on, and blatant goes all out.",
				Actions = tbl2.Chips({ "Make me a legit profile", "Make me a closet profile", "Make me a blatant profile" }),
			}
		end

		local v6 = tbl2.RecipeFor(style)

		if v6 and v6.On == "" and v6.Legit == "" then
			v6 = nil
		end

		local tbl59 = {}
		local tbl60 = {}
		local tbl61 = {}

		if v6 then
			for match in ("%*, %*"):format(v6.On, v6.Legit):gmatch("[^,]+") do
				tbl61[fn14(match)] = true
			end
		else
			local universal = tbl2.Essentials[fn33() or ""] or tbl2.Essentials.Universal

			for _, v7 in universal, nil, nil do
				tbl61[fn14(v7)] = true
			end
		end

		for _, v7 in tbl.Entries, nil, nil do
			if tbl61[v7.Key] then
				tbl59[v7] = true
				table.insert(tbl60, v7.Name)
			end
		end

		if #tbl60 == 0 then
			return {
				Text = "I don't have a setup I trust for this game yet, so I'd rather not build a profile from guesses. I can set up single modules for you instead.",
			}
		end
		local profiles = vape.Categories.Profiles
		local v7 = tbl2.StyleName(style)
		local name = arg.Name or v7
		local str = name
		local n3 = 2

		while profiles:GetValue(str) do
			str = ("%*%*"):format(name, n3)
			n3 += 1
		end

		local profile = vape.Profile
		profiles:ChangeValue(str)

		task.delay(0.2, function()
			if vape.ThreadFix then
				setthreadidentity(8)
			end

			vape:Save(str)
			vape:Load(true)
			profiles:ChangeValue()
			local n4 = 0

			for _, v8 in tbl.Entries, nil, nil do
				if v8.Module.Enabled ~= tbl59[v8] == true then
					v8.Module:Toggle()
				end

				local flag = v6 and v6.Modules[v8.Name]
				flag = flag and tbl2.RecipePairs(flag)

				if not flag then
					flag = not v6 and tbl59[v8] and tbl2.StylePairs(v8, style)
				end

				flag = flag or nil

				if flag and #tbl2.ApplyValues(v8, flag) > 0 then
					n4 += 1
				end
			end

			vape:Save()

			fn41({
				Text = ("%* is ready and you're on it. %*: %* module%* on (%*), and %* module%* set up for %* play. Speed, Fly and LongJump stay off, put them on a bind."):format(fn9(str), v6 and ("It's built from CatVape's %* preset"):format(tbl2.Presets[style]) or ("I don't have a tested preset for this game, so it has the core modules with %* starting values"):format(v7), #tbl60, #tbl60 == 1 and "" or "s", fn9(fn11(tbl60, 8)), n4, n4 == 1 and "" or "s", v7),
				Actions = {
					{
						Text = ("Back to %*"):format(profile),
						Callback = function()
							fn41({ Text = ("Switching back to %*..."):format(fn9(profile)) })
							fn65(profile)
						end,
					},
				},
			})
		end)

		return { Text = ("Building the %* profile %* and switching to it..."):format(v7, fn9(str)) }
	end

	tbl2.ResetContext()
	tbl2.Expand = function(...) end
	tbl2.Prepare = function(...) end
	tbl2.Features = function(a)local F,w={},"^";for P,P in a,nil,nil do table.insert(F,P);table.insert(F,(("%*+%*"):format(w,P)));w=P;end;table.insert(F,(("%*+$"):format(w)));return F;end
	tbl2.Train = function(...) end

	tbl2.Phrase = function(arg)
		local tbl59 = {}

		for _, v6 in arg, nil, nil do
			if not tbl2.Drop[v6.Word] then
				table.insert(tbl59, v6.Word)
			end
		end

		return table.concat(tbl59, " ")
	end

	tbl2.Absorb = function(...) end

	tbl2.Learn = function(arg)
		if not tbl2.Model or not arg.Reading then
			return
		end
		local v6 = tbl2.Prepare(tbl2.Delex(arg.Tokens, arg.Reading))
		local v7 = tbl2.Phrase(arg.Tokens)
		local v8 = tbl2.Canonical(arg)
		tbl2.Memory[v7] = v8

		for i = #tbl2.Learned, 1, -1 do
			if tbl2.Learned[i].Phrase == v7 then
				table.remove(tbl2.Learned, i)
			end
		end

		table.insert(tbl2.Learned, { Choice = v8, Intent = arg.Intent, Phrase = v7, Words = v6 })

		while #tbl2.Learned > 300 do
			table.remove(tbl2.Learned, 1)
		end

		tbl2.Absorb(arg.Intent, v6)
		writeJSON(tbl2.File, tbl2.Learned)
	end

	tbl2.Classify = function(...) end
	tbl2.Vocabulary = function(...) end

	tbl2.LoadDictionary = function()
		local dictionary = tbl2.Dictionary
		if dictionary.Buckets or dictionary.Loading then
			return
		end
		dictionary.Loading = true

		task.spawn(function()
			local v6 = fn2(dictionary.File) and readfile(dictionary.File) or nil

			if not v6 or #v6 < 1000000 then
				local ok, result = pcall(function()
					return game:HttpGet(dictionary.Url, true)
				end)

				if ok and type(result) == "string" and #result > 1000000 then
					pcall(writefile, dictionary.File, result)
					v6 = result
				end
			end

			if v6 then
				local format = ("\n%*\n").format
				local str = v6:gsub("\r", "")
				local v7 = format("\n%*\n", str)
				local buckets = {}
				local pos = v7:find("\n%a")

				while pos do
					local str2 = v7:sub(pos + 1, pos + 1)
					local pos2 = nil

					for i = str2:byte() + 1, 122 do
						pos2 = v7:find(("\n%*"):format(string.char(i)), pos + 1, true)
						if not pos2 then
							continue
						end
						break
					end

					buckets[str2] = v7:sub(pos, pos2 or #v7)
					pos = pos2
				end

				dictionary.Buckets = buckets
			end

			dictionary.Loading = false
		end)
	end

	tbl2.English = function(...) end
	tbl2.Knows = function(...) end
	tbl2.MatchPlayer = function(F)local w=nil;for P,P in  v5 :GetPlayers()do local a,j=P.Name:lower(),P.DisplayName:lower();if a==F or j==F then return P.Name,true;else w=if#F>=3 and not w and(a:sub(1,#F)==F or j:sub(1,#F)==F)then P.Name else w;end;end;return w,false;end
	tbl2.Squeeze = function(...) end
	tbl2.Unslang = function(...) end

	tbl2.Unpreface = function(arg)
		local str = arg:lower()

		for _, v6 in tbl2.Prefaces, nil, nil do
			local match = str.match
			local str2 = ("^%%s*%*%%f[%%A]"):format(v6)

			if match(str, str2) then
				local match2 = arg:match("^[^,]*,%s*(.+)$")
				if match2 and #match2:split(" ") >= 3 then
					return match2
				end
			end
		end

		return arg
	end

	tbl2.Ungreet = function(arg)
		local flag = true
		local v6

		while flag do
			flag = false
			local exitTo = nil

			for _, v7 in tbl2.Openers, nil, nil do
				local str = arg:lower()
				local match = str.match
				local str2 = ("^%%s*%*[%%s,!%%.]+()"):format(v7)
				v6 = match(str, str2)
				if v6 then
					exitTo = 1
					break
				end
			end

			if exitTo == 1 then
				local str = arg:sub(v6)
				local match, v7 = str:lower():match("^(%a+)[%s,!%.]+()")

				while true do
					match = match and tbl2.Addressed[match]

					if match then
						str = str:sub(v7)
						match, v7 = str:lower():match("^(%a+)[%s,!%.]+()")
						continue
					end

					break
				end

				local n3 = #str:split(" ")

				if (t4:find(" ") and 3 or 2) <= n3 then
					flag = true
					arg = str
				end
			end
		end

		return arg
	end

	tbl2.Tokenize = function(...) end
	tbl2.Distance = function(a,F)local w={};for P=0,#F,1 do w[P]=P;end;local P,j={},{};for O=1,#a,1 do P[0]=O;local i=a:byte(O);for b=1,#F,1 do P[b]=math.min(w[b]+1,P[b-1]+1,w[b-1]+(i==F:byte(b)and 0 or 1));if O>1 and b>1 and i==F:byte(b-1)and a:byte(O-1)==F:byte(b)then P[b]=math.min(P[b],j[b-2]+1);end;end;P,w,j=j,P,w;end;return w[#F];end
	tbl2.Correct = function(...) end

	tbl2.Extract = function(arg)
		local tbl59 = {}
		local n3 = #arg
		local tbl60 = {}
		local tbl61 = {}
		local flag = false

		for _, v6 in arg, nil, nil do
			flag = flag or v6.Word == "bind" or v6.Word == "keybind" or v6.Word == "rebind" or v6.Word == "hotkey"
		end

		local function fn68(arg2, arg3, arg4, arg5, arg6)
			for i = arg2, arg3 do
				if arg[i].Corrected then
					arg6 -= 0.2
				end
			end

			for _, v6 in tbl59, nil, nil do
				if v6.I == arg2 and v6.J == arg3 then
					table.insert(v6.Options, { Type = arg4, Value = arg5, Quality = arg6 })
					return
				end
			end

			table.insert(tbl59, { I = arg2, J = arg3, Options = { { Type = arg4, Value = arg5, Quality = arg6 } } })
		end

		local function fn69(arg2, arg3, arg4)
			local tbl62 = {}

			for i = arg2, arg3 do
				if arg[i].Kind ~= "word" then
					return nil
				end
				table.insert(tbl62, arg[i].Word)
			end

			return table.concat(tbl62, arg4)
		end

		for i = 1, n3 do
			for i2 = math.min(n3, i + 3), i, -1 do
				local v6 = fn69(i, i2, " ")

				if v6 then
					local v7 = tbl.Keys[fn69(i, i2, "")]

					if v7 then
						fn68(i, i2, "module", v7, 0)
						table.insert(tbl60, v7)
						tbl61[i2] = v7
					end

					local tbl62 = {}

					for match in v6:gmatch("%S+") do
						table.insert(tbl62, fn6(match))
					end

					local v8 = tbl4.ByPhrase[v6]
					local flag2 = not v8 and i2 > i and tbl4.ByStem[table.concat(tbl62, " ")]

					if v8 or flag2 then
						local str = (v8 or flag2).Category and "category"

						if not str then
							str = (v8 or flag2).Component and "setting"
						end

						fn68(i, i2, str or "place", v8 or flag2, v8 and 0 or -0.05)
					end

					local list = vape.Categories.Profiles and vape.Categories.Profiles.List or {}

					for _, v9 in list, nil, nil do
						if v9.Name:lower() == v6 then
							fn68(i, i2, "profile", v9.Name, -0.1)
						end
					end
				end
			end

			local v6 = arg[i]

			if v6.Kind == "number" then
				fn68(i, i, "number", v6.Value, 0)
			elseif v6.Kind == "text" then
				fn68(i, i, "text", v6.Raw, 0)
			else
				local word = v6.Word

				if tbl2.Quantifiers[word] then
					fn68(i, i, "all", word, 0)
				end

				if tbl2.Nouns[word] then
					fn68(i, i, "tabs", word, 0)
				end

				if tbl12[word] then
					fn68(i, i, "color", word, 0)
				end

				if tbl2.Pronouns[word] and (key or tbl2.LastTargets) then
					fn68(i, i, "it", word, 0)
				end

				if tbl2.StyleEntities[word] then
					fn68(i, i, "style", tbl2.StyleOf({ v6 }), -0.4)
				end
			end

			local flag2 = #v6.Word == 1 and v6.Word ~= "a" and v6.Word ~= "i" and v6.Word ~= "u"

			if v6.Kind ~= "text" and (i > 1 and tbl2.KeyMarkers[arg[i - 1].Word] or tbl2.KeyNames[v6.Word] or flag and flag2 or flag2 and i < n3 and tbl2.KeyVerbs[arg[i + 1].Word] ~= nil) then
				local flag3 = i < n3 and arg[i + 1].Kind == "word"

				if flag3 then
					local v7 = fn61
					local str = ("%*%*"):format(v6.Word, arg[i + 1].Word)
					flag3 = v7(str)
				end

				if flag3 then
					fn68(i, i + 1, "key", flag3, 0)
				end

				local v7 = fn61(v6.Word)

				if v7 then
					fn68(i, i, "key", v7, 0)
				end
			end

			if v6.Kind == "word" and #v6.Word >= 3 then
				local v7, n4 = tbl2.MatchPlayer(v6.Word)
				local flag3 = i > 1 and tbl2.ListVerbs[arg[i - 1].Word] ~= nil
				local flag4

				if v7 then
					if n4 then
						flag4 = n4
					else
						local word = v6.Word
						flag4 = not tbl2.Vocabulary().Set[word]
					end
				else
					flag4 = v7
				end

				if flag4 then
					n4 = n4 and 0 or -0.3
					local word = v6.Word

					if tbl2.Vocabulary().Set[word] and not flag3 then
						n4 -= 0.5
					end

					fn68(i, i, "player", { Name = v7, Found = true }, n4)
				else
					local match = i > 1 and tbl2.ListVerbs[arg[i - 1].Word] and v6.Raw:match("^[%w_]+$")

					if match then
						local word = v6.Word
						match = not tbl2.Vocabulary().Set[word]
					end

					if match and not tbl.Keys[v6.Word] then
						fn68(i, i, "player", { Name = v6.Raw, Found = false }, -0.4)
					end
				end
			end
		end

		local v6 = table.clone(tbl60)
		local v7 = key and tbl.Keys[key]

		if v7 and not table.find(v6, v7) then
			table.insert(v6, v7)
		end

		for _, v8 in v6, nil, nil do
			local flag2 = table.find(tbl60, v8) ~= nil

			for _, v9 in v8.Options, nil, nil do
				local parts = fn5(v9.Name):split(" ")

				for i = 1, n3 - #parts + 1 do
					local flag3 = fn69(i, i + #parts - 1, " ") == table.concat(parts, " ")

					if flag3 then
						local key2 = v8.Key
						flag3 = fn69(i, i + #parts - 1, "") ~= key2
					end

					if flag3 then
						local word = i > 1 and arg[i - 1].Word or ""
						local word2 = arg[i + #parts] and arg[i + #parts].Word or ""
						local n4 = flag2 and 0 or -0.3

						if tbl61[i - 1] == v8 then
							n4 += 0.3
						elseif word == "and" or word == "or" then
							n4 -= 0.8
						elseif (word2 == "and" or word2 == "or") and tbl61[i + #parts + 1] == v8 then
							n4 -= 1.2
						end

						fn68(i, i + #parts - 1, "option", { Entry = v8, Option = v9 }, n4)
					end
				end
			end
		end

		for i = 1, n3 - 1 do
			for i2 = math.min(n3, i + 3), i + 1, -1 do
				local tbl62 = tbl.Options[fn69(i, i2, " ") or ""] or {}
				local flag2 = false

				for _, v8 in tbl62, nil, nil do
					flag2 = flag2 or table.find(tbl60, v8.Entry) ~= nil
				end

				flag2 = flag2 and 0 or math.min(4, #tbl62)

				for i3 = 1, flag2 do
					local v8 = tbl62[i3]
					local n4 = -0.25 - (#tbl62 > 1 and 0.1 or 0)

					if v8.Entry == v7 then
						n4 += 0.15
					end

					if v8.Entry.Module.Enabled then
						n4 += 0.1
					elseif v8.Entry.Category == "Kits" then
						n4 -= 0.8
					end

					fn68(i, i2, "option", v8, n4)
				end
			end
		end

		for i = #tbl59, 1, -1 do
			local v8 = tbl59[i]

			for i2 = #v8.Options, 1, -1 do
				local v9 = v8.Options[i2]

				if v9.Type == "place" and v9.Value.Id == "settings" then
					local word = v8.I > 1 and arg[v8.I - 1].Word or ""

					if word == "its" or word == "their" or word == "it" or #tbl60 > 0 then
						table.remove(v8.Options, i2)
					end
				end
			end

			if #v8.Options == 0 then
				table.remove(tbl59, i)
			end
		end

		return tbl59
	end

	tbl2.Readings = function(arg)
		table.sort(arg, function(arg2, arg3)
			if arg2.J - arg2.I ~= arg3.J - arg3.I then
				return arg2.J - arg2.I > arg3.J - arg3.I
			end
			return arg2.I < arg3.I
		end)

		local tbl59 = {}
		local tbl60 = {}

		for _, v6 in arg, nil, nil do
			local flag = true

			for i = v6.I, v6.J do
				flag = flag and not tbl59[i]
			end

			if flag then
				for i = v6.I, v6.J do
					tbl59[i] = true
				end

				table.insert(tbl60, v6)
			end
		end

		table.sort(tbl60, function(arg2, arg3)
			return arg2.I < arg3.I
		end)

		local tbl61 = { { Entities = {}, Quality = 0 } }

		for _, v6 in tbl60, nil, nil do
			table.sort(v6.Options, function(arg2, arg3)
				return arg2.Quality > arg3.Quality
			end)

			local tbl62 = {}

			for _, v7 in tbl61, nil, nil do
				for _, v8 in v6.Options, nil, nil do
					if #tbl62 < 16 then
						local v9 = table.clone(v7.Entities)

						table.insert(v9, {
							Type = v8.Type,
							Value = v8.Value,
							I = v6.I,
							J = v6.J,
							Quality = v8.Quality,
						})

						table.insert(tbl62, { Entities = v9, Quality = v7.Quality + v8.Quality })
					end
				end
			end

			tbl61 = tbl62
		end

		return tbl61
	end

	tbl2.Delex = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in arg2.Entities, nil, nil do
			for i = v6.I, v6.J do
				tbl59[i] = v6
			end
		end

		local tbl60 = {}
		local n3 = 1

		while n3 <= #arg do
			local v6 = tbl59[n3]

			if v6 then
				local insert = table.insert
				local str = ("<%*>"):format(v6.Type)
				insert(tbl60, str)
				n3 = v6.J + 1
			else
				local v7 = arg[n3]
				table.insert(tbl60, v7.Kind == "number" and "<number>" or v7.Kind == "text" and "<text>" or v7.Word)
				n3 += 1
			end
		end

		return tbl60
	end

	tbl2.HasWord = function(a,F)for w,w in a,nil,nil do if table.find(F,w.Word)then return true;end;end;return false;end

	tbl2.Refer = function()
		if tbl2.LastTargets and tbl2.LastTargets[1] then
			return tbl2.LastTargets[1]
		end
		local v6 = key and tbl.Keys[key]
		return v6 and { Type = "module", Value = v6, Implicit = true } or nil
	end

	tbl2.OptionOf = function(arg)
		if arg.Type == "setting" then
			local value = arg.Value
			return { Name = value.Name, Option = value.Component, Settings = {}, Type = value.Component.Type }, nil
		end
		return arg.Value.Option, arg.Value.Entry
	end

	tbl2.Fillers.Targets = function(arg, arg2)
		local tbl59 = {}
		local tbl60 = {}
		local tbl61 = {}
		local flag = false

		for _, v6 in arg.Entities, nil, nil do
			local type_ = v6.Type

			if type_ == "module" or type_ == "place" or type_ == "category" or type_ == "setting" or type_ == "option" then
				if not tbl61[v6.Value] then
					table.insert(tbl59, v6)
				end

				tbl61[v6.Value] = true
				tbl60[v6] = true
			elseif type_ == "it" then
				local v7 = tbl2.Refer()

				if v7 then
					table.insert(tbl59, v7)
					tbl60[v6] = true
				end
			elseif type_ == "all" or type_ == "tabs" then
				tbl60[v6] = true
				flag = true
			end
		end

		if #tbl59 == 0 and not flag then
			return nil
		end

		return {
			Targets = tbl59,
			Collection = #tbl59 == 0,
			Expand = tbl2.HasWord(arg2, tbl11),
			Bind = tbl2.HasWord(arg2, tbl10),
		}, tbl60
	end

	tbl2.Fillers.Module = function(arg)
		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" then
				return { Entry = v6.Value }, { [v6] = true }
			end

			if v6.Type == "option" then
				return { Entry = v6.Value.Entry, Option = v6.Value.Option }, { [v6] = true }
			end
		end

		for _, v6 in arg.Entities, nil, nil do
			local flag = v6.Type == "it" and tbl2.Refer()
			if flag and flag.Type == "module" then
				return { Entry = flag.Value, Implicit = true }, { [v6] = true }
			end
		end

		local v6 = key and tbl.Keys[key]
		if v6 and #arg.Entities == 0 then
			return { Entry = v6, Implicit = true }, {}
		end
		return nil
	end

	tbl2.Fillers.Option = function(arg, arg2)
		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "option" then
				local tbl59 = { [v6] = true }

				for _, v7 in arg.Entities, nil, nil do
					if v7.Type == "module" and v7.Value == v6.Value.Entry then
						tbl59[v7] = true
					end
				end

				return { Entry = v6.Value.Entry, Option = v6.Value.Option }, tbl59
			end
		end

		local v6, v7 = tbl2.Fillers.Module(arg)
		if not v6 then
			return nil
		end

		if v6.Option then
			return v6, v7
		end
		local tbl59 = {}

		for _, v8 in arg2, nil, nil do
			table.insert(tbl59, v8.Word)
		end

		local v8 = fn21(v6.Entry, fn19(table.concat(tbl59, " ")), 1)
		if v8[1] and v8[1].Score >= 0.5 then
			v6.Option = v8[1].Option
			return v6, v7
		end
		return nil
	end

	tbl2.Fillers.Switch = function(arg)
		local tbl59 = {}
		local tbl60 = {}
		local flag = false
		local category = nil

		for _, v6 in arg.Entities, nil, nil do
			local type_ = v6.Type

			if type_ == "all" then
				tbl60[v6] = true
				flag = true
			elseif type_ == "category" then
				category = v6.Value.Category
				tbl60[v6] = true
			elseif type_ == "place" and v6.Value.Id == "legit" then
				tbl60[v6] = true
				category = "Legit"
			elseif type_ == "module" or type_ == "option" or type_ == "setting" then
				table.insert(tbl59, v6)
				tbl60[v6] = true
			elseif type_ == "it" then
				local v7 = tbl2.Refer()

				if v7 then
					table.insert(tbl59, v7)
					tbl60[v6] = true
				end
			elseif type_ == "tabs" then
				tbl60[v6] = true
			end
		end

		if category and #tbl59 == 0 then
			return { Bulk = category }, tbl60
		end

		if flag and #tbl59 == 0 then
			return { BulkAll = true }, tbl60
		end

		if #tbl59 == 0 then
			return nil
		end
		local tbl61 = {}

		for _, v6 in tbl59, nil, nil do
			if v6.Type == "option" then
				tbl61[v6.Value.Entry] = true
			end
		end

		local tbl62 = {}

		for _, v6 in tbl59, nil, nil do
			if not (v6.Type == "module" and tbl61[v6.Value]) then
				table.insert(tbl62, v6)
			end
		end

		return { Targets = tbl62 }, tbl60
	end

	tbl2.Fillers.Set = function(arg, arg2)
		local tbl59 = {}
		local tbl60 = {}

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" then
				tbl60[v6.Value] = v6
			end
		end

		local tbl61 = nil

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "option" and (not tbl61 or tbl60[v6.Value.Entry]) then
				tbl61 = v6
			end
		end

		for _, v6 in arg.Entities, nil, nil do
			if not tbl61 and v6.Type == "setting" and v6.Value.Component then
				tbl61 = v6
			end
		end

		if not tbl61 then
			for k, v6 in tbl60, nil, nil do
				for _, v7 in k.Options, nil, nil do
					if not tbl61 and fn5(v7.Name) == fn5(k.Name) then
						tbl61 = {
							Type = "option",
							Value = { Entry = k, Option = v7 },
							I = v6.I,
							J = v6.J,
						}
					end
				end
			end
		end

		local tbl62

		if not tbl61 then
			for k, v6 in tbl60, nil, nil do
				for i = v6.J + 1, math.min(#arg2, v6.J + 2) do
					local word = arg2[i].Word
					local tbl63 = arg2[i].Kind == "word" and word ~= "to" and word ~= "at" and fn21(k, fn19(word), 1) or {}

					if not tbl61 and tbl63[1] ~= nil and (not tbl63[2] or tbl63[2].Score < tbl63[1].Score) and tbl63[1].Score >= 0.5 then
						tbl61 = {
							Type = "option",
							Value = { Entry = k, Option = tbl63[1].Option },
							I = i,
							J = i,
						}
					end
				end
			end

			tbl62 = tbl61
		else
			tbl62 = tbl61
		end

		if not tbl62 and not next(tbl60) and tbl2.LastOption then
			local v6 = nil

			for _, v7 in arg.Entities, nil, nil do
				if v7.Type == "it" then
					tbl59[v7] = true
					v6 = v7
				end
			end

			local word = arg2[1].Word

			if v6 or word == "set" or word == "change" or word == "make" or word == "put" or word == "increase" or word == "decrease" or word == "raise" or word == "lower" then
				tbl62 = {
					Type = tbl2.LastOption.Type,
					Value = tbl2.LastOption.Value,
					I = v6 and v6.I or 1,
					J = v6 and v6.J or 1,
				}
			end
		end

		if not tbl62 then
			return nil
		end
		tbl59[tbl62] = true

		if tbl62.Type == "option" and tbl60[tbl62.Value.Entry] then
			tbl59[tbl60[tbl62.Value.Entry]] = true
		end

		local n3 = tbl62.J + 1

		for i = tbl62.J + 1, #arg2 do
			if arg2[i].Word == "to" or arg2[i].Word == "at" then
				n3 = i + 1
				break
			end
		end

		if #arg2 < n3 then
			return nil
		end
		local tbl63 = {}

		for i = n3, #arg2 do
			table.insert(tbl63, arg2[i].Raw)
		end

		for _, v6 in arg.Entities, nil, nil do
			if n3 <= v6.I then
				tbl59[v6] = true
			end
		end

		return { Target = tbl62, Value = table.concat(tbl63, " ") }, tbl59
	end

	tbl2.Fillers.Bind = function(arg)
		local tbl59 = {}
		local value = nil
		local value2 = nil

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" and not value then
				value = v6.Value
				tbl59[v6] = true
			elseif v6.Type == "place" and (v6.Value.Id == "gui" or v6.Value.Id == "rebind gui") and not value then
				tbl59[v6] = true
				value = "GUI"
			elseif v6.Type == "key" and not value2 then
				value2 = v6.Value
				tbl59[v6] = true
			elseif v6.Type == "it" and not value then
				local v7 = tbl2.Refer()

				if v7 and v7.Type == "module" then
					value = v7.Value
					tbl59[v6] = true
				end
			end
		end

		if not value or not value2 then
			return nil
		end
		return { Target = value, Key = value2 }, tbl59
	end

	tbl2.Fillers.ProfileName = function(arg, arg2, arg3)
		local str = fn60(arg3, { "called", "named", "profile" })

		if not str then
			local match, v6 = arg3:lower():match("^%a+%s+()%S.-()%s+profile")
			str = match and arg3:sub(match, v6 - 1)
		end

		if not str then
			return nil
		end
		local str2 = str:gsub("^[Tt][Oo]%s+", ""):gsub("^[Tt]he%s+", ""):gsub("^[Mm]y%s+", ""):gsub("^[Aa]%s+", ""):gsub("^[Nn]ew%s+", ""):gsub("%s+[Pp]rofile$", ""):gsub("[^%w%s_%-]", ""):match("^%s*(.-)%s*$"):sub(1, 30)
		return str2 ~= "" and { Name = str2 } or nil, {}
	end

	tbl2.Fillers.Profile = function(arg, arg2, arg3)
		local tbl59 = {
			"switch",
			"load",
			"use",
			"swap",
			"change",
			"select",
			"apply",
			"delete",
			"remove",
			"erase",
			"go",
			"move",
			"pick",
		}

		if not tbl2.HasWord(arg2, { "profile", "profiles", "to" }) and not table.find(tbl59, arg2[1].Word) then
			return nil
		end

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "profile" then
				return { Name = v6.Value }, { [v6] = true }
			end
		end

		local v6 = tbl2.Fillers.ProfileName(arg, nil, arg3)
		v6 = v6 and fn63(v6.Name)
		return v6 and { Name = v6 } or nil, {}
	end

	tbl2.Fillers.List = function(arg, arg2)
		local tbl59 = {}
		local value = nil
		local str = nil

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "player" and not value then
				value = v6.Value
				tbl59[v6] = true
			else
				local flag = v6.Type == "place"
				local flag2

				if flag then
					flag2 = v6.Value.Id == "friends" or v6.Value.Id == "targets"
				else
					flag2 = flag
				end

				if flag2 then
					str = v6.Value.Id == "friends" and "Friends" or "Targets"
					tbl59[v6] = true
				end
			end
		end

		local tbl60 = { Friends = {}, Targets = {} }

		for match in ("friend unfriend whitelist unwhitelist protect"):gmatch("%S+") do
			tbl60.Friends[fn6(match)] = true
		end

		for match in ("target untarget focus prioritize"):gmatch("%S+") do
			tbl60.Targets[fn6(match)] = true
		end

		for _, v6 in arg2, nil, nil do
			local v7 = fn6(v6.Word)

			if not str and tbl60.Friends[v7] then
				str = "Friends"
			elseif not str and tbl60.Targets[v7] then
				str = "Targets"
			end
		end

		if not str and tbl2.HasWord(arg2, { "attack", "hit", "kill" }) and tbl2.HasWord(arg2, { "dont", "never", "not" }) then
			str = "Friends"
		end

		if not value or not str then
			return nil
		end
		return { Player = value, List = str }, tbl59
	end

	tbl2.Fillers.Compare = function(arg)
		local tbl59 = {}
		local tbl60 = {}

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" and not table.find(tbl59, v6.Value) then
				table.insert(tbl59, v6.Value)
				tbl60[v6] = true
			end
		end

		return #tbl59 >= 2 and { Modules = tbl59 } or nil, tbl60
	end

	tbl2.Fillers.Category = function(arg)
		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "category" then
				return { Name = v6.Value.Category }, { [v6] = true }
			end

			if v6.Type == "place" and v6.Value.Id == "legit" then
				return { Name = "Legit" }, { [v6] = true }
			end
		end

		return nil
	end

	tbl2.Fillers.Place = function(arg)
		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "place" or v6.Type == "setting" or v6.Type == "category" then
				return { Place = v6.Value }, { [v6] = true }
			end
		end

		return nil
	end

	tbl2.Fillers.Everything = function(arg)
		local tbl59 = {}

		for _, v6 in arg.Entities, nil, nil do
			tbl59[v6] = true
		end

		return {}, tbl59
	end

	tbl2.Fillers.Preset = function(arg, arg2, arg3)
		if not tbl2.HasWord(arg2, tbl2.PresetWords) then
			return nil
		end
		local v6 = fn60(arg3, { "called", "named" })
		local str

		if v6 then
			str = (v6:match("^(.-)%s+with%s") or v6):gsub("[^%w%s_%-]", ""):match("^%s*(.-)%s*$"):sub(1, 30)
		else
			str = v6
		end

		local v7, v8 = tbl2.Fillers.Everything(arg)
		return { Name = str ~= "" and str or nil, New = tbl2.HasWord(arg2, tbl2.PresetNouns) }, v8
	end

	tbl2.Fillers.News = function(arg)
		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" then
				return { Entry = v6.Value }, { [v6] = true }
			end
		end

		return {}, {}
	end

	tbl2.Fillers.Pair = function(arg)
		local tbl59 = {}
		local tbl60 = {}

		for _, v6 in arg.Entities, nil, nil do
			local flag = v6.Type == "module" and v6.Value or v6.Type == "it" and tbl2.Topic() or nil

			if flag and not table.find(tbl59, flag) then
				table.insert(tbl59, flag)
				tbl60[v6] = true
			end
		end

		return #tbl59 >= 2 and { Modules = tbl59 } or nil, tbl60
	end

	tbl2.Fillers.Mentioned = function(arg)
		local tbl59 = {}
		local tbl60 = {}

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" and not table.find(tbl59, v6.Value) then
				table.insert(tbl59, v6.Value)
				tbl60[v6] = true
			end
		end

		return #tbl59 >= 1 and { Modules = tbl59 } or nil, tbl60
	end

	tbl2.Fillers.Topic = function(arg, arg2)
		if #arg2 > 9 then
			return nil
		end
		local tbl59 = {}
		local tbl60 = {}

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" and not tbl59.Entry then
				tbl59.Entry = v6.Value
				tbl60[v6] = true
			elseif v6.Type == "option" and not tbl59.Entry then
				local option = v6.Value.Option
				tbl59.Entry = v6.Value.Entry
				tbl59.Option = option
				tbl60[v6] = true
			elseif v6.Type == "it" or v6.Type == "number" then
				tbl60[v6] = true
			end
		end

		return (tbl59.Entry or tbl2.Topic()) and tbl59 or nil, tbl60
	end

	tbl2.Fillers.Goal = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" and not tbl2.English(v6.Value.Key) or v6.Type == "option" then
				return nil
			end
			tbl59[v6] = true
		end

		if tbl2.HasWord(arg2, tbl2.ModuleWords) then
			return { Explicit = true }, tbl59
		end
		local v6 = tbl2.Goal(arg2)
		return { Soft = #v6 == 0, Pick = v6[1] }, tbl59
	end

	tbl2.Fillers.Setting = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "number" then
				tbl59[v6] = true
			end
		end

		local tbl60, tbl61 = tbl2.Fillers.Option(arg, arg2)

		if not tbl60 then
			local value = tbl2.LastOption and tbl2.LastOption.Value
			local v6 = nil

			for _, v7 in arg.Entities, nil, nil do
				local flag

				if v6 then
					flag = v6
				else
					flag = v7.Type == "module" and v7
				end

				v6 = flag or nil
			end

			if v6 then
				tbl60 = { Entry = v6.Value }
				tbl61 = { [v6] = true }
			elseif value and value.Entry then
				tbl60 = { Entry = value.Entry, Option = value.Option, Implicit = true }
				tbl61 = {}
			else
				if not (key and tbl.Keys[key]) then
					return nil
				end
				tbl60 = { Entry = tbl.Keys[key], Implicit = true }
				tbl61 = {}
			end
		end

		local tbl62 = tbl61 or {}

		for k in tbl62, nil, nil do
			tbl59[k] = true
		end

		return tbl60, tbl59
	end

	tbl2.Fillers.Effect = function(arg, arg2)
		local v6, v7 = tbl2.Fillers.Setting(arg, arg2)
		return v6 and v6.Option and v6 or nil, v7
	end

	tbl2.Fillers.Configure = function(arg, arg2)
		local v6, v7 = tbl2.Fillers.Module(arg)
		if not v6 then
			return nil
		end
		local tbl59 = {}

		for _, v8 in arg.Entities, nil, nil do
			if v8.Type == "module" or v8.Type == "option" then
				for i = v8.I, v8.J do
					tbl59[i] = true
				end
			elseif (v8.Type == "place" or v8.Type == "profile") and v8.I == v8.J and tbl2.StyleOf({ arg2[v8.I] }) then
				v7[v8] = true
			end
		end

		local entities = arg.Entities
		local value = nil

		for _, v8 in entities, nil, nil do
			if v8.Type == "style" then
				value = value or v8.Value
				v7[v8] = true
			end
		end

		return { Entry = v6.Entry, Style = value or tbl2.StyleOf(arg2, tbl59), Implicit = v6.Implicit }, v7
	end

	tbl2.Fillers.BuildProfile = function(arg, arg2, arg3)
		local tbl59 = {}

		for _, v6 in arg.Entities, nil, nil do
			if v6.Type == "module" or v6.Type == "option" then
				return nil
			end
			tbl59[v6] = true
		end

		if not tbl2.HasWord(arg2, tbl2.PresetNouns) then
			return nil
		end
		local str = fn60(arg3, { "called", "named" })
		str = str and str:gsub("[^%w%s_%-]", ""):match("^%s*(.-)%s*$"):sub(1, 30)
		local tbl60 = {}

		for _, v6 in arg2, nil, nil do
			if not (v6.Word == "called" or v6.Word == "named") then
				table.insert(tbl60, v6)
				continue
			end
			break
		end

		local v6 = tbl2.StyleOf(tbl60)
		local flag = v6 ~= nil and v6 ~= "Default"

		for _, v7 in tbl60, nil, nil do
			flag = flag or tbl2.Quality[v7.Word] == true
		end

		if not flag then
			return nil
		end
		return { Style = v6 ~= "Default" and v6 or nil, Name = str ~= "" and str or nil }, tbl59
	end

	tbl2.FillerFor = {
		Bind = tbl2.Fillers.Bind,
		BindInfo = tbl2.Fillers.Module,
		BuildProfile = tbl2.Fillers.BuildProfile,
		Configure = tbl2.Fillers.Configure,
		PlaceInfo = tbl2.Fillers.Place,
		Status = tbl2.Fillers.Module,
		Close = tbl2.Fillers.Targets,
		Compare = tbl2.Fillers.Compare,
		Describe = tbl2.Fillers.Module,
		Effect = tbl2.Fillers.Effect,
		Favorite = tbl2.Fillers.Module,
		Hide = tbl2.Fillers.Module,
		HowTo = tbl2.Fillers.Everything,
		Interaction = tbl2.Fillers.Pair,
		ListWindows = tbl2.Fillers.Everything,
		More = tbl2.Fillers.Topic,
		Recommend = tbl2.Fillers.Goal,
		Simpler = tbl2.Fillers.Topic,
		Tradeoff = tbl2.Fillers.Setting,
		Using = tbl2.Fillers.Mentioned,
		ListAdd = tbl2.Fillers.List,
		ListCategory = tbl2.Fillers.Category,
		ListRemove = tbl2.Fillers.List,
		Locate = tbl2.Fillers.Targets,
		News = tbl2.Fillers.News,
		Open = tbl2.Fillers.Targets,
		OptionInfo = tbl2.Fillers.Option,
		Preset = tbl2.Fillers.Preset,
		ProfileCreate = tbl2.Fillers.ProfileName,
		ProfileDelete = tbl2.Fillers.Profile,
		ProfileSwitch = tbl2.Fillers.Profile,
		SetValue = tbl2.Fillers.Set,
		Settings = tbl2.Fillers.Module,
		Toggle = tbl2.Fillers.Switch,
		Trouble = tbl2.Fillers.Module,
		TurnOff = tbl2.Fillers.Switch,
		TurnOn = tbl2.Fillers.Switch,
		Unbind = tbl2.Fillers.Module,
	}

	tbl2.Score = function(arg, arg2, arg3, arg4, arg5, arg6)
		local quality = arg3.Quality
		local n3 = math.log(math.max(arg2, 0.0001)) + quality

		for _, v6 in arg3.Entities, nil, nil do
			if arg5[v6] then
				n3 += 0.4
			elseif v6.Type == "all" or v6.Type == "tabs" or v6.Type == "it" then
				n3 -= 0.3
			else
				n3 -= 0.8
			end
		end

		if arg4.Implicit then
			n3 -= 0.3
		end

		local style = arg4.Style
		local flag

		if style then
			flag = arg == "Configure" or arg == "BuildProfile"
		else
			flag = style
		end

		if flag then
			n3 += 0.8
		end

		if arg6 and arg == tbl2.LastIntent then
			n3 += 2
		end

		return n3
	end

	tbl2.Name = function(arg)
		if arg.Type == "module" then
			return arg.Value.Name
		end

		if arg.Type == "option" then
			return (("%* %*"):format(arg.Value.Entry.Name, arg.Value.Option.Name))
		end

		if arg.Type == "category" then
			return arg.Value.Category
		end
		return (arg.Value.Name:gsub("^the ", ""))
	end

	tbl2.Canonical = function(arg)
		local intent = arg.Intent
		local slots = arg.Slots

		local function fn68()
			local tbl59 = {}
			local targets = slots.Targets or {}

			for _, v6 in targets, nil, nil do
				table.insert(tbl59, tbl2.Name(v6))
			end

			return fn11(tbl59, 4)
		end

		if intent == "Open" or intent == "Close" then
			return slots.Collection and ("%* all tabs"):format(intent) or ("%* %*"):format(intent, fn68())
		end

		if intent == "Locate" then
			return (("Where is %*?"):format(fn68()))
		end

		if intent == "TurnOn" or intent == "TurnOff" or intent == "Toggle" then
			local str = intent == "TurnOn" and "Turn on" or intent == "TurnOff" and "Turn off" or "Toggle"
			return slots.Bulk and ("%* all %* modules"):format(str, slots.Bulk) or slots.BulkAll and ("%* everything"):format(str) or ("%* %*"):format(str, fn68())
		end

		if intent == "SetValue" then
			local value = slots.Value
			return (("Set %* to %*"):format(tbl2.Name(slots.Target), value))
		end

		if intent == "Bind" then
			return (("Bind %* to %*"):format(slots.Target == "GUI" and "the GUI" or slots.Target.Name, slots.Key))
		end

		if intent == "ProfileCreate" then
			return (("Create profile %*"):format(slots.Name))
		end

		if intent == "Preset" then
			return slots.New and "Make a new config with the core modules" or "Turn on the core modules"
		end

		if intent == "ProfileSwitch" then
			return (("Switch to profile %*"):format(slots.Name))
		end

		if intent == "ProfileDelete" then
			return (("Delete profile %*"):format(slots.Name))
		end

		if intent == "ListAdd" then
			return (("Add %* to %*"):format(slots.Player.Name, slots.List))
		end

		if intent == "ListRemove" then
			return (("Remove %* from %*"):format(slots.Player.Name, slots.List))
		end

		if intent == "ListCategory" then
			return (("What is in %*?"):format(slots.Name))
		end

		if intent == "Compare" then
			return (("Compare %* and %*"):format(slots.Modules[1].Name, slots.Modules[2].Name))
		end

		if intent == "BuildProfile" then
			return slots.Style and ("Make me a %* profile"):format(tbl2.StyleName(slots.Style)) or "Make me a good profile"
		end

		if intent == "Interaction" then
			return (("Can %* and %* run together?"):format(slots.Modules[1].Name, slots.Modules[2].Name))
		end

		if intent == "Using" then
			local tbl59 = {}

			for _, v6 in slots.Modules, nil, nil do
				table.insert(tbl59, v6.Name)
			end

			return (("I'm using %*"):format(fn11(tbl59, 4)))
		end

		if intent == "PlaceInfo" then
			return (("What is %*?"):format(slots.Place.Name))
		end

		if slots.Entry then
			return ({
				BindInfo = ("What key is %* on?"):format(slots.Entry.Name),
				Status = ("Is %* on?"):format(slots.Entry.Name),
				Configure = slots.Style == "Default" and ("Reset %* to default"):format(slots.Entry.Name) or slots.Style and ("Make %* %*"):format(slots.Entry.Name, tbl2.StyleName(slots.Style)) or ("Set up %*"):format(slots.Entry.Name),
				Describe = ("What does %* do?"):format(slots.Entry.Name),
				Effect = ("What does %* in %* change?"):format(slots.Option and slots.Option.Name or "that", slots.Entry.Name),
				Favorite = ("Favorite %*"):format(slots.Entry.Name),
				More = ("Tell me more about %*"):format(slots.Entry.Name),
				Simpler = ("Explain %* simpler"):format(slots.Entry.Name),
				Tradeoff = ("Is my %* %* good?"):format(slots.Entry.Name, slots.Option and slots.Option.Name or "setup"),
				Hide = ("Hide %*"):format(slots.Entry.Name),
				News = ("What changed in %*?"):format(slots.Entry.Name),
				OptionInfo = ("What is %* in %*?"):format(slots.Option and slots.Option.Name or "that", slots.Entry.Name),
				Settings = ("%* settings"):format(slots.Entry.Name),
				Trouble = ("%* is not working"):format(slots.Entry.Name),
				Unbind = ("Unbind %*"):format(slots.Entry.Name),
			})[intent] or intent
		end

		return ({
			Code = "Write me a script",
			Count = "How many modules are there?",
			Help = "What can you do?",
			More = "Tell me more",
			Recommend = "Which module fits that?",
			Screenshot = "Look at my screen",
			Simpler = "Explain it simpler",
			ListEnabled = "What modules are on?",
			ListWindows = "What tabs are there?",
			News = "What's new?",
			ProfileList = "What profiles do I have?",
			Undo = "Undo",
		})[intent] or intent
	end

	tbl2.Remember = function(arg, arg2)
		table.insert(tbl2.History, { Label = arg, Undo = arg2 })

		if #tbl2.History > 20 then
			table.remove(tbl2.History, 1)
		end
	end

	tbl2.Undo = function()
		local v6 = table.remove(tbl2.History)
		if not v6 then
			return { Text = "There is nothing for me to undo." }
		end
		v6.Undo()
		return { Text = ("Undid that: %*."):format(v6.Label) }
	end

	tbl2.WithUndo = function(arg)
		local tbl59 = arg or {}

		table.insert(tbl59, {
			Text = "Undo",
			Callback = function()
				fn41(tbl2.Undo())
			end,
		})

		return tbl59
	end

	tbl2.Capture = function(arg)
		local option = arg.Option
		if not option then
			return function()
			end
		end

		if arg.Type == "Toggle" then
			local enabled = option.Enabled

			return function()
				if option.Enabled ~= enabled then
					option:Toggle()
				end
			end
		end

		if arg.Type == "Slider" then
			local value = option.Value

			return function()
				option:SetValue(value, nil, true)
			end
		end

		if arg.Type == "TwoSlider" then
			local valueMin = option.ValueMin
			local valueMax = option.ValueMax

			return function()
				option:SetValue(false, valueMin)
				option:SetValue(true, valueMax)
			end
		end

		if arg.Type == "ColorSlider" then
			local hue = option.Hue
			local sat = option.Sat
			local value = option.Value

			return function()
				option:SetValue(hue, sat, value)
			end
		end

		if arg.Type == "Dropdown" or arg.Type == "TextBox" then
			local value = option.Value

			return function()
				option:SetValue(value)
			end
		end

		return function()
		end
	end

	tbl2.Capitalize = function(arg)
		return (arg:gsub("^%l", string.upper))
	end

	tbl2.Windows = function(arg)
		local tbl59 = {}

		for k, v6 in vape.Categories, nil, nil do
			local flag = v6.Type == "Category" and k ~= "Favorites"
			local flag2

			if flag then
				flag2 = flag
			else
				flag2 = arg == "Close" and v6.Type == "CategoryList"
			end

			if flag2 then
				table.insert(tbl59, { Name = k, Category = v6, Order = table.find(tbl2.WindowOrder, k) or 99 })
			end
		end

		table.sort(tbl59, function(arg2, arg3)
			if arg2.Order ~= arg3.Order then
				return arg2.Order < arg3.Order
			end
			return arg2.Name < arg3.Name
		end)

		local tbl60 = {}

		if arg == "Close" then
			for _, v6 in tbl59, nil, nil do
				if v6.Category.Button and v6.Category.Button.Enabled then
					v6.Category.Button:Toggle()
					table.insert(tbl60, v6.Name)
				end
			end

			for _, v6 in vape.Settings, nil, nil do
				v6.Object.Visible = false
			end

			local tbl61 = {}
			local text = #tbl60 > 0

			if text then
				text = ("Closed %* tab%*: %*."):format(#tbl60, #tbl60 == 1 and "" or "s", fn11(tbl60, 10))
			end

			tbl61.Text = text or "All the tabs are already closed."
			return tbl61
		end

		for _, v6 in tbl59, nil, nil do
			fn26(v6.Category)
			table.insert(tbl60, v6.Name)
		end

		return {
			Text = ("Opened all %* tabs: %*. If they overlap, %* in the GUI settings lines them up."):format(#tbl60, fn11(tbl60, 10), fn9("Sort GUI")),
			Actions = fn46(fn31("sort gui")),
		}
	end

	tbl2.NavigateModule = function(arg, arg2, arg3)
		key = arg2.Key

		if arg == "Close" then
			if not arg2.Legit then
				arg2.Module:SetExpanded(false)
			end

			return { Text = ("Closed %*'s settings."):format(fn9(arg2.Name)) }
		end

		if arg3.Bind and arg2.Module.Bind and not arg2.Legit then
			fn44(arg2)
			local name = arg2.Name

			return {
				Text = ("Here is %*'s bind button. Click it and press a key, or tell me something like \"bind %* to R\"."):format(fn9(arg2.Name), name),
			}
		end

		local expand = arg == "Open" or arg3.Expand
		fn43(arg2, nil, expand)

		return {
			Text = expand and ("Opened %*'s settings in %*."):format(fn9(arg2.Name), fn25(arg2)) or ("%* is in %*, I highlighted it for you."):format(fn9(arg2.Name), fn25(arg2)),
			Actions = fn48(arg2),
		}
	end

	tbl2.NavigatePlace = function(arg, arg2)
		if arg == "Close" then
			if not arg2.Close then
				return { Text = ("%* cannot be closed from here."):format(tbl2.Capitalize(arg2.Name)) }
			end
			arg2.Close()
			return { Text = ("Closed %*."):format(arg2.Name) }
		end

		if arg == "Open" and arg2.Open then
			local v6 = arg2.Open()
			fn28(typeof(v6) == "Instance" and v6 or nil, arg2.Name)
			return { Text = arg2.Done or ("Opened %*."):format(arg2.Name) }
		end

		local hint = arg2.Hint
		fn28(arg2.Target(), hint)

		return {
			Text = ("%* I highlighted it for you."):format(arg2.Hint),
			Actions = arg2.Open and { fn45(arg2) } or nil,
		}
	end

	tbl2.Navigate = function(arg, arg2)
		if arg2.Collection then
			return tbl2.Windows(arg)
		end
		local tbl59 = {}

		for _, v6 in arg2.Targets, nil, nil do
			if v6.Type == "option" then
				tbl59[v6.Value.Entry] = true
			end
		end

		local tbl60 = {}

		for _, v6 in arg2.Targets, nil, nil do
			if not (v6.Type == "module" and tbl59[v6.Value]) then
				table.insert(tbl60, v6)
			end
		end

		if #tbl60 == 1 then
			local v6 = tbl60[1]
			if v6.Type == "module" then
				return tbl2.NavigateModule(arg, v6.Value, arg2)
			end

			if v6.Type == "option" then
				local entry = v6.Value.Entry
				local option = v6.Value.Option
				key = entry.Key
				tbl2.LastOption = v6
				if arg == "Close" then
					return tbl2.NavigateModule(arg, entry, arg2)
				end
				fn43(entry, option)
				local name = entry.Name

				return {
					Text = ("Here is %* in %*'s settings, I highlighted it for you."):format(fn9(option.Name), fn9(name)),
					Actions = fn48(entry, option),
				}
			end

			return tbl2.NavigatePlace(arg, v6.Value)
		end

		local tbl61 = {}
		local v6 = nil

		for _, v7 in tbl60, nil, nil do
			if v7.Type == "module" or v7.Type == "option" then
				local entry = v7.Type == "module" and v7.Value or v7.Value.Entry
				key = entry.Key

				if arg == "Close" then
					if not entry.Legit then
						entry.Module:SetExpanded(false)
					end
				else
					v6 = fn29(entry, arg == "Open")
				end
			elseif arg == "Close" then
				if v7.Value.Close then
					v7.Value.Close()
				end
			elseif arg == "Open" and v7.Value.Open then
				v7.Value.Open()
			else
				v6 = v7.Value.Target()
			end

			table.insert(tbl61, fn9(tbl2.Name(v7)))
		end

		if v6 and arg ~= "Close" then
			fn28(v6, "Here")
		end

		return {
			Text = ("%* %*."):format(arg == "Close" and "Closed" or arg == "Open" and "Opened" or "Showing", fn11(tbl61, 8)),
		}
	end

	tbl2.Switch = function(arg, arg2)
		local str = arg == "TurnOn" and "On" or arg == "TurnOff" and "Off" or "Toggle"

		if arg2.BulkAll then
			if str == "Off" then
				return fn57()
			end

			return {
				Text = "I will not turn on every module at once, that would wreck your game. Pick a tab, like \"turn on all render modules\".",
			}
		end

		if arg2.Bulk then
			return tbl2.Bulk(arg2.Bulk, str)
		end
		local tbl59 = {}
		local handlers = {}
		local value = nil

		for _, v6 in arg2.Targets, nil, nil do
			if v6.Type == "module" then
				value = v6.Value
				local module = value.Module
				local flag = str == "On" or str == "Toggle" and not module.Enabled
				key = value.Key

				if module.Enabled ~= flag then
					module:Toggle()

					table.insert(handlers, function()
						module:Toggle()
					end)

					local insert = table.insert
					local str2 = ("turned %* %*"):format(fn9(value.Name), flag and "on" or "off")
					insert(tbl59, str2)
				else
					local insert = table.insert
					local str2 = ("%* was already %*"):format(fn9(value.Name), flag and "on" or "off")
					insert(tbl59, str2)
				end
			else
				local v7, v8 = tbl2.OptionOf(v6)

				if v7.Type ~= "Toggle" then
					local insert = table.insert
					local str2 = ("%* is not an on or off setting, tell me a value for it instead"):format(fn9(v7.Name))
					insert(tbl59, str2)
				else
					local flag = str == "On" or str == "Toggle" and not (v7.Option and v7.Option.Enabled or false)
					local v9 = tbl2.Capture(v7)
					local v10, v11 = fn62(v7, flag and "on" or "off")
					table.insert(handlers, v9)
					local insert = table.insert
					local str2 = ("%*%*"):format(v11, v8 and (" in %*"):format(fn9(v8.Name)) or "")
					insert(tbl59, str2)

					if v8 then
						key = v8.Key
					end
				end
			end
		end

		local format = ("%*.").format
		local v6 = table.pack(tbl2.Capitalize(fn11(tbl59, #tbl59)))
		v6.n = 2 + v6.n - 1
		table.move(v6, 1, v6.n, 2, v6)
		v6[1] = "%*."
		local v7 = format(table.unpack(v6, 1, v6.n))

		if #handlers > 0 then
			tbl2.Remember(fn11(tbl59, #tbl59), function()
				for i = #handlers, 1, -1 do
					handlers[i]()
				end
			end)
		end

		local tbl60 = value and #arg2.Targets == 1 and fn48(value) or {}
		return { Text = v7, Actions = #handlers > 0 and tbl2.WithUndo(tbl60) or tbl60 }
	end

	tbl2.Bulk = function(arg, arg2)
		local tbl59 = {}

		for _, v6 in tbl.Entries, nil, nil do
			if (arg == "Legit" and v6.Legit or not v6.Legit and v6.Category == arg) and v6.Module.Enabled ~= (arg2 == "On" or arg2 == "Toggle" and not v6.Module.Enabled) then
				table.insert(tbl59, v6)
			end
		end

		local str = arg == "Legit" and "the Legit menu" or arg
		if #tbl59 == 0 then
			return { Text = ("Everything in %* is already %*."):format(str, arg2 == "Off" and "off" or "on") }
		end
		local tbl60 = {}

		for _, v6 in tbl59, nil, nil do
			table.insert(tbl60, v6.Name)
		end

		local function fn68()
			for _, v6 in tbl59, nil, nil do
				v6.Module:Toggle()
			end

			tbl2.Remember(("switched %* modules in %*"):format(#tbl59, str), function()
				for _, v6 in tbl59, nil, nil do
					v6.Module:Toggle()
				end
			end)
		end

		if arg2 == "Off" then
			fn68()

			return {
				Text = ("Turned off %* module%* in %*: %*."):format(#tbl59, #tbl59 == 1 and "" or "s", str, fn11(tbl60, 12)),
				Actions = tbl2.WithUndo(),
			}
		end

		return {
			Text = ("That turns on %* module%* in %* at once (%*). Running that many together usually breaks something. Still want it?"):format(#tbl59, #tbl59 == 1 and "" or "s", str, fn11(tbl60, 8)),
			Actions = {
				{
					Text = "Turn them on",
					Callback = function()
						fn68()
						fn41({ Text = ("Turned on %* modules in %*."):format(#tbl59, str), Actions = tbl2.WithUndo() })
					end,
				},
			},
		}
	end

	tbl2.SetValue = function(arg)
		local v6, v7 = tbl2.OptionOf(arg.Target)
		local v8 = tbl2.Capture(v6)
		local v9, v10 = fn62(v6, arg.Value)

		if v7 then
			key = v7.Key
		end

		local tbl59 = v7 and fn48(v7, v6) or fn46(arg.Target.Value) or {}
		if not v9 then
			return { Text = v10, Actions = tbl59 }
		end
		tbl2.LastOption = arg.Target
		tbl2.Remember(("changed %*"):format(fn9(v6.Name)), v8)

		return {
			Text = ("Done, %*%*."):format(v10, v7 and (" in %*"):format(fn9(v7.Name)) or ""),
			Actions = tbl2.WithUndo(tbl59),
		}
	end

	tbl2.Bind = function(arg)
		if arg.Target == "GUI" then
			local v6 = table.clone(vape.GUIBind.Keys)
			vape.GUIBind:SetBind({ arg.Key })

			tbl2.Remember("changed the GUI key", function()
				vape.GUIBind:SetBind(v6)
			end)

			return { Text = ("The GUI now opens with %*."):format(fn9(arg.Key)), Actions = tbl2.WithUndo() }
		end

		local target = arg.Target
		local module = target.Module
		key = target.Key
		if target.Legit or not module.Bind then
			return {
				Text = ("Legit mods do not take keybinds, click %* in the Legit menu to turn it on or off."):format(fn9(target.Name)),
			}
		end

		if fn13() then
			return {
				Text = ("Keys do not work on mobile. Hold %* in the GUI for a second, then tap where you want its button."):format(fn9(target.Name)),
			}
		end
		local v6 = table.clone(module.Bind.Keys)
		module.Bind:SetBind({ arg.Key })
		local key2 = arg.Key

		tbl2.Remember(("bound %* to %*"):format(fn9(target.Name), key2), function()
			module.Bind:SetBind(v6)
		end)

		local tbl59 = {}

		for _, v7 in tbl.Entries, nil, nil do
			local keys = v7 ~= target and v7.Module.Bind and v7.Module.Bind.Keys

			if keys and #keys == 1 and keys[1] == arg.Key then
				table.insert(tbl59, v7.Name)
			end
		end

		local tbl60 = {}
		local str = "Bound %* to %*.%*"
		local format = str.format
		local v7 = fn9(target.Name)
		local v8 = fn9(arg.Key)
		local flag = #tbl59 > 0

		if flag then
			flag = (" Heads up, %* %* that key too."):format(fn11(tbl59, 3), #tbl59 == 1 and "uses" or "use")
		end

		tbl60.Text = format(str, v7, v8, flag or "")

		tbl60.Actions = tbl2.WithUndo({
			{
				Text = "Show me",
				Callback = function()
					fn44(target)
				end,
			},
		})

		return tbl60
	end

	tbl2.Unbind = function(arg)
		local entry = arg.Entry
		local module = entry.Module
		key = entry.Key
		if entry.Legit or not module.Bind then
			return { Text = ("%* is a legit mod, it has no bind to remove."):format(fn9(entry.Name)) }
		end

		if #module.Bind.Keys == 0 then
			return { Text = ("%* has no bind."):format(fn9(entry.Name)) }
		end
		local v6 = table.clone(module.Bind.Keys)
		module.Bind:SetBind({})

		tbl2.Remember(("removed %*'s bind"):format(fn9(entry.Name)), function()
			module.Bind:SetBind(v6)
		end)

		local concat = table.concat

		return {
			Text = ("Removed the bind from %*, it was %*."):format(fn9(entry.Name), fn9(concat(v6, " + "))),
			Actions = tbl2.WithUndo(),
		}
	end

	tbl2.Profile = function(arg, arg2)
		local profiles = vape.Categories.Profiles
		local name = arg2.Name

		if arg == "ProfileCreate" then
			if profiles:GetValue(name) then
				return { Text = ("You already have a profile called %*."):format(fn9(name)) }
			end
			profiles:ChangeValue(name)

			tbl2.Remember(("created the profile %*"):format(fn9(name)), function()
				if profiles:GetValue(name) then
					profiles:ChangeValue(name)
				end
			end)

			return {
				Text = ("Created the profile %*. Switch to it whenever you want to start setting it up."):format(fn9(name)),
				Actions = tbl2.WithUndo({
					{
						Text = "Switch to it",
						Callback = function()
							fn41({ Text = ("Switching to %*..."):format(fn9(name)) })
							fn65(name)
						end,
					},
				}),
			}
		end

		if arg == "ProfileSwitch" then
			if name == vape.Profile then
				return { Text = ("You are already on %*."):format(fn9(name)) }
			end
			fn65(name)
			return { Text = ("Switching to %*..."):format(fn9(name)) }
		end

		if name == "default" then
			return { Text = "The default profile cannot be deleted." }
		end

		if name == vape.Profile then
			return { Text = ("You are on %* right now, switch to another profile first."):format(fn9(name)) }
		end

		return {
			Text = ("Delete the profile %*? Its saved settings for this game will be gone for good."):format(fn9(name)),
			Actions = {
				{
					Text = "Delete it",
					Callback = function()
						if profiles:GetValue(name) then
							profiles:ChangeValue(name)
						end

						fn41({ Text = ("Deleted %*."):format(fn9(name)) })
					end,
				},
			},
		}
	end

	tbl2.Preset = function(arg)
		local tbl59 = {}
		local tbl60 = {}
		local universal = tbl2.Essentials[fn33() or ""] or tbl2.Essentials.Universal

		for _, v6 in universal, nil, nil do
			local v7 = tbl.Keys[fn14(v6)]

			if v7 and not v7.Legit then
				tbl59[v7] = true
				table.insert(tbl60, v7)
			end
		end

		if #tbl60 == 0 then
			return { Text = "I do not have a set of core modules for this game yet." }
		end
		local tbl61 = {}

		for _, v6 in tbl60, nil, nil do
			table.insert(tbl61, v6.Name)
		end

		local v6 = fn9(fn11(tbl61, #tbl61))

		if not arg.New then
			local tbl62 = {}

			for _, v7 in tbl60, nil, nil do
				if not v7.Module.Enabled then
					v7.Module:Toggle()
					table.insert(tbl62, v7)
				end
			end

			if #tbl62 > 0 then
				tbl2.Remember("turned on the core modules", function()
					for _, v7 in tbl62, nil, nil do
						if v7.Module.Enabled then
							v7.Module:Toggle()
						end
					end
				end)
			end

			return {
				Text = ("Turned on %* core module%*, so these are all on now: %*. Speed, Fly and Nuker stay off, they are better on a bind."):format(#tbl62, #tbl62 == 1 and "" or "s", v6),
				Actions = #tbl62 > 0 and tbl2.WithUndo() or nil,
			}
		end

		local profiles = vape.Categories.Profiles
		local name = arg.Name or "essentials"
		local str = name
		local n3 = 2

		while profiles:GetValue(str) do
			str = ("%*%*"):format(name, n3)
			n3 += 1
		end

		local profile = vape.Profile
		profiles:ChangeValue(str)

		task.delay(0.2, function()
			if vape.ThreadFix then
				setthreadidentity(8)
			end

			vape:Save(str)
			vape:Load(true)
			profiles:ChangeValue()

			for _, v7 in tbl.Entries, nil, nil do
				if not v7.Legit and v7.Module.Enabled ~= tbl59[v7] == true then
					v7.Module:Toggle()
				end
			end

			vape:Save()

			fn41({
				Text = ("%* is ready and you are on it. Only the core modules are on: %*. Speed, Fly and Nuker are off, they are better on a bind."):format(fn9(str), v6),
				Actions = {
					{
						Text = ("Back to %*"):format(profile),
						Callback = function()
							fn41({ Text = ("Switching back to %*..."):format(fn9(profile)) })
							fn65(profile)
						end,
					},
				},
			})
		end)

		return { Text = ("Making the profile %* and switching to it..."):format(fn9(str)) }
	end

	tbl2.List = function(arg, arg2)
		local v6 = vape.Categories[arg2.List]
		local name = arg2.Player.Name

		if arg == "ListRemove" then
			for _, v7 in v6.List, nil, nil do
				if v7:lower() == name:lower() then
					v6:ChangeValue(v7)

					tbl2.Remember(("removed %* from %*"):format(v7, arg2.List), function()
						if not table.find(v6.List, v7) then
							v6:ChangeValue(v7)
						end
					end)

					local list = arg2.List

					return {
						Text = ("Removed %* from your %* list."):format(fn9(v7), list),
						Actions = tbl2.WithUndo(fn46(fn31(arg2.List:lower()))),
					}
				end
			end

			local list = arg2.List
			return { Text = ("%* is not on your %* list."):format(fn7(name), list) }
		end

		if table.find(v6.ListEnabled, name) then
			local list = arg2.List

			return {
				Text = ("%* is already on your %* list."):format(fn9(name), list),
				Actions = fn46(fn31(arg2.List:lower())),
			}
		end

		if table.find(v6.List, name) then
			table.insert(v6.ListEnabled, name)
			v6:ChangeValue()
		else
			v6:ChangeValue(name)
		end

		tbl2.Remember(("added %* to %*"):format(name, arg2.List), function()
			if table.find(v6.List, name) then
				v6:ChangeValue(name)
			end
		end)

		local str = arg2.Player.Found and "" or " They are not in this server, so make sure that is their exact username."
		local useFriends = v6.Options["Use friends"]
		local str2

		if useFriends and not useFriends.Enabled then
			str2 = ("%* %* is off in its gear, so modules still treat them like anyone else."):format(str, fn9("Use friends"))
		else
			str2 = str
		end

		local list = arg2.List

		return {
			Text = ("Added %* to your %* list.%*"):format(fn9(name), list, str2),
			Actions = tbl2.WithUndo(fn46(fn31(arg2.List:lower()))),
		}
	end

	tbl2.Favorite = function(arg, arg2)
		local entry = arg.Entry
		local module = entry.Module
		local flag = not tbl2.HasWord(arg2, { "unfavorite", "unfavourite", "unstar", "unfav", "remove" })
		key = entry.Key
		if module.Favorited == flag then
			return { Text = ("%* is %* in your favorites."):format(fn9(entry.Name), flag and "already" or "not") }
		end
		module:SetFavorite(flag)

		tbl2.Remember(("%* %*"):format(flag and "favorited" or "unfavorited", fn9(entry.Name)), function()
			module:SetFavorite(not flag)
		end)

		return {
			Text = ("%* %* %* your favorites."):format(flag and "Added" or "Removed", fn9(entry.Name), flag and "to" or "from"),
			Actions = tbl2.WithUndo(fn46(fn31("favorites"))),
		}
	end

	tbl2.Hide = function(arg, arg2)
		local entry = arg.Entry
		local module = entry.Module
		local v6 = tbl2.HasWord(arg2, { "unhide", "unhidden", "visible", "back", "again" })
		key = entry.Key
		if entry.Legit then
			return { Text = "Legit mods cannot be hidden, but the search box in the Legit menu filters them." }
		end

		if module.Visible == v6 then
			return { Text = ("%* is already %*."):format(fn9(entry.Name), v6 and "shown" or "hidden") }
		end
		module:SetVisible(v6, true)

		tbl2.Remember(("%* %*"):format(v6 and "unhid" or "hid", fn9(entry.Name)), function()
			module:SetVisible(not v6, true)
		end)

		return {
			Text = ("%* is %* the %* window. %*"):format(fn9(entry.Name), v6 and "back in" or "hidden from", entry.Category, v6 and "" or "It still works, it is just out of the list."),
			Actions = tbl2.WithUndo(),
		}
	end

	tbl2.WindowsReply = function()
		local tbl59 = {}

		for _, v6 in tbl2.WindowOrder, nil, nil do
			local v7 = vape.Categories[v6]

			if v7 and v7.Type == "Category" then
				local n3 = 0

				for _, v8 in tbl.Entries, nil, nil do
					if not v8.Legit and v8.Category == v6 then
						n3 += 1
					end
				end

				local insert = table.insert
				local str = ("%* (%*)"):format(fn9(v6), n3)
				insert(tbl59, str)
			end
		end

		return {
			Text = ("There are %* module tabs: %*. Friends, Profiles and Targets have tabs of their own, and legit mods live in the Legit menu."):format(#tbl59, table.concat(tbl59, ", ")),
			Actions = {
				{
					Text = "Open all tabs",
					Callback = function()
						fn4("Open all tabs")
					end,
				},
			},
		}
	end

	tbl2.Changes = function(arg)
		return not tbl2.Knowledge[arg] and arg ~= "Open" and arg ~= "Close" and arg ~= "Locate"
	end

	tbl2.AskFor = function(arg, arg2)
		local tbl59 = {
			Bind = "Which module, and which key? Say it like \"bind Killaura to R\".",
			Close = "What should I close? I can close a tab, all of them, the Legit menu, the settings or the overlays menu.",
			Favorite = "Which module should I favorite?",
			Hide = "Which module should I hide?",
			ListAdd = "Who should I add, and to Friends or Targets? Say it like \"add Builderman to friends\".",
			ListRemove = "Who should I remove, and from Friends or Targets?",
			Locate = "What should I point out for you?",
			Open = "What should I open? I can open a tab like Combat, all of them at once, the Legit menu, the settings, Profiles, or any module.",
			ProfileCreate = "What should the new profile be called? Say it like \"create profile tryhard\".",
			ProfileDelete = ("Which profile? You have %*."):format(fn64()),
			ProfileSwitch = ("Which profile? You have %*."):format(fn64()),
			SetValue = "What should I change, and to what? Say it like \"set Killaura attack range to 15\".",
			Toggle = "What should I toggle?",
			TurnOff = "What should I turn off?",
			TurnOn = "What should I turn on?",
			Unbind = "Which module should I unbind?",
		}

		local tbl60 = arg == "Open" and { "Open all tabs", "Open the Legit menu", "Open the settings", "Open Profiles" } or arg == "Close" and { "Close all tabs", "Close the settings" } or {}
		local tbl61 = {}

		for _, v6 in tbl60, nil, nil do
			table.insert(tbl61, {
				Text = v6,
				Callback = function()
					fn4(v6)
				end,
			})
		end

		return {
			Text = ("%*%*"):format(arg2 and #arg2 > 0 and ("I do not know what \"%*\" is. "):format(fn7(table.concat(arg2, " "))) or "", tbl59[arg] or "Could you say that another way?"),
			Actions = tbl61,
		}
	end

	tbl2.Clarify = function(pending)
		tbl2.Pending = pending
		local tbl59 = {}

		for _, v6 in pending, nil, nil do
			local v7 = tbl2.Canonical(v6)

			table.insert(tbl59, {
				Text = v7,
				Callback = function()
					tbl2.Learn(v6)
					fn39(v7, true)
					fn41(tbl2.Execute(v6))
				end,
			})
		end

		return { Text = "I can read that a couple of ways. Which one did you mean?", Actions = tbl59 }
	end

	tbl2.WordSet = function(arg)
		local tbl59 = {}
		local v6 = tbl2.Unslang(arg)

		for match in v6:lower():gsub("'", ""):gmatch("%w+") do
			tbl59[match] = true
		end

		return tbl59
	end

	tbl2.Pick = function(arg)
		local n3 = math.random(1, #arg)

		if #arg > 1 and tbl2.Picked[arg] == n3 then
			n3 = n3 % #arg + 1
		end

		tbl2.Picked[arg] = n3
		return arg[n3]
	end

	tbl2.Chips = function(arg)
		if not arg then
			return nil
		end
		local tbl59 = {}

		for _, v6 in arg, nil, nil do
			table.insert(tbl59, {
				Text = v6,
				Callback = function()
					fn4(v6)
				end,
			})
		end

		return tbl59
	end

	tbl2.Say = function(arg, arg2)
		local v6 = tbl2.WordSet(arg2 or "")

		for _, v7 in tbl2.Talk[arg], nil, nil do
			local flag = not v7.Words and not v7.Test
			local words = v7.Words or {}

			for k in words, nil, nil do
				flag = flag or v6[k] == true
			end

			if flag or v7.Test and v7.Test(v6) then
				local reply = v7.Reply and v7.Reply(v6)
				if reply then
					return reply
				end

				if v7.Replies then
					local chips = type(v7.Chips) == "function" and v7.Chips() or v7.Chips

					return {
						Text = tbl2.Pick(v7.Replies),
						Actions = v7.Suggest and fn47() or tbl2.Chips(chips),
					}
				end
			end
		end

		return { Text = "Ask me anything about CatVape.", Actions = fn47() }
	end

	tbl2.OffTopic = function(arg, arg2)
		local best = arg.Best
		local v6 = arg2
		local flag = tbl2.IsQuestion(arg.Tokens, v6)

		if not flag then
			flag = best ~= nil

			if flag then
				flag = best.Intent == "Help" or best.Intent == "HowTo" or best.Intent == "Recommend"
			end
		end

		if not flag or best and arg.Kind == "Execute" and not tbl2.Knowledge[best.Intent] then
			return false
		end

		if best and tbl2.Social[best.Intent] and best.Intent ~= "Help" and tbl2.Addressing(arg.Tokens) then
			return false
		end
		local flag2 = false

		for _, v7 in arg.Tokens, nil, nil do
			if tbl.Keys[v7.Word] then
				return false
			end

			for _, v8 in tbl2.Talk.Offtopic, nil, nil do
				flag2 = flag2 or v8.Words ~= nil and v8.Words[v7.Word] == true
			end
		end

		return flag2
	end

	tbl2.Chatter = function(arg)
		local v6 = tbl2.Understand(arg)

		for k, v7 in { v6.Best, v6.Runner }, nil, nil do
			if tbl2.Social[v7.Intent] and (v7.Probability >= tbl2.ChatFloor or k == 1 and v7.Confidence >= tbl2.ChatLead) then
				return tbl2.Runners[v7.Intent](v7.Slots, arg, v7)
			end
		end

		local tokens = v6.Tokens or {}
		local flag = false

		for _, v7 in tokens, nil, nil do
			flag = flag or not tbl2.QuestionWords[v7.Word]
		end

		return tbl2.Runners[flag and tbl2.IsQuestion(v6.Tokens, arg) and "Offtopic" or "Unclear"](nil, arg)
	end

	tbl2.Arithmetic = function(arg)
		local n3 = 1
		local fn68 = nil

		local function fn69()
			n3 = arg:match("^%s*()", n3)
			return arg:sub(n3, n3)
		end

		local fn70 = nil

		fn70 = function()
			local v6 = fn69()

			if v6 == "(" then
				n3 += 1
				local v7 = fn68()
				if not v7 or fn69() ~= ")" then
					return nil
				end
				n3 += 1
				return v7
			end

			if v6 == "-" or v6 == "@" then
				n3 += 1
				local v7 = fn70()
				local n4

				if v7 then
					n4 = v6 == "-" and -v7 or math.sqrt(v7)
				else
					n4 = v7
				end

				return n4 or nil
			end

			local match = arg:match("^%d*%.?%d+", n3)
			if not match then
				return nil
			end
			n3 += #match
			return tonumber(match)
		end

		local fn71 = nil

		fn71 = function()
			local v6 = fn70()

			if v6 and fn69() == "^" then
				n3 += 1
				local v7 = fn71()
				return v7 and v6 ^ v7 or nil
			end

			return v6
		end

		local function fn72()
			local n4 = fn71()

			while true do
				local flag

				if n4 then
					flag = fn69() == "*" or fn69() == "/" or fn69() == "%"
				else
					flag = n4
				end

				if flag then
					local v6 = fn69()
					n3 += 1
					local v7 = fn71()
					if not v7 then
						return nil
					end
					n4 = v6 == "*" and n4 * v7 or v6 == "/" and n4 / v7 or n4 % v7
					continue
				end

				break
			end

			return n4
		end

		fn68 = function()
			local n4 = fn72()

			while n4 and (fn69() == "+" or fn69() == "-") do
				local v6 = fn69()
				n3 += 1
				local v7 = fn72()
				if not v7 then
					return nil
				end
				n4 = v6 == "+" and n4 + v7 or n4 - v7
			end

			return n4
		end

		local v6 = fn68()
		return fn69() == "" and v6 or nil
	end

	tbl2.Calculate = function(arg)
		local str = arg:lower():gsub("[',?!=]", " "):gsub("(%d)%s*x%s*(%d)", "%1 * %2"):gsub("([%+%-%*/%%%^%(%)])", " %1 "):gsub("%s+", " ")
		local str2 = (" %* "):format(str)

		for _, v6 in tbl2.MathWords, nil, nil do
			local str3 = v6[1]:gsub("%p", "%%%0")

			str2 = str2:gsub(("%%s%*%%s"):format(str3), function()
				return ((" %* "):format(v6[2]))
			end)
		end

		local tbl59 = {}

		for match in str2:gmatch("%S+") do
			if not tbl2.MathFiller[match] then
				table.insert(tbl59, match)
			end
		end

		local str3 = table.concat(tbl59, " ")
		local flag = not str3:match("^[%d%.%s%+%-%*/%%%^%(%)@]+$")

		if not flag then
			flag = not (str3:find("%d[%s%)]*[%+%-%*/%%%^]") or str3:find("@"))
		end

		if flag then
			return nil
		end
		local v6 = tbl2.Arithmetic(str3)
		if not v6 then
			return nil
		end
		return v6, (str3:gsub("@%s*", "sqrt "))
	end

	tbl2.Runners = {
		Bind = function(arg)
			return tbl2.Bind(arg)
		end,
		BuildProfile = function(arg)
			return tbl2.BuildProfile(arg)
		end,
		BindInfo = function(arg)
			key = arg.Entry.Key
			return fn53(arg.Entry)
		end,
		Status = function(arg)
			key = arg.Entry.Key

			return {
				Text = ("%* is %* right now."):format(fn9(arg.Entry.Name), arg.Entry.Module.Enabled and "on" or "off"),
				Actions = fn48(arg.Entry),
			}
		end,
		PlaceInfo = function(arg)
			local place = arg.Place

			for _, v6 in tbl13, nil, nil do
				if v6.Place == place.Id then
					return { Text = v6.Answer(), Actions = fn46(place) }
				end
			end

			if place.Category then
				return fn56(place.Category)
			end
			local hint = place.Hint
			return { Text = ("%*: %*"):format(tbl2.Capitalize(place.Name), hint), Actions = fn46(place) }
		end,
		Calculate = function(arg, arg2)
			local v6, v7 = tbl2.Calculate(arg2)
			if not v6 then
				return tbl2.Say("Unclear", arg2)
			end

			if v6 ~= v6 or math.abs(v6) == math.huge then
				return { Text = "That one has no answer, you can't divide by zero." }
			end
			local n3 = math.round(v6 * 1000000) / 1000000

			return {
				Text = ("%* = %*"):format(v7, fn9(n3 == math.floor(n3) and math.abs(n3) < 1e15 and string.format("%d", n3) or tostring(n3))),
			}
		end,
		Close = function(arg)
			return tbl2.Navigate("Close", arg)
		end,
		Compare = function(arg)
			return tbl2.CompareReply(arg.Modules)
		end,
		Configure = function(arg)
			return tbl2.ConfigureReply(arg.Entry, arg.Style, arg)
		end,
		Confirm = function(arg, arg2)
			local pending = tbl2.Pending
			if not pending then
				return { Text = "Okay!" }
			end
			local str = arg2:lower()
			local pos = (str:find("second") or str:find("2")) and pending[2] or pending[1]
			tbl2.Learn(pos or pending[1])
			return tbl2.Execute(pos or pending[1])
		end,
		Count = function()
			return fn58()
		end,
		Deny = function()
			tbl2.Pending = nil
			return { Text = "Okay, never mind." }
		end,
		Describe = function(arg, arg2, arg3)
			key = arg.Entry.Key
			tbl2.Depth = { Key = arg.Entry.Key, Level = 1 }
			return fn50(arg.Entry, arg3.Tokens and tbl2.QueryOf(arg3.Tokens))
		end,
		Effect = function(arg, arg2, arg3)
			return tbl2.EffectReply(arg.Entry, arg.Option, arg3.Tokens)
		end,
		Error = function(arg, arg2)
			return tbl2.ErrorReply(arg2)
		end,
		Favorite = function(arg, arg2, arg3)
			return tbl2.Favorite(arg, arg3.Tokens)
		end,
		Hide = function(arg, arg2, arg3)
			return tbl2.Hide(arg, arg3.Tokens)
		end,
		Interaction = function(arg)
			return tbl2.InteractionReply(arg.Modules)
		end,
		ListAdd = function(arg)
			return tbl2.List("ListAdd", arg)
		end,
		ListCategory = function(arg)
			local v6 = fn56(arg.Name)
			local legit = fn31(arg.Name:lower()) or fn31("legit")
			v6.Actions = legit and { fn45(legit) } or nil
			return v6
		end,
		ListEnabled = function()
			return fn57()
		end,
		ListRemove = function(arg)
			return tbl2.List("ListRemove", arg)
		end,
		ListWindows = function()
			return tbl2.WindowsReply()
		end,
		Locate = function(arg)
			return tbl2.Navigate("Locate", arg)
		end,
		More = function(arg)
			local entry = arg.Entry
			local option = arg.Option

			if not entry then
				entry, option = tbl2.Topic()
			end

			return tbl2.MoreReply(entry, option)
		end,
		News = function(arg)
			if arg.Entry then
				key = arg.Entry.Key
			end

			return fn55(arg.Entry)
		end,
		Open = function(arg)
			return tbl2.Navigate("Open", arg)
		end,
		OptionInfo = function(arg)
			key = arg.Entry.Key
			tbl2.LastOption = { Type = "option", Value = { Entry = arg.Entry, Option = arg.Option } }
			tbl2.Depth = { Key = arg.Entry.Key, Level = 1, Option = arg.Option }
			return fn52(arg.Entry, { { Matched = 1, Option = arg.Option, Order = 1, Score = 1 } })
		end,
		Performance = function(arg)
			return tbl2.PerformanceReply(arg.Tokens)
		end,
		Preset = function(arg)
			return tbl2.Preset(arg)
		end,
		ProfileCreate = function(arg)
			return tbl2.Profile("ProfileCreate", arg)
		end,
		ProfileDelete = function(arg)
			return tbl2.Profile("ProfileDelete", arg)
		end,
		ProfileList = function()
			local profile = vape.Profile

			return {
				Text = ("You have %*, and you are on %*."):format(fn64(), fn9(profile)),
				Actions = fn46(fn31("profiles")),
			}
		end,
		ProfileSwitch = function(arg)
			return tbl2.Profile("ProfileSwitch", arg)
		end,
		Recommend = function(arg, arg2, arg3)
			return tbl2.RecommendReply(arg3.Tokens, arg2)
		end,
		SetValue = function(arg)
			return tbl2.SetValue(arg)
		end,
		Settings = function(arg)
			key = arg.Entry.Key
			tbl2.Depth = { Key = arg.Entry.Key, Level = 2 }
			return fn51(arg.Entry)
		end,
		Simpler = function(arg)
			local entry = arg.Entry
			local option = arg.Option

			if not entry then
				entry, option = tbl2.Topic()
			end

			if not entry then
				return {
					Text = "Simpler than what? Ask me about a module first, like \"what does Killaura do\".",
					Actions = fn47(),
				}
			end

			key = entry.Key
			local simpleReply = tbl2.SimpleReply
			local option2

			if option then
				option2 = option
			else
				option2 = tbl2.Depth.Key == entry.Key and tbl2.Depth.Option or nil
			end

			return simpleReply(entry, option2)
		end,
		Symptom = function(arg, arg2)
			local symptom = arg.Symptom or tbl2.SymptomOf(arg.Tokens, true)
			return symptom and tbl2.SymptomReply(symptom, arg.Tokens, arg2) or tbl2.CulpritReply(arg.Tokens)
		end,
		Toggle = function(arg)
			return tbl2.Switch("Toggle", arg)
		end,
		Tradeoff = function(arg, arg2, arg3)
			return tbl2.TradeoffReply(arg.Entry, arg.Option, arg3.Tokens)
		end,
		Trouble = function(arg, arg2, arg3)
			key = arg.Entry.Key
			return fn54(arg.Entry, arg3.Tokens and tbl2.QueryOf(arg3.Tokens), arg3.Tokens)
		end,
		TurnOff = function(arg)
			return tbl2.Switch("TurnOff", arg)
		end,
		TurnOn = function(arg)
			return tbl2.Switch("TurnOn", arg)
		end,
		Unbind = function(arg)
			return tbl2.Unbind(arg)
		end,
		Undo = function()
			return tbl2.Undo()
		end,
		Using = function(arg)
			return tbl2.UsingReply(arg.Modules)
		end,
	}

	for k in tbl2.Talk, nil, nil do
		tbl2.Runners[k] = tbl2.Runners[k] or function(arg, arg2)
			return tbl2.Say(k, arg2)
		end
	end

	tbl2.Execute = function(arg, arg2)
		local slots = arg.Slots
		tbl2.Pending = nil
		tbl2.LastIntent = arg.Intent
		tbl2.Note(slots)

		if slots.Targets and #slots.Targets > 0 then
			tbl2.LastTargets = slots.Targets
		elseif slots.Entry then
			tbl2.LastTargets = { { Type = "module", Value = slots.Entry } }
		elseif type(slots.Target) == "table" and slots.Target.Type then
			tbl2.LastTargets = { slots.Target }
		elseif type(slots.Target) == "table" and slots.Target.Module then
			tbl2.LastTargets = { { Type = "module", Value = slots.Target } }
		end

		local v6 = tbl2.Runners[arg.Intent]

		if not v6 then
			local v7 = fn67
			arg2 = arg2 or tbl2.Canonical(arg)
			return v7(arg2)
		end

		return v6(arg.Slots, arg2 or tbl2.Canonical(arg), arg)
	end

	tbl2.IsFollowUp = function(arg)
		local word = arg[1].Word
		local word2 = arg[2] and arg[2].Word or ""
		local flag = word == "and" or word == "also" or word == "plus" or word == "now" or word == "then" or arg[#arg].Word == "too"
		local flag2

		if flag then
			flag2 = flag
		else
			flag2 = (word == "what" or word == "how") and word2 == "about"
		end

		local flag3

		if flag2 then
			flag3 = flag2
		else
			local flag4 = word == "same"

			if flag4 then
				flag3 = word2 == "for" or word2 == "with"
			else
				flag3 = flag4
			end
		end

		return flag3
	end

	tbl2.Ready = function()
		fn17()
		tbl2.LoadDictionary()

		if not tbl4 then
			fn30()
		end

		if not tbl2.Model then
			tbl2.Train()
		end
	end

	tbl2.QueryOf = function(arg)
		local tbl59 = {}

		for _, v6 in arg, nil, nil do
			if v6.Kind == "word" then
				table.insert(tbl59, v6.Word)
			end
		end

		local tbl60 = {}
		local tbl61 = {}

		for i = 3, 2, -1 do
			for i2 = 1, #tbl59 - i + 1 do
				if tbl.Keys[table.concat(tbl59, "", i2, i2 + i - 1)] then
					for i3 = i2, i2 + i - 1 do
						tbl61[i3] = true
					end
				end
			end
		end

		for k, v6 in tbl59, nil, nil do
			if not tbl61[k] then
				table.insert(tbl60, v6)
			end
		end

		local v6 = fn19(table.concat(tbl60, " "))

		for i = 1, #tbl59 - 2 do
			if tbl59[i] == "how" and tbl59[i + 1] == "much" and tbl2.PriceWords[tbl59[i + 2]] then
				v6[fn6("price")] = 1
			end
		end

		return v6, fn20(tbl59)
	end

	tbl2.IsQuestion = function(arg, arg2)
		local word = arg[1].Word
		local word2 = arg[2] and arg[2].Word or ""
		if tbl2.QuestionWords[word] then
			return not tbl2.Commanding[word2]
		end
		return arg2:find("?", 1, true) ~= nil or tbl2.HasWord(arg, { "why", "whys", "how" })
	end

	tbl2.Addressing = function(arg)
		return tbl2.HasWord(arg, { "you", "your", "yours", "yourself" })
	end

	tbl2.Inquiring = function(arg)
		for _, v6 in arg, nil, nil do
			if tbl2.QuestionWords[v6.Word] or tbl2.Requests[v6.Word] then
				return true
			end
		end

		return false
	end

	tbl2.IsAsking = function(arg, arg2)
		if tbl2.IsQuestion(arg, arg2) then
			return true
		end

		for k, v6 in arg, nil, nil do
			local word = arg[k + 1] and arg[k + 1].Word or ""
			if tbl2.Complaints[v6.Word] then
				return true
			end

			if (v6.Word == "keep" or v6.Word == "keeps") and word:sub(-3) == "ing" then
				return true
			end

			if v6.Word == "means" or v6.Word == "mean" or v6.Word == "should" or k == 1 and v6.Word == "if" then
				return true
			end

			if tbl2.Auxiliary[v6.Word] and tbl2.Subjects[word] then
				return true
			end
			local flag = v6.Word == "only"

			if flag then
				flag = word == "works" or word == "work" or word == "working"
			end

			if flag then
				return true
			end
		end

		return false
	end

	tbl2.Recall = function(arg, arg2)
		local best = arg.Best
		local intent = best and best.Intent
		local tokens = arg.Tokens
		if arg.Kind == "Empty" then
			return nil
		end
		local v6 = tbl2.IsAsking(tokens, arg2)
		local flag = intent == "Open" or intent == "Close" or intent == "Locate"
		local flag2 = intent ~= nil and tbl2.Social[intent] == true
		local v7 = flag2 and tbl2.Addressing(tokens)
		local flag3 = flag2 and not tbl2.IsQuestion(tokens, arg2)
		if not v6 and (intent and (tbl2.Changes(intent) or flag) or arg.Wanted and arg.WantedProbability >= 0.5) then
			return nil
		end
		local tbl59 = {}

		if arg.Kind == "Execute" then
			for _, v8 in best.Reading.Entities, nil, nil do
				if v8.Type ~= "module" then
					for i = v8.I, v8.J do
						local v9 = fn6(tokens[i].Word)
						tbl59[v9] = true
						local tbl60 = tbl7[v9] or {}

						for _, v10 in tbl60, nil, nil do
							tbl59[v10] = true
						end
					end
				end
			end
		end

		local v8, v9 = tbl2.QueryOf(tokens)
		local flag4, v10, v11, v12 = fn35(v8, v9, tbl59)
		local flag5 = arg.Kind == "Execute" and best ~= nil and best.Probability >= 0.6 and tbl2.Informative[best.Intent] == true

		for _, v13 in v9, nil, nil do
			flag5 = flag5 or not tbl2.English(v13.Key)
		end

		flag5 = flag5 and flag4 and v9 or {}

		for _, v13 in flag5, nil, nil do
			if not table.find(flag4.Modules or {}, v13.Name) then
				return nil
			end
		end

		if not flag4 or v11 <= 0 or (v7 or flag3) and best.Probability >= tbl2.SocialSure then
			return nil
		end

		if flag3 then
			flag4 = v11 >= tbl2.FactTopic and v10 >= tbl2.FactOver and v12 >= 2 and flag4 or nil
			return flag4
		end

		if arg.Kind == "Execute" and (v7 or not flag2) then
			if tbl2.Changes(intent) then
				flag4 = v10 >= tbl2.FactFloor and flag4
				return flag4 or nil
			end

			if flag then
				local v13, v14, v15, v16 = fn35(v8, v9)
				return v15 >= tbl2.FactTopic and v14 >= tbl2.FactOver and v16 >= 2 and v13 or nil
			end
			local flag6 = false

			for _, v13 in tokens, nil, nil do
				flag6 = flag6 or v13.Kind == "word" and not tbl2.Templated[v13.Word] and not tbl59[fn6(v13.Word)] and flag4.Terms[fn6(v13.Word)] ~= nil
			end

			flag4 = v11 >= tbl2.FactTopic and (v10 >= tbl2.FactOver and v12 >= 2 or flag6 and not v7 and v11 >= 2.5) and flag4 or nil
			return flag4
		end

		local v13, v14 = fn32(v8)
		if v13 and v14 > v10 then
			return nil
		end
		return v10 >= tbl2.FactFloor and flag4 or nil
	end

	tbl2.FactReply = function(arg)
		local tbl59 = {}
		local modules = arg.Modules or {}

		for _, v6 in modules, nil, nil do
			local v7 = tbl.Keys[fn14(v6)]

			if v7 and #tbl59 < 2 and arg.Text:find(v6, 1, true) then
				key = #tbl59 == 0 and v7.Key or key

				table.insert(tbl59, {
					Text = v7.Name,
					Callback = function()
						local v8 = fn4
						local str = ("What does %* do?"):format(v7.Name)
						v8(str)
					end,
				})
			end
		end

		local ok, result = pcall(arg.Live or function()
		end)

		local v6 = fn37(arg)
		return { Text = ok and result and ("%* %*"):format(v6, result) or v6, Actions = #tbl59 > 0 and tbl59 or nil }
	end

	tbl2.Satisfies = function(arg, arg2, arg3)
		for _, v6 in arg.Skip, nil, nil do
			if arg2[v6] then
				return false
			end
		end

		local needs = arg.Needs or {}

		for _, v6 in needs, nil, nil do
			local flag = false

			for _, v7 in v6, nil, nil do
				if v7 == "@player" then
					for _, v8 in arg3, nil, nil do
						local flag2 = #v8.Word >= 3

						if flag2 then
							local word = v8.Word
							flag2 = not tbl2.Vocabulary().Set[word]
						end

						flag2 = flag2 and tbl2.MatchPlayer(v8.Word) or nil
						flag = flag or flag2 ~= nil and flag2 ~= v5.LocalPlayer.Name
					end
				else
					flag = flag or arg2[v7] == true
				end
			end

			if not flag then
				return false
			end
		end

		return true
	end

	tbl2.LookupFor = function(arg, arg2)
		local best = arg.Best
		best = best and best.Intent
		local tokens = arg.Tokens
		if arg.Kind == "Empty" or not tokens then
			return nil
		end
		local v6 = tbl2.IsAsking(tokens, arg2)
		local flag = best == "Open" or best == "Close" or best == "Locate"
		if not v6 and (best and (tbl2.Changes(best) or flag) or arg.Wanted and arg.WantedProbability >= 0.5) then
			return nil
		end
		local tbl59 = {}
		local flag2 = false

		for _, v7 in tokens, nil, nil do
			tbl59[v7.Word] = true
			flag2 = flag2 or tbl.Keys[v7.Word] ~= nil
		end

		local v7 = tbl2.QueryOf(tokens)
		local v8 = fn33()
		local n3 = 0
		local v9 = nil

		for _, v10 in tbl15, nil, nil do
			local flag3 = not v10.Game or v10.Game == v8

			if flag3 then
				flag3 = not (v10.SkipModules and flag2)
			end

			if flag3 and tbl2.Satisfies(v10, tbl59, tokens) then
				local n4 = 0

				for k in v10.Terms, nil, nil do
					if v7[k] == 1 then
						n4 += 1
					end
				end

				if n3 < n4 then
					n3 = n4
					v9 = v10
				end
			end
		end

		return v9
	end

	tbl2.RunLookup = function(arg, arg2)
		local ok, result = pcall(arg.Run, arg2)

		if not ok or type(result) ~= "string" then
			local v6 = warn
			local str = ("[catvape] Assistant could not read %* : %*"):format(arg.Id, result)
			v6(str)
			return { Text = "I could not read that from the game right now." }
		end

		return { Text = result }
	end

	tbl2.Understand = function(arg)
		tbl2.Ready()
		local v6 = fn59(tbl2.Ungreet(tbl2.Unpreface(tbl2.Unslang(arg))))
		local v7 = tbl2.Tokenize(v6)
		if #v7 == 0 then
			return { Kind = "Empty" }
		end

		if tbl2.ErrorOf(arg) then
			return { Kind = "Error", Tokens = v7 }
		end

		if tbl2.Calculate(v6) then
			return { Kind = "Calculate", Tokens = v7 }
		end
		tbl2.Correct(v7)
		local v8 = tbl2.Absent(v7)
		if v8 then
			return { Kind = "Elsewhere", Tokens = v7, Absent = v8 }
		end
		local v9 = tbl2.IsFollowUp(v7)
		local tbl59 = {}
		local tbl60 = {}

		for _, v10 in tbl2.Readings(tbl2.Extract(v7)) do
			local tbl61 = {}
			local n3 = 0

			for k, v11 in tbl2.Classify(tbl2.Prepare(tbl2.Delex(v7, v10))), nil, nil do
				if v11 >= 0.02 then
					local v12 = tbl2.FillerFor[k]
					local slots, tbl62

					if v12 then
						slots, tbl62 = v12(v10, v7, v6)
					else
						slots = {}
						tbl62 = {}
					end

					if slots then
						n3 += v11
						local insert = table.insert
						local tbl63 = { Intent = k, Probability = v11, Reading = v10 }
						local score = tbl2.Score
						tbl62 = tbl62 or {}
						tbl63.Score = score(k, v11, v10, slots, tbl62, v9)
						tbl63.Slots = slots
						tbl63.Tokens = v7
						insert(tbl61, tbl63)
					elseif not tbl2.Knowledge[k] and k ~= "BuildProfile" then
						tbl60[k] = math.max(tbl60[k] or 0, v11)
					end
				end
			end

			for _, v11 in tbl61, nil, nil do
				v11.Confidence = v11.Probability / math.max(n3, 0.0001)
				table.insert(tbl59, v11)
			end
		end

		table.sort(tbl59, function(arg2, arg3)
			return arg2.Score > arg3.Score
		end)

		local memory = tbl2.Memory and tbl2.Memory[tbl2.Phrase(v7)]
		local tbl61 = memory and tbl59 or {}

		for _, v10 in tbl61, nil, nil do
			if tbl2.Canonical(v10) == memory then
				return { Kind = "Execute", Best = v10, Tokens = v7, Unknown = {} }
			end
		end

		local probability = tbl59[1]
		local v10 = nil

		for i = 2, #tbl59 do
			if tbl2.Canonical(tbl59[i]) ~= tbl2.Canonical(probability) then
				v10 = tbl59[i]
				break
			else
				v10 = nil
			end
		end

		local n3 = 0
		local v11 = nil

		for k, v12 in tbl60, nil, nil do
			if n3 < v12 then
				n3 = v12
				v11 = k
			end
		end

		tbl2.Vocabulary()
		local tbl62 = {}
		local v12 = nil

		for _, v13 in v7, nil, nil do
			if v13.Kind == "word" and not v13.Corrected and not tbl2.Knows(v13.Word) and not tbl2.MatchPlayer(v13.Word) then
				table.insert(tbl62, v13.Raw)
			end

			v12 = v12 or tbl.Keys[v13.Word]
		end

		local flag = v10 ~= nil and v10.Reading ~= probability.Reading and math.abs(v10.Reading.Quality - probability.Reading.Quality) < 0.3
		local flag2 = v10 ~= nil and v10.Intent ~= "HowTo" and v10.Intent ~= "Guide" and (probability.Score - v10.Score < tbl2.Margin or flag and v10.Confidence >= 0.4 and probability.Score - v10.Score < tbl2.Margin * 2)

		local tbl63 = {
			Best = probability,
			Runner = v10,
			Tokens = v7,
			Unknown = tbl62,
			Wanted = v11,
			WantedProbability = n3,
		}

		if v11 and n3 >= 0.5 and (not probability or probability.Probability < n3 - 0.2) then
			tbl63.Kind = "Ask"
			tbl63.Intent = v11
			tbl63.Mentioned = v12
		elseif probability and tbl2.Social[probability.Intent] and probability.Probability >= tbl2.SocialFloor and #probability.Reading.Entities == 0 and not v12 then
			tbl63.Kind = "Execute"
		else
			local soft = not probability or probability.Intent == "HowTo" or probability.Intent == "Guide" or probability.Intent == "Recommend" and probability.Slots.Soft or probability.Probability < tbl2.Floor or #tbl62 > 0 and tbl2.Knowledge[probability.Intent] and probability.Probability < 0.5

			if not soft then
				soft = tbl2.Knowledge[probability.Intent]

				if soft then
					soft = probability.Confidence < 0.3

					if not soft then
						soft = v7[1].Word == "how"

						if soft then
							soft = (v7[2] or {}).Word ~= "many"
						end

						soft = soft and not tbl2.Social[probability.Intent] and not tbl2.Direct[probability.Intent]
					end
				end
			end

			if soft or tbl2.Changes(probability.Intent) and probability.Probability < tbl2.Floor + 0.05 then
				tbl63.Kind = "Answer"
			elseif flag2 and (tbl2.Changes(probability.Intent) or tbl2.Changes(v10.Intent)) then
				tbl63.Kind = "Clarify"
			else
				tbl63.Kind = "Execute"
				tbl63.Alternative = flag2 and not tbl2.Knowledge[probability.Intent] ~= not tbl2.Knowledge[v10.Intent]
			end
		end

		local v13 = tbl2.GoalText(arg)
		local v14, v15 = fn32(tbl2.QueryOf(v7))
		local v16 = tbl2.HasWord(v7, tbl2.ModuleWords)
		local entities = probability and probability.Reading.Entities or {}
		local flag3 = false

		for _, v17 in entities, nil, nil do
			flag3 = flag3 or v17.Type == "module"
		end

		local flag4 = v13 ~= nil and tbl.Keys[fn14(v13)] ~= nil

		for _, v17 in v7, nil, nil do
			flag4 = flag4 or tbl.Keys[v17.Word] ~= nil and not tbl2.English(v17.Word)
		end

		local entities2 = probability and probability.Reading.Entities or {}
		local flag5 = false

		for _, v17 in entities2, nil, nil do
			flag5 = flag5 or v17.Type == "module" and not tbl2.English(v17.Value.Key)
		end

		if v13 and (v15 < 2 or not tbl2.HasWord(v7, { "how" })) and (not probability or probability.Intent == "Recommend" or not tbl2.Changes(probability.Intent) or probability.Probability < 0.5) and not flag4 and not flag5 then
			local goal = tbl2.Goal
			local v17

			if v16 then
				local cut = tbl2.Cut
				local str = (" %* "):format(table.concat(tbl2.WordList(v7), " "))
				v17 = cut(str)
			else
				v17 = v16
			end

			local v18 = goal(v7, v17 or v13)

			if v18[1] or v16 then
				local best = { Intent = "Recommend" }
				probability = probability and probability.Probability or 0
				best.Probability = probability
				best.Confidence = 1
				best.Reading = { Entities = {}, Quality = 0 }
				best.Score = 0
				best.Slots = { Pick = v18[1], Explicit = v16 }
				best.Tokens = v7
				tbl63.Best = best
				tbl63.Kind = "Execute"
				probability = best
			end
		else
			v13 = nil
		end

		local depth = tbl2.Depth

		if probability and probability.Intent == "Describe" and (tbl63.Kind == "Execute" or tbl63.Kind == "Answer") and depth.Level >= 1 and depth.Key == probability.Slots.Entry.Key and (probability.Slots.Implicit or tbl2.HasWord(v7, { "how", "work", "works", "actually", "really", "exactly", "deeper", "more" })) then
			local v17 = table.clone(probability)
			v17.Intent = "More"
			tbl63.Kind = "Execute"
			tbl63.Best = v17
			return tbl63
		end

		local flag6 = tbl2.Commission(tbl63, arg)
		local kind = not flag6 and tbl2.Problem(tbl63, arg)
		flag6 = flag6 or not kind and tbl2.Steer(tbl63, arg)
		if kind then
			tbl63.Kind = kind
			return tbl63
		end

		if flag6 then
			local clone = table.clone
			probability = probability or { Probability = 0, Confidence = 1, Reading = { Entities = {}, Quality = 0 }, Score = 0 }
			local v17 = clone(probability)
			local slots = flag6.Slots
			v17.Intent = flag6.Intent
			v17.Slots = slots
			v17.Tokens = v7
			tbl63.Kind = "Execute"
			tbl63.Best = v17
			return tbl63
		end

		if probability and tbl2.Direct[probability.Intent] and (tbl63.Kind == "Execute" or probability.Intent == "Recommend" and tbl63.Kind == "Answer") and (probability.Intent ~= "Recommend" or probability.Slots.Explicit) then
			tbl63.Kind = "Execute"
			return tbl63
		end
		local flag7 = probability ~= nil and probability.Intent == "Recommend" and (tbl63.Kind == "Execute" or tbl63.Kind == "Answer")
		local flag8 = flag7 and tbl63.Kind == "Execute"

		if flag7 then
			tbl63.Kind = "Answer"
		end

		local lookup = not (flag7 and (probability.Probability >= 0.5 or v13 ~= nil)) and (not (tbl63.Kind == "Execute" and tbl2.Social[probability.Intent] == true) or tbl2.Inquiring(v7) or tbl2.IsQuestion(v7, arg)) and tbl2.LookupFor(tbl63, arg) or nil
		local fact = not lookup and tbl2.Recall(tbl63, arg)
		local pick = flag8 and probability.Slots.Pick or nil
		local flag9 = flag8 and (tbl2.GoalText(arg) ~= nil or tbl2.HasWord(v7, tbl2.ModuleWords))

		if flag8 then
			flag8 = not fact or v13

			if not flag8 then
				flag8 = flag9 and pick

				if flag8 then
					flag8 = table.find(fact.Modules or {}, pick.Name)
				end
			end
		end

		if flag8 and not tbl2.OffTopic(tbl63, arg) then
			tbl63.Kind = "Execute"
			return tbl63
		end

		if lookup then
			tbl63.Kind = "Lookup"
			tbl63.Lookup = lookup
		elseif tbl2.OffTopic(tbl63, arg) then
			tbl63.Kind = "Offtopic"
		elseif fact then
			tbl63.Kind = "Fact"
			tbl63.Fact = fact
		elseif tbl63.Kind == "Execute" and tbl2.Changes(probability.Intent) and tbl2.IsAsking(v7, arg) then
			tbl63.Kind = "Answer"
		end

		return tbl63
	end

	tbl2.Think = function(arg, arg2)
		tbl2.Ready()
		if tbl2.ErrorOf(arg) then
			tbl2.LastIntent = nil
			return tbl2.Runners.Error(nil, arg)
		end
		local v6 = tbl2.Unpreface(tbl2.Unslang(arg))
		local tbl59 = {}

		for _, v7 in (" %* "):format(v6):gsub("%s*[;,]?%s+and then%s+(%a+)", function(arg3)
			return tbl2.Commands[arg3:lower()] and ("\n%*"):format(arg3) or (" and then %*"):format(arg3)
		end):gsub("%s*[;,]?%s+then%s+(%a+)", function(arg3)
			return tbl2.Commands[arg3:lower()] and ("\n%*"):format(arg3) or (" then %*"):format(arg3)
		end):gsub("%s*;%s*", "\n"):split("\n") do
			local match = v7:match("^%s*(.-)%s*$")

			if match ~= "" then
				table.insert(tbl59, match)
			end
		end

		if not arg2 and #tbl59 > 1 then
			local tbl60 = {}
			local v7 = nil

			for _, v8 in tbl59, nil, nil do
				v7 = tbl2.Think(v8, true)
				table.insert(tbl60, v7.Text)
			end

			return { Text = table.concat(tbl60, "\n\n"), Actions = v7 and v7.Actions }
		end

		local v7 = tbl2.Understand(v6)
		if v7.Kind == "Empty" then
			return { Text = "Ask me anything about CatVape.", Actions = fn47() }
		end

		if v7.Kind == "Elsewhere" then
			tbl2.LastIntent = nil
			return tbl2.ElsewhereReply(v7.Absent, v7.Tokens)
		end

		if v7.Kind == "Calculate" or v7.Kind == "Offtopic" or v7.Kind == "Error" or v7.Kind == "Performance" or v7.Kind == "Symptom" then
			tbl2.LastIntent = nil
			return tbl2.Runners[v7.Kind](v7, v6)
		end

		if v7.Kind == "Ask" then
			if v7.Intent == "Bind" and v7.Mentioned then
				return fn53(v7.Mentioned)
			end
			return tbl2.AskFor(v7.Intent, v7.Unknown)
		end

		if v7.Kind == "Answer" then
			tbl2.LastIntent = v7.Best and v7.Best.Intent or nil
			return fn67(v6)
		end

		if v7.Kind == "Fact" then
			tbl2.LastIntent = nil
			return tbl2.FactReply(v7.Fact)
		end

		if v7.Kind == "Lookup" then
			tbl2.LastIntent = nil
			return tbl2.RunLookup(v7.Lookup, v7.Tokens)
		end

		if v7.Kind == "Clarify" then
			return tbl2.Clarify({ v7.Best, v7.Runner })
		end
		local v8 = tbl2.Execute(v7.Best, v6)

		if v7.Alternative then
			local runner = v7.Runner
			local v9 = tbl2.Canonical(runner)
			v8.Actions = v8.Actions or {}

			table.insert(v8.Actions, {
				Text = ("Or: %*"):format(v9),
				Callback = function()
					tbl2.Learn(runner)
					fn39(v9, true)
					fn41(tbl2.Execute(runner))
				end,
			})
		end

		return v8
	end

	fn4 = function(arg)
		if vape.ThreadFix then
			setthreadidentity(8)
		end

		local match = arg:sub(1, 600):match("^%s*(.-)%s*$")
		if match == "" then
			return
		end
		fn39(match, true)
		local v6, v7 = fn39("Thinking.", false, nil, true)
		local flag = true

		task.spawn(function()
			if vape.ThreadFix then
				setthreadidentity(8)
			end

			for i = 1, 40 do
				task.wait(0.25)
				if not (not flag or not v6.Parent) then
					v7.Text = ("Thinking%*"):format(string.rep(".", i % 3 + 1))
					continue
				end
				break
			end
		end)

		task.wait(0.6)
		local now = os.clock()
		local ok, result = pcall(tbl2.Think, match)
		local n3 = os.clock() - now
		flag = false

		if not ok then
			local v8 = warn
			local str = ("[catvape] Assistant errored answering \"%*\" : %*"):format(match, result)
			v8(str)
			result = { Text = "Something went wrong answering that, check your console." }
		end

		fn40(v6)
		fn41(result, n3 < 1 and ("Thought for %*ms"):format(math.max(1, math.round(n3 * 1000))) or ("Thought for %*s"):format(math.round(n3 * 10) / 10))
	end

	assistant = {
		Collapsed = false,
		GameGreetings = {
			BedWars = {
				"Which bed are we breaking first?",
				"Ready to win some games?",
				"Let's get your config match ready.",
			},
			IllegalSoccer = { "Ready to score some goals?", "Want to tune your shots?" },
			TowerOfHell = { "Ready to climb the tower?" },
		},
		Greetings = {
			"What should we work on?",
			"What can I help with?",
			"Where should we start?",
			"What's on your mind?",
			"Ready when you are.",
			"What are we setting up today?",
			"Need a hand with something?",
			"Ask me anything about CatVape.",
			"What's the plan?",
			"How can I help?",
		},
		Mode = "Landing",
		Name = "Assistant",
		Type = "Assistant",
	}

	local n3 = math.floor((gui.AbsoluteSize.X / scale.Scale / 2 - 231) / 230 + 0.5)

	if n3 < 1 then
		n3 = 1
	end

	local n4 = math.floor(gui.AbsoluteSize.Y / scale.Scale * 0.78) - 425

	if n4 < 60 then
		n4 = 60
	end

	local textButton = Instance.new("TextButton")
	textButton.AutoButtonColor = false
	textButton.BackgroundColor3 = uiPallet.Main
	textButton.Name = "AssistantWindow"
	textButton.Position = UDim2.fromOffset(6 + n3 * 230, n4)
	textButton.Size = UDim2.fromOffset(450, 234)
	textButton.Text = ""
	textButton.Parent = clickGUI
	assistant.Default = textButton.Position
	assistant.Object = textButton
	addBlur(textButton)
	addCorner(textButton, UDim.new(0, 12))
	addDragHandler(textButton)
	local uiStroke = Instance.new("UIStroke")
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke.Color = Color3.fromRGB(85, 85, 85)
	uiStroke.Transparency = 0.8
	uiStroke.Parent = textButton
	local imageLabel = Instance.new("ImageLabel")
	imageLabel.BackgroundTransparency = 1
	imageLabel.Image = getVapeAsset("catsix/assets/new/vape.png")
	imageLabel.Position = UDim2.fromOffset(11, 12)
	imageLabel.Size = UDim2.fromOffset(16, 16)
	imageLabel.Parent = textButton
	local textLabel = Instance.new("TextLabel")
	textLabel.BackgroundTransparency = 1
	textLabel.FontFace = uiPallet.Font
	textLabel.Position = UDim2.fromOffset(34, 0)
	textLabel.Size = UDim2.new(1, -100, 0, 41)
	textLabel.Text = "AI Assistant"
	textLabel.TextColor3 = uiPallet.Text
	textLabel.TextSize = 13
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.Parent = textButton
	local textButton2 = Instance.new("TextButton")
	textButton2.BackgroundTransparency = 1
	textButton2.Position = UDim2.new(1, -53, 0, 0)
	textButton2.Size = UDim2.fromOffset(24, 40)
	textButton2.Text = ""
	textButton2.Parent = textButton
	addTooltip(textButton2, "New chat")
	local imageLabel2 = Instance.new("ImageLabel")
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.Image = getVapeAsset("catsix/assets/new/editlarge.png")
	imageLabel2.ImageColor3 = Color3.fromRGB(140, 140, 140)
	imageLabel2.Position = UDim2.fromOffset(6, 14)
	imageLabel2.Size = UDim2.fromOffset(12, 12)
	imageLabel2.Parent = textButton2
	local textButton3 = Instance.new("TextButton")
	textButton3.BackgroundTransparency = 1
	textButton3.Position = UDim2.new(1, -79, 0, 0)
	textButton3.Size = UDim2.fromOffset(24, 40)
	textButton3.Text = ""
	textButton3.Parent = textButton
	assistant.HistoryButton = textButton3
	addTooltip(textButton3, "Chat history")
	local imageLabel3 = Instance.new("ImageLabel")
	imageLabel3.BackgroundTransparency = 1
	imageLabel3.Image = getVapeAsset("catsix/assets/new/legit_clock.png")
	imageLabel3.ImageColor3 = Color3.fromRGB(140, 140, 140)
	imageLabel3.Position = UDim2.fromOffset(6, 14)
	imageLabel3.Size = UDim2.fromOffset(12, 12)
	imageLabel3.Parent = textButton3
	local textButton4 = Instance.new("TextButton")
	textButton4.BackgroundTransparency = 1
	textButton4.Position = UDim2.new(1, -29, 0, 0)
	textButton4.Size = UDim2.fromOffset(27, 40)
	textButton4.Text = ""
	textButton4.Parent = textButton
	local imageLabel4 = Instance.new("ImageLabel")
	imageLabel4.BackgroundTransparency = 1
	imageLabel4.Image = getVapeAsset("catsix/assets/new/downexpand.png")
	imageLabel4.ImageColor3 = Color3.fromRGB(140, 140, 140)
	imageLabel4.Position = UDim2.fromOffset(9, 18)
	imageLabel4.Size = UDim2.fromOffset(9, 4)
	imageLabel4.Parent = textButton4
	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = Color3.new(1, 1, 1)
	frame.BackgroundTransparency = 0.928
	frame.BorderSizePixel = 0
	frame.Position = UDim2.fromOffset(0, 40)
	frame.Size = UDim2.new(1, 0, 0, 1)
	frame.Parent = textButton
	local textLabel2 = Instance.new("TextLabel")
	textLabel2.BackgroundTransparency = 1
	textLabel2.FontFace = uiPallet.Font
	textLabel2.Position = UDim2.fromOffset(0, 60)
	textLabel2.Size = UDim2.new(1, 0, 0, 28)
	textLabel2.Text = "What should we work on?"
	textLabel2.TextColor3 = uiPallet.Text
	textLabel2.TextSize = 20
	textLabel2.Parent = textButton
	scrollingFrame = Instance.new("ScrollingFrame")
	scrollingFrame.BackgroundTransparency = 1
	scrollingFrame.BorderSizePixel = 0
	scrollingFrame.CanvasSize = UDim2.new()
	scrollingFrame.Position = UDim2.fromOffset(0, 41)
	scrollingFrame.ScrollBarImageTransparency = 0.75
	scrollingFrame.ScrollBarThickness = 2
	scrollingFrame.Size = UDim2.new(1, 0, 0, 300)
	scrollingFrame.Visible = false
	scrollingFrame.Parent = textButton
	assistant.Chat = scrollingFrame
	local uiPadding = Instance.new("UIPadding")
	uiPadding.PaddingBottom = UDim.new(0, 12)
	uiPadding.PaddingLeft = UDim.new(0, 20)
	uiPadding.PaddingRight = UDim.new(0, 20)
	uiPadding.PaddingTop = UDim.new(0, 12)
	uiPadding.Parent = scrollingFrame
	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.Padding = UDim.new(0, 14)
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Parent = scrollingFrame
	local scrollingFrame2 = Instance.new("ScrollingFrame")
	scrollingFrame2.BackgroundTransparency = 1
	scrollingFrame2.BorderSizePixel = 0
	scrollingFrame2.CanvasSize = UDim2.new()
	scrollingFrame2.Position = UDim2.fromOffset(0, 41)
	scrollingFrame2.ScrollBarImageTransparency = 0.75
	scrollingFrame2.ScrollBarThickness = 2
	scrollingFrame2.Size = UDim2.new(1, 0, 1, -49)
	scrollingFrame2.Visible = false
	scrollingFrame2.Parent = textButton
	local uiPadding2 = Instance.new("UIPadding")
	uiPadding2.PaddingLeft = UDim.new(0, 10)
	uiPadding2.PaddingRight = UDim.new(0, 10)
	uiPadding2.PaddingTop = UDim.new(0, 8)
	uiPadding2.Parent = scrollingFrame2
	local uiListLayout2 = Instance.new("UIListLayout")
	uiListLayout2.Padding = UDim.new(0, 2)
	uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout2.Parent = scrollingFrame2
	local textLabel3 = Instance.new("TextLabel")
	textLabel3.BackgroundTransparency = 1
	textLabel3.FontFace = uiPallet.Font
	textLabel3.Size = UDim2.new(1, 0, 0, 60)
	textLabel3.Text = "No saved chats yet, your conversations show up here."
	textLabel3.TextColor3 = color.Dark(uiPallet.Text, 0.45)
	textLabel3.TextSize = 12
	textLabel3.Visible = false
	textLabel3.Parent = scrollingFrame2
	local frame2 = Instance.new("Frame")
	frame2.BackgroundColor3 = color.Light(uiPallet.Main, 0.05)
	frame2.Parent = textButton
	local v6 = addCorner(frame2, UDim.new(0, 18))
	local uiStroke2 = Instance.new("UIStroke")
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke2.Color = color.Light(uiPallet.Main, 0.14)
	uiStroke2.Parent = frame2
	local textBox = Instance.new("TextBox")
	textBox.BackgroundTransparency = 1
	textBox.ClearTextOnFocus = false
	textBox.ClipsDescendants = true
	textBox.FontFace = uiPallet.Font
	textBox.PlaceholderColor3 = color.Dark(uiPallet.Text, 0.4)
	textBox.PlaceholderText = "Ask CatVape anything"
	textBox.Text = ""
	textBox.TextColor3 = uiPallet.Text
	textBox.TextSize = 14
	textBox.TextXAlignment = Enum.TextXAlignment.Left
	textBox.Parent = frame2
	local textButton5 = Instance.new("TextButton")
	textButton5.AutoButtonColor = false
	textButton5.BackgroundColor3 = color.Light(uiPallet.Main, 0.22)
	textButton5.Size = UDim2.fromOffset(30, 30)
	textButton5.Text = ""
	textButton5.Parent = frame2
	addCorner(textButton5, UDim.new(1, 0))
	addTooltip(textButton5, "Send")
	local frame3 = Instance.new("Frame")
	frame3.BackgroundTransparency = 1
	frame3.Size = UDim2.fromScale(1, 1)
	frame3.Parent = textButton5
	local tbl59 = {}
	local tbl60 = {}
	local tbl61 = {}
	local udim2 = UDim2.fromOffset(15, 16)
	local udim22 = UDim2.fromOffset(2, 12)
	tbl61[1] = udim2
	tbl61[2] = udim22
	tbl61[3] = 0
	local tbl62 = {}
	local udim23 = UDim2.fromOffset(12.4, 12.6)
	local udim24 = UDim2.fromOffset(2, 8)
	tbl62[1] = udim23
	tbl62[2] = udim24
	tbl62[3] = 45
	local tbl63 = {}
	local udim25 = UDim2.fromOffset(17.6, 12.6)
	local udim26 = UDim2.fromOffset(2, 8)
	tbl63[1] = udim25
	tbl63[2] = udim26
	tbl63[3] = -45
	tbl60[1] = tbl61
	tbl60[2] = tbl62
	tbl60[3] = tbl63

	for _, v7 in tbl60, nil, nil do
		local frame4 = Instance.new("Frame")
		frame4.AnchorPoint = Vector2.new(0.5, 0.5)
		frame4.BackgroundColor3 = color.Dark(uiPallet.Text, 0.3)
		frame4.BorderSizePixel = 0
		frame4.Position = v7[1]
		frame4.Rotation = v7[3]
		frame4.Size = v7[2]
		frame4.Parent = frame3
		addCorner(frame4, UDim.new(1, 0))
		table.insert(tbl59, frame4)
	end

	local frame4 = Instance.new("Frame")
	frame4.BackgroundTransparency = 1
	frame4.Position = UDim2.fromOffset(20, 194)
	frame4.Size = UDim2.new(1, -40, 0, 24)
	frame4.Parent = textButton
	local textLabel4 = Instance.new("TextLabel")
	textLabel4.BackgroundTransparency = 1
	textLabel4.FontFace = uiPallet.Font
	textLabel4.Position = UDim2.fromOffset(0, 401)
	textLabel4.Size = UDim2.new(1, 0, 0, 16)
	textLabel4.Text = "This is an AI and can make mistakes."
	textLabel4.TextColor3 = color.Dark(uiPallet.Text, 0.45)
	textLabel4.TextSize = 11
	textLabel4.Visible = false
	textLabel4.Parent = textButton

	tbl3 = {
		Chats = {},
		File = "catsix/profiles/assistantchats.json",
		Limit = 30,
		Day = function(arg)
			local v7 = os.date("*t")
			local v8 = os.date("*t", arg)
			if v7.year == v8.year and v7.yday == v8.yday then
				return "Today"
			end

			if v7.year == v8.year and v7.yday - v8.yday == 1 then
				return "Yesterday"
			end
			return (os.date("%b %d", arg):gsub(" 0", " "))
		end,
		Clock = function(arg)
			return (os.date("%I:%M %p", arg):gsub("^0", ""))
		end,
		Load = function()
			local v7 = fn2(tbl3.File) and loadJSON(tbl3.File)
			table.clear(tbl3.Chats)
			if type(v7) ~= "table" then
				return
			end

			for _, v8 in v7, nil, nil do
				if type(v8) == "table" and type(v8.Title) == "string" and type(v8.Messages) == "table" and type(v8.Created) == "number" then
					table.insert(tbl3.Chats, v8)
				end
			end
		end,
		Save = function()
			if tbl3.Queued then
				return
			end
			tbl3.Queued = true

			task.delay(0.5, function()
				tbl3.Queued = false
				writeJSON(tbl3.File, tbl3.Chats)
			end)
		end,
		Record = function(arg, arg2, arg3)
			if tbl3.Replaying then
				return
			end
			local current = tbl3.Current

			if not current then
				if not arg2 then
					return
				end
				local match = arg:gsub("%s+", " "):match("^%s*(.-)%s*$")

				current = {
					Created = os.time(),
					Messages = {},
					Title = #match > 48 and ("%*..."):format(match:sub(1, 45)) or match,
				}

				tbl3.Current = current
			end

			table.insert(current.Messages, { Note = arg3, Role = arg2 and "user" or "bot", Text = arg })
			current.Updated = os.time()

			while n2 < #current.Messages do
				table.remove(current.Messages, 1)
			end

			local v7 = table.find(tbl3.Chats, current)

			if v7 ~= 1 then
				if v7 then
					table.remove(tbl3.Chats, v7)
				end

				table.insert(tbl3.Chats, 1, current)
			end

			while tbl3.Limit < #tbl3.Chats do
				table.remove(tbl3.Chats)
			end

			tbl3.Save()
		end,
	}

	local function fn68()
		local created = tbl3.Current and tbl3.Current.Created or os.time()
		local textLabel5 = Instance.new("TextLabel")
		textLabel5.BackgroundTransparency = 1
		textLabel5.FontFace = uiPallet.Font
		textLabel5.LayoutOrder = layoutOrder
		textLabel5.RichText = true
		textLabel5.Size = UDim2.new(1, 0, 0, 16)
		local clock = tbl3.Clock
		textLabel5.Text = ("<b>%*</b> %*"):format(tbl3.Day(created), clock(created))
		textLabel5.TextColor3 = color.Dark(uiPallet.Text, 0.45)
		textLabel5.TextSize = 12
		textLabel5.Parent = scrollingFrame
		table.insert(tbl5, textLabel5)
	end

	tbl3.Open = function(current)
		fn42()
		tbl3.Current = current
		tbl3.Replaying = true
		assistant:SetMode("Chat")

		for _, v7 in current.Messages, nil, nil do
			if type(v7) == "table" and type(v7.Text) == "string" then
				fn39(v7.Text, v7.Role == "user", nil, nil, type(v7.Note) == "string" and v7.Note or nil)
			end
		end

		tbl3.Replaying = false
	end

	tbl3.Delete = function(arg)
		local v7 = table.find(tbl3.Chats, arg)

		if v7 then
			table.remove(tbl3.Chats, v7)
		end

		if tbl3.Current == arg then
			fn42()
		end

		tbl3.Save()
		assistant:SetMode("History")
	end

	tbl3.Refresh = function()
		for _, v7 in scrollingFrame2:GetChildren() do
			if v7:IsA("TextButton") then
				v7:Destroy()
			end
		end

		textLabel3.Visible = #tbl3.Chats == 0

		for k, v7 in tbl3.Chats, nil, nil do
			local textButton6 = Instance.new("TextButton")
			textButton6.AutoButtonColor = false
			textButton6.BackgroundColor3 = color.Light(uiPallet.Main, 0.06)
			textButton6.BackgroundTransparency = tbl3.Current == v7 and 0 or 1
			textButton6.LayoutOrder = k
			textButton6.Size = UDim2.new(1, 0, 0, 36)
			textButton6.Text = ""
			textButton6.Parent = scrollingFrame2
			addCorner(textButton6, UDim.new(0, 8))
			local textLabel5 = Instance.new("TextLabel")
			textLabel5.BackgroundTransparency = 1
			textLabel5.FontFace = uiPallet.Font
			textLabel5.Position = UDim2.fromOffset(12, 0)
			textLabel5.Size = UDim2.new(1, -130, 1, 0)
			textLabel5.Text = v7.Title
			textLabel5.TextColor3 = uiPallet.Text
			textLabel5.TextSize = 13
			textLabel5.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel5.TextXAlignment = Enum.TextXAlignment.Left
			textLabel5.Parent = textButton6
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.BackgroundTransparency = 1
			textLabel6.FontFace = uiPallet.Font
			textLabel6.Position = UDim2.new(1, -112, 0, 0)
			textLabel6.Size = UDim2.new(0, 80, 1, 0)
			textLabel6.Text = tbl3.Day(v7.Updated or v7.Created)
			textLabel6.TextColor3 = color.Dark(uiPallet.Text, 0.45)
			textLabel6.TextSize = 11
			textLabel6.TextXAlignment = Enum.TextXAlignment.Right
			textLabel6.Parent = textButton6
			local textButton7 = Instance.new("TextButton")
			textButton7.BackgroundTransparency = 1
			textButton7.Position = UDim2.new(1, -28, 0, 0)
			textButton7.Size = UDim2.fromOffset(28, 36)
			textButton7.Text = ""
			textButton7.Parent = textButton6
			addTooltip(textButton7, "Delete chat")
			local imageLabel5 = Instance.new("ImageLabel")
			imageLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel5.BackgroundTransparency = 1
			imageLabel5.Image = getVapeAsset("catsix/assets/new/closemini.png")
			imageLabel5.ImageColor3 = Color3.fromRGB(140, 140, 140)
			imageLabel5.Position = UDim2.fromScale(0.5, 0.5)
			imageLabel5.Size = UDim2.fromOffset(14, 14)
			imageLabel5.Parent = textButton7

			textButton6.MouseEnter:Connect(function()
				textButton6.BackgroundTransparency = 0
			end)

			textButton6.MouseLeave:Connect(function()
				textButton6.BackgroundTransparency = tbl3.Current == v7 and 0 or 1
			end)

			textButton6.MouseButton1Click:Connect(function()
				if vape.ThreadFix then
					setthreadidentity(8)
				end

				tbl3.Open(v7)
			end)

			textButton7.MouseEnter:Connect(function()
				imageLabel5.ImageColor3 = uiPallet.Text
			end)

			textButton7.MouseLeave:Connect(function()
				imageLabel5.ImageColor3 = Color3.fromRGB(140, 140, 140)
			end)

			textButton7.MouseButton1Click:Connect(function()
				if vape.ThreadFix then
					setthreadidentity(8)
				end

				tbl3.Delete(v7)
			end)
		end
	end

	local function fn69()
		local v7 = table.clone(assistant.Greetings)
		local tbl64 = assistant.GameGreetings[fn33() or ""] or {}

		for _, v8 in tbl64, nil, nil do
			table.insert(v7, v8)
		end

		local n5 = tonumber(os.date("%H")) or 12
		local insert = table.insert
		local str = n5 < 5 and "Up late? What should we work on?"
		local str2

		if str then
			str2 = str
		else
			str2 = n5 < 12 and "Good morning, what should we work on?"
		end

		local str3

		if str2 then
			str3 = str2
		else
			str3 = n5 < 18 and "Good afternoon, what can I do for you?"
		end

		insert(v7, str3 or "Good evening, what are we doing tonight?")
		textLabel2.Text = v7[math.random(1, #v7)]
	end

	local function fn70()
		fn17()
		frame4:ClearAllChildren()
		local n5 = 0

		for _, v7 in fn47() do
			local n6 = math.ceil(getFontBounds(v7.Text, 12, uiPallet.Font).X) + 22

			if not (n5 + n6 > n - 40) then
				local callback = v7.Callback
				createTextButton(frame4, v7.Text, UDim2.fromOffset(n5, 0), n6, callback)
				n5 += n6 + 6
				continue
			end

			break
		end
	end

	assistant.Layout = function(arg)
		local visible = not arg.Collapsed
		local flag = arg.Mode == "Chat"
		local flag2 = arg.Mode == "History"
		textLabel.Text = flag2 and "Chat history" or "AI Assistant"
		imageLabel3.ImageColor3 = flag2 and uiPallet.Text or Color3.fromRGB(140, 140, 140)
		imageLabel4.Rotation = visible and 0 or 180
		frame.Visible = visible
		textLabel2.Visible = visible and arg.Mode == "Landing"
		frame4.Visible = visible and arg.Mode == "Landing"
		scrollingFrame.Visible = visible and flag
		scrollingFrame2.Visible = visible and flag2
		textLabel4.Visible = visible and flag
		frame2.Visible = visible and not flag2
		local n5

		if visible and flag2 then
			n5 = 425
		elseif visible and flag then
			frame2.Position = UDim2.fromOffset(16, 349)
			frame2.Size = UDim2.new(1, -32, 0, 46)
			v6.CornerRadius = UDim.new(1, 0)
			textBox.Position = UDim2.fromOffset(18, 11)
			textBox.Size = UDim2.new(1, -66, 0, 24)
			textButton5.Position = UDim2.new(1, -38, 0, 8)
			n5 = 425
		else
			n5 = 41

			if visible then
				frame2.Position = UDim2.fromOffset(16, 102)
				frame2.Size = UDim2.new(1, -32, 0, 80)
				v6.CornerRadius = UDim.new(0, 18)
				textBox.Position = UDim2.fromOffset(16, 12)
				textBox.Size = UDim2.new(1, -32, 0, 24)
				textButton5.Position = UDim2.new(1, -40, 1, -40)
				n5 = 234
			end
		end

		textButton.Size = UDim2.fromOffset(450, n5)
	end

	assistant.SetMode = function(arg, mode)
		arg.Mode = mode

		if mode == "Chat" and layoutOrder == 0 then
			fn68()
		elseif mode == "Landing" then
			fn69()
			fn70()
		elseif mode == "History" then
			tbl3.Refresh()
		end

		arg:Layout()
	end

	assistant.ShowHistory = function(arg, arg2)
		if arg2 == nil then
			arg2 = arg.Mode ~= "History"
		end

		arg:SetMode(arg2 and "History" or layoutOrder > 0 and "Chat" or "Landing")
	end

	assistant.Collapse = function(arg)
		arg.Collapsed = not arg.Collapsed
		arg:Layout()
		vape:QueueSave()
	end

	assistant.Color = function()
	end

	assistant.Load = function(arg, arg2)
		if vape.ThreadFix then
			setthreadidentity(8)
		end

		if arg2.Collapsed == nil then
			return
		end

		if arg2.Position then
			textButton.Position = UDim2.fromOffset(arg2.Position.X, arg2.Position.Y)
		end

		if arg2.Collapsed ~= arg.Collapsed then
			arg:Collapse()
		end
	end

	assistant.Save = function(arg, arg2)
		arg2.Assistant = {
			Collapsed = arg.Collapsed,
			Position = { X = textButton.Position.X.Offset, Y = textButton.Position.Y.Offset },
		}
	end

	vape.Categories.Assistant = assistant
	vape:Clean(fn27)
	tbl3.Load()
	fn69()
	assistant:Layout()

	vape.Settings.GUI:CreateToggle({
		Name = "Assistant chat",
		Default = true,
		Function = function(visible)
			textButton.Visible = visible
		end,
		Tooltip = "Shows the assistant chat box whenever you open the GUI",
	})

	vape.Settings.GUI:CreateButton({
		Name = "Forget assistant choices",
		Function = function()
			tbl2.Learned = {}
			tbl2.Memory = {}
			tbl2.Model = nil
			writeJSON(tbl2.File, {})
			vape:CreateNotification("shaders v3", "Forgot every answer it learned from your choices", 5)
		end,
		Tooltip = "The assistant remembers which option you pick when it asks what you meant\nThis wipes that memory",
	})

	local function fn71()
		local text = textBox.Text
		textBox.Text = ""
		fn4(text)
	end

	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			fn71()
		end
	end)

	textBox:GetPropertyChangedSignal("Text"):Connect(function()
		local flag = textBox.Text:match("%S") ~= nil
		textButton5.BackgroundColor3 = flag and uiPallet.Text or color.Light(uiPallet.Main, 0.22)

		for _, v7 in tbl59, nil, nil do
			v7.BackgroundColor3 = flag and uiPallet.Main or color.Dark(uiPallet.Text, 0.3)
		end
	end)

	textButton5.MouseButton1Click:Connect(fn71)

	textButton2.MouseButton1Click:Connect(function()
		tbl2.Pending = nil
		fn42()
	end)

	textButton3.MouseButton1Click:Connect(function()
		assistant:ShowHistory()
	end)

	textButton4.MouseButton1Click:Connect(function()
		assistant:Collapse()
	end)

	for _, v7 in { textButton2, textButton3, textButton4 }, nil, nil do
		local imageLabel5 = v7:FindFirstChildOfClass("ImageLabel")

		v7.MouseEnter:Connect(function()
			imageLabel5.ImageColor3 = uiPallet.Text
		end)

		v7.MouseLeave:Connect(function()
			imageLabel5.ImageColor3 = v7 == textButton3 and assistant.Mode == "History" and uiPallet.Text or Color3.fromRGB(140, 140, 140)
		end)
	end

	vape:Clean(clickGUI:GetPropertyChangedSignal("Visible"):Connect(function()
		if not clickGUI.Visible then
			return
		end

		if vape.ThreadFix then
			setthreadidentity(8)
		end

		if assistant.Mode == "Landing" then
			fn69()
			fn70()
		end

		task.defer(function()
			if not tbl2.Model then
				tbl2.Train()
			end
		end)
	end))

	uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		if vape.ThreadFix then
			setthreadidentity(8)
		end

		scrollingFrame.CanvasSize = UDim2.fromOffset(0, uiListLayout.AbsoluteContentSize.Y / scale.Scale + 24)

		task.defer(function()
			scrollingFrame.CanvasPosition = Vector2.new(0, 1000000)
		end)
	end)
end

fn3()
