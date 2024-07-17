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
	local animvalue = anims:FindFirstChild("RavageVictim")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "RavageVictim"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.5), {C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.5), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.5), {C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.5), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)}) tween4:Play() tablesorting(part4, tween4)
		tween5 = ts:Create(part5, TweenInfo.new(0.5), {C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween6 = ts:Create(part6, TweenInfo.new(0.5), {C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)}) tween6:Play() tablesorting(part6, tween6)
		end
	end)
	if true then
		--1, 0
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.86264515e-09, 1.27985477, 0.0961952209, -1, 0, 1.28056854e-09, -1.86264515e-09, 0.987823486, 0.155579686, 3.25962901e-09, 0.155579686, -0.987823546)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.8333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-9.31322575e-10, 1, -2.98023224e-08, -1.00000012, -2.32830644e-10, 0, 1.16415322e-10, 0.534527063, 0.845151424, 3.49245965e-10, 0.845151424, -0.534527004)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -0.871826768, -0.35300529, 1.49011612e-08, 2.79396772e-09, -0.99999994, -0.874024689, 0.485881388, 0, 0.485881418, 0.874024689, -1.49011612e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0755287409, 0.0865546167, -0.753283918, -0.46595341, 0.170540631, 0.868218482, 0.802992046, 0.493614376, 0.333989143, -0.37160635, 0.852795899, -0.366944075)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000024, -0.704952002, -0.161939859, -0.0241229683, -0.220321447, 0.975128949, 0.972586274, 0.220495254, 0.0738789737, -0.231288508, 0.95017916, 0.208962604)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0778583288, -0.0637930632, -1.11027312, -0.856896102, -0.196889251, -0.47640717, -0.478605807, -0.0394267514, 0.877144575, -0.191483542, 0.979633272, -0.060447745)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.0683333358168602)

		if afterframe() then
			return
		end

		--2, 0.0833333358168602
		tween1 = ts:Create(part1, TweenInfo.new(0.05000000447034836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1.70423388, 0.183922201, -1, 0, 1.28056854e-09, 0, 0.981355369, 0.192202076, -9.31322575e-10, 0.192202047, -0.981355488)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.1666666641831398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.420130968, 0.116525352, -0.686209083, -0.270429254, 0.215924993, 0.938213468, 0.944925427, 0.246133864, 0.215717554, -0.184347287, 0.944878042, -0.270594776)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.1666666641831398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65348202, 0.167282999, -0.722156286, -0.743142486, -0.242024094, -0.623829722, -0.593054056, -0.193522394, 0.781560183, -0.309881419, 0.950775266, 0.000281371176)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--3, 0.11666666716337204
		tween5 = ts:Create(part5, TweenInfo.new(0.13333333283662796, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -0.795489967, -0.355846524, 1.49011612e-08, 2.79396772e-09, -0.99999994, -0.862415552, 0.50620091, 0, 0.50620091, 0.862415552, -7.4505806e-09)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333333283662796, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000107, -0.644003391, -0.189134002, -0.0168988407, -0.220992997, 0.975128949, 0.96484828, 0.252210021, 0.0738789216, -0.262264013, 0.942100048, 0.208962649)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--4, 0.13333334028720856
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.86264515e-09, 1.88301861, 0.309167027, -1, 0, 1.28056854e-09, 1.86264515e-09, 0.96917665, 0.246367037, -9.31322575e-10, 0.246366963, -0.969176769)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--5, 0.23333333432674408
		tween1 = ts:Create(part1, TweenInfo.new(0.1666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 2.03342056, 0.33929646, -1, 0, 1.28056854e-09, 0, 0.965459168, 0.260554552, 4.65661287e-10, 0.260554522, -0.965459287)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--6, 0.25
		tween5 = ts:Create(part5, TweenInfo.new(0.5833333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, -0.671148777, -0.330879271, 1.49011612e-08, 2.79396772e-09, -0.99999994, -0.898645759, 0.438675344, 0, 0.438675284, 0.898645818, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.5833333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.797073245, 0.191332221, -0.518477499, -0.698073447, 0.196220577, 0.688615382, 0.708227992, 0.330767363, 0.623703778, -0.105388038, 0.923087776, -0.369868904)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.5833333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0000037, -0.491631687, -0.257117987, 0.0355985612, -0.21876058, 0.975128949, 0.878362477, 0.472250998, 0.0738789141, -0.476667464, 0.853886724, 0.208962604)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.6000000238418579, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.854204416, 0.0142807961, -0.116782486, -0.470708996, 0.166177213, -0.866497636, -0.874652863, 0.0410390235, 0.483010054, 0.115825385, 0.985242009, 0.126030028)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.13500000596046446)

		if afterframe() then
			return
		end

		--7, 0.4000000059604645
		tween1 = ts:Create(part1, TweenInfo.new(0.18333330750465393, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 2.23498917, 0.388765812, -1, 0, 1.28056854e-09, 0, 0.960327625, 0.278874665, -1.86264515e-09, 0.278874576, -0.960327744)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.16833330750465392)

		if afterframe() then
			return
		end

		--8, 0.5833333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 2.03010154, 0.440439463, -1, 0, 1.28056854e-09, 0, 0.955688775, 0.294379234, 1.86264515e-09, 0.294379234, -0.955688894)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.235)

		if afterframe() then
			return
		end

		--9, 0.8333333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.21666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.88709998e-08, 1.54276681, 0.632180214, -1, -1.86264515e-08, -6.98491931e-09, -2.42143869e-08, 0.879537046, 0.475830853, -1.86264515e-09, 0.475830883, -0.879537106)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.46666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14734285e-05, 0.999919891, 4.91440296e-05, -0.989306688, 0.1197607, 0.0832431465, 0.109962627, 0.237525225, 0.965138793, 0.0958129093, 0.96397227, -0.24815467)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.46666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -0.671148896, -0.330879033, 1.49011612e-08, 2.79396772e-09, -0.99999994, -0.68986249, 0.723940492, -7.4505806e-09, 0.723940492, 0.689862609, -2.98023224e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.843649864, 0.191327631, -0.518478155, -0.823129594, -0.0250233263, 0.567302227, 0.564680696, -0.141537592, 0.813082635, 0.0599486977, 0.989616692, 0.130633846)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.46666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000381, -0.491631508, -0.257118404, 0.210656911, -0.0688991994, 0.975128949, -0.0158515573, 0.997141123, 0.073878929, -0.977431536, -0.0310203731, 0.208962575)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--10, 0.8500000238418579
		tween3 = ts:Create(part3, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.854199529, 0.0876924694, -0.119270295, -0.239296988, 0.735471606, -0.633891463, -0.829578698, 0.184362739, 0.527076364, 0.504515648, 0.651990771, 0.566014111)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.18499992847442626)

		if afterframe() then
			return
		end

		--11, 1.0499999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02072954e-06, 1.29271579, 0.62214601, -0.997222185, -0.0627545267, -0.0401237011, -0.074483484, 0.843789041, 0.531481564, 0.000503063202, 0.532993615, -0.846119285)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.877308428, 0.219788641, -0.451902837, -0.837936163, -0.189383075, 0.511856616, 0.545640945, -0.270437449, 0.793183208, -0.0117902532, 0.943926692, 0.329944432)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.989387095, 0.131691992, -0.0744156837, -0.0266052634, 0.918061554, -0.395544291, -0.764336288, 0.236335009, 0.599946499, 0.644268751, 0.318290681, 0.695419848)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--12, 1.149999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.57790089e-06, 0.772577882, 0.449607939, -0.966148853, -0.216376588, -0.140489832, -0.257984936, 0.810191751, 0.526339769, -6.38971105e-05, 0.544766843, -0.838587821)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.92562747, 0.290945053, -0.285466731, -0.726797879, -0.463127673, 0.507225275, 0.640041411, -0.188708678, 0.744806528, -0.249222815, 0.8659693, 0.43357408)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32735896, 0.180515498, 0.0397968292, 0.214999035, 0.968256712, -0.127491176, -0.663036525, 0.240564346, 0.70888114, 0.717049003, -0.0678774267, 0.693711281)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.13499997615814208)

		if afterframe() then
			return
		end

		--13, 1.2999999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.19467688e-06, 1.11200798, 0.520887554, -0.966148913, -0.213174805, -0.145302191, -0.257984877, 0.798196375, 0.544358969, -6.38961792e-05, 0.563417673, -0.82617259)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.83197242e-06, 0.999973297, 1.65104866e-05, -0.996407628, 0.0764903799, 0.0363392122, 0.0837351531, 0.95397079, 0.287974447, -0.0126394946, 0.289982736, -0.956949115)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000811, -0.547029912, -0.415522218, -0.131075382, 0.135510609, -0.982067108, -0.985497355, 0.0898802206, 0.143935204, 0.107773244, 0.986690998, 0.121764176)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.687213957, 0.499542296, -0.728047013, -0.859666586, -0.0607928932, 0.507225275, 0.472756594, -0.47091949, 0.744806528, 0.193583354, 0.880079746, 0.43357411)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0000037, -0.460400343, -0.278420925, 0.0109740049, -0.221366256, 0.975128949, 0.9255597, 0.371323764, 0.0738789588, -0.378443003, 0.901729524, 0.208962649)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.943959236, 0.429685056, -0.526090026, -0.991572797, -0.0734139159, -0.106740966, -0.0748723596, -0.347644836, 0.934632599, -0.105723061, 0.93474859, 0.339219034)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--14, 1.3166667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.41519034e-06, 1.14801633, 0.235402077, -0.989613235, -0.113692075, -0.0879751518, -0.143656015, 0.759410381, 0.634554267, -0.00533455051, 0.640601337, -0.767855227)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.18333327770233154, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.77095556e-06, 0.999987066, 1.38580799e-05, -0.993399799, -0.0981391296, 0.0593783781, 0.00122427964, 0.508563638, 0.861023664, -0.114697792, 0.855413258, -0.50508666)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000453, -0.612896383, -0.354854345, -0.134398967, 0.132214949, -0.982067227, -0.987424493, 0.0653877705, 0.143935204, 0.0832455605, 0.98906213, 0.12176419)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.910129368, 0.373656571, -0.468199909, -0.822375298, 0.115449771, 0.557108819, 0.359390855, -0.653690457, 0.665978551, 0.441063821, 0.747904062, 0.496086955)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000381, -0.460400224, -0.278419018, 0.0678394884, -0.211000606, 0.975128889, 0.79807049, 0.598017812, 0.0738788843, -0.598733008, 0.773209691, 0.208962575)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.943959236, 0.429684818, -0.526089787, -0.957126379, -0.269286305, -0.106740966, -0.00418700278, -0.355591357, 0.93463254, -0.289640069, 0.895008922, 0.339219064)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--15, 1.350000023841858
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000203, -0.66229558, -0.30935365, -0.10471224, 0.15677762, -0.982067287, -0.953509092, 0.264769822, 0.143935204, 0.282587647, 0.951481879, 0.121764198)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07680011, 0.364142776, -0.339263231, -0.694051981, -0.427493155, 0.579259336, 0.717950761, -0.351455659, 0.600854099, -0.0532769486, 0.832903743, 0.55084759)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.2999999523162842, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.955127716, 0.445392132, -0.728679657, -0.966962993, 0.231491566, -0.106740996, -0.177010655, -0.308431715, 0.934633136, 0.183437675, 0.922650218, 0.339219153)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--16, 1.399999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.82821667e-06, 1.12919068, 0.0197213069, -0.997255802, -0.0568601415, -0.0474104658, -0.0739693046, 0.738801479, 0.669851542, -0.00306093693, 0.671520174, -0.740980148)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00016356, -0.670744538, -0.298482716, -0.0470591486, 0.182563171, -0.982067227, -0.812563777, 0.564820886, 0.143935204, 0.580969453, 0.80476588, 0.12176419)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22760224, 0.367216378, -0.291183412, -0.41034776, -0.755964696, 0.510031343, 0.779244006, -0.000150620937, 0.626720786, -0.473701894, 0.654612243, 0.589142799)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0000037, -0.460400462, -0.278419316, 0.113376305, -0.190444931, 0.975128949, 0.643848598, 0.761577845, 0.0738788843, -0.756706536, 0.619459271, 0.208962604)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--17, 1.5
		tween1 = ts:Create(part1, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3448298e-06, 1.04832852, -0.0690575838, -0.997255921, -0.0584534779, -0.0454315208, -0.0739692673, 0.761350989, 0.644106865, -0.00306091458, 0.64569968, -0.763585567)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.91948628e-06, 0.999999106, 1.04010105e-05, -0.994461596, -0.100252658, 0.0315577164, 0.0336265415, -0.0190132558, 0.99925375, -0.0995778218, 0.994780481, 0.0222791433)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004915, -0.588844597, -0.367741823, 0.00215315819, 0.188518539, -0.982067049, -0.637253642, 0.7570948, 0.143935293, 0.770652175, 0.625515878, 0.121764272)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19586456, 0.392395258, -0.45290187, -0.661512733, -0.638777018, 0.392891824, 0.634119868, -0.196749359, 0.747787893, -0.400368333, 0.743811727, 0.535213113)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000358, -0.460400641, -0.278420389, 0.138487488, -0.173045218, 0.975128889, 0.533007145, 0.842879236, 0.0738789886, -0.834700644, 0.509519458, 0.208962649)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13499997615814208)

		if afterframe() then
			return
		end

		--18, 1.649999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.151526392, 1.47604704, 0.111599922, -0.964012325, -0.203600913, -0.170959443, -0.262338698, 0.83277607, 0.487506539, 0.0431141593, 0.514811456, -0.856218874)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.50970435e-06, 1.00000155, 9.53674316e-06, -0.995196164, -0.0742099434, 0.0638582706, 0.0306333434, 0.383476257, 0.923042774, -0.0929870754, 0.920564592, -0.379360616)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.58885622, -0.367746532, -0.118827254, 0.182339564, -0.976028979, -0.900310636, 0.394746959, 0.183353961, 0.41871646, 0.900516152, 0.117255777)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.42996645, 0.40807724, -0.903493643, -0.599764466, 0.0473608449, 0.798774004, 0.793362081, -0.0948084891, 0.601322412, 0.104209676, 0.994368315, 0.0192883648)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001705, -0.460327506, -0.278457522, 0.198515549, -0.0784437582, 0.976953685, 0.789176643, 0.603894055, -0.11186973, -0.58120048, 0.793196201, 0.181787729)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.626381159, 0.324765742, -0.901758671, -0.98521328, 0.164586008, -0.0476053208, -0.0961182714, -0.300932884, 0.948791444, 0.14183253, 0.939336836, 0.312302738)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--19, 1.6833332777023315
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.151516423, 1.59009337, -0.0454548895, -0.926708877, -0.30880776, -0.214122713, -0.367808014, 0.862140536, 0.348469913, 0.0769936144, 0.401686102, -0.912535429)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.88361514e-06, 1.0000118, 6.73532486e-06, -0.998405993, 0.0547660515, -0.0136466315, 0.0477615669, 0.948638976, 0.312734812, 0.0300729815, 0.311584383, -0.949742496)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00048625, -0.588858008, -0.367757559, -0.254474878, 0.138379216, -0.957127869, -0.961048543, 0.0741779655, 0.26624155, 0.107839867, 0.987597942, 0.114112556)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.410334408, 0.448388249, -0.915625572, -0.721210957, 0.272512287, 0.636860847, 0.645484984, -0.0692943633, 0.760627985, 0.251410186, 0.959656, -0.125927135)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0000298, -0.460311055, -0.278471708, 0.115535736, -0.183982849, 0.976115584, 0.993283927, 0.0276246816, -0.112360999, -0.00629235804, 0.982541382, 0.185938895)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.932407141, 0.503827572, -0.553891182, -0.950924695, -0.129729792, -0.28091538, -0.298765481, 0.14872399, 0.942670703, -0.080512017, 0.98033464, -0.180184811)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--20, 1.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.151513636, 1.69078958, 0.075255096, -0.941662133, -0.269657791, -0.201388493, -0.329813957, 0.858558238, 0.392556757, 0.0670477599, 0.436076462, -0.897408664)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.45124102e-06, 1.00002086, 4.02331352e-06, -0.988347292, 0.152175695, -0.00348341465, 0.0670699179, 0.455919534, 0.887490392, 0.136642635, 0.876915097, -0.460813224)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588858783, -0.36774537, 0.0473661274, 0.174578294, -0.983503461, -0.451054633, 0.882247567, 0.134882137, 0.891241431, 0.437223315, 0.120533377)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.816922665, 0.67387104, -0.331760466, -0.881953239, -0.055826731, 0.468018919, 0.470789909, -0.0565292202, 0.880432367, -0.0226949751, 0.996838748, 0.0761389434)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001931, -0.46036768, -0.278465986, 0.18803896, -0.0779808685, 0.979061425, 0.765656352, 0.635989428, -0.0963959172, -0.615154803, 0.767749548, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03212869, 0.792089105, -0.0229510069, -0.930373132, 0.177002594, -0.321054131, -0.311221927, 0.0815358385, 0.946832895, 0.193769351, 0.980827153, -0.0207715593)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--21, 1.8166667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.151532441, 1.64262402, 0.124872684, -0.955482483, -0.230542585, -0.184129208, -0.289072871, 0.85642767, 0.42774871, 0.059078984, 0.461933017, -0.884945273)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--22, 1.8833333253860474
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07200968, 0.713378608, -0.134965867, -0.897974849, -0.350542694, 0.266009986, 0.313901931, -0.0866216943, 0.945495963, -0.308394313, 0.93253243, 0.187820002)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.05481684, 0.86556375, 0.109877065, -0.836019278, 0.469062269, -0.284696758, -0.317495197, 0.00963722356, 0.948210835, 0.447513759, 0.88311249, 0.140868172)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--23, 1.9333332777023315
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.151534021, 1.2850287, 0.0871324763, -0.963653505, -0.204795793, -0.171553656, -0.26135245, 0.855783939, 0.446462661, 0.0553792007, 0.475071222, -0.878203094)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333346843719482, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-08, 1.00003707, -6.2584877e-07, -1.00000036, -1.94180757e-07, -5.22704795e-08, 5.59957698e-08, 0.131611049, 0.991302013, 1.82772055e-07, 0.991301715, -0.131611347)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--24, 1.9833333492279053
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.31451869, 0.541992009, -0.295255095, -0.683232605, -0.726194203, -0.0764105022, 0.103373215, -0.19978115, 0.974376678, -0.722848296, 0.657826781, 0.211561441)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.994669676, 0.715358734, -0.174261659, -0.525193095, 0.84668541, -0.0854229331, -0.344498307, -0.119748503, 0.931120455, 0.778136849, 0.518444717, 0.354570985)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--25, 2.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.151520222, 1.18399024, 0.100530356, -0.968954802, -0.186736345, -0.16203776, -0.24124071, 0.85756743, 0.45429197, 0.0541254692, 0.479278535, -0.875992656)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.11833344459533691)

		if afterframe() then
			return
		end

		--26, 2.1666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.106703885, 1.61112642, 0.353476107, -0.99956131, 0.0121737327, -0.0269970801, -0.00738004036, 0.780449867, 0.62517488, 0.0286805928, 0.625099957, -0.780017912)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.02096999e-07, 1.00003695, -8.34465027e-07, -1.00000036, -1.91153958e-07, 6.19329512e-08, 5.61121851e-08, 0.651318252, 0.758805633, 1.82539225e-07, 0.758805037, -0.651318312)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588854432, -0.367749751, -0.0529702008, 0.172960371, -0.983503461, -0.851873875, 0.5060848, 0.134882137, 0.521066666, 0.844964564, 0.120533399)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04662371, 0.338896632, -0.560965836, -0.97100544, -0.238943189, -0.00738701224, -0.0421067029, 0.140530646, 0.989180744, -0.235319629, 0.960811019, -0.14651747)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00002098, -0.460362077, -0.278466702, 0.10499303, -0.174402177, 0.979061425, 0.993707538, 0.0570757985, -0.0963959247, -0.0390690118, 0.983019948, 0.179295912)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01072586, 0.132050544, -0.150650948, -0.867017686, 0.389948428, -0.310195953, -0.244808212, 0.208857879, 0.946811557, 0.433995724, 0.896838546, -0.0856222585)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--27, 2.200000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.105217755, 1.62552571, 0.268263191, -0.999561369, 0.00851466693, -0.0283644237, -0.0073800832, 0.855942786, 0.51701802, 0.0286805537, 0.517000496, -0.855504692)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.86264515e-09, 1.00003719, -7.4505806e-07, -1.00000036, -1.96276233e-07, -4.37139533e-08, 5.58793545e-08, 0.176282316, 0.98434031, 1.83004886e-07, 0.984339952, -0.176282585)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049317, -0.588856339, -0.36774081, -0.055190511, 0.172265053, -0.983503222, -0.858311415, 0.495084286, 0.134881452, 0.5101524, 0.851596415, 0.120533079)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14974821, 0.447910726, -0.303920627, -0.9949705, 0.0395779014, 0.0920170248, 0.0942781195, 0.0596651621, 0.993756473, 0.0338406116, 0.997433543, -0.0630964562)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001764, -0.460366011, -0.278462172, 0.100685447, -0.176923096, 0.979061067, 0.994805813, 0.0326982886, -0.0963958353, -0.0149589479, 0.983681321, 0.179296359)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00904489, 0.241677582, 0.0500874072, -0.730490565, 0.538775325, -0.419648677, -0.491338074, 0.0121530937, 0.870884359, 0.474310786, 0.842362106, 0.255842924)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--28, 2.25
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103727892, 1.32966626, 0.183049917, -0.999561429, 0.0047073774, -0.0292383768, -0.00738004036, 0.91654408, 0.399865836, 0.0286805984, 0.399906218, -0.916107535)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588858902, -0.367744863, 0.0531318933, 0.172910765, -0.98350352, -0.421536744, 0.896726072, 0.134882152, 0.905256152, 0.407414675, 0.120533422)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25287378, 0.556928873, -0.0468793213, -0.886547267, -0.433886647, 0.160549521, 0.164937884, 0.0278014522, 0.9859128, -0.432237238, 0.900538921, 0.0469161682)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001955, -0.460366726, -0.278465688, 0.181302041, -0.092570141, 0.979061365, 0.813436747, 0.573613882, -0.0963959247, -0.552679002, 0.813879967, 0.179295927)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0096153, 0.192288905, -0.0125507116, 0.112654515, 0.943113267, -0.312805831, -0.581766367, 0.317814529, 0.748697042, 0.805519998, 0.0976332873, 0.584472418)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--29, 2.299999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103735983, 1.80578339, 0.538274944, -0.997933149, 0.0556210726, -0.0321824588, 0.029636303, 0.842731118, 0.537518501, 0.0570185259, 0.535453856, -0.842637956)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.84287739e-08, 1.00003719, -7.74860382e-07, -1.00000036, -2.00001523e-07, -2.07801349e-08, 5.59957698e-08, 0.28910327, 0.957298517, 1.82539225e-07, 0.957298279, -0.289103478)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049293, -0.588856697, -0.367740273, -0.0784458295, 0.162995428, -0.983503342, -0.918444991, 0.371840835, 0.134881631, 0.387691736, 0.913874745, 0.120532945)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04662371, 0.338896632, -0.560965836, -0.97100544, -0.238943189, -0.00738701224, -0.0421067029, 0.140530646, 0.989180744, -0.235319629, 0.960811019, -0.14651747)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001764, -0.46036607, -0.278461814, 0.158762693, -0.127411842, 0.979061067, 0.912854552, 0.396742284, -0.0963959545, -0.376153052, 0.909044385, 0.179296315)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01072586, 0.132050544, -0.150650948, -0.867017686, 0.389948428, -0.310195953, -0.244808212, 0.208857879, 0.946811557, 0.433995724, 0.896838546, -0.0856222585)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--30, 2.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103745982, 1.89297807, 0.384402126, -0.997933149, 0.0487478562, -0.0418696105, 0.0296362638, 0.927264273, 0.37323311, 0.0570184998, 0.371220738, -0.926792562)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.5925616e-07, 1.00003695, -8.94069672e-07, -1.00000036, -1.97440386e-07, 3.84752639e-08, 5.61121851e-08, 0.55525291, 0.831682324, 1.82539225e-07, 0.831681967, -0.555253088)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23872018, 0.37876451, -0.30149138, -0.898679733, -0.438543081, -0.00738701224, -0.0708246082, 0.128474563, 0.989180744, -0.43284905, 0.889479935, -0.146517456)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02841091, 0.0915409625, 0.131299883, -0.277472198, 0.909279287, -0.310196042, -0.00402708352, 0.321770728, 0.946811795, 0.960727394, 0.263960004, -0.0856224969)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--31, 2.3333332538604736
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049174, -0.588861167, -0.36774087, 0.134259447, 0.121225119, -0.983503461, 0.0977585688, 0.986029446, 0.134882152, 0.986114085, -0.114256732, 0.120533407)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001764, -0.460370243, -0.278463662, 0.200076774, 0.0375359356, 0.979061425, 0.293264776, 0.951161325, -0.0963959247, -0.934862256, 0.306410313, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--32, 2.3499999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103745639, 1.40904033, 0.370735407, -0.997933269, 0.0589290075, -0.0256278273, 0.0296363048, 0.775917053, 0.630138457, 0.0570185333, 0.628076613, -0.776059985)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1.00003707, -8.64267349e-07, -1.00000036, -2.00700015e-07, -1.40862539e-08, 5.59957698e-08, 0.319673359, 0.947528422, 1.82539225e-07, 0.947528183, -0.319673538)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--33, 2.383333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211748093, 1.9055692, 0.700533271, -0.942300797, 0.332709163, 0.0370670408, 0.314599365, 0.842234671, 0.437799215, 0.114440709, 0.424199849, -0.898308694)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.62632966e-07, 1.00003684, -9.53674316e-07, -1.00000036, -1.76252797e-07, 9.67411324e-08, 5.61121851e-08, 0.782100081, 0.623153687, 1.82946678e-07, 0.623153329, -0.782100201)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588855028, -0.367748976, -0.037306726, 0.177000955, -0.98350352, -0.803255677, 0.580164671, 0.134882137, 0.594469428, 0.79503566, 0.120533362)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00533509, 0.0127367675, -0.553062439, -0.933474898, -0.358566701, -0.00738701224, -0.0593603253, 0.13415733, 0.989180744, -0.353696018, 0.923813939, -0.14651747)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00002086, -0.460361779, -0.278466582, 0.101179942, -0.176641643, 0.979061425, 0.99471283, 0.0354772657, -0.0963959247, -0.017706871, 0.983636618, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.890306115, -0.162744641, -0.198761582, -0.949987411, 0.0361048803, -0.310196072, -0.305292368, 0.101730928, 0.946811795, 0.0657439679, 0.99415791, -0.0856226012)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--34, 2.4166667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211752445, 1.36772513, 0.250547379, -0.990270376, 0.130058572, 0.0494906865, 0.13316147, 0.782386661, 0.608390689, 0.0404056311, 0.609061658, -0.792093396)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.60770321e-08, 1.00003719, -8.04662704e-07, -0.994839311, 0.00650647096, 0.101258151, 0.101458527, 0.0767906308, 0.991872311, -0.00132173277, 0.997026563, -0.0770547986)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588859081, -0.367745161, 0.0575733781, 0.171483055, -0.98350352, -0.398271024, 0.907298803, 0.134882137, 0.915461957, 0.383933693, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06472528, 0.307775497, -0.16539228, -0.997397542, -0.0311767831, 0.0650087148, 0.0673989728, -0.0829919651, 0.994268537, -0.0256028771, 0.996062338, 0.0848772749)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.972482681, -1.00013638, 0.136568815, 0.203344107, -0.00953359157, 0.979061425, 0.504361868, 0.858097494, -0.0963959843, -0.839210212, 0.513401628, 0.179295868)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08158469, -0.0427049398, -0.0552945435, -0.917197347, 0.250056952, -0.310194731, -0.274365783, 0.168152913, 0.946809471, 0.288916409, 0.953517795, -0.0856223553)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--35, 2.433333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09442091, 0.455296576, 0.0284388363, -0.783572435, -0.620292783, 0.0353712812, 0.153639391, -0.138289839, 0.978402495, -0.60200417, 0.772084236, 0.20366016)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17722344, 0.017315954, 0.0164445117, -0.541203082, 0.78158766, -0.310196012, -0.101828009, 0.305259883, 0.946811855, 0.83470726, 0.544000089, -0.0856230482)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--36, 2.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211747095, 1.79815519, 0.50198096, -0.98794961, 0.121950835, -0.0953083485, 0.0502756312, 0.83524245, 0.547578692, 0.14638333, 0.536188543, -0.831308722)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.57045031e-07, 1.00003695, -1.16229057e-06, -0.99483937, 0.0667932257, 0.0763820112, 0.101458527, 0.664631307, 0.74025172, -0.00132173311, 0.744180441, -0.667978108)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588855624, -0.367748618, -0.029912293, 0.178399488, -0.983503461, -0.77842927, 0.613073051, 0.134882137, 0.627023458, 0.769621372, 0.120533407)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0552361, 0.0909756422, -0.547144771, -0.931093693, -0.363061637, 0.0353713185, 0.106297418, -0.177285492, 0.978402674, -0.348948538, 0.914744675, 0.203659877)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05747318, -0.729847074, -0.340740979, 0.188641414, -0.0765129477, 0.979061425, 0.760676026, 0.64193809, -0.0963959843, -0.621121228, 0.762930751, 0.179295629)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.791986704, 0.190346897, -0.489036471, -0.763609886, 0.103896938, -0.637265623, -0.645008504, -0.0777227059, 0.760216355, 0.0294597615, 0.991548359, 0.126362011)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--37, 2.4833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211744219, 1.64506948, 0.416266859, -0.995967925, 0.00898515992, -0.0892595053, -0.0453713238, 0.80788976, 0.587584615, 0.077391468, 0.589265287, -0.80422473)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 1.00003695, -7.4505806e-07, -0.994839311, 0.00739285722, 0.101197302, 0.10145852, 0.0854726136, 0.991161823, -0.00132173288, 0.996313572, -0.0857819319)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049138, -0.588860273, -0.367742866, 0.102083325, 0.14933227, -0.98350352, -0.136225313, 0.98145473, 0.134882122, 0.985406399, 0.120207243, 0.120533422)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07907701, 0.399786353, -0.122599244, -0.859621584, -0.509705901, 0.0353713036, 0.133724108, -0.157629937, 0.978402734, -0.49312067, 0.845786452, 0.203659669)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05747056, -0.729851425, -0.340737909, 0.199892953, 0.0385046713, 0.979061425, 0.288654357, 0.952570856, -0.0963959917, -0.936335862, 0.301877499, 0.179295659)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.939169705, 0.356517315, -0.109668851, -0.885546207, 0.299971849, -0.354720771, -0.227318436, 0.386111259, 0.894008517, 0.405143142, 0.872314274, -0.273733497)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--38, 2.5166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211736113, 1.8149364, 0.584694445, -0.98794961, 0.121950835, -0.0953083485, 0.0502756312, 0.83524245, 0.547578692, 0.14638333, 0.536188543, -0.831308722)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.57045031e-07, 1.00003695, -1.16229057e-06, -0.99483937, 0.0667932257, 0.0763820112, 0.101458527, 0.664631307, 0.74025172, -0.00132173311, 0.744180441, -0.667978108)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588855624, -0.367748618, -0.029912293, 0.178399488, -0.983503461, -0.77842927, 0.613073051, 0.134882137, 0.627023458, 0.769621372, 0.120533407)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05523503, 0.0909736156, -0.547143936, -0.748236418, -0.662488818, 0.0353713185, 0.161019579, -0.129622459, 0.978402615, -0.64359504, 0.737772703, 0.203659862)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05747318, -0.729847074, -0.340740979, 0.188641414, -0.0765129477, 0.979061425, 0.760676026, 0.64193809, -0.0963959843, -0.621121228, 0.762930751, 0.179295629)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.791987181, 0.190346122, -0.489036083, -0.745053828, 0.196950212, -0.637265623, -0.649670959, 0.00213220529, 0.760216296, 0.151088908, 0.980412304, 0.126362026)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--39, 2.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211749002, 1.24586141, 0.303020716, -0.995967925, 0.00898515992, -0.0892595053, -0.0453713238, 0.80788976, 0.587584615, 0.077391468, 0.589265287, -0.80422473)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 1.00003695, -7.4505806e-07, -0.994839311, 0.00739285722, 0.101197302, 0.10145852, 0.0854726136, 0.991161823, -0.00132173288, 0.996313572, -0.0857819319)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049138, -0.588860273, -0.367742866, 0.102083325, 0.14933227, -0.98350352, -0.136225313, 0.98145473, 0.134882122, 0.985406399, 0.120207243, 0.120533422)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07907629, 0.399785101, -0.122597754, -0.595442235, -0.802619338, 0.0353712961, 0.184300229, -0.0936096162, 0.978402793, -0.781972766, 0.589102209, 0.203659654)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05747056, -0.729851425, -0.340737909, 0.199892953, 0.0385046713, 0.979061425, 0.288654357, 0.952570856, -0.0963959917, -0.936335862, 0.301877499, 0.179295659)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.16175067, 0.376446992, -0.111671239, -0.814528167, 0.459041655, -0.354720831, -0.151745766, 0.421578974, 0.894008458, 0.55993259, 0.78201592, -0.273733497)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--40, 2.5999999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103735983, 1.80578339, 0.538274944, -0.997933149, 0.0556210726, -0.0321824588, 0.029636303, 0.842731118, 0.537518501, 0.0570185259, 0.535453856, -0.842637956)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.84287739e-08, 1.00003719, -7.74860382e-07, -1.00000036, -2.00001523e-07, -2.07801349e-08, 5.59957698e-08, 0.28910327, 0.957298517, 1.82539225e-07, 0.957298279, -0.289103478)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049174, -0.588861167, -0.36774087, 0.134259447, 0.121225119, -0.983503461, 0.0977585688, 0.986029446, 0.134882152, 0.986114085, -0.114256732, 0.120533407)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04662371, 0.338896632, -0.560965836, -0.97100544, -0.238943189, -0.00738701224, -0.0421067029, 0.140530646, 0.989180744, -0.235319629, 0.960811019, -0.14651747)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001764, -0.460370243, -0.278463662, 0.200076774, 0.0375359356, 0.979061425, 0.293264776, 0.951161325, -0.0963959247, -0.934862256, 0.306410313, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01072478, 0.132052511, -0.150653064, -0.939365387, 0.146192044, -0.310195982, -0.29141134, 0.136499509, 0.946811497, 0.180759713, 0.9797948, -0.085622251)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--41, 2.616666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103745639, 1.40904033, 0.370735407, -0.997933269, 0.0589290075, -0.0256278273, 0.0296363048, 0.775917053, 0.630138457, 0.0570185333, 0.628076613, -0.776059985)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1.00003707, -8.64267349e-07, -1.00000036, -2.00700015e-07, -1.40862539e-08, 5.59957698e-08, 0.319673359, 0.947528422, 1.82539225e-07, 0.947528183, -0.319673538)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23872018, 0.37876451, -0.30149138, -0.898679733, -0.438543081, -0.00738701224, -0.0708246082, 0.128474563, 0.989180744, -0.43284905, 0.889479935, -0.146517456)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02841139, 0.0915412307, 0.131300703, -0.416955143, 0.854358375, -0.310196042, -0.0545571595, 0.31713739, 0.946811736, 0.907290816, 0.411698252, -0.0856224895)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--42, 2.683333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211752445, 1.36772513, 0.250547379, -0.990270376, 0.130058572, 0.0494906865, 0.13316147, 0.782386661, 0.608390689, 0.0404056311, 0.609061658, -0.792093396)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.60770321e-08, 1.00003719, -8.04662704e-07, -0.994839311, 0.00650647096, 0.101258151, 0.101458527, 0.0767906308, 0.991872311, -0.00132173277, 0.997026563, -0.0770547986)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588859081, -0.367745161, 0.0575733781, 0.171483055, -0.98350352, -0.398271024, 0.907298803, 0.134882137, 0.915461957, 0.383933693, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09442091, 0.455296576, 0.0284388363, -0.783572435, -0.620292783, 0.0353712812, 0.153639391, -0.138289839, 0.978402495, -0.60200417, 0.772084236, 0.20366016)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.972482681, -1.00013638, 0.136568815, 0.203344107, -0.00953359157, 0.979061425, 0.504361868, 0.858097494, -0.0963959843, -0.839210212, 0.513401628, 0.179295868)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17722392, 0.0173151195, 0.0164453536, -0.359348059, 0.880141437, -0.310196012, -0.033394888, 0.320058346, 0.946811855, 0.932608724, 0.350589871, -0.0856230557)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--43, 2.700000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103745639, 1.40904033, 0.370735407, -0.997933269, 0.0589290075, -0.0256278273, 0.0296363048, 0.775917053, 0.630138457, 0.0570185333, 0.628076613, -0.776059985)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1.00003707, -8.64267349e-07, -1.00000036, -2.00700015e-07, -1.40862539e-08, 5.59957698e-08, 0.319673359, 0.947528422, 1.82539225e-07, 0.947528183, -0.319673538)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049174, -0.588861167, -0.36774087, 0.134259447, 0.121225119, -0.983503461, 0.0977585688, 0.986029446, 0.134882152, 0.986114085, -0.114256732, 0.120533407)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23872018, 0.37876451, -0.30149138, -0.898679733, -0.438543081, -0.00738701224, -0.0708246082, 0.128474563, 0.989180744, -0.43284905, 0.889479935, -0.146517456)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001764, -0.460370243, -0.278463662, 0.200076774, 0.0375359356, 0.979061425, 0.293264776, 0.951161325, -0.0963959247, -0.934862256, 0.306410313, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02841139, 0.0915412307, 0.131300762, -0.396961272, 0.863829494, -0.310196042, -0.0471626222, 0.318321079, 0.946811795, 0.916625261, 0.390474021, -0.0856225044)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--44, 2.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103748336, 1.73299122, 0.37073341, -0.997933209, 0.0523954183, -0.0372039564, 0.029636303, 0.888965309, 0.457014918, 0.0570185259, 0.454967737, -0.888680935)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.90572643e-07, 1.00003672, -9.53674316e-07, -1.00000036, -1.64844096e-07, 1.15251169e-07, 5.61121851e-08, 0.845499933, 0.533976614, 1.82713848e-07, 0.533976197, -0.845499933)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588855684, -0.367748737, -0.0271037221, 0.178847745, -0.98350352, -0.768694162, 0.625236094, 0.134882152, 0.639046311, 0.759667873, 0.120533407)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.928661287, 0.241529763, -0.608352005, -0.971352935, -0.237526834, -0.00738701224, -0.0419016331, 0.140591711, 0.989181161, -0.233917743, 0.961153448, -0.146517769)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001955, -0.460366488, -0.278465807, 0.175959349, -0.10236194, 0.979061425, 0.843635142, 0.52819699, -0.0963959396, -0.507269144, 0.842930973, 0.179295927)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.738077343, -0.0108056068, -0.657346129, -0.949430883, -0.0141549166, -0.313659608, -0.303928673, 0.292167962, 0.906792223, 0.0788092539, 0.956263423, -0.281697184)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--45, 2.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103750207, 1.48231566, 0.229565471, -0.997933209, 0.0533535555, -0.0358163752, 0.0296363067, 0.876667857, 0.480182678, 0.0570185296, 0.478128731, -0.876437247)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.53902578e-08, 1.00003719, -6.40749931e-07, -1.00000036, -1.91153958e-07, -6.25732355e-08, 5.55883162e-08, 0.0787622035, 0.996894002, 1.82772055e-07, 0.996893823, -0.0787625015)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049138, -0.588860214, -0.367743224, 0.0889182091, 0.157526746, -0.983503461, -0.21978423, 0.96618098, 0.134882137, 0.971489966, 0.204163432, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17101777, 0.572246671, 0.026711911, -0.390785217, -0.920452476, -0.0073870346, -0.137724414, 0.0505336858, 0.989181817, -0.910120487, 0.387576282, -0.146518171)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001669, -0.460370839, -0.278462201, 0.173322961, 0.106765211, 0.979061484, -0.0672016442, 0.993074119, -0.0963959247, -0.982570827, -0.0490867198, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.996369839, 0.263059705, -0.18615213, -0.885955036, 0.34476611, -0.310196131, -0.255242974, 0.195968658, 0.946813107, 0.387220919, 0.918005347, -0.085623078)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--46, 2.799999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103748336, 1.73299122, 0.37073341, -0.997933209, 0.0523954183, -0.0372039564, 0.029636303, 0.888965309, 0.457014918, 0.0570185259, 0.454967737, -0.888680935)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.90572643e-07, 1.00003672, -9.53674316e-07, -1.00000036, -1.64844096e-07, 1.15251169e-07, 5.61121851e-08, 0.845499933, 0.533976614, 1.82713848e-07, 0.533976197, -0.845499933)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588855684, -0.367748737, -0.0271037221, 0.178847745, -0.98350352, -0.768694162, 0.625236094, 0.134882152, 0.639046311, 0.759667873, 0.120533407)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.928661287, 0.241529763, -0.608352005, -0.971352935, -0.237526834, -0.00738701224, -0.0419016331, 0.140591711, 0.989181161, -0.233917743, 0.961153448, -0.146517769)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001955, -0.460366488, -0.278465807, 0.175959349, -0.10236194, 0.979061425, 0.843635142, 0.52819699, -0.0963959396, -0.507269144, 0.842930973, 0.179295927)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.73807776, -0.0108042955, -0.657347143, -0.94716233, -0.0816308185, -0.310196072, -0.315528154, 0.0632031411, 0.94681263, -0.0576798543, 0.99465847, -0.0856228694)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--47, 2.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103750207, 1.48231566, 0.229565471, -0.997933209, 0.0533535555, -0.0358163752, 0.0296363067, 0.876667857, 0.480182678, 0.0570185296, 0.478128731, -0.876437247)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.53902578e-08, 1.00003719, -6.40749931e-07, -1.00000036, -1.91153958e-07, -6.25732355e-08, 5.55883162e-08, 0.0787622035, 0.996894002, 1.82772055e-07, 0.996893823, -0.0787625015)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049138, -0.588860214, -0.367743224, 0.0889182091, 0.157526746, -0.983503461, -0.21978423, 0.96618098, 0.134882137, 0.971489966, 0.204163432, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17101777, 0.572246671, 0.026711911, -0.390785217, -0.920452476, -0.0073870346, -0.137724414, 0.0505336858, 0.989181817, -0.910120487, 0.387576282, -0.146518171)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001669, -0.460370839, -0.278462201, 0.173322961, 0.106765211, 0.979061484, -0.0672016442, 0.993074119, -0.0963959247, -0.982570827, -0.0490867198, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.996372402, 0.26305455, -0.186147362, -0.633367777, 0.708960712, -0.310196042, -0.138658598, 0.290390253, 0.946813107, 0.761332273, 0.642687321, -0.0856230929)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--48, 2.8499999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103753194, 1.85822594, 0.329895943, -0.985723257, -0.112618841, -0.125167251, -0.154925585, 0.897775292, 0.412307888, 0.0659384206, 0.425813019, -0.90240562)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.41561031e-07, 1.00003707, -8.64267349e-07, -1.00000036, -1.990702e-07, 2.89292075e-08, 5.58793545e-08, 0.513886034, 0.857859194, 1.82772055e-07, 0.857858896, -0.513886154)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049102, -0.588857651, -0.367746353, 0.017062217, 0.180083305, -0.983503461, -0.594190061, 0.792936981, 0.134882152, 0.804146945, 0.582085013, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06053424, 0.278146297, -0.613595843, -0.90743643, -0.420125186, -0.00738705695, -0.0681893975, 0.129891753, 0.989181995, -0.41461879, 0.898123741, -0.146518275)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001895, -0.460368276, -0.278465211, 0.19473277, -0.0593194813, 0.979061425, 0.700159132, 0.707452774, -0.0963959396, -0.686920404, 0.704269111, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.75021708, 0.107931197, -0.47691375, -0.885404229, 0.346178681, -0.310196131, -0.254930228, 0.19637543, 0.946813464, 0.388685107, 0.91738677, -0.0856232569)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--49, 2.866666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103766374, 1.30767632, 0.258074939, -0.985723197, -0.0966607183, -0.137864232, -0.154925585, 0.841344357, 0.517820358, 0.0659384206, 0.531786203, -0.844308078)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.70552254e-08, 1.00003719, -5.36441803e-07, -0.990089178, 0.140442058, -6.70552254e-08, 0.00502282334, 0.0354095101, 0.999360859, 0.140352562, 0.989455819, -0.035764277)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588860035, -0.367743194, 0.0847276747, 0.159819692, -0.98350352, -0.245219707, 0.960040689, 0.134882137, 0.965760171, 0.229744494, 0.120533362)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12404859, 0.370120287, -0.113519013, -0.326027423, -0.945331812, -0.00738704205, -0.14089641, 0.0408633538, 0.989182115, -0.934802175, 0.323543161, -0.146518439)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001693, -0.460370898, -0.278462708, 0.185787246, 0.0832031071, 0.979061425, 0.0631320104, 0.993341088, -0.0963959247, -0.980560899, 0.0797191858, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06097817, 0.0430976748, -0.0679101497, -0.289195657, 0.905619204, -0.310196131, -0.00818413496, 0.32169199, 0.946813405, 0.957239091, 0.276347548, -0.0856232718)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--50, 2.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241361126, 1.76939476, 0.60593617, -0.981362104, -0.116265163, -0.153006777, -0.189078629, 0.726395249, 0.660756767, 0.0343204439, 0.6773718, -0.734840035)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63912773e-07, 1.00003695, -8.04662704e-07, -0.990089178, 0.0962477401, -0.102275819, 0.00502282381, 0.752043128, 0.659095764, 0.140352577, 0.652049124, -0.74507302)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049102, -0.588857353, -0.367746294, 0.0151703507, 0.180252522, -0.983503461, -0.602483273, 0.786654174, 0.134882122, 0.79799068, 0.590496659, 0.120533362)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.928899229, 0.325735033, -0.403357148, -0.949454367, -0.313819408, -0.00738702714, -0.0529198796, 0.13682504, 0.989182174, -0.309411466, 0.939574242, -0.146518454)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001943, -0.460367322, -0.278465986, 0.183566585, -0.0879941136, 0.979061484, 0.798795104, 0.593833864, -0.096395947, -0.572916627, 0.799763322, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.855261445, 0.0742554665, -0.468733191, -0.880578995, 0.358275086, -0.310196161, -0.25221622, 0.199849248, 0.946813405, 0.401215613, 0.911976159, -0.085623242)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--51, 2.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241349116, 1.37534809, 0.434412748, -0.981362104, -0.116004556, -0.153204486, -0.189078629, 0.725269437, 0.661992192, 0.0343204513, 0.678621709, -0.73368603)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.60770321e-08, 1.00003719, -8.04662704e-07, -0.994839311, 0.00650647096, 0.101258151, 0.101458527, 0.0767906308, 0.991872311, -0.00132173277, 0.997026563, -0.0770547986)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049162, -0.58886075, -0.367742002, 0.109334826, 0.14410764, -0.983503461, -0.0875809044, 0.986985505, 0.134882137, 0.990141034, 0.0713870525, 0.120533377)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.955107808, 0.215469956, -0.0360019505, -0.44620204, -0.894902468, -0.00738716125, -0.134385034, 0.0588403046, 0.989182234, -0.884785116, 0.442370087, -0.146518931)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001812, -0.460370123, -0.278464556, 0.203566268, 0.000667527318, 0.979061425, 0.46073094, 0.882292092, -0.0963959396, -0.863881111, 0.470706135, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0319562, 0.0427929759, -0.17644529, -0.515161157, 0.798992753, -0.310196102, -0.0917164236, 0.30844909, 0.946813405, 0.852177203, 0.516206026, -0.0856232494)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--52, 3
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211752415, 1.3677249, 0.250547379, -0.991021335, 0.130058572, -0.0310074612, 0.0833672956, 0.782386661, 0.617187977, 0.104530491, 0.609061658, -0.786204755)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588859081, -0.367745161, 0.0575733781, 0.171483055, -0.98350352, -0.398271024, 0.907298803, 0.134882137, 0.915461957, 0.383933693, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09442091, 0.455296576, 0.0284388363, -0.783572435, -0.620292783, 0.0353712812, 0.153639391, -0.138289839, 0.978402495, -0.60200417, 0.772084236, 0.20366016)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.972482681, -1.00013638, 0.136568815, 0.203344107, -0.00953359157, 0.979061425, 0.504361868, 0.858097494, -0.0963959843, -0.839210212, 0.513401628, 0.179295868)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17722356, 0.0173143744, 0.0164438188, -0.0420281105, 0.949743986, -0.310196012, 0.0763168633, 0.312615246, 0.946811855, 0.996199012, 0.0161158033, -0.0856230408)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--53, 3.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103766374, 1.30767632, 0.258074939, -0.985723197, -0.0966607183, -0.137864232, -0.154925585, 0.841344357, 0.517820358, 0.0659384206, 0.531786203, -0.844308078)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.70552254e-08, 1.00003719, -5.36441803e-07, -0.990089178, 0.140442058, -6.70552254e-08, 0.00502282334, 0.0354095101, 0.999360859, 0.140352562, 0.989455819, -0.035764277)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588860035, -0.367743194, 0.0847276747, 0.159819692, -0.98350352, -0.245219707, 0.960040689, 0.134882137, 0.965760171, 0.229744494, 0.120533362)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12404859, 0.370120287, -0.113519013, -0.326027423, -0.945331812, -0.00738704205, -0.14089641, 0.0408633538, 0.989182115, -0.934802175, 0.323543161, -0.146518439)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001693, -0.460370898, -0.278462708, 0.185787246, 0.0832031071, 0.979061425, 0.0631320104, 0.993341088, -0.0963959247, -0.980560899, 0.0797191858, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06097817, 0.0430976748, -0.0679101497, -0.289195657, 0.905619204, -0.310196131, -0.00818413496, 0.32169199, 0.946813405, 0.957239091, 0.276347548, -0.0856232718)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--54, 3.049999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103753194, 1.85822594, 0.329895943, -0.985723257, -0.112618841, -0.125167251, -0.154925585, 0.897775292, 0.412307888, 0.0659384206, 0.425813019, -0.90240562)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.41561031e-07, 1.00003707, -8.64267349e-07, -1.00000036, -1.990702e-07, 2.89292075e-08, 5.58793545e-08, 0.513886034, 0.857859194, 1.82772055e-07, 0.857858896, -0.513886154)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049102, -0.588857651, -0.367746353, 0.017062217, 0.180083305, -0.983503461, -0.594190061, 0.792936981, 0.134882152, 0.804146945, 0.582085013, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06053424, 0.278146297, -0.613595843, -0.90743643, -0.420125186, -0.00738705695, -0.0681893975, 0.129891753, 0.989181995, -0.41461879, 0.898123741, -0.146518275)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001895, -0.460368276, -0.278465211, 0.19473277, -0.0593194813, 0.979061425, 0.700159132, 0.707452774, -0.0963959396, -0.686920404, 0.704269111, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.75021708, 0.107931197, -0.47691375, -0.885404229, 0.346178681, -0.310196131, -0.254930228, 0.19637543, 0.946813464, 0.388685107, 0.91738677, -0.0856232569)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--55, 3.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103766374, 1.30767632, 0.258074939, -0.985723197, -0.0966607183, -0.137864232, -0.154925585, 0.841344357, 0.517820358, 0.0659384206, 0.531786203, -0.844308078)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.70552254e-08, 1.00003719, -5.36441803e-07, -0.990089178, 0.140442058, -6.70552254e-08, 0.00502282334, 0.0354095101, 0.999360859, 0.140352562, 0.989455819, -0.035764277)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588860035, -0.367743194, 0.0847276747, 0.159819692, -0.98350352, -0.245219707, 0.960040689, 0.134882137, 0.965760171, 0.229744494, 0.120533362)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12404859, 0.370120287, -0.113519013, -0.326027423, -0.945331812, -0.00738704205, -0.14089641, 0.0408633538, 0.989182115, -0.934802175, 0.323543161, -0.146518439)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001693, -0.460370898, -0.278462708, 0.185787246, 0.0832031071, 0.979061425, 0.0631320104, 0.993341088, -0.0963959247, -0.980560899, 0.0797191858, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06097817, 0.0430976748, -0.0679101497, -0.289195657, 0.905619204, -0.310196131, -0.00818413496, 0.32169199, 0.946813405, 0.957239091, 0.276347548, -0.0856232718)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--56, 3.116666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103753194, 1.85822594, 0.329895943, -0.985723257, -0.112618841, -0.125167251, -0.154925585, 0.897775292, 0.412307888, 0.0659384206, 0.425813019, -0.90240562)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.41561031e-07, 1.00003707, -8.64267349e-07, -1.00000036, -1.990702e-07, 2.89292075e-08, 5.58793545e-08, 0.513886034, 0.857859194, 1.82772055e-07, 0.857858896, -0.513886154)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049102, -0.588857651, -0.367746353, 0.017062217, 0.180083305, -0.983503461, -0.594190061, 0.792936981, 0.134882152, 0.804146945, 0.582085013, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06053424, 0.278146297, -0.613595843, -0.90743643, -0.420125186, -0.00738705695, -0.0681893975, 0.129891753, 0.989181995, -0.41461879, 0.898123741, -0.146518275)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001895, -0.460368276, -0.278465211, 0.19473277, -0.0593194813, 0.979061425, 0.700159132, 0.707452774, -0.0963959396, -0.686920404, 0.704269111, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.75021708, 0.107931197, -0.47691375, -0.885404229, 0.346178681, -0.310196131, -0.254930228, 0.19637543, 0.946813464, 0.388685107, 0.91738677, -0.0856232569)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--57, 3.133333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.103766374, 1.30767632, 0.258074939, -0.985723197, -0.0966607183, -0.137864232, -0.154925585, 0.841344357, 0.517820358, 0.0659384206, 0.531786203, -0.844308078)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.70552254e-08, 1.00003719, -5.36441803e-07, -0.990089178, 0.140442058, -6.70552254e-08, 0.00502282334, 0.0354095101, 0.999360859, 0.140352562, 0.989455819, -0.035764277)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049114, -0.588860035, -0.367743194, 0.0847276747, 0.159819692, -0.98350352, -0.245219707, 0.960040689, 0.134882137, 0.965760171, 0.229744494, 0.120533362)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12404859, 0.370120287, -0.113519013, -0.326027423, -0.945331812, -0.00738704205, -0.14089641, 0.0408633538, 0.989182115, -0.934802175, 0.323543161, -0.146518439)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001693, -0.460370898, -0.278462708, 0.185787246, 0.0832031071, 0.979061425, 0.0631320104, 0.993341088, -0.0963959247, -0.980560899, 0.0797191858, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06097817, 0.0430976748, -0.0679101497, -0.289195657, 0.905619204, -0.310196131, -0.00818413496, 0.32169199, 0.946813405, 0.957239091, 0.276347548, -0.0856232718)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--58, 3.1666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241361126, 1.76939476, 0.60593617, -0.981362104, -0.116265163, -0.153006777, -0.189078629, 0.726395249, 0.660756767, 0.0343204439, 0.6773718, -0.734840035)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63912773e-07, 1.00003695, -8.04662704e-07, -0.990089178, 0.0962477401, -0.102275819, 0.00502282381, 0.752043128, 0.659095764, 0.140352577, 0.652049124, -0.74507302)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049102, -0.588857353, -0.367746294, 0.0151703507, 0.180252522, -0.983503461, -0.602483273, 0.786654174, 0.134882122, 0.79799068, 0.590496659, 0.120533362)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.928899229, 0.325735033, -0.403357148, -0.949454367, -0.313819408, -0.00738702714, -0.0529198796, 0.13682504, 0.989182174, -0.309411466, 0.939574242, -0.146518454)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001943, -0.460367322, -0.278465986, 0.183566585, -0.0879941136, 0.979061484, 0.798795104, 0.593833864, -0.096395947, -0.572916627, 0.799763322, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.855261445, 0.0742554665, -0.468733191, -0.880578995, 0.358275086, -0.310196161, -0.25221622, 0.199849248, 0.946813405, 0.401215613, 0.911976159, -0.085623242)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--59, 3.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241349116, 1.37534809, 0.434412748, -0.981362104, -0.116004556, -0.153204486, -0.189078629, 0.725269437, 0.661992192, 0.0343204513, 0.678621709, -0.73368603)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.86264515e-08, 1.00003719, -8.04662704e-07, -0.990089178, 0.132938206, -0.04529237, 0.00502282381, 0.35580945, 0.934545636, 0.140352577, 0.925055385, -0.35295105)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049162, -0.58886075, -0.367742002, 0.109334826, 0.14410764, -0.983503461, -0.0875809044, 0.986985505, 0.134882137, 0.990141034, 0.0713870525, 0.120533377)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.955107808, 0.215469956, -0.0360019505, -0.44620204, -0.894902468, -0.00738716125, -0.134385034, 0.0588403046, 0.989182234, -0.884785116, 0.442370087, -0.146518931)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001812, -0.460370123, -0.278464556, 0.203566268, 0.000667527318, 0.979061425, 0.46073094, 0.882292092, -0.0963959396, -0.863881111, 0.470706135, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0319562, 0.0427929759, -0.17644529, -0.515161157, 0.798992753, -0.310196102, -0.0917164236, 0.30844909, 0.946813405, 0.852177203, 0.516206026, -0.0856232494)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--60, 3.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241342962, 1.90813291, 0.536522031, -0.980635881, 0.114480399, -0.158895269, -0.0101921419, 0.7804178, 0.625175357, 0.195575044, 0.614688933, -0.764138997)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.25380063e-07, 1.00003695, -9.83476639e-07, -0.989126444, 0.105229586, 0.102743447, 0.147014886, 0.688367605, 0.710308194, 0.0040204674, 0.717688859, -0.696352899)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588855147, -0.367748559, -0.0364537686, 0.177178547, -0.983503461, -0.800452173, 0.584026814, 0.134882122, 0.598291695, 0.792163134, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.951171875, -0.0260096192, -0.337458074, -0.860245466, -0.509828568, -0.00738716125, -0.0809877366, 0.122321151, 0.989182472, -0.503406703, 0.851538539, -0.146519184)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001979, -0.460365772, -0.278466225, 0.164250597, -0.120255552, 0.979061484, 0.894389153, 0.436784118, -0.0963959247, -0.416045666, 0.891493618, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.967282116, 0.0915336311, -0.662795305, -0.906959355, 0.284967333, -0.3101964, -0.267733693, 0.178525463, 0.946813464, 0.325193167, 0.94176656, -0.0856236219)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--61, 3.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241343111, 1.90746534, 0.510979772, -0.986040711, 0.0570104942, -0.15643993, -0.0560982227, 0.770874381, 0.634512365, 0.156769365, 0.634431005, -0.75691539)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.86264515e-08, 1.00003719, -8.04662704e-07, -0.990089178, 0.132938206, -0.04529237, 0.00502282381, 0.35580945, 0.934545636, 0.140352577, 0.925055385, -0.35295105)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049162, -0.58886075, -0.367742002, 0.109334826, 0.14410764, -0.983503461, -0.0875809044, 0.986985505, 0.134882137, 0.990141034, 0.0713870525, 0.120533377)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.953135788, 0.0947264433, -0.186723113, -0.93825531, -0.345864922, -0.00738865137, -0.0575350374, 0.134948388, 0.989180863, -0.341125697, 0.928529084, -0.146515489)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001812, -0.460370123, -0.278464556, 0.203566268, 0.000667527318, 0.979061425, 0.46073094, 0.882292092, -0.0963959396, -0.863881111, 0.470706135, 0.179295942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999623358, 0.0671565831, -0.419616222, -0.90567255, 0.289027065, -0.310194492, -0.266928613, 0.1797245, 0.94680959, 0.329403043, 0.940299213, -0.0856220722)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--62, 3.25
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241349116, 1.37534809, 0.434412748, -0.981362104, -0.116004556, -0.153204486, -0.189078629, 0.725269437, 0.661992192, 0.0343204513, 0.678621709, -0.73368603)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--63, 3.2666666507720947
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.955107808, 0.215469956, -0.0360019505, -0.44620204, -0.894902468, -0.00738716125, -0.134385034, 0.0588403046, 0.989182234, -0.884785116, 0.442370087, -0.146518931)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0319562, 0.0427929759, -0.17644529, -0.515161157, 0.798992753, -0.310196102, -0.0917164236, 0.30844909, 0.946813405, 0.852177203, 0.516206026, -0.0856232494)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--64, 3.299999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.241350338, 1.69770932, 0.59416759, -0.999587178, 0.0283336975, 0.00476991944, 0.0239383765, 0.729433179, 0.683633268, 0.0158905424, 0.683465302, -0.729810357)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.71363354e-07, 1.00003684, -8.94069672e-07, -0.990089238, 0.0921820328, -0.105954885, 0.00502282381, 0.777197659, 0.629237294, 0.140352562, 0.622468174, -0.76995796)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0004909, -0.588857055, -0.367747128, 0.00249937177, 0.18087253, -0.98350352, -0.656137347, 0.742492318, 0.134882137, 0.754640996, 0.644974649, 0.120533377)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12566626, -0.125035524, -0.395577967, -0.988686562, -0.149819002, -0.00738722086, -0.0291761607, 0.143771216, 0.989182532, -0.147132888, 0.978207052, -0.146519333)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001943, -0.460367322, -0.278465867, 0.183021381, -0.0891225785, 0.979061425, 0.802435994, 0.588904679, -0.0963959396, -0.567981899, 0.803275347, 0.179295927)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03195333, 0.0427961349, -0.176450789, -0.915439606, 0.256419301, -0.310196131, -0.273194075, 0.170052126, 0.946813464, 0.295534641, 0.951490283, -0.0856232569)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--65, 3.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.24134919, 1.72076845, 0.63917464, -0.999587119, 0.0284157246, 0.00425434113, 0.0239383504, 0.741734684, 0.67026633, 0.0158905052, 0.67009151, -0.742108703)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.09781933e-07, 1.00003409, 6.22868538e-06, -0.993844688, 0.101697758, -0.0439397395, -0.00900801644, 0.321128726, 0.946992815, 0.110417351, 0.941559315, -0.318235844)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00049198, -0.588861763, -0.367739737, 0.150711983, 0.100035034, -0.983503461, 0.242516384, 0.960727215, 0.134882137, 0.958370745, -0.258845687, 0.120533392)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.37846684, 0.229509026, 0.309912324, 0.124779902, -0.992157757, -0.00738723204, -0.144462496, -0.0255326368, 0.989182651, -0.981613874, -0.122359216, -0.146519646)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00001717, -0.460370719, -0.278462946, 0.189006269, 0.075606063, 0.979061425, 0.103333682, 0.98996681, -0.0963959321, -0.976525009, 0.119389296, 0.179295957)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31778121, -0.119921088, 0.153360844, 0.0739264414, 0.947795391, -0.31019634, 0.113813117, 0.300997019, 0.946813583, 0.990750074, -0.105304353, -0.08562354)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--66, 3.366666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.24134551, 0.991886377, 0.434404433, -0.999587238, 0.0285423584, -0.00329911895, 0.0239383802, 0.890797198, 0.45377019, 0.0158905461, 0.453503996, -0.891112864)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--67, 3.433333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.00880947337, 1.75353599, 0.434403598, -0.999587238, 0.000669954345, 0.0287245847, 0.0239383802, -0.533483326, 0.845471799, 0.015890548, 0.845810413, 0.533247352)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.23403287e-07, 1.00003338, 8.03172588e-06, -0.994868696, 0.0922357515, 0.0415840559, -0.00951210409, -0.494452327, 0.869152665, 0.100728288, 0.864297152, 0.492792457)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.4833333492279053, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01530933, -0.854590416, 0.0793630481, 0.180183008, -0.0159745719, -0.983503461, 0.789334953, 0.598966837, 0.134882048, 0.586929739, -0.800618112, 0.120533369)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.802672327, 0.350531787, 0.117437482, -0.735861361, -0.296872258, 0.608587801, 0.355187386, 0.595970631, 0.720184088, -0.576500177, 0.746116698, -0.333110631)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24627733, -0.194874823, -0.730192661, 0.0151630193, 0.203001902, 0.979061604, -0.843796313, 0.527939618, -0.09639588, -0.536453128, -0.824665308, 0.179295927)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.328566849, 0.249181211, -0.490091205, -0.0395745933, -0.170054317, -0.984639943, -0.346860468, 0.9264732, -0.146067619, 0.937081575, 0.335752219, -0.0956497565)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--68, 3.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.00880234689, 3.83714533, 0.434367657, -0.965950131, -0.258727938, 0.00062779896, 0.218307942, -0.816340923, -0.534723639, 0.138860449, -0.516379237, 0.84502703)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-9.81613994e-07, 1.00003171, 1.78813934e-05, -0.998007476, 0.0263174213, 0.0573574044, 0.0153252184, -0.780610383, 0.624830961, 0.0612179451, 0.624464035, 0.778651297)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--69, 3.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.00881709531, 4.97452593, 0.434407324, -0.904944181, 0.35983479, -0.227145493, 0.425355166, 0.780241966, -0.458579957, 0.012215429, -0.511606693, -0.859133184)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--70, 3.633333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.00881776586, 5.43560886, 0.434412867, -0.87348634, 0.367799222, 0.318975568, 0.458302557, 0.400147676, 0.793625176, 0.164257348, 0.83940798, -0.51808691)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5666663646697998, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-8.07456672e-07, 1.0000304, 1.66893005e-05, -0.972462535, -0.228137612, -0.0476575084, -0.224611282, 0.862829447, 0.45285359, -0.0621924363, 0.451087594, -0.890310347)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.633627772, 0.345424086, -0.144037664, -0.832263052, -0.0984560102, 0.54556793, 0.36013025, 0.652167082, 0.667071581, -0.421478659, 0.751654625, -0.507317662)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.4500000476837158, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.40622187, -0.630376458, -0.181061566, 0.203171983, -0.0126821995, 0.97906208, 0.517592013, 0.85018456, -0.0963964164, -0.831159294, 0.526338696, 0.179296091)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.433333158493042, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.4989717, 0.301648706, -0.328522205, -0.96012795, 0.027509328, 0.27820611, 0.224203736, 0.670227766, 0.707481921, -0.166999131, 0.741648138, -0.649671376)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--71, 3.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.00884131342, 4.77217102, 0.434407592, -0.902331352, 0.225369141, 0.367433131, 0.346207738, -0.128888667, 0.929262221, 0.256784886, 0.965710461, 0.038275674)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--72, 3.8333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.00883850455, 4.11821795, 0.578553855, -0.923968315, 0.217556626, 0.314565957, 0.0583917312, -0.732580066, 0.678171992, 0.377985388, 0.64497745, 0.664177239)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--73, 3.9166667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.135972232, 2.4333508, 1.08371186, -0.808462918, 0.481846333, 0.337952405, -0.467242479, -0.87462759, 0.129271924, 0.357871652, -0.0533941276, 0.932243228)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.35000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.963675737, -0.852462888, -0.325915694, 0.016547434, -0.43634516, -0.89962709, -0.401670277, 0.821054637, -0.405623347, 0.915634811, 0.368065536, -0.161680549)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.697498322, 0.0732624531, -0.544158757, -0.623273134, -0.773341298, 0.116093695, -0.119131587, 0.240622789, 0.963282526, -0.772877216, 0.586559176, -0.242106199)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.13499985694885253)

		if afterframe() then
			return
		end

		--74, 4.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.242168859, 1.73522377, 1.23915339, -0.764393449, 0.462287664, 0.449436307, -0.587141693, -0.787116647, -0.188977107, 0.266396999, -0.408335626, 0.873095214)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.976689041, 0.293554038, -0.715358138, -0.824211597, -0.422601163, 0.376939893, 0.517669916, -0.292455792, 0.8040452, -0.229551971, 0.85783422, 0.459813446)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22176623, 0.328930855, 0.252133578, -0.745279014, 0.654940724, -0.12494871, 0.124443993, 0.320741892, 0.938956082, 0.655036807, 0.684235036, -0.320545673)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--75, 4.083333492279053
		tween4 = ts:Create(part4, TweenInfo.new(0.33333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19736278, -1.03190219, -0.0124090612, 0.0521128923, -0.0672185868, 0.996376395, -0.381381691, 0.920767784, 0.0820649788, -0.922947645, -0.38427633, 0.0223479271)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--76, 4.150000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.322663486, 1.51957607, 1.23916304, -0.779073179, 0.356597096, 0.515639126, -0.568320394, -0.748944521, -0.340726435, 0.264682949, -0.558498919, 0.786143959)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--77, 4.199999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.35843721, 1.40047491, 1.23916864, -0.787747502, 0.303075224, 0.536283016, -0.563868761, -0.705282509, -0.429685146, 0.248004109, -0.640876532, 0.726479173)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.9166669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.86036253e-07, 1.00003016, 1.65104866e-05, -0.972462535, -0.232784957, -0.0113653913, -0.224611282, 0.923070967, 0.312235385, -0.0621924363, 0.306190163, -0.949936986)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.383333683013916, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.852807283, 0.484826565, -0.716985345, -0.824211657, -0.273229122, 0.496005356, 0.517670214, -0.00847976655, 0.85553956, -0.229552165, 0.961913168, 0.148431748)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166707992553711)

		if afterframe() then
			return
		end

		--78, 4.266666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.376325637, 1.25673509, 1.23916841, -0.796046615, 0.272025794, 0.540658891, -0.562641561, -0.661797106, -0.495438486, 0.223034456, -0.698589206, 0.67987448)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.9573825, -0.857639194, -0.364808381, 0.0297162607, -0.461315483, -0.88673836, -0.505802393, 0.758226156, -0.411408812, 0.862137318, 0.46073994, -0.210802794)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17615771, 0.32631278, 0.343845069, -0.633338571, 0.757377446, -0.1589403, 0.0801718906, 0.268491268, 0.959940135, 0.769710898, 0.595224559, -0.230766296)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--79, 4.333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.376327753, 1.04626846, 1.23916483, -0.805381894, 0.263743967, 0.530847609, -0.564613163, -0.614008069, -0.551549196, 0.180476949, -0.743931174, 0.643424451)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.41666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.940184951, -0.924872339, -0.368505746, -0.0103544891, -0.269481838, -0.962949753, -0.373186588, 0.894467175, -0.246303678, 0.927702188, 0.356808186, -0.109827742)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.41666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18356013, 0.236754626, 0.280556679, -0.397908926, 0.903552473, -0.158940673, 0.151630506, 0.23563467, 0.959941506, 0.904809713, 0.357869208, -0.230766684)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--80, 4.416666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.376326889, 0.929459095, 1.23916459, -0.809312999, 0.260457724, 0.526473582, -0.568444312, -0.573037565, -0.590338409, 0.147930875, -0.777039349, 0.611822486)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.7000002861022949, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1061393, -1.00322795, -0.182706296, 0.0613907874, -0.0588678345, 0.996378124, -0.512034297, 0.855041265, 0.0820657462, -0.856773198, -0.515217423, 0.0223482698)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--81, 4.583333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.376324534, 0.843533337, 1.23916602, -0.811275542, 0.258929729, 0.52420193, -0.572843552, -0.53140223, -0.624069333, 0.116971977, -0.806577742, 0.579439759)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.5333333015441895, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.813825846, 0.391422719, -0.613766313, -0.732196808, -0.323805183, 0.599199116, 0.503982544, 0.334192634, 0.796442151, -0.458140731, 0.885138273, -0.0815030187)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--82, 4.75
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.376321077, 0.788490951, 1.23916888, -0.811275661, 0.258929789, 0.524201989, -0.578077674, -0.489442229, -0.652895689, 0.087512441, -0.832707882, 0.546754062)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.94018513, -0.924873531, -0.368504018, -0.0453665331, -0.207869217, -0.977104008, -0.253502309, 0.948491991, -0.190011933, 0.966273725, 0.239076376, -0.0957241654)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18356013, 0.236754596, 0.280556351, -0.45798552, 0.874635756, -0.158940673, 0.135380924, 0.245331436, 0.959941566, 0.87859261, 0.418121964, -0.230766654)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.16833339691162108)

		if afterframe() then
			return
		end

		--83, 4.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.376315355, 0.650587976, 1.23921764, -0.811275661, 0.258929789, 0.524201989, -0.583610892, -0.412436515, -0.699496031, 0.0350796953, -0.873414099, 0.485713929)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.16833339691162108)

		if afterframe() then
			return
		end

		--84, 5.116666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.335577577, 0.564399838, 2.53774047, -0.886761665, 0.122770488, 0.445625037, -0.346403569, 0.461800158, -0.816545129, -0.306037068, -0.878446698, -0.366978228)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.45286322e-06, 1.00003147, 1.78217888e-05, -0.972462535, 0.190022111, -0.134942949, -0.224611282, -0.91863054, 0.325067639, -0.06219244, 0.346425027, 0.936014175)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.991136074, -0.828302145, 0.0115594864, -0.19854705, 0.0764640272, -0.9771052, 0.976019561, 0.106245428, -0.190012217, 0.0892804638, -0.991400242, -0.0957246125)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.401543438, 1.33673596, 0.618028522, -0.00394302607, -0.922303796, 0.386449784, 0.745145619, -0.26043424, -0.613951087, 0.666893423, 0.285540342, 0.688278913)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.30072343, -0.815518796, 0.526055038, 0.494359434, 0.0621957406, 0.867032051, -0.723304927, -0.523782074, 0.449983835, 0.482125163, -0.849579692, -0.213949829)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25610483, 0.326219738, 0.412005007, 0.292341173, 0.943014324, -0.158940628, 0.26901567, 0.0783964992, 0.959941745, 0.917699456, -0.323387921, -0.230767056)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--85, 5.133333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.335577577, 0.564399838, 2.53774047, -0.886761665, 0.122770488, 0.445625037, -0.346403569, 0.461800158, -0.816545129, -0.306037068, -0.878446698, -0.366978228)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.45286322e-06, 1.00003147, 1.78217888e-05, -0.972462535, 0.190022111, -0.134942949, -0.224611282, -0.91863054, 0.325067639, -0.06219244, 0.346425027, 0.936014175)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.991136074, -0.828302145, 0.0115594864, -0.19854705, 0.0764640272, -0.9771052, 0.976019561, 0.106245428, -0.190012217, 0.0892804638, -0.991400242, -0.0957246125)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.401543438, 1.33673596, 0.618028522, -0.00394302607, -0.922303796, 0.386449784, 0.745145619, -0.26043424, -0.613951087, 0.666893423, 0.285540342, 0.688278913)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.30072343, -0.815518796, 0.526055038, 0.494359434, 0.0621957406, 0.867032051, -0.723304927, -0.523782074, 0.449983835, 0.482125163, -0.849579692, -0.213949829)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25610483, 0.326219738, 0.412005007, 0.292341173, 0.943014324, -0.158940628, 0.26901567, 0.0783964992, 0.959941745, 0.917699456, -0.323387921, -0.230767056)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--86, 5.150000095367432
		--87, 5.383333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05716574, 0.389573306, 0.236012101, -0.374944538, 0.714553297, 0.590618908, 0.852246821, 0.516397536, -0.083722949, -0.364818454, 0.471961766, -0.802595973)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08778477e-06, 1.00003159, 1.75237656e-05, -0.972462535, -0.0373337865, -0.230052605, -0.224611267, -0.113275915, 0.967842758, -0.0621924438, 0.992862284, 0.101771519)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.991135657, -0.828301072, 0.0115363598, 0.0451311618, -0.207920328, -0.977105141, -0.624779701, 0.757332563, -0.190012217, 0.779502928, 0.619048238, -0.0957246348)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.983724356, 1.36513305, 0.306463301, -0.386337042, -0.880872965, 0.273513615, 0.640676558, -0.0429558903, 0.76661092, -0.663539171, 0.471403539, 0.580949605)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.36942101, -1.39408159, -0.412388027, 0.494359434, 0.0621957406, 0.867032051, -0.723304927, -0.523782074, 0.449983835, 0.482125163, -0.849579692, -0.213949829)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25610495, 0.326218545, 0.411998779, -0.763514817, 0.625926971, -0.158940628, 0.0286756754, 0.278734982, 0.959941685, 0.645155728, 0.728372276, -0.230767041)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--88, 5.433333396911621
		part1.C0 = CFrame.new(1.05716574, 0.389573306, 0.236012101, -0.374944538, 0.714553297, 0.590618908, 0.852246821, 0.516397536, -0.083722949, -0.364818454, 0.471961766, -0.802595973)
		part6.C0 = CFrame.new(-1.08778477e-06, 1.00003159, 1.75237656e-05, -0.972462535, -0.0373337865, -0.230052605, -0.224611267, -0.113275915, 0.967842758, -0.0621924438, 0.992862284, 0.101771519)
		part5.C0 = CFrame.new(-0.991135657, -0.828301072, 0.0115363598, 0.0451311618, -0.207920328, -0.977105141, -0.624779701, 0.757332563, -0.190012217, 0.779502928, 0.619048238, -0.0957246348)
		part2.C0 = CFrame.new(0.983724356, 1.36513305, 0.306463301, -0.386337042, -0.880872965, 0.273513615, 0.640676558, -0.0429558903, 0.76661092, -0.663539171, 0.471403539, 0.580949605)
		part4.C0 = CFrame.new(1.36942101, -1.39408159, -0.412388027, 0.494359434, 0.0621957406, 0.867032051, -0.723304927, -0.523782074, 0.449983835, 0.482125163, -0.849579692, -0.213949829)
		part3.C0 = CFrame.new(-1.25610495, 0.326218545, 0.411998779, -0.763514817, 0.625926971, -0.158940628, 0.0286756754, 0.278734982, 0.959941685, 0.645155728, 0.728372276, -0.230767041)

		--smooth transition
		tween1 = ts:Create(part1, TweenInfo.new(0.5), {C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.5), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.5), {C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.5), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)}) tween4:Play() tablesorting(part4, tween4)
		tween5 = ts:Create(part5, TweenInfo.new(0.5), {C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween6 = ts:Create(part6, TweenInfo.new(0.5), {C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)}) tween6:Play() tablesorting(part6, tween6)
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
animation(chr)
