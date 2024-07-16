function animation(character)
	local canceldb = false
	local root = character:FindFirstChild("HumanoidRootPart", true)
	local part1 = character["HumanoidRootPart"]["RootJoint"]	
	local part2 = character["Torso"]["Right Shoulder"]
	local part3 = character["Torso"]["Left Shoulder"]
	local part4 = character["Torso"]["Right Hip"]
	local part5 = character["Torso"]["Left Hip"]
	local part6 = character["Torso"]["Neck"]
	local val = 2 --Action
	local tweens = {}
	local function tablesorting(part, tween)
		for i, v in pairs(tweens) do
			if v.Instance == part then
				table.remove(tweens, table.find(tweens, v))
			end
		end
		table.insert(tweens, tween)
	end
	local ts = game:GetService("TweenService")
	local tween1, tween2, tween3, tween4, tween5, tween6

	local priority = root:FindFirstChild("priority")
	if not priority then
		priority = Instance.new("NumberValue", root)
		priority.Name = "priority"
	end

	local anims = root:FindFirstChild("anims")
	if not anims then
		anims = Instance.new("Folder", root)
		anims.Name = "anims"
	end
	local animvalue = anims:FindFirstChild("Imported Animation Clip")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "Imported Animation Clip"
	end
	animvalue.Value = true

	local function afterframe()
		if canceldb or not character or not part1 then
			return true
		else
			return false
		end
	end

	if afterframe() then
		animvalue.Value = false
		return false
	end
	priority.Value = val
	local connect
	local connect2
	connect = priority.Changed:Connect(function()
		if priority.Value > val then
			for i, v in pairs(tweens) do
				if v and v.PlaybackState == Enum.PlaybackState.Playing then
					v:Cancel()
				end
			end
			canceldb = true
			connect2:Disconnect()
			connect:Disconnect()
		else
			priority.Value = val
		end
	end)
	connect2 = animvalue.Changed:Connect(function()
		if not animvalue.Value then
			for i, v in pairs(tweens) do
				if v and v.PlaybackState == Enum.PlaybackState.Playing then
					v:Cancel()
				end
			end
			canceldb = true
			connect:Disconnect()
			if priority.Value <= val then
				priority.Value = 0
			end
			connect2:Disconnect()
		--smooth transition
		tween1 = ts:Create(part1, TweenInfo.new(0.5), {C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.5), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.5), {C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.5), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween4:Play() tablesorting(part4, tween4)
		tween5 = ts:Create(part5, TweenInfo.new(0.5), {C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween6 = ts:Create(part6, TweenInfo.new(0.5), {C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween6:Play() tablesorting(part6, tween6)
		end
	end)
	if true then
		--1, 0
		tween1 = ts:Create(part1, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0279819481, -0.292460144, -2.00793147e-05, -0.997069359, -0.0764652491, -0.00239571463, -0.0204514042, 0.236239135, 0.971479714, -0.0737184733, 0.968681633, -0.237110615)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-09, 1, 1.49011612e-08, -0.976972342, 0.176111922, -0.12045607, -0.0637502074, 0.297826976, 0.95248884, 0.203619719, 0.938234389, -0.279741526)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.991022587, -0.81332016, 0.0264128745, 0.0141664445, 0.0446297564, -0.998903155, -0.327332735, 0.944163084, 0.0375418067, 0.944802999, 0.326441884, 0.0279842149)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.28333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.994423985, 0.372225314, -0.03534659, 0.271972775, -0.074682951, 0.959401906, -0.0117515475, 0.996650875, 0.0809137747, -0.962232769, -0.0332803503, 0.270184964)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.942851603, -0.827434182, -0.295714229, -0.0756034255, -0.120790698, 0.989794731, 0.158287793, 0.978595316, 0.131514445, -0.984494328, 0.166615382, -0.0548654646)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999999881, 0.500000119, 1.49011612e-08, -0.14837566, -0.0135680493, -0.988837957, -0.111432798, 0.993767142, 0.0030848668, 0.982632875, 0.11064671, -0.148962781)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166667014360428)

		if afterframe() then
			return
		end

		--2, 0.06666667014360428
		tween1 = ts:Create(part1, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0489806756, -0.214653447, 0.0425309315, -0.998100519, -0.00964227039, -0.0608475767, -0.0615779199, 0.186393395, 0.980543554, 0.00188691937, 0.982427895, -0.186633095)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.994902611, -0.897834122, -0.0314058661, 0.0330876671, 0.094379209, -0.994986355, -0.281784773, 0.956025839, 0.0813130513, 0.958906949, 0.277681559, 0.0582272932)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.951017141, -0.88250035, -0.243813902, -0.0436713137, -0.00328883622, 0.999040484, 0.0868199691, 0.996198773, 0.00707466528, -0.995266378, 0.0870456323, -0.0432197787)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499999701976776)

		if afterframe() then
			return
		end

		--3, 0.11666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0490005687, -0.137639865, 0.0992853418, -0.99456495, -0.00372181507, -0.104050897, -0.103472441, 0.146398038, 0.983799279, 0.0115712993, 0.989218831, -0.145987436)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.991989851, -0.839453757, -0.0493519902, 0.065941602, 0.186673433, -0.98020649, -0.19820793, 0.965219319, 0.170485184, 0.977939248, 0.183042616, 0.100648269)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.961926222, -0.972180843, -0.176755369, -0.00207090704, 0.0532812476, 0.998577356, 0.106526069, 0.992909253, -0.052757889, -0.994307756, 0.106265262, -0.007732064)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.29999998956918716, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.926191211, 0.497799605, 0.00617624819, 0.336716741, 0.0469003245, -0.940437317, 0.0385352261, 0.997235954, 0.0635301471, 0.940817118, -0.0576316528, 0.333978593)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166667014360428)

		if afterframe() then
			return
		end

		--4, 0.18333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.037441887, -0.137643859, 0.210173428, -0.992890179, 0.0804904699, -0.0876948088, -0.090605706, -0.0332474858, 0.995331824, 0.0771990642, 0.9962008, 0.0403040648)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.36441803e-07, 0.999999285, -3.04626301e-05, -0.990236759, -0.016660355, -0.138396353, -0.138720244, 0.0201670155, 0.990126193, -0.0137048475, 0.999657691, -0.0222811624)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.994466066, -0.846020401, -0.0665583536, 0.0983800367, 0.12566258, -0.987182975, -0.0107184574, 0.992071509, 0.125216708, 0.99509114, -0.00173774362, 0.0989469439)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.971211195, -0.963568807, -0.138138309, 0.00618514325, 0.0380067565, 0.999258339, -0.118543684, 0.992258966, -0.0370067842, -0.992929518, -0.118226878, 0.010642726)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--5, 0.21666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0285766944, -0.13764064, 0.237438574, -0.994250059, 0.0840040594, -0.0664086416, -0.0736462176, -0.0862149149, 0.993550777, 0.0777368769, 0.99272871, 0.0919057876)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00184548, -0.878315687, -0.10093756, 0.131786957, 0.0980551094, -0.986416399, 0.0739675984, 0.991348743, 0.108427614, 0.988514483, -0.0872521475, 0.123393893)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989780843, -0.94634521, -0.0609041303, 0.0528551564, 0.0450064354, 0.997587502, -0.154499426, 0.987323523, -0.0363576487, -0.986578286, -0.15220511, 0.0591388009)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--6, 0.2666666805744171
		--7, 0.28333333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.030411046, -0.137632325, 0.250867069, -0.99608773, 0.0832350105, -0.0296860784, -0.0382821411, -0.103659362, 0.99387598, 0.0796480253, 0.991123974, 0.106440216)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.89503145e-06, 0.999992371, -3.34531069e-05, -0.990576804, -0.0206515901, -0.135395691, -0.127021894, -0.231207192, 0.964578032, -0.0512245148, 0.972685516, 0.226405069)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00242639, -0.884188652, -0.100420602, 0.137536079, 0.0785493851, -0.987377226, 0.140315264, 0.98525244, 0.0979254693, 0.980507791, -0.152012393, 0.124486081)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.5833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.996155381, 0.420873225, -0.0349195898, 0.383554816, -0.0547108725, 0.921895504, -0.0375915989, 0.996491134, 0.074777633, -0.92275244, -0.0633363649, 0.380152822)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989780843, -0.946345687, -0.060904067, 0.0890946314, 0.0217637923, 0.995785356, -0.105554111, 0.994337618, -0.0122880451, -0.990414202, -0.104014449, 0.090887405)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--8, 0.4166666567325592
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333671092987, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0427919365, -0.137650862, 0.240786016, -0.996288538, 0.0825936347, -0.0242389478, -0.0292959698, -0.0605764687, 0.997733533, 0.0809381455, 0.994740486, 0.0627713129)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333671092987, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.66826963e-06, 1.00000811, 1.89244747e-06, -0.993590832, -0.0204936378, -0.111165226, -0.104588114, -0.206415057, 0.972858667, -0.042883534, 0.978249609, 0.202948764)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333671092987, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00231647, -0.876731455, -0.102106221, 0.135737091, 0.0612284318, -0.98885113, 0.117690958, 0.990025043, 0.0774562508, 0.98372978, -0.126892522, 0.12717706)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333671092987, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989863157, -0.9358356, -0.0621188134, 0.137143388, 0.00235800399, 0.990548372, -0.075320445, 0.997126818, 0.00805459917, -0.987683356, -0.0757131875, 0.136926979)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(1.4000000655651093, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.944978833, 0.498359948, 0.00460411608, 0.303002864, 0.0681647509, -0.950548649, 0.0204264186, 0.996744931, 0.077988781, 0.95277065, -0.0430471338, 0.300624251)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.1683333671092987)

		if afterframe() then
			return
		end

		--9, 0.6000000238418579
		tween1 = ts:Create(part1, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0568477735, -0.137654006, 0.241294459, -0.996209323, 0.0820609108, -0.0288611054, -0.0299115852, -0.0116005875, 0.999485195, 0.0816838667, 0.996559799, 0.0140111893)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.29640102e-06, 1.0000062, -2.9809773e-05, -0.993643343, -0.042803362, -0.104119197, -0.0931341723, -0.20698455, 0.973901033, -0.0632372797, 0.977407455, 0.201682404)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00361025, -0.893780172, -0.0999623835, 0.131901219, 0.047298409, -0.990133822, 0.0633674711, 0.996415675, 0.05604003, 0.989235282, -0.0701340288, 0.128431261)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.98981154, -0.942404449, -0.0613596067, 0.180596903, 0.00370666292, 0.983550191, -0.0422645211, 0.99909842, 0.0039952416, -0.982648671, -0.0422908068, 0.180590764)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.1516666269302368)

		if afterframe() then
			return
		end

		--10, 0.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0678379685, -0.137652576, 0.245246559, -0.995958805, 0.0822337642, -0.0361064449, -0.0357153676, 0.00622215122, 0.99934268, 0.0824043602, 0.996593654, -0.00325999409)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.12924385e-06, 1.00000072, -0.000104799867, -0.993513346, -0.0736039281, -0.0866818279, -0.0759890527, -0.137369156, 0.987600863, -0.0845987052, 0.987781465, 0.130885005)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00438666, -0.904008985, -0.0986761004, 0.129221663, 0.0582709946, -0.989902139, 0.027691666, 0.997670472, 0.0623431616, 0.991228878, -0.0354680717, 0.127306968)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989780545, -0.946345985, -0.060904175, 0.206444725, 0.00420927443, 0.978449285, -0.0219355002, 0.999759316, 0.000327143818, -0.978212595, -0.0215303823, 0.206487581)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--11, 0.8666666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0758446753, -0.137652829, 0.250121742, -0.995639205, 0.082595624, -0.0433658175, -0.0427166112, 0.00961184222, 0.999041021, 0.0829332396, 0.996536791, -0.00604172144)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00438666, -0.904009163, -0.0986760333, 0.128680617, 0.0594562627, -0.989902139, 0.0185204819, 0.997882843, 0.0623431616, 0.991512954, -0.0263557676, 0.127306968)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.3999999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.996142328, 0.420873761, -0.0349135101, 0.338293016, -0.00429211929, 0.941031039, -0.0397894122, 0.999030054, 0.018860627, -0.940199256, -0.0438234918, 0.337794125)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989780426, -0.946345747, -0.060904175, 0.206480294, 0.00174017146, 0.978449285, -0.00997815374, 0.999950111, 0.000327143818, -0.978400111, -0.00983073469, 0.206487581)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166667461395264)

		if afterframe() then
			return
		end

		--12, 0.9833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0868555903, -0.137866676, 0.262911856, -0.994613469, 0.0928046703, -0.0461670868, -0.0453030579, 0.0113965878, 0.998908281, 0.0932295024, 0.995619118, -0.00713086408)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.52088022e-06, 0.999999881, -0.00012422353, -0.993234098, -0.0838239491, -0.0803714544, -0.0682105124, -0.139017612, 0.987937987, -0.0939859152, 0.986735821, 0.132359356)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00438666, -0.904008985, -0.098676011, 0.127860546, 0.0416898057, -0.990915537, 0.00495468639, 0.999076724, 0.0426724926, 0.991779566, -0.0103657544, 0.12753588)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989383101, -0.941323221, -0.0610391274, 0.206503302, -0.00991459284, 0.978395641, -0.00880190916, 0.999889374, 0.0119901588, -0.97840631, -0.0110877547, 0.206393182)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.18499992847442626)

		if afterframe() then
			return
		end

		--13, 1.1833332777023315
		tween1 = ts:Create(part1, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.100799464, -0.138329834, 0.28458783, -0.992485881, 0.114466935, -0.0432327203, -0.0422480144, 0.0110157281, 0.999046445, 0.114834026, 0.993366003, -0.00609695399)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.92224979e-05, 0.999996901, -0.000125017017, -0.994139254, -0.0835098997, -0.0686509237, -0.0603946596, -0.0976663232, 0.993385136, -0.0896623507, 0.991709471, 0.0920503736)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00438666, -0.904009044, -0.0986761004, 0.127774075, 0.0257699341, -0.991468489, 0.00307548605, 0.999647319, 0.0263788644, 0.99179852, -0.00641978253, 0.127649754)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988952279, -0.93588233, -0.0611855388, 0.206565648, -0.0318638869, 0.977913797, -0.013046978, 0.999291062, 0.0353163518, -0.978345811, -0.0200539604, 0.206003442)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--14, 1.2666666507720947
		tween2 = ts:Create(part2, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99613601, 0.420874, -0.0349108875, 0.317148954, -0.0104592256, 0.948318005, -0.0399842151, 0.998902619, 0.0243891813, -0.947532475, -0.0456527583, 0.316382736)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--15, 1.399999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0675824583, -0.137792483, 0.285518378, -0.991980016, 0.122800894, -0.0299271867, -0.0290195085, 0.00917380117, 0.999536753, 0.123018555, 0.992388904, -0.0055366056)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.33040953e-06, 0.999994993, -0.00012435019, -0.990881026, -0.079923518, -0.108477794, -0.0980373397, -0.124641798, 0.98734659, -0.0924330801, 0.988977432, 0.115669675)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0043869, -0.904008687, -0.0986761153, 0.127728343, 0.0179327149, -0.991647005, 0.00119481049, 0.999832928, 0.0182346497, 0.991808534, -0.00351391244, 0.127685577)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988521814, -0.930440962, -0.0613319129, 0.206625849, -0.0371197239, 0.977715611, -0.0138521604, 0.999068856, 0.0408578739, -0.97832191, -0.0219857655, 0.205919296)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--16, 1.5333333015441895
		tween2 = ts:Create(part2, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.996130288, 0.420874655, -0.0349087119, 0.298029751, -0.0860311463, 0.950671494, -0.0412337631, 0.993840158, 0.102864109, -0.953665078, -0.0698557869, 0.292646974)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--17, 1.6166666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0578697175, -0.140092492, 0.274455547, -0.99180752, 0.126971096, -0.0140064685, -0.0124552185, 0.0130030988, 0.999837875, 0.127132624, 0.991821229, -0.0113151176)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.53779984e-05, 0.999994814, -0.000156402588, -0.988256276, -0.0772210062, -0.131857783, -0.120521098, -0.136572346, 0.983271539, -0.0939373672, 0.987615943, 0.125661761)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00438654, -0.904009223, -0.0986760929, 0.127813697, 0.00785427634, -0.991767168, 0.00307405484, 0.999960721, 0.00831533317, 0.991793454, -0.00411156006, 0.127784535)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988124132, -0.925418735, -0.061467059, 0.206267446, -0.0590879507, 0.976710021, -0.0066982382, 0.998066425, 0.0617945269, -0.978472769, -0.0192884337, 0.205472812)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.1850000476837158)

		if afterframe() then
			return
		end

		--18, 1.8166667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0691061392, -0.145188525, 0.251470745, -0.991787136, 0.127779379, 0.00554307224, 0.00847640075, 0.0224238541, 0.999712586, 0.127618358, 0.991549075, -0.0233228002)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.3999999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.74144113e-05, 1.00000238, -9.52892005e-05, -0.990959942, -0.109852567, -0.0770031735, -0.06713406, -0.0908761024, 0.993597269, -0.116146728, 0.989785135, 0.0826798677)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00438666, -0.904009283, -0.0986760259, 0.127860546, -0.0230418034, -0.991524458, 0.00495468639, 0.999732435, -0.0225936025, 0.991779566, -0.00202381611, 0.127940446)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.987726808, -0.92039609, -0.0616022944, 0.204779014, -0.0831900686, 0.975266695, 0.0109442938, 0.996514022, 0.0827043355, -0.978747308, -0.00626258925, 0.204975814)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.24999988079071045, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.925765634, 0.498626769, 0.00750674307, 0.278394103, 0.0481441095, -0.95925951, 0.013264399, 0.998454928, 0.0539608449, 0.960375309, -0.0277463794, 0.277325392)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.13499997615814208)

		if afterframe() then
			return
		end

		--19, 1.9666666984558105
		tween2 = ts:Create(part2, TweenInfo.new(1.183333396911621, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.996124566, 0.420880437, -0.0349558592, 0.272208631, -0.0929517895, 0.95773828, 0.035809204, 0.995612204, 0.0864496976, -0.961571336, 0.0107640922, 0.274343163)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--20, 2.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0888201594, -0.163899213, 0.252856225, -0.988727808, 0.14936024, 0.0104283048, 0.00736878999, -0.0210229233, 0.999751866, 0.149542421, 0.988559365, 0.0196853448)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00129437, -0.906903923, -0.0927897245, 0.129021361, -0.0347363502, -0.991033196, 0.0484105274, 0.998415411, -0.0286925938, 0.990459442, -0.0442744829, 0.130498528)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.987661362, -0.912454188, -0.0617562681, 0.208645627, -0.0911376402, 0.973735452, -0.0653334558, 0.992125511, 0.10685809, -0.975806773, -0.0859129727, 0.201048255)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--21, 2.066666603088379
		tween3 = ts:Create(part3, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.929808974, 0.498704642, 0.00710253417, 0.252263427, 0.0817684978, -0.964197636, 0.00541428197, 0.996288478, 0.0859064907, 0.96764344, -0.0268915035, 0.250884414)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--22, 2.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0976910889, -0.186874852, 0.275807291, -0.994603038, 0.103749454, 0.000906305911, -3.78200202e-05, -0.00909772981, 0.999958575, 0.103753403, 0.994561851, 0.00905255321)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.7442351e-05, 1.00000238, -0.000115398783, -0.993871927, -0.0972543135, -0.0525381491, -0.0537247062, 0.00962050539, 0.998509467, -0.0966039076, 0.995213091, -0.0147865089)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999964654, -0.88883245, -0.089771539, 0.131305709, -0.0279984865, -0.990946472, 0.0359040163, 0.999079645, -0.0234708097, 0.990691543, -0.032497108, 0.132190123)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.985105395, -0.88421756, -0.0627180859, 0.206065744, -0.083964847, 0.974929094, -0.014872415, 0.99592793, 0.0889168605, -0.978425086, -0.0328222662, 0.203977898)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--23, 2.316666603088379
		tween6 = ts:Create(part6, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.58237123e-05, 1.00000513, -0.00016310811, -0.995858371, -0.0829435885, -0.037235558, -0.040064849, 0.0327113345, 0.998661518, -0.081614539, 0.996017277, -0.035898976)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--24, 2.3333332538604736
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.931422114, 0.498165578, 0.0054115355, 0.230733097, 0.0881472826, -0.969016135, 0.000572536141, 0.995875597, 0.0907269195, 0.973016918, -0.0214884989, 0.229731008)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--25, 2.366666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0948875397, -0.205978051, 0.325514317, -0.997754812, 0.0632866696, -0.0219121017, -0.0203412436, 0.025359923, 0.999471426, 0.0638089105, 0.997673154, -0.0240156557)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999832869, -0.855965078, -0.0883599371, 0.132358998, 0.0126899863, -0.991120517, -0.0373601876, 0.999271333, 0.00780508388, 0.99049753, 0.0359953716, 0.132736638)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.986624122, -0.896420419, -0.060574621, 0.204085201, -0.0503581241, 0.977657139, 0.0594608262, 0.997469842, 0.0389662571, -0.977145672, 0.0501798615, 0.206563145)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--26, 2.4166667461395264
		tween6 = ts:Create(part6, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.09249556e-05, 1.00001407, -0.000276116654, -0.997736096, -0.062261153, -0.0253913552, -0.0223577935, -0.0489469543, 0.998551607, -0.0634135753, 0.99685961, 0.0474442095)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--27, 2.549999952316284
		tween3 = ts:Create(part3, TweenInfo.new(0.7999999523162842, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.931422114, 0.498165756, 0.00541154295, 0.224901333, 0.143612146, -0.96374011, -0.0410156958, 0.98959738, 0.137893766, 0.973517895, 0.00851598009, 0.228452131)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--28, 2.566666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.080358386, -0.212287977, 0.382857978, -0.997734904, 0.0458480231, -0.0492246486, -0.0459724776, 0.0694729239, 0.996523976, 0.0491084345, 0.996529698, -0.0672078133)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.59526244e-05, 1.00000525, -0.000214200467, -0.999245644, -0.032555718, 0.0211482476, 0.0226016827, -0.0449490808, 0.998734474, -0.0315637328, 0.998459637, 0.0456510782)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999835014, -0.823343813, -0.0880922973, 0.129832685, 0.055857718, -0.989961326, -0.136185572, 0.989954352, 0.0379967131, 0.982138753, 0.129885256, 0.136135399)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.98771745, -0.905083895, -0.05905357, 0.205421478, -0.000580935739, 0.978673518, 0.160844237, 0.986422062, -0.0331754424, -0.965366006, 0.164228916, 0.202725947)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166674613952635)

		if afterframe() then
			return
		end

		--29, 2.7333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0782074183, -0.214182019, 0.388785839, -0.998061538, 0.036258921, -0.0505816154, -0.0472729616, 0.0869313553, 0.995092094, 0.0404780954, 0.995554268, -0.0850487724)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00027132, -0.830653191, -0.0902231336, 0.128827676, 0.066162765, -0.989457488, -0.153617874, 0.987058997, 0.0460012928, 0.979696453, 0.14607209, 0.137324318)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.98772037, -0.910188079, -0.0599028766, 0.205442205, -0.00176768925, 0.978667676, 0.171743676, 0.984545231, -0.0342741758, -0.963482022, 0.175121322, 0.202570751)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--30, 2.8333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0804694593, -0.216078013, 0.372174144, -0.998429596, 0.0395612121, -0.0396641605, -0.0353553407, 0.104227677, 0.993924797, 0.0434549749, 0.993766308, -0.102665305)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5166666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.950562e-05, 1.00000596, -0.000185947865, -0.994829059, -0.099616155, -0.0197639856, -0.0129969241, -0.0681297407, 0.997592986, -0.100722566, 0.992691696, 0.0664829165)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00100589, -0.842114627, -0.0985029191, 0.128902048, 0.0548885092, -0.990137041, -0.152294233, 0.987717748, 0.034927804, 0.979893208, 0.14628987, 0.135678053)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.986764073, -0.891273558, -0.0557435751, 0.204683512, -0.0323644467, 0.978293061, 0.199543074, 0.97984463, -0.00933364779, -0.958273053, 0.197122082, 0.207016155)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.1850000476837158)

		if afterframe() then
			return
		end

		--31, 3.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0856180042, -0.216080427, 0.345878303, -0.998180687, 0.0546210073, -0.0255333353, -0.0197528247, 0.10386724, 0.994395018, 0.0569669344, 0.993090212, -0.102599345)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00112975, -0.831724107, -0.101086497, 0.129178971, 0.0287971068, -0.99120307, -0.143731326, 0.989566028, 0.0100177005, 0.981149316, 0.141172871, 0.131970152)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.986673474, -0.889236331, -0.0566008687, 0.205310836, -0.0456902049, 0.977629721, 0.182980418, 0.983087778, 0.0075177988, -0.961439371, 0.177343622, 0.210198998)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--32, 3.1500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0807991102, -0.216079295, 0.361067891, -0.995415747, 0.0901309475, -0.0319979638, -0.0241725426, 0.0866139829, 0.995948672, 0.0925372615, 0.992156446, -0.0840382278)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00134254, -0.813910782, -0.105515137, 0.12935929, 0.032511469, -0.991064548, -0.139757499, 0.990083337, 0.0142373517, 0.981699586, 0.136666954, 0.132620186)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.985501349, 0.427609742, -0.102364883, 0.121824607, -0.166164562, 0.978543878, 0.0767210424, 0.984513879, 0.157626882, -0.989582062, 0.055872079, 0.132686332)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.986518025, -0.885745227, -0.0580705404, 0.205823615, -0.0493854024, 0.977342129, 0.144206092, 0.989353061, 0.0196232032, -0.967905641, 0.136899769, 0.210753903)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--33, 3.2833333015441895
		tween2 = ts:Create(part2, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.937462747, 0.439885855, -0.218358591, 0.0203620847, -0.15312326, 0.987997293, 0.232171416, 0.961912274, 0.144295573, -0.9724617, 0.226446569, 0.0551373735)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--34, 3.3499999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0654126704, -0.216073915, 0.42394945, -0.989786923, 0.12838161, -0.0619679466, -0.0546786487, 0.0595482625, 0.996726751, 0.131651461, 0.989935458, -0.0519203581)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.03043455e-05, 1.00000906, -9.46335495e-05, -0.994025528, -0.109117828, -0.00253168866, -0.00624816958, 0.0337296464, 0.999412298, -0.108968176, 0.993457615, -0.0342097729)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00151956, -0.79906708, -0.109205872, 0.128643349, 0.0576754548, -0.990012348, -0.154763639, 0.987243295, 0.0374039672, 0.979540288, 0.148406133, 0.135928318)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.987067401, -0.901495576, -0.0596756786, 0.20625487, 0.00750463828, 0.978469491, 0.10159751, 0.994401515, -0.0290429108, -0.97320956, 0.105400302, 0.204337731)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.28333353996276855, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.96438396, 0.494187504, 0.0709607154, 0.374777943, 0.0779556111, -0.923831403, -0.0485206917, 0.996742308, 0.0644242838, 0.925844073, 0.020680137, 0.377339512)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--35, 3.450000047683716
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.887783527, 0.449570298, -0.3069942, 0.0250057448, -0.086993739, 0.995894969, 0.388995409, 0.918540478, 0.070469439, -0.920900285, 0.385636449, 0.056808956)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--36, 3.5166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0555600934, -0.2233302, 0.473166376, -0.991061687, 0.105605356, -0.0815128982, -0.0754009336, 0.0606358349, 0.995308042, 0.110052459, 0.992557764, -0.0521311089)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.54347241e-06, 1.00002015, 6.28642738e-08, -0.998463631, -0.0227494705, 0.0505265146, 0.0506420843, -0.00454062968, 0.998707235, -0.0224906299, 0.9997316, 0.00568597764)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00032282, -0.78059262, -0.126263365, 0.129116714, 0.0922466442, -0.987329662, -0.148336157, 0.986257732, 0.0727480501, 0.980471909, 0.137063712, 0.141025811)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.987959266, -0.913483679, -0.0612373948, 0.205373496, 0.0316204838, 0.978172719, 0.129461825, 0.989816904, -0.0591782145, -0.970083117, 0.138789654, 0.199188516)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--37, 3.549999952316284
		tween2 = ts:Create(part2, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.572884619, 0.367373437, -0.528741896, -0.125637785, 0.0143115334, 0.991972923, 0.836572886, 0.538986683, 0.0981795192, -0.5332551, 0.842192769, -0.0796897411)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--38, 3.633333444595337
		tween3 = ts:Create(part3, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.971294641, 0.499521017, 0.0241556391, 0.280422896, 0.0904279053, -0.955607593, -0.0923680216, 0.993474603, 0.0669058263, 0.955421984, 0.0695056468, 0.286945671)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--39, 3.683333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.458848476, 0.270589948, -0.464064538, -0.144361347, 0.292451859, 0.945320964, 0.988876104, 0.0772317052, 0.127119675, -0.0358323455, 0.953156471, -0.300347924)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--40, 3.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.164572164, -0.240264267, 0.49997896, -0.995406687, -0.0025406112, -0.0957036391, -0.09548264, 0.099215664, 0.990474224, 0.006978889, 0.995062709, -0.0990025103)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00108206, -0.780948281, -0.119463325, 0.124902263, 0.0963371918, -0.987480879, -0.192797974, 0.978659868, 0.0710904077, 0.973256648, 0.181504995, 0.14081043)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.996084809, -0.820276976, -0.0598940551, 0.19590281, 0.0831818879, 0.977089107, 0.000376820564, 0.996389389, -0.0849006325, -0.980623484, 0.017000407, 0.195164353)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166674613952635)

		if afterframe() then
			return
		end

		--41, 3.883333444595337
		tween2 = ts:Create(part2, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.472585797, 0.220561981, -0.338407636, -0.0868472755, 0.447289407, 0.890162766, 0.981229365, -0.116028607, 0.154034078, 0.172182202, 0.886831343, -0.428816706)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--42, 3.9000000953674316
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.97777307, 0.504521132, -0.0197241567, 0.180040538, 0.175583243, -0.967861414, -0.163233757, 0.975630581, 0.146628082, 0.970020711, 0.131588683, 0.204314202)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--43, 3.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.157917932, -0.231628463, 0.511509001, -0.993926227, -0.0765676722, -0.0790440291, -0.0876198411, 0.116021886, 0.98937434, -0.066583246, 0.990290999, -0.122026041)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.316666841506958, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.90870667e-05, 1.00002456, -5.29363751e-06, -0.99226892, 0.113253221, -0.0507685095, -0.0421442427, 0.0772871524, 0.996118248, 0.116737336, 0.990556061, -0.0719167218)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00173211, -0.781253636, -0.113634467, 0.12255124, 0.0979991704, -0.987611949, -0.217112243, 0.973656952, 0.0696733296, 0.968423069, 0.205884129, 0.140599623)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--44, 4.016666889190674
		tween2 = ts:Create(part2, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.624895811, 0.202206343, -0.0129790902, 0.256355226, 0.567696333, 0.782306135, 0.931732357, -0.360505462, -0.0437129736, 0.257209957, 0.740106046, -0.621358454)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--45, 4.150000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.100833282, -0.238248572, 0.511499166, -0.99332732, -0.106819108, -0.0434798077, -0.0560636967, 0.117781311, 0.991455734, -0.1007853, 0.987277687, -0.122984074)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00679672, -0.769622087, -0.110643506, 0.140974641, 0.0863511488, -0.986240089, -0.206205696, 0.976901591, 0.0560581572, 0.968300223, 0.195465565, 0.155524433)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.993725359, -0.819845617, -0.06720943, 0.20520249, -0.0840215534, 0.975106299, 0.0380614065, 0.996239543, 0.0778328329, -0.977979124, 0.0211424306, 0.207628816)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.996156156, 0.505273342, -0.0327214003, 0.147526875, 0.0610860363, -0.987169862, -0.23254782, 0.972252905, 0.0254100263, 0.96133095, 0.225815535, 0.157638863)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--46, 4.183333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.814089358, 0.264056861, 0.222720444, 0.54806906, 0.513179421, 0.660505295, 0.835668862, -0.369703293, -0.406174064, 0.0357509479, 0.774575055, -0.631470859)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--47, 4.266666889190674
		tween6 = ts:Create(part6, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2120232e-05, 1.00001025, 2.85692513e-05, -0.988534629, 0.150563866, -0.0113464789, -0.00280844024, 0.0568000451, 0.998382449, 0.150964499, 0.986967921, -0.0557258576)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--48, 4.300000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0653553829, -0.259555131, 0.527374089, -0.983751714, -0.17920351, -0.0108874617, -0.02467045, 0.0748646706, 0.996888459, -0.17783083, 0.980959415, -0.078069292)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01560056, -0.780879974, -0.110232979, 0.168612063, 0.0757523924, -0.982767284, -0.143267423, 0.988337874, 0.0516015701, 0.975215077, 0.1320979, 0.177498505)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05735087, 0.34358865, 0.525754094, 0.848194957, 0.0338068306, 0.528604686, 0.521410406, -0.2289913, -0.822006166, 0.0932571143, 0.972841024, -0.211856887)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--49, 4.366666793823242
		tween3 = ts:Create(part3, TweenInfo.new(0.2999997138977051, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02161002, 0.506314516, -0.0507176369, 0.13278079, 0.125121191, -0.983216166, -0.104438782, 0.98824358, 0.111656785, 0.985627651, 0.087860018, 0.144287258)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--50, 4.449999809265137
		tween2 = ts:Create(part2, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06635141, 0.291683137, 0.734107971, 0.848194957, -0.220574498, 0.481573224, 0.521410406, 0.187624365, -0.832423151, 0.0932571143, 0.957154155, 0.274151325)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--51, 4.5
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0350847542, -0.283650994, 0.542466342, -0.973616719, -0.228156433, 0.00389702502, -0.00345725869, 0.0318249725, 0.999487519, -0.228163525, 0.973104239, -0.0317741223)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.78585672e-06, 1.00001848, -3.66419554e-05, -0.980454564, 0.184278965, -0.0689130127, -0.0333754197, 0.189405859, 0.981332839, 0.193891436, 0.964452088, -0.179553479)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02034307, -0.774081826, -0.107554078, 0.190410882, 0.0708112121, -0.979147434, -0.055485148, 0.996577144, 0.0612817518, 0.980135322, 0.0426594242, 0.19368808)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.992601514, -0.819640517, -0.0706930906, 0.216463417, -0.0861891359, 0.972478807, -0.0224772319, 0.995391548, 0.0932230428, -0.976031959, -0.0420380048, 0.213528544)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--52, 4.633333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0213124007, -0.262071222, 0.553744316, -0.964493632, -0.264061093, 0.00487726368, 0.00358413719, 0.00537862349, 0.999979138, -0.264081776, 0.96449095, -0.00424121693)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0256716, -0.780514538, -0.105847426, 0.211557671, 0.0775106549, -0.974287152, -0.0025052838, 0.996890008, 0.0787648484, 0.977362216, -0.0142224375, 0.211093932)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--53, 4.666666507720947
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.991814971, -0.819496751, -0.0731316358, 0.221482486, -0.0721184686, 0.972493947, -0.027229866, 0.996415317, 0.0800939575, -0.974784076, -0.0442202911, 0.218724772)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0107708, 0.50473547, -0.0442896076, 0.126005486, 0.124079928, -0.984239221, -0.0631820485, 0.991136551, 0.116860688, 0.990015507, 0.047461167, 0.132728264)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--54, 4.683333396911621
		--55, 4.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0678481534, -0.242393285, 0.553837419, -0.958886862, -0.283270717, -0.017137805, -0.0252500381, 0.0250112303, 0.99936825, -0.282663137, 0.95871383, -0.031135533)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.4499998092651367, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.93955629e-05, 1.00001574, -1.49458647e-05, -0.974051774, 0.226145387, -0.00894575566, 0.00788591988, 0.0734163821, 0.997271121, 0.226185158, 0.971323133, -0.073294729)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03134131, -0.780340374, -0.10400331, 0.223776162, 0.0857470259, -0.970861375, -0.0496577322, 0.995831788, 0.0765066817, 0.973374784, 0.0310903974, 0.227101386)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.4499998092651367, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01572871, 0.337342024, 0.573644876, 0.848194778, -0.231982023, 0.476182938, 0.521410286, 0.207397759, -0.827718139, 0.0932571739, 0.950352907, 0.296870977)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990803719, -0.819311798, -0.0762669072, 0.224505827, -0.0483012423, 0.973274946, -0.00257208198, 0.998737931, 0.0501582175, -0.974469364, -0.0137641523, 0.224098265)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--56, 4.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0975750834, -0.236493275, 0.553835034, -0.954994082, -0.296040893, -0.0186066404, -0.0298064798, 0.0333636254, 0.998998761, -0.295123696, 0.954592407, -0.0406860039)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03512144, -0.780223131, -0.102773845, 0.234372988, 0.0844876841, -0.968468428, -0.0542747602, 0.995799661, 0.0737373233, 0.970630527, 0.0352813601, 0.237974107)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990129471, -0.819188654, -0.0783571303, 0.225866586, -0.0571228266, 0.972482026, 0.0289606452, 0.998231828, 0.0519090146, -0.973727703, 0.0164391957, 0.227121547)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983081102, 0.502183199, -0.026256673, 0.123056531, 0.0865215361, -0.988620818, -0.0842409655, 0.993507326, 0.0764634758, 0.988817811, 0.0738730356, 0.129546225)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--57, 5.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.12239854, -0.239801541, 0.553866804, -0.950806499, -0.308389634, -0.0293738004, -0.0452157855, 0.0443485677, 0.997992337, -0.306467801, 0.95022577, -0.0561109856)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04268134, -0.779990077, -0.100314543, 0.254561275, 0.0930264443, -0.962571919, -0.0729921311, 0.994371295, 0.0767962411, 0.964297831, 0.0507109016, 0.259918571)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988781095, -0.818941951, -0.0825374424, 0.231043845, -0.0518486127, 0.971560955, 0.0466138087, 0.998022199, 0.0421755537, -0.971826196, 0.0355436876, 0.233003944)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--58, 5.099999904632568
		tween3 = ts:Create(part3, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.971854866, 0.499121428, 0.0133024938, 0.119262978, 0.0756038874, -0.989979982, -0.117966384, 0.991112649, 0.0614789613, 0.985829771, 0.109452203, 0.127121761)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--59, 5.233333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.11888738, -0.246247917, 0.553868294, -0.951064289, -0.308113724, -0.0232938379, -0.0394229665, 0.0462263376, 0.998152733, -0.306467801, 0.95022577, -0.0561109781)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5166668891906738, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.99428672e-05, 1.00002193, 1.27218664e-05, -0.976463199, 0.207068354, -0.0603433959, -0.0455416963, 0.0755235702, 0.99610436, 0.210819259, 0.975407124, -0.0643156692)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.5166668891906738, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04268122, -0.779990137, -0.100314572, 0.254561275, 0.0575752556, -0.96534127, -0.0729921311, 0.996522427, 0.0401869453, 0.964297831, 0.060232345, 0.257878512)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.5166668891906738, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03611803, 0.379539877, 0.636257529, 0.848194718, -0.15107882, 0.507682025, 0.521410286, 0.0693996996, -0.850479186, 0.0932571739, 0.986082494, 0.137638032)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.5166668891906738, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988781095, -0.818941951, -0.0825373232, 0.229943246, -0.0874237195, 0.969269574, 0.0688196495, 0.994924366, 0.0734112263, -0.970767856, 0.0498243012, 0.234792814)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833368301391602)

		if afterframe() then
			return
		end

		--60, 5.366666793823242
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.986877739, 0.497719109, 0.0478601605, 0.115967095, 0.102014095, -0.988000393, -0.141002536, 0.986328363, 0.0852912143, 0.983193755, 0.12941958, 0.128765881)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--61, 5.383333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.125560522, -0.25651598, 0.553871334, -0.951452076, -0.307566434, -0.011907516, -0.0285726804, 0.0497376323, 0.998353481, -0.306467801, 0.95022577, -0.0561109707)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--62, 5.550000190734863
		tween3 = ts:Create(part3, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.988595426, 0.497962147, 0.0383414999, 0.0834297538, 0.132982373, -0.987600744, -0.114433803, 0.985778272, 0.123069912, 0.989921451, 0.102747202, 0.0974609107)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--63, 5.583333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134011164, -0.262113154, 0.553873181, -0.951626301, -0.307216644, -0.00503266044, -0.0220203903, 0.051854331, 0.998411834, -0.306467772, 0.95022577, -0.0561109744)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--64, 5.7166666984558105
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.99999994, 0.5, -1.86264515e-08, -0.0110462755, 0.127627999, -0.991760552, -0.128206193, 0.983454347, 0.127987057, 0.991685987, 0.128563643, 0.00549918413)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--65, 5.75
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.133998081, -0.262113601, 0.590774119, -0.951626301, -0.307216644, -0.00503266044, -0.0301441848, 0.0770485327, 0.996571481, -0.305775583, 0.948515356, -0.0825822055)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.7145716e-05, 1.00002491, 3.99425626e-05, -0.970541298, 0.230722383, -0.0693929568, -0.048928611, 0.0932712555, 0.994438112, 0.235912129, 0.968538642, -0.0792346522)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04268122, -0.779989839, -0.100314617, 0.250894547, 0.0718909055, -0.96534121, -0.129277319, 0.990793765, 0.0401869267, 0.959343135, 0.114714056, 0.257878602)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03610098, 0.305716664, 0.634223938, 0.848194897, -0.157359064, 0.505770743, 0.521410227, 0.079934366, -0.849553645, 0.09325701, 0.984300494, 0.149847895)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988781214, -0.818941891, -0.082537204, 0.225452602, -0.0898849964, 0.970098853, 0.116792068, 0.99104774, 0.0646833554, -0.967228413, 0.0987168178, 0.233932152)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.16833339691162108)

		if afterframe() then
			return
		end

		--66, 5.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.133972287, -0.250034541, 0.609361887, -0.901318729, -0.432649821, -0.020946227, -0.0363971591, 0.0274609961, 0.998959959, -0.431624621, 0.90114367, -0.0404983349)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.89095736e-05, 0.999964535, -0.000178545713, -0.98880142, 0.101076394, -0.109795794, -0.0853190273, 0.220749378, 0.971588969, 0.122447252, 0.970075428, -0.209653363)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04268134, -0.779990256, -0.100314692, 0.258383781, 0.117400385, -0.958882153, -0.0308735296, 0.993084669, 0.113268666, 0.965548873, 0.000337304547, 0.260221511)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10547686, 0.304115295, 0.600847185, 0.851016641, -0.0168378353, 0.524869323, 0.524552464, 0.0744630992, -0.848114729, -0.024803102, 0.997080743, 0.0722006261)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.986385465, -0.885048687, -0.0843392313, 0.226116121, -0.000845680013, 0.974100053, 0.111652054, 0.993431389, -0.0250551328, -0.967680335, 0.114425652, 0.224725097)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.97342211, 0.498367965, 0.0602187812, 0.228708386, 0.145312965, -0.962588549, -0.230117574, 0.968843877, 0.0915819928, 0.945905805, 0.200562924, 0.255021781)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--67, 6.016666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134021968, -0.250034869, 0.546214759, -0.914907694, -0.403512537, 0.0110262847, 0.000125149265, 0.0270320047, 0.999634504, -0.403663158, 0.914574564, -0.0246812925)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.79453325e-05, 0.999979556, -0.00022470206, -0.981677771, 0.110069335, -0.155543178, -0.141018704, 0.129322097, 0.981521428, 0.128155112, 0.98546952, -0.111430377)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04268134, -0.779990137, -0.10031464, 0.258602977, 0.0400396921, -0.965153515, 6.68242574e-05, 0.999139845, 0.0414675325, 0.965983689, -0.0107881203, 0.25837788)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08098149, 0.307849795, 0.531263828, 0.824126005, -0.24273479, 0.511757433, 0.553709626, 0.155038372, -0.818148673, 0.11925143, 0.95762217, 0.262175083)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988781214, -0.818942308, -0.0825372785, 0.227537125, -0.0839008987, 0.970148206, 0.10137593, 0.992908597, 0.0620927215, -0.968478084, 0.0842212662, 0.234429106)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--68, 6.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.133990109, -0.250029773, 0.525125563, -0.943238676, -0.330671728, 0.0309335291, 0.0123932082, 0.0580311567, 0.998237848, -0.331884146, 0.941959918, -0.0506391488)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.55725598e-05, 0.999987245, -0.000229276717, -0.979210079, 0.186464578, -0.0798683017, -0.0718001574, 0.0496399626, 0.996180832, 0.189721614, 0.981202543, -0.0352193043)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04268134, -0.779989958, -0.100314528, 0.256082863, 0.00286719203, -0.966650546, -0.0448773056, 0.998952508, -0.00892578065, 0.965612471, 0.0456664227, 0.255943298)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.988781214, -0.81894213, -0.0825372487, 0.228712574, -0.145806253, 0.962512851, 0.0942022949, 0.98739475, 0.127191111, -0.968925476, 0.0615807027, 0.239564896)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.97342205, 0.498367846, 0.0602187961, 0.308744967, 0.0997873843, -0.94589591, -0.0946213678, 0.992770553, 0.0738475621, 0.94642663, 0.0667018965, 0.315954924)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--69, 6.300000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134022892, -0.250031531, 0.530267179, -0.95673281, -0.29090026, -0.00627827784, -0.0271147955, 0.0676521733, 0.997340441, -0.289701879, 0.954358518, -0.0726127476)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04350734, -0.79504478, -0.101259559, 0.255884588, 0.0546891838, -0.965159118, -0.0745389685, 0.996542275, 0.0367055722, 0.963829339, 0.0625495836, 0.259076297)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05886602, 0.31285882, 0.46096617, 0.838444471, -0.238188118, 0.490181327, 0.535723448, 0.195078984, -0.82155031, 0.100059435, 0.95142591, 0.291165859)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990659118, -0.837520659, -0.0839002877, 0.230061546, -0.0971595198, 0.968313754, 0.0806357563, 0.993485451, 0.0805269629, -0.969829738, 0.0595545508, 0.236397356)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--70, 6.400000095367432
		tween3 = ts:Create(part3, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.973421991, 0.498367965, 0.0602187812, 0.332509279, 0.0776921511, -0.939894438, -0.0391691253, 0.996878743, 0.0685455352, 0.942286253, 0.0140228253, 0.334514558)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--71, 6.433333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07097983, 0.310072154, 0.499706388, 0.843543172, -0.189212292, 0.502626836, 0.529014945, 0.131339014, -0.838387251, 0.0926187038, 0.973112941, 0.21088627)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--72, 6.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134007707, -0.250032008, 0.541605949, -0.959682822, -0.280437171, -0.0190733522, -0.0391649045, 0.0662146807, 0.997036457, -0.278343141, 0.957585812, -0.0745283961)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.90061939e-05, 0.999983549, -0.000182140619, -0.986929774, 0.150177583, -0.058449287, -0.0496322922, 0.0618053898, 0.996853411, 0.153317526, 0.986725271, -0.0535439253)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04350758, -0.79504478, -0.10125953, 0.255321801, 0.0700407028, -0.964315772, -0.0845547393, 0.995168805, 0.0498940945, 0.963151753, 0.0687984377, 0.26001057)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990659118, -0.837520659, -0.0839002728, 0.230061546, -0.0804948732, 0.969841301, 0.0806357563, 0.99472326, 0.0634319484, -0.969829738, 0.0636106282, 0.23533836)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--73, 6.516666889190674
		tween2 = ts:Create(part2, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08871484, 0.30644536, 0.555100858, 0.841690898, -0.16965279, 0.512615323, 0.531607151, 0.0940260887, -0.841755986, 0.0946069956, 0.981008291, 0.169329613)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--74, 6.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134001434, -0.250032961, 0.55615139, -0.958938003, -0.282713413, -0.0226061717, -0.0414381176, 0.060809657, 0.997288883, -0.280572236, 0.957274973, -0.0700277984)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04350758, -0.795044899, -0.101259559, 0.255321801, 0.08199393, -0.963373005, -0.0845547393, 0.994473577, 0.0622314773, 0.963151753, 0.0655687228, 0.260843754)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990659118, -0.837520599, -0.0839002728, 0.230061546, -0.066355221, 0.970911205, 0.0806357563, 0.995541871, 0.0489315651, -0.969829738, 0.0670328811, 0.234386533)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--75, 6.633333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134009838, -0.250034064, 0.566220224, -0.95397222, -0.29962948, -0.0126182074, -0.0300403535, 0.0536105633, 0.998109996, -0.298386693, 0.952548146, -0.0601439625)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.06205654e-05, 0.999981642, -0.000150453299, -0.988507748, 0.142006025, -0.0518328138, -0.0417254604, 0.0732529312, 0.996440113, 0.145297423, 0.987151563, -0.0664858222)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04350758, -0.795045018, -0.10125953, 0.256614983, 0.0641995594, -0.964379072, -0.0684538931, 0.996492982, 0.0481222719, 0.964086533, 0.0536666177, 0.260109723)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.992735326, -0.859996915, -0.0846144557, 0.231255352, -0.0934245661, 0.968396962, 0.0644513816, 0.994663179, 0.0805674195, -0.970755875, 0.0437828787, 0.236042529)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.973421991, 0.498368025, 0.0602187067, 0.278819293, 0.0982570872, -0.955303848, -0.101083055, 0.992228866, 0.0725524575, 0.955008686, 0.0763359964, 0.286584616)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--76, 6.683333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09208775, 0.30594191, 0.565092921, 0.837583899, -0.187830597, 0.513003826, 0.536994696, 0.11040765, -0.83632946, 0.100448668, 0.975976348, 0.193339705)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--77, 6.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134012192, -0.250033617, 0.571551979, -0.947074592, -0.320984364, -0.00434501702, -0.0193258878, 0.0435004532, 0.998866439, -0.32043153, 0.946084917, -0.0474014804)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04350758, -0.795045137, -0.101259544, 0.257568687, 0.0594556592, -0.964428961, -0.0531751551, 0.997464776, 0.0472908504, 0.964795768, 0.0391030274, 0.260077208)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--78, 6.733333110809326
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0930624, 0.30953446, 0.567458034, 0.829561472, -0.208611846, 0.517985523, 0.550060451, 0.145407021, -0.82236886, 0.0962371826, 0.967128813, 0.235373259)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--79, 6.75
		tween6 = ts:Create(part6, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.02219594e-05, 0.999982595, -0.000129405409, -0.983801842, 0.167697787, -0.0633369088, -0.0493048951, 0.0865572095, 0.995023847, 0.172350153, 0.982027709, -0.0768863857)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--80, 6.849999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134017184, -0.250035048, 0.565438807, -0.949753821, -0.312961757, -0.00475750351, -0.018174123, 0.0399666317, 0.999035716, -0.31246984, 0.948924482, -0.0436462648)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04350758, -0.795044839, -0.101259559, 0.258217126, 0.0495086052, -0.964817405, -0.0420230739, 0.998316348, 0.039980799, 0.965172589, 0.0302208755, 0.25986287)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08751738, 0.317838401, 0.549982667, 0.822810531, -0.210150778, 0.528033733, 0.563365936, 0.179244041, -0.806529939, 0.0748460293, 0.961097479, 0.265875727)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--81, 6.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.142975062, -0.242430598, 0.561048627, -0.951493204, -0.307453692, -0.0115304664, -0.0235581249, 0.0354374461, 0.999094188, -0.30676657, 0.950902939, -0.0409615226)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.2666664123535156, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.44354999e-05, 0.999969363, -0.00021070987, -0.976994634, 0.207401067, -0.0496618599, -0.00652671419, 0.203678817, 0.979016006, 0.213164032, 0.956817508, -0.197639465)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04350758, -0.795044839, -0.101259559, 0.258464456, 0.0610607378, -0.964088976, -0.0369684659, 0.997894406, 0.0532908663, 0.965313196, 0.0218671039, 0.260177553)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.994188786, -0.875730932, -0.0851144642, 0.232301936, -0.0919368044, 0.968288839, 0.052320499, 0.995262563, 0.0819456875, -0.971235633, 0.0316252038, 0.236011624)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.2666664123535156, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.959447086, 0.497049302, 0.112955838, 0.19499138, 0.110900268, -0.974515021, -0.164653569, 0.983187437, 0.0789415538, 0.966885507, 0.145064443, 0.209973186)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--82, 7.016666889190674
		tween2 = ts:Create(part2, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07832801, 0.384737551, 0.344325423, 0.826210141, -0.19645673, 0.527997553, 0.563320994, 0.29938066, -0.770091236, -0.00678271055, 0.933689356, 0.358019471)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.10166631698608398)

		if afterframe() then
			return
		end

		--83, 7.133333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.15282473, -0.234064549, 0.561023057, -0.951300323, -0.307699263, -0.0186774954, -0.030364316, 0.0332370736, 0.998986125, -0.30676651, 0.950902998, -0.0409615152)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--84, 7.166666507720947
		tween2 = ts:Create(part2, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06619573, 0.524362803, -0.0977867246, 0.841244936, -0.158667475, 0.51684773, 0.518482864, 0.507712007, -0.688043594, -0.153239697, 0.846789896, 0.509376526)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--85, 7.199999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.27745387, -0.230261788, 0.560983241, -0.953624606, -0.294442266, -0.0624808744, -0.0668908805, 0.00491986796, 0.997748196, -0.293471813, 0.955656588, -0.0243872069)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04215515, -0.8986848, -0.109161153, 0.25903827, -0.0130103352, -0.965779364, -0.0700643137, 0.997021854, -0.0322236344, 0.96332252, 0.0760138333, 0.257355243)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02451849, -0.782697856, -0.116501942, 0.253241777, 0.0719157308, 0.96472621, -0.169378087, 0.985125124, -0.0289744195, -0.952459753, -0.156065956, 0.261655807)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--86, 7.233333110809326
		tween6 = ts:Create(part6, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2293458e-07, 0.999955654, -0.000254943967, -0.967279315, 0.224124774, 0.11890699, 0.181754723, 0.285128534, 0.941098809, 0.17701979, 0.93191731, -0.316534638)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.895166457, 0.496732593, 0.0119691938, -0.053656403, 0.0674300641, -0.996280134, -0.331906796, 0.939786434, 0.0814818889, 0.941784918, 0.335044205, -0.028045062)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166707992553711)

		if afterframe() then
			return
		end

		--87, 7.300000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.477592349, -0.211364686, 0.611816883, -0.961981773, -0.257211447, -0.091833517, -0.0949464813, -0.000318197533, 0.995482326, -0.25607866, 0.966355145, -0.0241152234)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--88, 7.366666793823242
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02277112, -0.767629147, -0.10151948, 0.259533852, 0.117809951, 0.958521247, -0.208112419, 0.976034164, -0.0636129081, -0.943043709, -0.182970494, 0.277831584)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--89, 7.383333206176758
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.77257776e-06, 0.999943256, -0.000308036804, -0.984486163, 0.120003477, 0.128008232, 0.160677359, 0.323468298, 0.932497203, 0.0704963058, 0.938598633, -0.337731928)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.756026089, 0.497564048, -0.297322333, -0.482150555, -0.16825673, -0.859779716, -0.605708361, 0.773064435, 0.188384756, 0.632968128, 0.611605346, -0.47464788)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--90, 7.416666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.593134224, -0.208552361, 0.771000564, -0.982413411, -0.153328806, -0.106555924, -0.104798988, -0.0195189547, 0.994301856, -0.154534981, 0.987982392, 0.00310697779)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04280126, -0.783122599, -0.0864364505, 0.2663109, -0.00548622012, -0.963871539, -0.184547901, 0.98119396, -0.0565740913, 0.946055353, 0.192946792, 0.260290146)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03386784, 0.532936394, -0.265102416, 0.768629253, -0.0581937134, 0.637042046, 0.584461331, 0.4686867, -0.662372947, -0.26002723, 0.881445646, 0.39425832)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--91, 7.4666666984558105
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.951517045, -0.956883371, 0.0841067955, 0.28379634, -0.0366010703, 0.958185792, -0.0101970285, 0.999099851, 0.0411840603, -0.958830535, -0.0214586426, 0.28316763)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--92, 7.516666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.499824077, -0.278899342, 1.05009592, -0.999227941, 0.0282665342, -0.027284719, -0.0277747512, -0.0170912649, 0.999468088, 0.0277851634, 0.999454319, 0.0178631693)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--93, 7.550000190734863
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.18163836e-06, 0.999930561, -0.000364154577, -0.991746187, -0.116908573, -0.0526488088, -0.0828125402, 0.270571619, 0.959127903, -0.0978817493, 0.955571115, -0.278020144)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--94, 7.583333492279053
		tween2 = ts:Create(part2, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.965380549, 0.448793918, -0.335075557, 0.533410907, 0.2120222, 0.818852484, 0.783071816, 0.24222672, -0.572821736, -0.319798887, 0.946769655, -0.0368222594)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.632395744, 0.855148613, -0.378440082, -0.623901844, -0.313150495, -0.716019034, -0.774799109, 0.128107429, 0.619091988, -0.102141619, 0.941023588, -0.322555214)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--95, 7.616666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.271486163, -0.424422711, 1.27070165, -0.97991848, 0.198912352, -0.0139116496, -0.0182757005, -0.0201202556, 0.999630511, 0.198558956, 0.979810715, 0.0233514793)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15104246, -0.402638078, -0.404562891, 0.251041591, -0.0890492201, -0.963871598, 0.133743241, 0.98939991, -0.0565741025, 0.958692312, -0.114708871, 0.260290205)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.963462114, -0.719386995, -0.147287399, 0.281190753, 0.0804379284, 0.956274629, -0.135525852, 0.989822388, -0.0434086137, -0.950033844, -0.117393814, 0.289230466)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--96, 7.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.133506894, -0.515440166, 1.40583336, -0.911753953, 0.410207897, 0.0208412111, 0.0200182498, -0.00630145054, 0.99977982, 0.410248935, 0.911970377, -0.00246626511)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.59654257e-06, 0.999933839, -0.000365063548, -0.915328443, -0.402635545, -0.00764878094, -0.153473794, 0.33121267, 0.930990875, -0.372316629, 0.853336334, -0.364962369)}) tween6:Play() tablesorting(part6, tween6)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11482334, -0.621199071, -0.420335948, 0.286813319, 0.063373208, 0.955887914, -0.205541044, 0.978643417, -0.0032094568, -0.935676813, -0.195553809, 0.293713808)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.675158799, 0.685819983, -0.0542808175, -0.188536003, -0.0966179147, -0.977301955, -0.886251569, -0.411996067, 0.211701721, -0.423098743, 0.906048775, -0.00795170665)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--97, 7.733333110809326
		tween5 = ts:Create(part5, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14725149, -0.407521605, -0.391585767, 0.242997125, -0.109105483, -0.963871539, 0.21350345, 0.975302815, -0.0565741025, 0.946239233, -0.192042559, 0.260290176)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--98, 7.7833333015441895
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.975359082, 0.402777106, -0.284015656, 0.575255275, 0.153559327, 0.803430796, 0.777440965, 0.202717304, -0.59539181, -0.254297256, 0.967122257, -0.00276902318)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--99, 7.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0379495025, -0.476338238, 1.5191915, -0.815163255, 0.572033286, 0.0910321847, 0.101505704, -0.0136526152, 0.994741261, 0.570267916, 0.820116818, -0.0469355248)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10110533, -0.61709553, -0.383447737, 0.294844508, -0.0421716273, 0.954614222, -0.149994403, 0.9845981, 0.089823842, -0.94369936, -0.16967085, 0.283977807)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--100, 7.833333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11877084, -0.431368113, -0.359332979, 0.25472638, -0.0954660699, -0.962289274, 0.270048201, 0.962547421, -0.0240075663, 0.928541005, -0.253749132, 0.270966679)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.731448174, 0.486682534, 0.218325168, 0.156272218, 0.225141048, -0.961712301, -0.794739008, -0.549490869, -0.257778317, -0.586488605, 0.804593801, 0.0930581987)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--101, 7.883333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0584858656, -0.424377531, 1.68195498, -0.658823609, 0.737442851, 0.148759902, 0.172381759, -0.0444973223, 0.984024644, 0.732281327, 0.673942208, -0.0978057981)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.59700823e-06, 0.99993372, -0.000365033746, -0.852609932, -0.521891356, 0.0261876956, -0.188867331, 0.354503632, 0.915781796, -0.487222224, 0.775858641, -0.400821507)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01950228, 0.349199891, -0.163314015, 0.716777921, -0.0706074834, 0.69371748, 0.688714027, 0.227339506, -0.688469172, -0.109098315, 0.971252441, 0.211580336)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0576036, -0.567327678, -0.280014306, 0.29666087, -0.198370039, 0.934152961, -0.0692487061, 0.971144557, 0.228216767, -0.952468872, -0.132391855, 0.274363726)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--102, 7.933333396911621
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.05673862, -0.481312394, -0.29921639, 0.294230163, -0.0422338955, -0.954800963, 0.307388246, 0.950123906, 0.0526973195, 0.904953599, -0.308999717, 0.292537332)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.820026755, 0.191358924, 0.530245483, 0.509231031, 0.525838971, -0.681305408, -0.596547127, -0.354938745, -0.719825149, -0.620334148, 0.772989511, 0.132941887)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--103, 7.983333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0997649431, -0.386653304, 1.81152904, -0.546060979, 0.821126878, 0.166036457, 0.189054221, -0.0722965673, 0.979301572, 0.816134691, 0.566148281, -0.115759172)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.90782952e-06, 0.999930859, -0.000363722444, -0.728424966, -0.677879274, 0.099382408, -0.241703242, 0.389990836, 0.888526857, -0.641069293, 0.623205662, -0.44792527)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1369642, 0.257495642, 0.122198388, 0.835105062, -0.533411503, 0.134428322, 0.422510564, 0.465490609, -0.777688682, 0.35225305, 0.706249833, 0.614105523)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00224817, -0.489509821, -0.153735489, 0.289460033, -0.324146867, 0.90063405, -0.00527238101, 0.94036001, 0.34013921, -0.957175612, -0.103205241, 0.270487785)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166707992553711)

		if afterframe() then
			return
		end

		--104, 8.050000190734863
		tween5 = ts:Create(part5, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.902913868, -0.602415144, -0.164096549, 0.404557198, 0.121502668, -0.906405389, 0.271114707, 0.930644691, 0.245758921, 0.873401642, -0.345163316, 0.343557805)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.28333282470703125, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.844033241, 0.339488268, 0.555060387, 0.657757998, 0.500793457, -0.562635601, -0.586632907, -0.12793155, -0.799682856, -0.472455502, 0.856059968, 0.209634632)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--105, 8.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.126083791, -0.372817636, 2.01708221, -0.404141307, 0.893547654, 0.195556745, 0.0497873202, -0.191988245, 0.980133593, 0.913340569, 0.405848652, 0.0331030414)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01044452, -0.641231179, -0.0827522352, 0.333706737, -0.251700312, 0.908452868, -0.155770347, 0.935723662, 0.316475898, -0.929717958, -0.247120231, 0.273049802)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--106, 8.133333206176758
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.947010517, 0.26348117, 0.0778193176, 0.673248172, -0.479149848, 0.563162088, 0.526408553, -0.224263847, -0.820119739, 0.519257426, 0.848597884, 0.101242915)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--107, 8.199999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.060449183, -0.369180799, 2.05103421, -0.378658205, 0.916197479, 0.131149396, -0.0143670402, -0.147502422, 0.988957345, 0.925425053, 0.372592568, 0.0690160543)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.12762165e-06, 0.99993062, -0.000364303589, -0.625875831, -0.762866616, 0.162216261, -0.154076695, 0.324830681, 0.933133781, -0.764546812, 0.559034109, -0.320844471)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.838071823, -0.611047506, -0.125815287, 0.430491149, 0.176275581, -0.885214269, 0.171493113, 0.946904719, 0.271959484, 0.88615334, -0.268884242, 0.377403945)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00641894, -0.691524208, -0.0464244522, 0.332704663, -0.190015927, 0.923689067, -0.149754137, 0.956414819, 0.250688195, -0.931064606, -0.22173138, 0.289747983)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--108, 8.25
		--109, 8.266666412353516
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.084189117, -0.360053599, 2.03261638, -0.369614482, 0.92335248, 0.103949778, -0.0648926869, -0.137250021, 0.988408506, 0.926916599, 0.358584464, 0.110648423)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666717529296875, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.971720934, -0.685033441, -0.0970666558, 0.403821677, 0.233929381, -0.884423614, 0.0487772301, 0.959873974, 0.27615729, 0.913536608, -0.15465802, 0.376207471)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333396911621094, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.944112957, 0.224603623, 0.082485944, 0.673248768, -0.460481048, 0.578526914, 0.526409149, -0.250959814, -0.812350154, 0.519258857, 0.851455569, 0.0734431446)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000057220458984, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00797439, -0.77188617, -0.0112100579, 0.334061563, -0.0711942166, 0.939858675, -0.135957092, 0.983075738, 0.122792229, -0.932694256, -0.168800607, 0.318728447)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--110, 8.283333778381348
		--111, 8.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.132318795, -0.327610195, 1.99395537, -0.341735542, 0.935911298, 0.0853634477, -0.0828581452, -0.120483093, 0.989251375, 0.936136365, 0.330989301, 0.118721224)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--112, 8.333333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.15928662e-06, 0.999930501, -0.000364080071, -0.589492261, -0.806942403, 0.0366482623, -0.230198324, 0.211307824, 0.949921489, -0.774273396, 0.551537156, -0.31032151)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.15000057220458984, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.883832991, 0.299639761, 0.445156842, 0.752175093, 0.30406031, -0.584618211, -0.547016561, -0.206567898, -0.811232924, -0.367428064, 0.929988444, 0.0109513402)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--113, 8.350000381469727
		tween2 = ts:Create(part2, TweenInfo.new(0.09999942779541016, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.940472484, 0.194175869, 0.093906343, 0.669364452, -0.458349466, 0.584694028, 0.524834096, -0.265297353, -0.808805823, 0.525833488, 0.848253191, 0.0629769266)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--114, 8.416666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.203496993, -0.296510309, 1.96694922, -0.318941504, 0.943298995, 0.0919974074, -0.0498239286, -0.113619968, 0.992274165, 0.946463883, 0.311893761, 0.08323697)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02956557, -0.81635797, -0.0535167754, 0.335850298, -0.0849140212, 0.938080072, -0.140699372, 0.980231702, 0.139102548, -0.931347549, -0.178704888, 0.317263752)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833282470703125)

		if afterframe() then
			return
		end

		--115, 8.449999809265137
		tween6 = ts:Create(part6, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.63239849e-06, 0.99993366, -0.000365063548, -0.550157428, -0.834624469, 0.0269973949, -0.203705877, 0.165489152, 0.964944124, -0.809833825, 0.525371671, -0.26106298)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000057220458984, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.936035216, 0.177605063, 0.114019752, 0.660027504, -0.479870379, 0.578003645, 0.521210074, -0.261587858, -0.812349737, 0.541021347, 0.837434411, 0.0774581432)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333778381347657)

		if afterframe() then
			return
		end

		--116, 8.483333587646484
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.206291199, -0.292649567, 1.97568965, -0.313182116, 0.944957495, 0.0947231799, -0.0293232724, -0.109315053, 0.9935745, 0.949240327, 0.308392167, 0.0619447678)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666622161865234, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.971720934, -0.68503356, -0.0970665962, 0.411297649, 0.172294155, -0.895069242, 0.0889496058, 0.969699204, 0.227533549, 0.907150745, -0.173200056, 0.383509487)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02976155, -0.812159777, -0.0561329201, 0.335998118, -0.110998303, 0.935299098, -0.120172895, 0.979863226, 0.159458071, -0.934164703, -0.165975362, 0.315893233)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.87176466, 0.341931194, 0.474992394, 0.765647769, 0.313667983, -0.561601162, -0.556170166, -0.115858018, -0.822952986, -0.323199987, 0.942437947, 0.0857463479)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--117, 8.566666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.213671207, -0.289915979, 1.99078286, -0.306803048, 0.94765079, 0.0884884745, -0.0207974277, -0.099625051, 0.99480772, 0.951545954, 0.303369701, 0.0502739735)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03099298, -0.822158575, -0.0535530224, 0.333194643, -0.121046051, 0.935055733, -0.09691751, 0.982074559, 0.161668047, -0.937863708, -0.144490182, 0.315490514)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333778381347657)

		if afterframe() then
			return
		end

		--118, 8.600000381469727
		tween2 = ts:Create(part2, TweenInfo.new(0.16666603088378906, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.930870533, 0.171268106, 0.141335651, 0.645457447, -0.519373119, 0.560032368, 0.516364932, -0.243557155, -0.821003735, 0.562807083, 0.819104075, 0.110980272)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.034999237060546876)

		if afterframe() then
			return
		end

		--119, 8.649999618530273
		tween6 = ts:Create(part6, TweenInfo.new(0.20000076293945312, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.63053584e-06, 0.99993372, -0.000365056098, -0.524898648, -0.850963175, 0.018524915, -0.199993819, 0.144458443, 0.969089389, -0.827335417, 0.504968882, -0.246013403)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333778381347657)

		if afterframe() then
			return
		end

		--120, 8.683333396911621
		tween3 = ts:Create(part3, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.865191221, 0.356897056, 0.492733896, 0.76888299, 0.315619677, -0.556060374, -0.55770421, -0.0942780972, -0.824668169, -0.312705815, 0.944190621, 0.103533566)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--121, 8.699999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.08333396911621094, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.219020784, -0.291230857, 1.9981935, -0.306017995, 0.948809683, 0.0781870857, -0.0348071307, -0.0932227373, 0.995036662, 0.951389253, 0.301777661, 0.0615531802)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.28333377838134766, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.971720934, -0.685033321, -0.0970666409, 0.399383485, 0.21874252, -0.890305817, 0.0264897905, 0.967959642, 0.249704674, 0.916401386, -0.123311922, 0.380792648)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333396911621094, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03176308, -0.828408182, -0.0519402847, 0.331472337, -0.106949344, 0.937383413, -0.0823332816, 0.986484826, 0.141665712, -0.93986553, -0.124136262, 0.318186969)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--122, 8.766666412353516
		tween2 = ts:Create(part2, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.925471246, 0.169533849, 0.171367258, 0.627821445, -0.564804494, 0.535571039, 0.51168257, -0.219017684, -0.830790341, 0.586533666, 0.795630276, 0.151496679)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--123, 8.783333778381348
		tween1 = ts:Create(part1, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.230570376, -0.298490644, 2.0094595, -0.305029511, 0.950241208, 0.0632351637, -0.0436925031, -0.0802932158, 0.995813251, 0.951340079, 0.300989509, 0.0660102144)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03375316, -0.842907846, -0.0497596487, 0.330593705, -0.0851200223, 0.939926744, -0.0719700009, 0.99075073, 0.115036145, -0.941025019, -0.105676763, 0.321409881)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--124, 8.850000381469727
		tween6 = ts:Create(part6, TweenInfo.new(0.33333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.63379547e-06, 0.9999336, -0.000365048647, -0.509194016, -0.860568583, 0.0119688883, -0.214505136, 0.14036499, 0.966584265, -0.8334921, 0.489611566, -0.256069362)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.01833282470703125)

		if afterframe() then
			return
		end

		--125, 8.883333206176758
		tween3 = ts:Create(part3, TweenInfo.new(0.3000001907348633, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.862921119, 0.35299316, 0.500537455, 0.765211463, 0.313532501, -0.562271118, -0.555952072, -0.118549526, -0.822717071, -0.324605584, 0.942148328, 0.0835936666)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--126, 8.966666221618652
		tween2 = ts:Create(part2, TweenInfo.new(0.21666717529296875, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.923468351, 0.170553893, 0.183010846, 0.620479763, -0.582997561, 0.524517596, 0.510101795, -0.207976401, -0.834590912, 0.595651746, 0.785404086, 0.168342948)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--127, 8.983333587646484
		tween1 = ts:Create(part1, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.234144449, -0.301917642, 2.01168275, -0.305006862, 0.95042336, 0.0605504364, -0.0407442525, -0.0765444636, 0.996233344, 0.951478243, 0.301390886, 0.0620708764)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.971720994, -0.685033262, -0.097066626, 0.399383485, 0.209213033, -0.892593205, 0.0264897905, 0.970573545, 0.23934333, 0.916401386, -0.119234368, 0.382089049)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03054285, -0.819169402, -0.0522267967, 0.329687297, -0.112244278, 0.937393844, -0.0615976602, 0.988234282, 0.139996231, -0.942078471, -0.103896394, 0.318894327)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.1849998092651367)

		if afterframe() then
			return
		end

		--128, 9.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.224750638, -0.289134771, 1.96607816, -0.361558676, 0.932100058, 0.0215679761, -0.0222004373, -0.0317332558, 0.999249816, 0.932085156, 0.360808611, 0.0321664624)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.4554472e-06, 0.999936461, -0.000349804759, -0.540955782, -0.841041744, 0.00398403406, -0.208041623, 0.138398618, 0.968279123, -0.814914525, 0.522967339, -0.249839187)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.39999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.971721053, -0.685033321, -0.0970666856, 0.378203899, 0.24543649, -0.892593205, -0.063856326, 0.96883285, 0.23934333, 0.923517466, -0.0335228145, 0.382089049)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.925625086, 0.184857428, 0.181420118, 0.635950744, -0.550957859, 0.540381491, 0.563738286, -0.146543324, -0.812849581, 0.527035117, 0.821566045, 0.217401728)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0311029, -0.826836228, -0.0470879376, 0.313286066, -0.121611595, 0.941839933, 0.0572890192, 0.992380559, 0.109081313, -0.947929204, 0.0197834242, 0.317866057)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.867851675, 0.357763201, 0.482362181, 0.761648417, 0.272379965, -0.587963343, -0.594566166, -0.0670186877, -0.801248789, -0.257648647, 0.959852993, 0.110903233)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--129, 9.350000381469727
		tween1 = ts:Create(part1, TweenInfo.new(0.23333263397216797, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.185570717, -0.237975612, 1.79856396, -0.556618512, 0.824867785, -0.0988378823, 0.0177629888, 0.130761236, 0.991254747, 0.830578268, 0.549995065, -0.0874362364)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333263397216797, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-06, 0.999946535, -0.000294871628, -0.661462903, -0.749813616, -0.01569812, -0.172215655, 0.131484792, 0.976244628, -0.729937375, 0.648453116, -0.216101959)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333263397216797, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.936163604, 0.234938741, 0.159572005, 0.66724956, -0.405982971, 0.624464631, 0.707808495, 0.0845661163, -0.701324463, 0.231917262, 0.909959674, 0.343784958)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333263397216797, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03534877, -0.861482143, -0.0477784276, 0.299319774, -0.00655370951, 0.954130173, 0.221555978, 0.97312218, -0.0628200844, -0.928073525, 0.230196416, 0.292726785)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333263397216797, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.8878721, 0.378838599, 0.409128249, 0.721586585, 0.135442138, -0.678946495, -0.692236125, 0.156792104, -0.704432666, 0.0110435486, 0.978300393, 0.206896991)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.21833263397216796)

		if afterframe() then
			return
		end

		--130, 9.583333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.141732752, -0.181757957, 1.62192404, -0.733539104, 0.652700722, -0.189478487, 0.0185197815, 0.297881722, 0.95442307, 0.679394782, 0.696597576, -0.230595767)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.28333377838134766, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.896357477, -0.48779428, -0.227809802, 0.409698427, 0.188213915, -0.892593384, 0.0768014044, 0.967892826, 0.2393433, 0.908982515, -0.166611001, 0.382089138)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.28333377838134766, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03283441, -0.937628508, -0.0103185475, 0.495329678, 0.21130164, 0.842614949, -0.00961142778, 0.97124052, -0.237906858, -0.868651748, 0.109743491, 0.483115256)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--131, 9.699999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0709840953, -0.0910303146, 0.961555719, -0.930204213, 0.344390929, -0.126945138, -0.0318888016, 0.268722773, 0.962689579, 0.365654588, 0.899546027, -0.238984838)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--132, 9.866666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--133, 9.983333587646484
		--134, 10.016666412353516
		part1.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		part6.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		part5.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		part2.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		part4.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		part3.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)

		--smooth transition
		tween1 = ts:Create(part1, TweenInfo.new(0.5), {C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.5), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.5), {C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.5), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween4:Play() tablesorting(part4, tween4)
		tween5 = ts:Create(part5, TweenInfo.new(0.5), {C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween6 = ts:Create(part6, TweenInfo.new(0.5), {C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.5)

		if afterframe() then
			return
		end

		connect:Disconnect()
		connect2:Disconnect()
		priority.Value = 0
		animvalue.Value = false
		return
	end
end
animation(game.Players.LocalPlayer.Character)
