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
	local animvalue = anims:FindFirstChild("KJIntro")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "KJIntro"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.1666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.281259477, -0.122472487, 5.89723778, -0.998202622, 0.0576516576, 0.0163730755, 0.0209959876, 0.0805175826, 0.996532679, 0.0561334044, 0.995084584, -0.0815833211)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.4166666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-09, 1, 0, -0.976915956, -0.212948292, -0.0170003287, -0.0928468406, 0.351573706, 0.931544781, -0.192394018, 0.911619186, -0.363229185)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.945610046, -0.833126426, -0.50564158, -0.00883252919, -0.0050477786, -0.999948144, 0.407642961, 0.913104475, -0.00821012259, 0.913098693, -0.407694399, -0.00600735843)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.4166666567325592, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {C0 = CFrame.new(0.830752969, 0.496580064, -0.460736573, 0.0159662887, 0.596429527, 0.802506506, 0.921673238, 0.302382767, -0.243070528, -0.387638718, 0.743529499, -0.544885159)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.980500758, -0.987662315, -0.0531670451, 0.168814018, 0.0257283933, 0.985311985, 0.238347903, 0.968925059, -0.0661367923, -0.956395447, 0.246011853, 0.15743582)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.5166666507720947, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {C0 = CFrame.new(-0.968363166, 0.461332023, 0.122215688, 0.541227341, 0.0319499709, -0.840268552, 0.0359225608, 0.997487426, 0.0610659346, 0.840108395, -0.063235119, 0.538719535)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166667163372038)

		if afterframe() then
			return
		end

		--2, 0.1666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.34508881, -0.100845061, 5.36699533, -0.991775393, 0.127473608, 0.0114992866, 0.0237840638, 0.0952726901, 0.995167673, 0.125761971, 0.987255633, -0.0975209922)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.928162873, -0.754055023, -0.673382878, -0.0716697425, 0.0165958926, -0.997290194, 0.230460063, 0.973081648, -0.00036887452, 0.970438898, -0.229862034, -0.0735652447)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.970275521, -0.995341539, 0.0363080017, 0.158187047, 0.0376882702, 0.986689568, 0.0598941371, 0.997064888, -0.0476868674, -0.985590935, 0.0666403472, 0.155465469)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833334028720856)

		if afterframe() then
			return
		end

		--3, 0.30000001192092896
		tween1 = ts:Create(part1, TweenInfo.new(0.11666664481163025, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.257712215, -0.175654829, 4.88812828, -0.98826021, 0.151173949, -0.0220974348, -0.00304631959, 0.12510851, 0.992139101, 0.15275003, 0.980558217, -0.123179287)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.18333330750465393, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.933830142, -0.484163284, -0.577035546, -0.0713864192, -0.0177761875, -0.997291505, -0.236780226, 0.971563399, -0.000368921086, 0.968937159, 0.236112148, -0.0735650659)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666664481163025, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.970275283, -0.995341659, 0.0363079756, 0.139885664, 0.0369022228, 0.98947978, -0.185425028, 0.982602835, -0.0104317032, -0.972650766, -0.182015002, 0.144294694)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166664481163025)

		if afterframe() then
			return
		end

		--4, 0.4166666567325592
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.178363994, -0.170331463, 4.57853889, -0.990184844, 0.132271096, -0.0451484919, -0.0287632179, 0.123265311, 0.991957426, 0.136772454, 0.983519256, -0.118250944)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.31666669249534607, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1, 2.98023224e-08, -0.983591199, -0.173801377, 0.0483945981, -0.0162509754, 0.352504134, 0.935669363, -0.17967993, 0.919529438, -0.349543989)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.5000000298023224, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {C0 = CFrame.new(0.91973716, 0.495160282, -0.469623148, 0.0982514322, 0.555800796, 0.825488746, 0.89185667, 0.318843752, -0.320827842, -0.441518605, 0.767739296, -0.464367718)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.997552156, -0.926218688, -0.0828855336, 0.129673302, 0.0435699932, 0.990598977, -0.348978668, 0.937119842, 0.00446484238, -0.928115606, -0.34627685, 0.136724457)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--5, 0.4833333194255829
		tween5 = ts:Create(part5, TweenInfo.new(0.11666670441627502, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.979003191, -0.901524603, -0.202586442, -0.0226925313, -0.00960973185, -0.999696136, -0.280420452, 0.95987308, -0.00286154449, 0.959608972, 0.280270338, -0.0244767666)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--6, 0.5166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.108529963, -0.108022965, 4.40460825, -0.994601786, 0.0844761878, -0.0602584183, -0.0519212373, 0.097635299, 0.993867636, 0.0898414254, 0.991630673, -0.0927221701)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04301322, -0.811014593, -0.281541139, 0.124277413, 0.0571720116, 0.990598977, -0.447082072, 0.894481599, 0.00446484238, -0.885817468, -0.44343394, 0.136724487)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {C0 = CFrame.new(-0.989258349, 0.391663551, -0.0945283622, -0.349390686, 0.0797040761, -0.933580875, -0.225576937, 0.959914386, 0.166373968, 0.909418344, 0.268723905, -0.31740576)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--7, 0.6000000238418579
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0736943111, -0.088847138, 4.14707375, -0.99771601, 0.0414171219, -0.0533604845, -0.050865531, 0.0591199547, 0.996954739, 0.0444456413, 0.997391462, -0.0568782277)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, -1, 2.23517418e-08, 2.98023224e-08, -0.0480142608, -0.998846412, -0.0469943173, 0.99774313, -0.0479612127, 0.998895109, 0.0469401181, -0.00225643814)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04253626, -0.777708173, -0.381080925, 0.0986209959, 0.0471595638, 0.994006991, -0.366283119, 0.930470526, -0.00780414045, -0.925262451, -0.363318205, 0.109037682)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--8, 0.6833333373069763
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.119887441, -0.0926616117, 3.83450246, -0.999296665, -0.0121163214, -0.0354904644, -0.0360614993, 0.05071472, 0.998062611, -0.0102929519, 0.998639822, -0.0511159897)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01041043, -0.762916923, -0.469325244, -0.00701615214, 0.0112700984, 0.999911904, -0.176458254, 0.984230697, -0.0123315305, -0.98428303, -0.176529229, -0.00491678715)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--9, 0.7333333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.86264515e-08, 1, -2.98023224e-08, -0.994365394, -0.0300875027, 0.101651199, 0.0846990794, 0.351161063, 0.932476521, -0.0637518466, 0.935831845, -0.346633613)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, -0.999999821, -4.47034836e-08, -0.000990778208, -0.0143963359, -0.999895692, 0.0902886614, 0.995811164, -0.0144270062, 0.995914996, -0.0902935565, 0.000313133001)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--10, 0.7833333611488342
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.209346682, -0.113088317, 3.62376738, -0.998704314, -0.0484709963, -0.015504689, -0.0189225711, 0.0708702207, 0.997306764, -0.0472416021, 0.996307194, -0.0716956034)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.967957616, -0.769839585, -0.507352591, -0.131673187, -0.00951352157, 0.991247416, 0.0135746896, 0.999842644, 0.0113992281, -0.991200268, 0.0149568468, -0.131523341)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--11, 0.8500000238418579
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.254134864, -0.127737105, 3.51244283, -0.994909525, -0.0994931906, -0.0160049517, -0.0287677627, 0.128201067, 0.991331518, -0.0965788141, 0.98674494, -0.130410716)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -0.974098861, -0.0662138313, -0.000455126166, -0.00478950329, -0.999988258, 0.141990811, 0.989856303, -0.00480562076, 0.989867806, -0.141991377, 0.000229537487)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.94673121, -0.773301363, -0.526366293, -0.101832964, -0.0586736202, 0.993069649, 0.0667208135, 0.995608389, 0.0656653941, -0.992561519, 0.0729452968, -0.0974710137)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--12, 0.9166666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.276454538, -0.143048793, 3.32347655, -0.982315183, -0.185081214, -0.0283178166, -0.0726827383, 0.237556815, 0.968651235, -0.17255196, 0.953578472, -0.246807978)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, -0.803883255, -0.224444658, 2.98023224e-08, 6.51925802e-09, -0.999999821, 0.109981, 0.993933737, -7.4505806e-09, 0.993933618, -0.109981015, -1.49011612e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.91973716, 0.49516052, -0.469623864, -0.199231803, 0.514540136, 0.833999217, 0.957233608, -0.0800091624, 0.278033197, 0.209786534, 0.853725135, -0.476594985)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10943973, -0.827755094, -0.44646275, 0.056428656, -0.242898181, 0.96840924, 0.104179099, 0.96609211, 0.23624669, -0.992956519, 0.0875568986, 0.0798202157)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--13, 0.9833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.276396632, -0.154983908, 3.12365818, -0.960553288, -0.275521189, -0.0377574824, -0.137040555, 0.350817502, 0.926362753, -0.241986394, 0.894994736, -0.374736667)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.53902578e-08, 1, -7.4505806e-09, -0.994077921, 0.105061635, 0.0277807079, -0.0228658598, -0.45212847, 0.891659796, 0.106239676, 0.885744035, 0.451853156)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -0.567985415, -0.412130713, 2.98023224e-08, 6.51925802e-09, -0.999999821, 0.0227613077, 0.999741018, -8.38190317e-09, 0.999740958, -0.0227613151, -1.49011612e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.857445419, 0.59967941, -0.674136937, -0.580257118, 0.0101466328, 0.814370334, 0.709944367, -0.483694434, 0.511877954, 0.399100333, 0.875178456, 0.273463637)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22991848, -0.905078292, -0.30736208, 0.269055814, -0.345967203, 0.898842931, 0.123095185, 0.937954187, 0.324174583, -0.955227852, 0.0234220922, 0.294948101)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.99087894, 0.408017308, -0.0802596807, -0.816214383, 0.0507380851, -0.575516701, -0.569291115, -0.240454987, 0.786186099, -0.0984962434, 0.969333589, 0.225147635)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--14, 1.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.587454259, -0.32518363, 2.73178482, -0.985470891, -0.131409124, 0.107604593, 0.0227925573, 0.525497615, 0.850490332, -0.168308049, 0.840585589, -0.514867783)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.05362594, -0.439474225, -0.303480715, -9.68575478e-08, -0.441212893, -0.897402644, -0.70083195, 0.640140891, -0.314728826, 0.713326693, 0.628928363, -0.309215963)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.571898937, 1.23459733, -1.30809617, -0.929473162, 0.120737374, 0.348570973, 0.175742388, -0.685865879, 0.706189811, 0.324336678, 0.717642903, 0.61627543)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12337828, -0.90567106, 0.236210555, 0.610465646, -0.531614721, 0.587129772, 0.137928218, 0.801308692, 0.582134128, -0.779944062, -0.274391025, 0.562495232)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--15, 1.1166666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.666470766, -0.4953987, 1.81837857, -0.973775923, 0.0382069871, 0.224278897, 0.193402722, 0.658181548, 0.727594078, -0.119816869, 0.751889408, -0.6483109)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1.00000012, 3.7252903e-08, -0.993186831, 0.0977802724, -0.0634006485, -0.0942996219, -0.354677528, 0.930221319, 0.068470493, 0.929862082, 0.361481667)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.660734773, 1.13396394, -1.12796807, -0.931723118, -0.0428256318, 0.360637069, 0.254672855, -0.784987152, 0.564745307, 0.258909822, 0.618031144, 0.742296755)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.798713446, 0.947682142, -0.310414344, -0.888694108, 0.1440119, -0.435296893, -0.374228746, -0.776357055, 0.507171273, -0.264907122, 0.613621056, 0.743836999)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--16, 1.2000000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.566472769, -0.686377168, 1.33854997, -0.920074701, 0.129248738, 0.369807094, 0.309146672, 0.819357932, 0.482785046, -0.240604833, 0.558522582, -0.793827891)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.952072918, -0.504378021, -0.389808476, 0.116521552, -0.346242219, -0.930880606, -0.941588104, 0.259664237, -0.214444116, 0.31596604, 0.901493669, -0.295761019)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.866032064, 0.732446253, -0.71329993, -0.961111903, 0.0964095145, 0.258783937, 0.231033206, -0.232650891, 0.944720805, 0.151286423, 0.967769802, 0.201329768)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.32321167, -0.471194983, -0.842012048, 0.429053903, -0.169439435, 0.887244642, -0.565620244, 0.715436578, 0.410151422, -0.704263091, -0.677820444, 0.211122483)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.536195636, 1.54540253, -0.671278477, -0.938021302, -0.0968536213, -0.33276844, 0.172240168, -0.9634673, -0.205095828, -0.300747156, -0.249700889, 0.920435071)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--17, 1.2666666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 0.99999994, -2.98023224e-08, -0.98960489, 0.0797341391, -0.11968784, -0.13499029, -0.227954328, 0.964268923, 0.0496017858, 0.970401883, 0.236348122)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--18, 1.2999999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.885364413, -0.781941473, 1.12312651, -0.888379276, 0.0047491556, 0.459085941, 0.196522206, 0.907640517, 0.370902061, -0.414923161, 0.419722021, -0.807262778)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01114917, -0.508635461, -0.449500322, 0.140905797, -0.197199315, -0.970184326, -0.95108217, 0.245176777, -0.18796593, 0.274933517, 0.949210703, -0.153005853)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.95480597, 0.503370047, -0.42389065, -0.973450005, 0.00461758673, 0.228853658, 0.226089552, -0.136804253, 0.964452386, 0.0357617438, 0.990587354, 0.132127941)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23695934, 0.121319532, -1.18188643, 0.310687751, 0.0230293795, 0.950232923, -0.631169617, 0.752483726, 0.188130111, -0.710702419, -0.658207893, 0.248322979)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.535526097, 1.12866867, -0.813876748, -0.70077914, -0.564635634, -0.435999393, -0.0273620188, -0.58945179, 0.807340264, -0.71285367, 0.577697098, 0.397625685)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--19, 1.399999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.898702085, -0.781919122, 0.739950716, -0.882596791, -0.0604237467, 0.466231883, 0.142707139, 0.910480559, 0.388149649, -0.447948247, 0.409114003, -0.794964671)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08035731, -0.490873694, -0.459910631, 0.147064745, -0.224749625, -0.963254452, -0.908451676, 0.354527682, -0.221417159, 0.391263843, 0.907632947, -0.152035654)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.938941061, 0.470991969, -0.33004719, -0.958228052, -0.150325358, 0.243313134, 0.283772051, -0.393608898, 0.874383032, -0.0356715471, 0.906903625, 0.419825226)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11967421, 0.357743502, -1.05637121, 0.225706443, -0.0168001428, 0.974050462, -0.44871366, 0.885683239, 0.119251698, -0.864703774, -0.463985533, 0.192365989)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.535143256, 0.890432835, -0.895394921, -0.77008605, -0.329153895, -0.546466291, -0.429119408, -0.366574347, 0.825518131, -0.472043067, 0.870219529, 0.141047359)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166667461395264)

		if afterframe() then
			return
		end

		--20, 1.5166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.853109121, -0.768443584, 0.220728606, -0.922098577, -0.126803786, 0.365589023, 0.0597622246, 0.886780083, 0.458312213, -0.382312506, 0.444457114, -0.81012094)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1, -1.49011612e-08, -0.988194585, 0.0694080293, -0.136581555, -0.14548564, -0.145705074, 0.978572547, 0.048020158, 0.986890733, 0.154082954)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10707164, -0.623701632, -0.372479439, 0.0976375639, -0.277193844, -0.955840111, -0.74618876, 0.615123868, -0.254607886, 0.658535838, 0.738096356, -0.146779716)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.507549167, 0.774342597, -0.507879734, -0.9710356, -0.0403216183, 0.235508025, 0.218533739, -0.548403144, 0.807154298, 0.0966079533, 0.835241735, 0.541330814)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05096507, 0.408149004, -0.901932776, 0.110492289, 0.0531971566, 0.992452204, 0.0292451978, 0.997959912, -0.0567483529, -0.993446529, 0.0352946967, 0.108711138)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.557653368, 0.694874048, -0.849719226, -0.736835599, -0.112921007, -0.666574776, -0.666207671, -0.0465351269, 0.744312942, -0.115067653, 0.992513955, -0.0409399942)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--21, 1.6166666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.784849882, -0.75040561, -0.155912012, -0.961009562, -0.16925469, 0.218663037, -0.0290921219, 0.848280072, 0.528748453, -0.274980515, 0.501770735, -0.820129693)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.3999999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-08, 1, -8.94069672e-08, -0.984194994, -0.0928058624, -0.150824606, -0.176757336, 0.462599635, 0.868768573, -0.0108554019, 0.88169682, -0.471691966)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10314369, -0.810955226, -0.249955118, 0.0165543854, -0.307785809, -0.951311529, -0.481422424, 0.831440091, -0.277380258, 0.876332283, 0.462574631, -0.134411037)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.677067757, 0.446810424, -0.68304652, -0.855836511, 0.372515023, 0.358854204, 0.097494483, -0.56516552, 0.819196343, 0.507975101, 0.736084402, 0.447371244)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02637291, 0.340256929, -0.767738581, 0.0689027384, 0.193642512, 0.978649557, 0.540728033, 0.81713587, -0.199754789, -0.8383708, 0.542946696, -0.0484050214)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.20109832, 0.05797261, -0.201981246, -0.317357481, -0.481643766, -0.816886008, -0.909725964, 0.39783442, 0.118858792, 0.267737925, 0.780863881, -0.56441921)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--22, 1.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.706939161, -0.677913308, -0.310455292, -0.951311588, -0.265416503, 0.15671736, -0.0997975841, 0.746281266, 0.65810746, -0.291627586, 0.610424876, -0.73643446)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1297797, -0.911398709, -0.176084816, 0.140415683, -0.311926395, -0.939672828, -0.269120991, 0.90131855, -0.339409322, 0.952815413, 0.300544173, 0.0426132977)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.286016583, 0.657643318, -0.695454895, -0.564333975, 0.711985707, 0.417856634, 0.360393405, -0.242908195, 0.900618017, 0.742726803, 0.658842742, -0.119515248)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00779223, 0.120937109, -0.753873229, 0.0536765754, 0.255094826, 0.965425074, 0.6593799, 0.717000902, -0.226114482, -0.749891341, 0.648718774, -0.129718274)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--23, 1.8166667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.670430779, -0.625031114, -0.458065093, -0.929840684, -0.331108958, 0.160509765, -0.111696944, 0.669616997, 0.734259963, -0.350599885, 0.664815843, -0.659621239)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15361309, -0.917079449, -0.165578336, 0.276629746, -0.311926425, -0.908943176, -0.216466248, 0.901318669, -0.375189513, 0.936278939, 0.300544143, 0.181809902)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.755033851, 0.326701999, -0.311379433, -0.624815464, 0.694908142, 0.355962247, 0.765221059, 0.635567069, 0.102429345, -0.155060709, 0.336388111, -0.928870559)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00255585, -0.0335412621, -0.798232973, 0.0346788466, 0.244273767, 0.969085991, 0.579029024, 0.785426795, -0.218700215, -0.814569116, 0.568713188, -0.114203937)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.31666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04623806, 0.0969964862, -0.247772306, -0.259734958, -0.198789582, -0.944997013, -0.507634699, 0.860572815, -0.0415048897, 0.821489751, 0.468933612, -0.324433059)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--24, 1.9166666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.630140483, -0.543798327, -0.518011093, -0.920389414, -0.360260189, 0.151974171, -0.094112888, 0.581366181, 0.808181345, -0.379507959, 0.729538381, -0.568988621)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17063677, -0.921136796, -0.158073574, 0.371409982, -0.28191191, -0.884635687, -0.177321732, 0.913714647, -0.365626186, 0.91137898, 0.292662352, 0.289373547)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01240468, -0.189552784, -0.804084718, 0.00755821168, 0.194169909, 0.980938733, 0.49868238, 0.849546969, -0.172004282, -0.86675179, 0.490476876, -0.090408057)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--25, 2.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.562206089, -0.364294171, -0.540095448, -0.93600142, -0.326953471, 0.130395144, -0.0215074979, 0.42287451, 0.905933559, -0.351338685, 0.845150054, -0.402843237)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-09, 0.999999881, -1.1920929e-07, -0.985646129, -0.103264257, -0.133563265, -0.160612658, 0.329770327, 0.930298448, -0.0520213731, 0.938396931, -0.341622025)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22256744, -0.88440603, -0.259988368, 0.38398546, -0.282886028, -0.878937125, 0.0839436576, 0.958664834, -0.271873504, 0.919515371, 0.0306142475, 0.39185968)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.848567486, 0.355031848, -0.107975245, -0.365129709, -0.059074495, 0.929081023, 0.353139162, 0.91460824, 0.196938217, -0.861379862, 0.400000811, -0.313089162)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05808926, -0.425680816, -0.733753443, -0.0383055359, 0.034876585, 0.998657227, 0.379233539, 0.925130367, -0.0177625269, -0.924507737, 0.37804389, -0.0486639962)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--26, 2.133333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.487096399, -0.246804371, -0.477627695, -0.929686606, -0.340159565, 0.141330495, 0.0310699753, 0.309900075, 0.950261891, -0.367038816, 0.887836456, -0.277541369)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19590211, -0.892258048, -0.192985803, 0.404683352, -0.249956816, -0.879632115, 0.165990964, 0.966016769, -0.198138118, 0.899265528, -0.0658278316, 0.432421327)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09126294, -0.575187027, -0.681621909, -0.0584889725, -0.0639293268, 0.996239007, 0.327608377, 0.941450357, 0.0796473324, -0.943001449, 0.33103469, -0.0341206789)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.93560183, 0.145193458, 0.00130092353, 0.0448082536, 0.11436832, -0.992426813, -0.419549465, 0.903725624, 0.0852038413, 0.906625748, 0.41255486, 0.0884779841)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--27, 2.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.247053459, -0.125125349, -0.261854798, -0.894842386, -0.428719372, 0.12432529, 0.0425731465, 0.195280313, 0.979823589, -0.444347411, 0.882080138, -0.156493261)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04913843, -0.963039219, 0.139055848, 0.445048749, -0.20392397, -0.871978462, 0.0770142898, 0.978835046, -0.189606458, 0.89218843, 0.0172292925, 0.451334327)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13204765, -0.720112443, -0.615652502, -0.0808322206, -0.14854829, 0.985595882, 0.337229073, 0.926439643, 0.16728963, -0.937946022, 0.345893919, -0.0247914046)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--28, 2.383333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0974306241, -0.0111928433, -0.0168907344, -0.852709532, -0.509546995, 0.115102366, 0.0188248269, 0.190223411, 0.981560946, -0.522046149, 0.839152634, -0.152613252)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.433333158493042, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 0.999999821, -5.96046448e-08, -0.996460676, 0.0794103444, -0.0275820997, 0.000638913829, 0.335252792, 0.942128062, 0.0840617344, 0.938776016, -0.334116608)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.33333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.955628216, -1.05994809, 0.0482840836, 0.464315236, -0.0425181165, -0.884649217, -0.0281724036, 0.997632742, -0.0627346858, 0.885222077, 0.0540512949, 0.462017894)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.5333333015441895, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.979757547, 0.351436317, -0.0699145794, -0.204092637, -0.160722643, 0.965667844, 0.0558531731, 0.982911944, 0.175397262, -0.977356911, 0.0897328258, -0.191628262)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.33333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13693857, -0.864180446, -0.638032377, -0.0142243207, -0.132813111, 0.991039097, -0.0640714765, 0.989223361, 0.131650195, -0.997843802, -0.0616247654, -0.0225805789)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.33333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.935602188, 0.145193487, 0.00130093098, 0.268847495, 0.0850988552, -0.959415555, -0.0181678981, 0.996360898, 0.0832851231, 0.963011146, -0.00496001169, 0.269415557)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166655540466309)

		if afterframe() then
			return
		end

		--29, 2.5
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.019437965, 0.0376484804, 0.191763669, -0.814309537, -0.571278274, 0.102670856, 0.00234964583, 0.173641324, 0.984806836, -0.580426216, 0.802178323, -0.140055567)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--30, 2.5999999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0334134512, 0.0161545724, 0.307121158, -0.767609358, -0.628875613, 0.12365897, 0.0335610174, 0.153235734, 0.987620354, -0.640038848, 0.762256145, -0.0965195224)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--31, 2.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0159811303, 0.00694329292, 0.387775123, -0.732807577, -0.667781353, 0.130619422, 0.0498778448, 0.138730004, 0.989074111, -0.678605497, 0.731315553, -0.068354927)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01297212, -1.06740665, 0.0781241208, 0.414152324, -0.0792355984, -0.90675199, -0.0342649259, 0.994140446, -0.10252215, 0.909562469, 0.0735295787, 0.40901041)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14467239, -0.892046571, -0.461069375, 0.0140494406, -0.143245384, 0.989587426, 0.0373992398, 0.989067674, 0.142639264, -0.999201596, 0.0350058377, 0.0192531049)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.33333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.793864489, 0.311112195, 0.158750683, 0.0181424916, 0.0937055647, -0.995434403, -0.057384517, 0.994055152, 0.0925298557, 0.998187304, 0.055443868, 0.0234117806)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--32, 2.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0204525441, 0.00694389641, 0.436331958, -0.711538374, -0.690764606, 0.128676191, 0.054002136, 0.128828153, 0.990196049, -0.700569093, 0.711510837, -0.0543634295)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.21540642e-08, 1, 0, -0.981183589, 0.146768004, -0.125453964, -0.0956658572, 0.194845557, 0.976157486, 0.167712837, 0.969791174, -0.177138269)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--33, 2.9166667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0794408545, 0.00970378518, 0.466469646, -0.697561562, -0.708081067, 0.109678581, 0.0532044992, 0.10146153, 0.993416429, -0.714546978, 0.698803961, -0.0331025608)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02171326, -1.07047033, 0.0830826983, 0.400598586, -0.0852713212, -0.912277102, -0.0248141885, 0.994285285, -0.103833072, 0.915917575, 0.0642327815, 0.396193087)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.979757547, 0.351436317, -0.0699145496, -0.204092667, -0.160722658, 0.965667844, 0.0558531731, 0.982911944, 0.175397262, -0.977356911, 0.0897328258, -0.191628262)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14694488, -0.90091753, -0.416878939, 0.0222512335, -0.154976904, 0.987667441, 0.0532260537, 0.986694455, 0.153625146, -0.998334527, 0.0491512939, 0.0302039832)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--34, 3.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.142862797, 0.0139964707, 0.475583971, -0.692603707, -0.716683149, 0.0816431493, 0.0487826169, 0.0663871914, 0.996601403, -0.719667017, 0.694232047, -0.0110183228)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01301062, -1.072335, 0.0791916698, 0.399366945, -0.0801231414, -0.91328305, -0.00718136877, 0.995869756, -0.0905088484, 0.916763008, 0.0427048467, 0.397142053)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.948836386, 0.352379352, -0.107122362, -0.346188456, -0.106354818, 0.932117105, 0.173507437, 0.96915549, 0.175021604, -0.921980798, 0.222319603, -0.317057192)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14747214, -0.903879881, -0.416957289, 0.0244607776, -0.168464556, 0.985404253, 0.0383596122, 0.985131204, 0.167465687, -0.998964608, 0.0337033868, 0.0305593163)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--35, 3.049999952316284
		tween3 = ts:Create(part3, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.788327217, 0.384153128, 0.199597657, 0.190485224, 0.0876728743, -0.977767169, -0.0809330046, 0.99401629, 0.0733628124, 0.978348255, 0.0651591793, 0.19644089)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--36, 3.1500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.161455289, 0.0155819803, 0.401958257, -0.711205721, -0.698880851, 0.0758419558, 0.0253126305, 0.0823565423, 0.996281981, -0.702528059, 0.710480928, -0.0408819467)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5833332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.96046448e-08, 0.999999881, -1.1920929e-07, -0.933666408, -0.133094892, -0.332496017, -0.336101234, 0.646293521, 0.68508482, 0.123708703, 0.751392841, -0.648155391)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00865948, -1.0732677, 0.0772462264, 0.40346241, -0.0716036707, -0.91219008, -0.0346946754, 0.995019257, -0.0934509113, 0.914338171, 0.069352068, 0.398968428)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.875656366, 0.35461095, -0.19518131, -0.615392864, 0.0917917192, 0.782857478, 0.42794323, 0.872977078, 0.234041482, -0.661933661, 0.479045928, -0.576505721)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14773583, -0.905360937, -0.41699639, 0.0256416947, -0.17800875, 0.983694792, 0.0309349075, 0.983688176, 0.177201226, -0.999192417, 0.0258867592, 0.0307301134)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--37, 3.2833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.135686845, 0.0144803599, 0.248385176, -0.751442254, -0.653834164, 0.0885188356, -0.0137303323, 0.149627268, 0.988647759, -0.659656167, 0.741695821, -0.121413648)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00865948, -1.07326722, 0.0772461295, 0.411990047, -0.059427999, -0.909248173, -0.105731979, 0.988012195, -0.112484232, 0.905033112, 0.142479002, 0.400767684)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.762278557, 0.358068645, -0.331610739, -0.751327991, 0.502867103, 0.427353501, 0.659510672, 0.595207274, 0.4591012, -0.0234970003, 0.626779735, -0.778842211)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14773583, -0.905360818, -0.41699627, 0.0256416798, -0.183554709, 0.982674897, 0.0309348851, 0.98267293, 0.182747185, -0.999192357, 0.0257129967, 0.0308756679)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--38, 3.316666603088379
		tween3 = ts:Create(part3, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.890644252, 0.397500396, 0.155332595, 0.675778866, 0.0666026399, -0.734089255, -0.0764834657, 0.996870458, 0.0200366285, 0.733125627, 0.042605713, 0.678757966)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833344459533691)

		if afterframe() then
			return
		end

		--39, 3.450000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.131127834, 0.0140436888, 0.123419993, -0.785837591, -0.61070478, 0.0974642783, -0.0385956503, 0.205721736, 0.977849841, -0.617227614, 0.764668941, -0.185234517)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.993296981, -1.07130051, 0.0669402629, 0.415148169, -0.0754630789, -0.906618476, -0.133950099, 0.980622172, -0.142959654, 0.899838507, 0.180791095, 0.396995008)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.705157161, 0.166836441, -0.440446556, -0.310904562, 0.914977968, 0.257203043, 0.86294806, 0.158339858, 0.479842842, 0.398320198, 0.371138096, -0.838807225)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14773583, -0.905360818, -0.41699633, 0.0569817722, -0.189078927, 0.980307162, 0.0366996601, 0.981635451, 0.187201977, -0.997700453, 0.0253098309, 0.0628744811)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--40, 3.5833332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.144061536, 0.0140526816, -0.0195357949, -0.825974822, -0.55372113, 0.105634704, -0.058638081, 0.270774037, 0.960855901, -0.560648918, 0.787448108, -0.256121814)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.958729923, -1.0668757, 0.0437514186, 0.415148139, -0.122747451, -0.901435316, -0.133950204, 0.971809626, -0.194019541, 0.899838746, 0.201294214, 0.387002885)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.802493095, -0.123681784, -0.604202628, 0.305175275, 0.950692236, 0.0552420095, 0.883608818, -0.304318726, 0.355840653, 0.355105966, -0.059782967, -0.932912767)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14773595, -0.905360937, -0.416996181, 0.127163619, -0.196465403, 0.972229719, 0.0499117896, 0.980212688, 0.191550329, -0.990625143, 0.0241674483, 0.134453326)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.566666841506958, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.91183567, 0.410127431, 0.10603261, 0.755183935, -0.0421040878, -0.654159427, 0.0654902458, 0.997789204, 0.0113834301, 0.652233124, -0.0514372885, 0.756271601)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--41, 3.7333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.182672888, -0.000300563872, -0.0693877712, -0.902389288, -0.420706987, 0.0932699069, -0.0322814994, 0.281832397, 0.958921015, -0.429711014, 0.862308741, -0.267903686)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.41666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.23517418e-08, 0.99999994, -8.94069672e-08, -0.905037403, -0.341509104, -0.253534257, -0.411626875, 0.553155839, 0.724280715, -0.107104503, 0.759862542, -0.641200542)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.958731472, -1.06687546, 0.0437519848, 0.415148139, -0.148453757, -0.897559643, -0.133950114, 0.965869009, -0.221707791, 0.899838567, 0.212269828, 0.381093264)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.41666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.852910101, -0.254675746, -0.634452641, 0.577532053, 0.814802349, 0.0505318195, 0.75003016, -0.554026186, 0.361258507, 0.322349846, -0.170738935, -0.931095839)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14773583, -0.905361176, -0.41699636, 0.141477615, -0.225071758, 0.964015901, -0.00858727098, 0.973495245, 0.228545189, -0.989904225, -0.0406122953, 0.135795072)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.20166669845581053)

		if afterframe() then
			return
		end

		--42, 3.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.19624424, 0.0480118804, -0.00317131728, -0.922549903, -0.380732656, 0.0628054813, -0.0310348924, 0.235440895, 0.971393645, -0.384627998, 0.894209325, -0.229022056)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.958731353, -1.06687546, 0.0437518358, 0.415148139, -0.112750158, -0.902739823, -0.133950144, 0.973899961, -0.183238268, 0.899838567, 0.196993172, 0.389209747)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14663315, -0.923950553, -0.418499529, 0.148652449, -0.1953035, 0.969411612, -0.0353975892, 0.978623986, 0.202587485, -0.988255739, -0.0644299537, 0.138561577)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.1850000476837158)

		if afterframe() then
			return
		end

		--43, 4.150000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.187745363, 0.157885954, 0.175278828, -0.904529452, -0.426270545, 0.0109510869, -0.0506066643, 0.132815033, 0.989848733, -0.423397511, 0.894792676, -0.141707316)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999999881, 2.98023224e-08, -0.905037224, -0.225602508, -0.360571235, -0.411626965, 0.251103371, 0.876076818, -0.107104525, 0.941302896, -0.320121616)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.958731413, -1.06687582, 0.0437518805, 0.415148139, -0.0168829039, -0.909597039, -0.133950114, 0.987796366, -0.0794703513, 0.899838567, 0.154832616, 0.407820314)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.866682708, -0.0210837126, -0.615530252, 0.643505335, 0.763771892, 0.0505309254, 0.70118773, -0.614676714, 0.361259371, 0.306980133, -0.197040513, -0.931095421)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14442778, -0.961130619, -0.421506166, 0.148652449, -0.109127194, 0.982849777, -0.0353976041, 0.992668033, 0.115571111, -0.988255739, -0.0519704521, 0.143699721)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.7166666984558105, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951774001, 0.405243099, 0.023586005, 0.219576016, 0.0124612609, -0.975515842, -0.143287674, 0.989487588, -0.0196120478, 0.965015769, 0.144086048, 0.21905373)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.1849998092651367)

		if afterframe() then
			return
		end

		--44, 4.349999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0935472623, 0.194632962, 0.335625112, -0.893496275, -0.449052513, 0.00406401604, -0.0162486397, 0.0413717926, 0.999012351, -0.448776841, 0.892547131, -0.0442620367)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999999881, -1.49011612e-08, -0.948843956, -0.117530316, -0.293057114, -0.278820753, -0.123669103, 0.9523471, -0.148171768, 0.985339046, 0.0845728964)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.956532478, -1.09102273, 0.0417855978, 0.415254176, -0.00322393328, -0.909699559, -0.076587677, 0.996319592, -0.0384911895, 0.906475723, 0.085655421, 0.413478851)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.848744094, 0.368638217, -0.621518254, 0.705615163, 0.701879978, 0.0973226428, 0.560204387, -0.636665881, 0.529931962, 0.433910728, -0.319407225, -0.842437446)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1247257, -0.982175827, -0.413640678, 0.15590477, -0.0872380883, 0.98391217, -0.0908571482, 0.990602911, 0.102227993, -0.983584583, -0.105333254, 0.146513551)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.1850002861022949)

		if afterframe() then
			return
		end

		--45, 4.550000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.00282635912, 0.175143734, 0.411826462, -0.891385436, -0.452501148, 0.0259756632, 0.0294526853, -0.000639364123, 0.999566674, -0.452288091, 0.891763687, 0.0138973258)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 1, 4.09781933e-08, -0.979704618, -0.104347132, -0.17114678, -0.12599881, -0.343470693, 0.930673003, -0.155896977, 0.933348894, 0.323352218)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.954176188, -1.11689544, 0.039678812, 0.413163245, -0.0400379486, -0.909776211, -0.014887847, 0.998602509, -0.0507081896, 0.910535216, 0.0344953574, 0.411989689)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.822142363, 0.661058247, -0.638073325, 0.726800144, 0.668945312, 0.15580143, 0.408964366, -0.603714287, 0.68430841, 0.551824629, -0.433637828, -0.712354183)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10479772, -0.984805465, -0.40360266, 0.164988637, -0.109741099, 0.980171204, -0.149659455, 0.979497313, 0.134857312, -0.974874675, -0.168941796, 0.145182207)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13499961853027342)

		if afterframe() then
			return
		end

		--46, 4.699999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0880344734, 0.160106242, 0.459783107, -0.897601426, -0.437848598, 0.050994195, 0.0691343322, -0.0255788006, 0.997280061, -0.435353011, 0.898684859, 0.0532299839)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999999881, 2.98023224e-08, -0.993995786, -0.0968051553, -0.0510097779, 0.00444634212, -0.501522064, 0.865133464, -0.109331913, 0.859712183, 0.498941123)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.952358127, -1.13685918, 0.0380531773, 0.410564333, -0.0649748892, -0.909513533, 0.0246170685, 0.997884274, -0.0601755828, 0.911499262, 0.00231636316, 0.411295056)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.812186956, 0.811209917, -0.651732862, 0.714847744, 0.660679281, 0.229119718, 0.288883328, -0.577397823, 0.76364851, 0.636820197, -0.479703218, -0.603610635)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08942127, -0.986835837, -0.395857245, 0.172806293, -0.132230014, 0.976039648, -0.19444418, 0.966865897, 0.16541326, -0.965572178, -0.218369588, 0.141369194)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--47, 4.866666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.13870196, 0.153370142, 0.468778819, -0.909049034, -0.410424441, 0.0719844997, 0.0918322131, -0.0288231261, 0.995357931, -0.406444103, 0.911439061, 0.0638918579)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11758709e-08, 1, 0, -0.99615562, -0.0818256736, 0.0312912762, 0.0724509731, -0.568695188, 0.819351494, -0.049248796, 0.818468809, 0.572437048)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951543629, -1.14580274, 0.0373248756, 0.409787327, -0.0722691044, -0.909313679, 0.0329458192, 0.997378886, -0.0644209906, 0.911585927, -0.00355919451, 0.411094069)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.819906533, 0.79152, -0.658870757, 0.682285249, 0.671778381, 0.288444668, 0.246752471, -0.582991183, 0.774101973, 0.688185573, -0.456984043, -0.563529611)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08253253, -0.98774457, -0.392387331, 0.176599771, -0.148587942, 0.973002613, -0.214291692, 0.959022999, 0.185347021, -0.960672498, -0.241238564, 0.137522131)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.893049419, 0.413216472, 0.204792708, 0.214153677, 0.0500709675, -0.975515842, -0.311470002, 0.950054646, -0.0196120404, 0.925810575, 0.308044136, 0.219053701)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--48, 5
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.192738488, 0.14916122, 0.452041626, -0.929519594, -0.354390174, 0.101986676, 0.115575776, -0.017331697, 0.993148148, -0.350194067, 0.934937119, 0.0570691191)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.09781933e-08, 1.00000012, 2.98023224e-08, -0.990007222, -0.0440962166, 0.133947268, 0.132696331, -0.612786293, 0.779028296, 0.0477288254, 0.789017916, 0.6125139)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951034665, -1.15139246, 0.0368697941, 0.410503089, -0.069941029, -0.909172833, 0.0214017183, 0.99751842, -0.0670741349, 0.91160804, 0.00807625428, 0.410981119)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.838335037, 0.675226688, -0.663227677, 0.6359936, 0.689311028, 0.346933126, 0.248427749, -0.608525097, 0.753645301, 0.730613589, -0.393125504, -0.558261931)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07822704, -0.988312602, -0.390218526, 0.179141134, -0.170240104, 0.968982279, -0.226601005, 0.951293826, 0.209025443, -0.957371593, -0.257017374, 0.13183929)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--49, 5.116666793823242
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.893922687, 0.406513274, 0.196610808, 0.235435307, 0.122188717, -0.964178324, -0.279581636, 0.958646119, 0.0532187484, 0.930808365, 0.257037163, 0.259860694)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--50, 5.150000095367432
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.882534385, 0.543708742, -0.564860344, 0.212821126, 0.873357892, 0.438124448, 0.645194173, -0.462349415, 0.608241618, 0.733779311, 0.15322876, -0.661883175)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--51, 5.166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.21734485, 0.149162412, 0.427446157, -0.942895234, -0.310827374, 0.119729266, 0.1267979, -0.00255669281, 0.991925955, -0.308011413, 0.950462997, 0.0418229811)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.23517418e-08, 1.00000012, 1.49011612e-08, -0.981849849, -0.0094207786, 0.189427227, 0.154707894, -0.617535233, 0.771178365, 0.109712861, 0.786487222, 0.607784152)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951034606, -1.1513927, 0.0368696898, 0.411724925, -0.0623465925, -0.909172833, 0.00297263265, 0.997743607, -0.0670741349, 0.911303222, 0.0249134377, 0.410981059)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07822716, -0.988313079, -0.390218496, 0.179141119, -0.182865977, 0.966679096, -0.226601005, 0.948486209, 0.221417323, -0.957371712, -0.258715332, 0.128475294)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--52, 5.2833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.211244985, 0.149162695, 0.341214299, -0.957898796, -0.254169911, 0.133520812, 0.125088513, 0.0491299108, 0.990929008, -0.258424073, 0.965910971, -0.0152677223)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 0.999999881, -1.49011612e-08, -0.983459413, 0.0339064524, 0.177928463, 0.121586651, -0.604535818, 0.787244141, 0.134256765, 0.795856357, 0.59041369)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951034725, -1.15139234, 0.0368698239, 0.414384186, -0.0467335097, -0.908901215, -0.0536518246, 0.995689511, -0.0756567344, 0.908519208, 0.0801151544, 0.410090446)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01756787, 0.244342953, -0.188722432, -0.466350794, -0.236842707, 0.852304816, 0.314861149, 0.855950296, 0.410135001, -0.826668322, 0.459623992, -0.324602097)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07822716, -0.988312483, -0.390218556, 0.179141045, -0.185417295, 0.966192961, -0.226601034, 0.947898328, 0.22392045, -0.957371593, -0.259053648, 0.127791852)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--53, 5.300000190734863
		tween3 = ts:Create(part3, TweenInfo.new(0.2666664123535156, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.896489382, 0.398221791, 0.169000149, 0.255626678, 0.16099894, -0.953275383, -0.23662369, 0.966465056, 0.0997743905, 0.937370956, 0.200062692, 0.28515023)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.1849998092651367)

		if afterframe() then
			return
		end

		--54, 5.5
		tween2 = ts:Create(part2, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07495809, 0.19504118, 0.166965589, 0.140832484, -0.342691451, 0.928832173, -0.0585631467, 0.933655977, 0.353350818, -0.988299668, -0.104158536, 0.111419864)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--55, 5.516666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.167379215, 0.149161309, 0.253162116, -0.963051736, -0.236933291, 0.128039762, 0.1062079, 0.102771543, 0.989019334, -0.247490302, 0.966074944, -0.0738101825)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.31322575e-09, 0.99999994, 5.21540642e-08, -0.99570775, 0.0439641103, 0.0814493299, 0.0412729234, -0.576756358, 0.815873027, 0.0828455389, 0.815732777, 0.572466075)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951032758, -1.15139294, 0.0368695557, 0.416104674, -0.035213802, -0.908634901, -0.108026989, 0.99025923, -0.0878471062, 0.902877331, 0.134710491, 0.40824765)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07822812, -0.988312721, -0.390218228, 0.179141134, -0.171035066, 0.968842328, -0.226600915, 0.951122284, 0.209805489, -0.957371891, -0.257125497, 0.131628364)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--56, 5.566666603088379
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.899628043, 0.392671645, 0.133801281, 0.260531038, 0.140600741, -0.955172658, -0.203027293, 0.975195587, 0.0881707519, 0.943876922, 0.170955047, 0.282614291)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--57, 5.683333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0536095686, 0.149168342, 0.187393472, -0.98682487, -0.151495114, 0.0567988232, 0.0350135304, 0.142773584, 0.989136517, -0.157958597, 0.978092551, -0.135588184)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-09, 1, -1.49011612e-08, -0.998385727, 0.0512951575, -0.0244011022, -0.0465584323, -0.492879361, 0.868851244, 0.0325410515, 0.868584633, 0.494471848)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951034665, -1.15139294, 0.0368696153, 0.417585671, -0.00232135504, -0.908634424, -0.185708582, 0.97867012, -0.0878472775, 0.889457405, 0.205425024, 0.408247441)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07822704, -0.988312602, -0.390218675, 0.197892472, -0.171034902, 0.965186775, -0.22249046, 0.951122046, 0.214159906, -0.954639435, -0.257125378, 0.150166333)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--58, 5.766666889190674
		tween2 = ts:Create(part2, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0314486, 0.245127887, -0.109519616, 0.210468978, -0.310535908, 0.926968277, -0.0825369358, 0.939177454, 0.333366245, -0.974110007, -0.146672428, 0.172037065)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--59, 5.7833333015441895
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.906466067, 0.388856113, 0.0545258522, 0.228435099, -0.0253608469, -0.973228633, -0.166405573, 0.983932912, -0.0646982044, 0.95923233, 0.176730126, 0.220544472)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--60, 5.866666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0202971697, 0.149177447, 0.053253442, -0.98977524, -0.142281294, 0.0100593418, -0.0186201613, 0.19880715, 0.979862392, -0.141415864, 0.969655573, -0.199423775)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 0.99999994, 1.11758709e-08, -0.995211959, 0.0809527859, -0.0547767729, -0.0814877972, -0.377685398, 0.922341287, 0.0539777055, 0.922388732, 0.382473737)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951034665, -1.15139294, 0.0368696153, 0.417585671, -0.00232135504, -0.908634424, -0.185708582, 0.97867012, -0.0878472775, 0.889457405, 0.205425024, 0.408247441)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07822704, -0.988313198, -0.390218526, 0.204176575, -0.121901788, 0.97131449, -0.17560637, 0.971560597, 0.158846259, -0.963054717, -0.203001678, 0.176963195)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--61, 5.883333206176758
		tween2 = ts:Create(part2, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00206304, 0.291214287, -0.282313496, 0.139229208, -0.270455718, 0.952611625, 0.00788912922, 0.962253332, 0.272040248, -0.990228653, -0.0303607136, 0.136107445)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--62, 6
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0823521614, 0.149192825, -0.217688531, -0.976424694, -0.21490398, -0.0202827528, -0.0833203644, 0.288546473, 0.953834236, -0.199130103, 0.933036685, -0.299649924)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 0.999999702, 9.68575478e-08, -0.986440599, 0.162151709, -0.0253535733, -0.0533024445, -0.170417413, 0.983929217, 0.155225158, 0.971939027, 0.176749945)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951034665, -1.15139246, 0.0368697047, 0.416746378, 0.0150769241, -0.908897638, -0.128569633, 0.990788758, -0.042516198, 0.899884582, 0.134575129, 0.414845943)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07822835, -0.988311887, -0.390218318, 0.0587235838, 0.00567279756, 0.998258173, -0.0583169013, 0.998295426, -0.0022428669, -0.996569633, -0.0580838025, 0.0589542389)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.919572651, 0.425840557, -0.111288562, -0.0171790123, -0.0430854298, -0.99892354, -0.281905979, 0.958747566, -0.0365043357, 0.959288299, 0.28097555, -0.0286164284)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--63, 6.016666889190674
		tween2 = ts:Create(part2, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990761697, 0.334875524, -0.319321513, -0.121718973, -0.152579039, 0.980768502, 0.286417812, 0.940681696, 0.181886733, -0.950342536, 0.303047508, -0.0707991123)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--64, 6.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0823520869, 0.14919278, -0.217688531, -0.994138539, -0.105571568, -0.0233047269, -0.0488312803, 0.246146441, 0.968002439, -0.096457094, 0.963465989, -0.249858975)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.86264515e-09, 1, -7.4505806e-08, -0.999384582, 0.00051645888, -0.035084676, -0.0349101238, 0.0860535204, 0.995678842, 0.00353338872, 0.996290684, -0.0859822631)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999584079, 0.350747705, -0.184417993, -0.0913826227, -0.121008262, 0.988435984, 0.268490642, 0.952836752, 0.141472593, -0.958938062, 0.278313965, -0.0545831174)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07858849, -1.00165915, -0.25107199, -0.0689124018, -0.0146104526, 0.997515678, 0.035321191, 0.999229968, 0.0170756821, -0.996997237, 0.0364101678, -0.0683433041)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--65, 6.233333110809326
		tween3 = ts:Create(part3, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.947901487, 0.462124586, -0.14717117, -0.114607975, -0.0408808365, -0.992569029, -0.24680987, 0.968996942, -0.0114117041, 0.962262869, 0.243668109, -0.121144578)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--66, 6.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0380086601, 0.0688581541, -0.100471608, -0.999943614, -0.00351035967, -0.0100266803, -0.0103159994, 0.0954467356, 0.995381713, -0.00253713317, 0.995428383, -0.0954775959)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.98012203, -1.05212212, 0.0571766645, 0.41683358, 0.0358806178, -0.908274114, -0.0629673451, 0.997960269, 0.0105260164, 0.906799257, 0.052803982, 0.418242514)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.5166668891906738, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.50000006, 7.4505806e-09, 0, 3.7252903e-09, 1, 2.98023224e-08, 0.999999821, 3.7252903e-09, -1, -2.98023224e-08, 0)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--67, 6.366666793823242
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11758709e-08, 0.999999881, 0, -0.998808801, -0.0440761223, -0.0209476799, -0.0266801342, 0.133779675, 0.990651965, -0.0408617295, 0.990030825, -0.134795994)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--68, 6.416666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04465115, -1.0169692, 0.0328884721, 0.18966575, 0.00324186124, -0.981843293, -0.017159991, 0.999852657, -1.35339797e-05, 0.981698632, 0.0168509632, 0.189693332)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0541023, -1.00382173, -0.144658327, -0.0361943319, -0.0125069208, 0.999266446, 0.0439910218, 0.998932242, 0.014096126, -0.998375952, 0.0444689468, -0.0356054902)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--69, 6.5
		tween3 = ts:Create(part3, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999999881, 0.499999881, -2.98023224e-08, 4.47034836e-08, -3.86498868e-08, -0.999999821, 1.3038516e-08, 1.00000036, 3.86498868e-08, 1, 1.3038516e-08, -4.47034836e-08)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--70, 6.5333333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-9.31322575e-10, 0.99999994, 1.49011612e-08, -0.998972178, -0.0438609719, -0.0114665674, -0.0162185393, 0.109570414, 0.993846834, -0.042334687, 0.993011117, -0.110168904)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--71, 6.550000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, -3.7252903e-08, -7.4505806e-09, -1, 0, 2.91038305e-09, -2.91038305e-09, 1.11758709e-08, 1.00000072, 0, 1, 1.11758709e-08)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--72, 6.583333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, -1, 2.23517418e-08, 2.98023224e-08, 6.51925802e-09, -0.999999821, -7.4505806e-09, 1, -6.51925802e-09, 1, -7.4505806e-09, -2.98023224e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02953851, -1.00312483, -0.0680620074, -0.0153326243, -0.00794935226, 0.99985081, 0.03166008, 0.999462903, 0.00843177922, -0.999381125, 0.0317846537, -0.0150727183)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--73, 6.666666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-09, 1, 0, -1.00000036, -9.31322575e-10, -1.74622983e-10, 1.74622983e-10, 8.94069672e-08, 1, 9.31322575e-10, 1.00000036, 8.94069672e-08)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--74, 6.7166666984558105
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.999999762, 0, 0, -1.67638063e-08, 1, 1.49011612e-08, 0.999999821, -1.67638063e-08, -1, -1.49011612e-08, 0)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--75, 6.833333492279053
		part1.C0 = CFrame.new(0, -3.7252903e-08, -7.4505806e-09, -1, 0, 2.91038305e-09, -2.91038305e-09, 1.11758709e-08, 1.00000072, 0, 1, 1.11758709e-08)
		part6.C0 = CFrame.new(-3.7252903e-09, 1, 0, -1.00000036, -9.31322575e-10, -1.74622983e-10, 1.74622983e-10, 8.94069672e-08, 1, 9.31322575e-10, 1.00000036, 8.94069672e-08)
		part5.C0 = CFrame.new(-1.00000012, -1, 2.23517418e-08, 2.98023224e-08, 6.51925802e-09, -0.999999821, -7.4505806e-09, 1, -6.51925802e-09, 1, -7.4505806e-09, -2.98023224e-08)
		part2.C0 = CFrame.new(1, 0.50000006, 7.4505806e-09, 0, 3.7252903e-09, 1, 2.98023224e-08, 0.999999821, 3.7252903e-09, -1, -2.98023224e-08, 0)
		part4.C0 = CFrame.new(1, -0.999999762, 0, 0, -1.67638063e-08, 1, 1.49011612e-08, 0.999999821, -1.67638063e-08, -1, -1.49011612e-08, 0)
		part3.C0 = CFrame.new(-0.999999881, 0.499999881, -2.98023224e-08, 4.47034836e-08, -3.86498868e-08, -0.999999821, 1.3038516e-08, 1.00000036, 3.86498868e-08, 1, 1.3038516e-08, -4.47034836e-08)

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
animation(game.Players.LocalPlayer.Character)
