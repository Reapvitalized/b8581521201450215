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
	local animvalue = anims:FindFirstChild("ready")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "ready"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.8333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-15.2015762, 0.303515673, -3.12924385e-07, -0.934581995, -0.351026863, -0.0577626601, -0.35524869, 0.929483593, 0.0992914066, 0.0188354701, 0.113316081, -0.993380547)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(1.0833333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 1.00000012, 2.98023224e-08, -0.978538215, 0.206066161, 7.4505806e-09, 0.0440893844, 0.209365487, 0.976843119, 0.201294288, 0.955878019, -0.213957429)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0558455, -0.92928189, -0.0690201521, 0.492004484, 0.391894579, -0.777399659, -0.623036861, 0.782192469, -7.4505806e-09, 0.608076096, 0.484348744, 0.629006863)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.292978287, 0.430147231, -0.729895294, -0.411411464, 0.451597273, 0.791707277, 0.872279286, -0.0568262115, 0.485695124, 0.264328361, 0.890410542, -0.370540053)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.187240601, -1.07412076, 0, -3.7252903e-09, 1, -0.192444965, 0.981307626, 0, -0.981307745, -0.192444935, -1.49011612e-08)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(1.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.261633277, 0.386027664, -0.807438612, -0.516247272, -0.138481438, -0.845169604, -0.809272766, -0.244098559, 0.534316421, -0.280297667, 0.959811926, 0.0139456876)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.8183333134651184)

		if afterframe() then
			return
		end

		--2, 0.8333333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.19999998807907104, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.83549881, -0.697342038, 0.675774038, -0.934581995, -0.351026863, -0.0577626601, -0.35524863, 0.929483593, 0.0992914662, 0.0188354831, 0.113316126, -0.993380547)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.15166668653488158)

		if afterframe() then
			return
		end

		--3, 1
		tween5 = ts:Create(part5, TweenInfo.new(0.3333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0355494, -0.852886736, -0.159497499, 0.436423361, 0.220150352, -0.872392416, -0.599991918, 0.793750763, -0.0998472646, 0.670480669, 0.567004204, 0.47849974)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.774971247, 0.258989096, -0.249907017, -0.332719833, 0.471962303, 0.816424549, 0.89329797, -0.119685069, 0.43323648, 0.302185178, 0.873456717, -0.381781518)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.3333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12947786, -0.174058616, -1.01409149, 0.0815187991, -0.013578061, 0.996579289, -0.362977952, 0.930833697, 0.0423734039, -0.928224981, -0.365190506, 0.0709519237)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--4, 1.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.35946131, -0.739051461, 0.70393008, -0.946593523, -0.314943522, -0.0690746382, -0.3206909, 0.941847861, 0.100400411, 0.0334373154, 0.117189974, -0.992546678)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--5, 1.0499999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999500751, -0.780773759, 0.732086957, -0.957107425, -0.27837646, -0.0803244114, -0.285701752, 0.952883124, 0.101924583, 0.0481663197, 0.120501563, -0.991544187)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--6, 1.0666667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.137341917, -0.822467387, 0.731411994, -0.96610707, -0.241383418, -0.0914942548, -0.25033626, 0.962571919, 0.10386163, 0.0629993156, 0.123245746, -0.990374684)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--7, 1.0833333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.96178794, -0.864175677, 0.788402438, -0.973578274, -0.204022646, -0.102566622, -0.214650244, 0.970899284, 0.10620831, 0.0779128969, 0.125418037, -0.989040196)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5499999523162842, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000012, 2.98023224e-08, -0.56529969, -0.822205305, 0.0664453208, -0.140089661, 0.175073266, 0.974538028, -0.812903047, 0.541597664, -0.214151263)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--8, 1.100000023841858
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.589921296, -0.905833781, 0.556009591, -0.979509592, -0.166353017, -0.113524035, -0.178699926, 0.977851748, 0.10896115, 0.0928836241, 0.127015188, -0.98754245)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--9, 1.1166666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.58485639, -0.947550476, 0.57696712, -0.983891308, -0.128433853, -0.124349214, -0.1425419, 0.983418584, 0.112115785, 0.107887827, 0.128034681, -0.985884249)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--10, 1.1333333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12059522, -0.947569191, 0.844718814, -0.987544179, -0.0712180883, -0.140301824, -0.0880402029, 0.989152074, 0.117589697, 0.130405307, 0.128477186, -0.983101428)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.953572154, 0.340156257, -0.301131725, -0.411617488, 0.400353193, 0.81871146, 0.801224589, -0.269122124, 0.534427464, 0.434293091, 0.875951409, -0.209997505)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--11, 1.149999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84098744, -0.94753325, 0.84472388, -0.98768276, -0.0137782767, -0.155862048, -0.0333926752, 0.991728067, 0.123936996, 0.152865127, 0.127615064, -0.979973018)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--12, 1.1666666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.90968633, -0.947551012, 0.844718695, -0.984306633, 0.0436819941, -0.170974746, 0.0212069079, 0.991137803, 0.131134912, 0.175187752, 0.125451118, -0.976509869)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--13, 1.1833332777023315
		tween1 = ts:Create(part1, TweenInfo.new(0.016666769981384277, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.51669526, -0.947556317, 0.844718695, -0.977427721, 0.10095901, -0.185586393, 0.0755650625, 0.987383008, 0.139157772, 0.197294056, 0.121992789, -0.972724676)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--14, 1.2000000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.0132463, -0.947572112, 0.844714344, -0.96707052, 0.157849655, -0.199645147, 0.129489079, 0.980477095, 0.147977173, 0.219105646, 0.117252484, -0.968630493)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--15, 1.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.28264952, -0.929164946, 0.826170564, -0.946388602, 0.239991069, -0.216224328, 0.207694799, 0.964733303, 0.161718026, 0.247409612, 0.108139411, -0.962857485)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--16, 1.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.28252673, -0.8371858, 0.733436227, -0.74146533, 0.611225724, -0.276825637, 0.559544265, 0.79093492, 0.24765411, 0.370323539, 0.0287307426, -0.928458691)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--17, 1.25
		tween2 = ts:Create(part2, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24869287, 0.273920834, -0.213778973, -0.691883266, -0.374952376, 0.6170156, 0.584524095, 0.210759759, 0.783525288, -0.423826754, 0.902768552, 0.0733475685)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.343492985, 0.271492869, -0.3662467, -0.581859291, -0.511711657, -0.632132053, -0.7722103, 0.103707857, 0.626845658, -0.255207121, 0.852874994, -0.455492228)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--18, 1.3166667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.2593205, -0.66548723, 0.560337186, -0.311332017, 0.907046318, -0.28344202, 0.8378371, 0.402743578, 0.368546575, 0.448443174, -0.122737899, -0.885344207)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--19, 1.3333333730697632
		tween5 = ts:Create(part5, TweenInfo.new(0.6333333253860474, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(-1.09504807, -0.401661277, -0.29495728, 0.330170214, -0.063393347, -0.941790164, -0.566724241, 0.784586132, -0.251492262, 0.754858494, 0.616770625, 0.223120421)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.6333333253860474, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(1.32045078, -0.408240914, -0.701356173, 0.203709841, 0.00960248336, 0.978984237, -0.646955132, 0.751836061, 0.127245799, -0.73481375, -0.659280062, 0.159368828)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.716661453, 0.215997368, 0.560469627, -0.635699987, 0.454405874, -0.624019921, -0.744551957, -0.574341297, 0.340257704, -0.203785419, 0.680917203, 0.70343709)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--20, 1.399999976158142
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.34856844, 0.14757663, -0.0950003266, -0.26749754, -0.85266304, 0.448789358, 0.0711967424, 0.446998149, 0.891697645, -0.960925162, 0.27047956, -0.0588640124)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--21, 1.4166666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.26158357, -0.586798847, 0.517058611, -0.170292214, 0.942330182, -0.288122535, 0.874976337, 0.279087901, 0.395634353, 0.453229785, -0.184727028, -0.872043133)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.732503772, 0.234309107, 0.53861624, -0.649547696, 0.460941732, -0.604665577, -0.725389719, -0.613979042, 0.311191291, -0.227810919, 0.640751779, 0.733170867)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--22, 1.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.21891522, -0.462591052, 0.473780274, -0.00691866875, 0.952222466, -0.305327713, 0.895742595, 0.141632244, 0.421409398, 0.444519639, -0.270579427, -0.853925943)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.774872363, 0.282305568, 0.476361781, -0.663641453, 0.485974908, -0.5686903, -0.704853773, -0.660842717, 0.257815599, -0.25052318, 0.571940601, 0.781103492)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--23, 1.5666667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.14402723, -0.386723876, 0.473780543, 0.0240032692, 0.942504346, -0.333331585, 0.899401903, 0.125211924, 0.418805987, 0.436463565, -0.309851795, -0.84468466)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.819083214, 0.331779391, 0.409025908, -0.663641453, 0.517782509, -0.53989023, -0.704853594, -0.674538076, 0.219500571, -0.25052321, 0.526213348, 0.812611938)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--24, 1.5833333730697632
		tween2 = ts:Create(part2, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.45344234, 0.143524259, -0.0439452752, 0.110539183, -0.977812827, 0.177940995, -0.165240139, 0.158465147, 0.973439634, -0.980039179, -0.137006208, -0.144057348)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--25, 1.6333333253860474
		tween6 = ts:Create(part6, TweenInfo.new(0.3333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1.00000012, -2.98023224e-08, -0.552338779, -0.828371048, 0.0933995098, -0.142735556, 0.204364359, 0.968432665, -0.82130909, 0.521571398, -0.231116325)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--26, 1.649999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.21047282, -0.361898124, 0.473780155, 0.0211653132, 0.938876927, -0.343601882, 0.901612699, 0.130586952, 0.412361205, 0.432026267, -0.318523496, -0.84373945)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.834191382, 0.350470603, 0.38051182, -0.663641453, 0.530376554, -0.527523339, -0.704853415, -0.679528892, 0.203524068, -0.250523031, 0.506893635, 0.824801266)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--27, 1.75
		tween1 = ts:Create(part1, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.21042204, -0.368071616, 0.473780513, 0.00709312968, 0.937601745, -0.347639263, 0.905382693, 0.141571805, 0.400299698, 0.42453748, -0.317585886, -0.847884238)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.840092242, 0.370140582, 0.335320592, -0.663641572, 0.566407263, -0.488633662, -0.704853594, -0.692237675, 0.154884547, -0.250523031, 0.44720307, 0.858631432)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--28, 1.8166667222976685
		tween2 = ts:Create(part2, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.44983315, 0.1463615, -0.0435955226, 0.0935149938, -0.977597237, 0.188569859, -0.160356998, 0.172137856, 0.971933305, -0.982619226, -0.12112882, -0.140667111)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.13499997615814208)

		if afterframe() then
			return
		end

		--29, 1.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.21039104, -0.371776402, 0.473780334, -0.0994060412, 0.93235755, -0.347603351, 0.934763312, 0.207244441, 0.288561046, 0.341080815, -0.296242058, -0.892134964)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.47034836e-08, 1, 1.49011612e-08, -0.549082875, -0.829743743, 0.100166649, -0.143468872, 0.21164763, 0.96675849, -0.823361874, 0.516459703, -0.235254481)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(-1.05079484, -0.483039737, -0.257942557, 0.282305509, -0.000315999612, -0.959324479, -0.589487374, 0.788873911, -0.173731476, 0.756840885, 0.61455512, 0.222517133)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.43900633, 0.154873341, -0.0425460935, 0.0426455587, -0.974428713, 0.220612779, -0.144282341, 0.212492362, 0.966452241, -0.988617182, -0.0730454549, -0.131531)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.31707084, -0.384060979, -0.70279181, 0.203106374, 0.00614752993, 0.979137361, -0.632222772, 0.764415622, 0.126345053, -0.747691274, -0.644694448, 0.159144297)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.840598285, 0.371825993, 0.331446886, -0.663641512, 0.569365382, -0.485183507, -0.704853296, -0.693165302, 0.150675952, -0.250522554, 0.441978008, 0.861332357)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--30, 2.0166666507720947
		tween3 = ts:Create(part3, TweenInfo.new(0.2999999523162842, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.843632936, 0.381941974, 0.308205396, -0.663641393, 0.586670935, -0.464109063, -0.704853356, -0.698196709, 0.125311643, -0.250522673, 0.410290837, 0.876869202)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.28499995231628417)

		if afterframe() then
			return
		end

		--31, 2.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.13969636, -0.424712837, 0.473780632, -0.0762476325, 0.931864023, -0.354705364, 0.914671063, 0.206990659, 0.347177207, 0.396942586, -0.297967285, -0.868131638)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1, -4.47034836e-08, -0.531625211, -0.835920095, 0.13642703, -0.147862539, 0.250198543, 0.956837237, -0.833973289, 0.488506436, -0.256613106)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.914778709, -0.73316133, -0.144175887, 0.126037329, 0.192648873, -0.973140001, -0.634165645, 0.769994617, 0.0702983141, 0.762855411, 0.608271658, 0.219219714)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.3812623, 0.20026952, -0.036949873, -0.2160106, -0.894826293, 0.390673161, -0.0252304822, 0.405101418, 0.913923681, -0.97606504, 0.187560216, -0.110083088)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20999265, 0.381960869, -0.748271763, 0.151345089, -0.0901394486, 0.984362483, -0.0726881623, 0.992122531, 0.102025792, -0.985804856, -0.0869925171, 0.143600792)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.847112834, 0.390622139, 0.287121713, -0.668843865, 0.582423329, -0.461986303, -0.698474526, -0.705108345, 0.122295685, -0.254522681, 0.404482394, 0.878414869)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--32, 2.3499999046325684
		tween3 = ts:Create(part3, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.85755223, 0.416661978, 0.223869935, -0.684218109, 0.569346428, -0.455730706, -0.678956389, -0.725415826, 0.113096416, -0.266203433, 0.386804074, 0.882903755)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--33, 2.450000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492377, -0.48082763, 0.473781526, -0.148790509, 0.923726797, -0.352973491, 0.914387822, 0.264425755, 0.30655238, 0.376505852, -0.277142435, -0.8839885)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.865972638, 0.432462335, 0.182767212, -0.666170955, 0.551359773, -0.502214074, -0.701695859, -0.691501617, 0.17160666, -0.252664924, 0.466720909, 0.847544849)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166655540466309)

		if afterframe() then
			return
		end

		--34, 2.566666603088379
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.867176235, 0.434718966, 0.176895738, -0.663641274, 0.548431754, -0.508727372, -0.704853177, -0.686205685, 0.179728255, -0.250522107, 0.477852106, 0.841958702)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--35, 2.5833332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492282, -0.475069165, 0.473781168, -0.375830144, 0.846433401, -0.377229512, 0.831228852, 0.487867951, 0.26654017, 0.40964669, -0.213390231, -0.886935472)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 1, -2.98023224e-08, -0.988618255, -0.0783997178, 0.12840344, 0.102425516, 0.27439782, 0.956145942, -0.110195234, 0.958415091, -0.263244539)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14877689, -0.216411114, -1.21491444, 0.194379628, -0.0559346601, -0.979330301, 0.562698364, 0.824133217, 0.064615041, 0.80348438, -0.563627481, 0.191669017)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18985713, 0.440954834, 0.858466864, -0.417009354, -0.746022642, 0.519185364, 0.139231473, 0.512048006, 0.84759748, -0.898174763, 0.425742835, -0.109658971)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19370401, -0.120901465, -0.498099566, 0.0505344868, -0.146064863, 0.987983406, 0.587350011, 0.804436982, 0.0888866782, -0.807753801, 0.5758003, 0.126443043)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03478956, 0.284505665, 0.0627695322, -0.6351071, -0.0304478202, -0.771823585, -0.769716382, -0.0586454943, 0.635686636, -0.0646193326, 0.997814476, 0.0138100199)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--36, 2.6500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492401, -0.463553756, 0.473781824, -0.922018826, 0.10648299, -0.372213155, 0.0416295081, 0.983125806, 0.17813161, 0.384900242, 0.148745671, -0.9108935)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--37, 2.700000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492449, -0.45779559, 0.47378239, -0.861595035, -0.428305566, -0.272412628, -0.493027687, 0.833795488, 0.248412982, 0.120739691, 0.348338246, -0.929560661)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11758709e-08, 1, 2.98023224e-08, -0.935193777, 0.346731633, 0.0720415115, 0.151722148, 0.208472371, 0.966188252, 0.319989383, 0.914503396, -0.247568861)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25987911, -0.213659942, -1.10302591, 0.402619243, -0.0557399057, -0.91366905, 0.516313016, 0.838037372, 0.176393628, 0.755856454, -0.542758584, 0.366188854)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.588518023, 0.513321459, 0.758121669, 0.0124597251, -0.828985453, 0.559131861, -0.124123439, 0.553568065, 0.823502541, -0.992188632, -0.0796622038, -0.0959991813)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19151282, -0.159830749, -0.47431311, -0.053938929, 0.38892284, 0.919689953, 0.33445105, 0.874868572, -0.350353271, -0.940868318, 0.288693517, -0.177265078)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65776509, 0.156545043, -0.939727187, -0.491884768, 0.451594561, -0.744387984, -0.811261892, 0.0726560876, 0.580152512, 0.31607762, 0.88926053, 0.330621988)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--38, 2.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492401, -0.45203799, 0.47378248, -0.732674122, 0.619888783, -0.280938685, 0.568557739, 0.78438282, 0.247963563, 0.374073178, 0.0219466612, -0.927139699)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 1, 5.96046448e-08, -0.890265346, -0.450261593, 0.0684995949, -0.0533812121, 0.252524436, 0.966117024, -0.452303112, 0.856443882, -0.248849243)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01023769, 0.00653707981, -1.21707129, -0.132312983, -0.0528435335, -0.989798427, 0.511926532, 0.851446748, -0.113889873, 0.848778725, -0.521773219, -0.0856047869)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05365443, 0.290020645, -1.10303438, -0.604012728, -0.612465978, 0.509955049, 0.574620366, 0.108710468, 0.811168551, -0.552250266, 0.782986701, 0.286272705)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18932152, -0.198760331, -0.450526416, -0.0477133095, -0.142978162, 0.988575041, 0.384234846, 0.910920382, 0.150291905, -0.92200166, 0.387015909, 0.0114741921)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.67066437, 0.173214227, -0.519616067, -0.479523182, 0.0625970736, -0.875293434, -0.842938483, 0.244431943, 0.479278445, 0.243951082, 0.967643738, -0.0644453168)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--39, 2.7833333015441895
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.709370255, 0.223214507, 0.740711212, -0.364844322, 0.573115647, -0.733775854, -0.785549164, 0.23357828, 0.573022902, 0.499802589, 0.785480618, 0.364991128)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--40, 2.8333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492449, -0.45779559, 0.47378239, -0.861595035, -0.428305566, -0.272412628, -0.493027687, 0.833795488, 0.248412982, 0.120739691, 0.348338246, -0.929560661)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-08, 1, 0, -0.891208827, 0.448705971, 0.0664079562, 0.170421347, 0.19555372, 0.965772033, 0.42036128, 0.872021675, -0.250748187)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00986826, -0.0298443437, -1.17307997, 0.389107168, -0.0949074328, -0.916290462, 0.171258524, 0.98479104, -0.0292768218, 0.905133247, -0.145530716, 0.399442881)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.898611188, 0.364453614, -0.482646585, -0.753695846, 0.0809224918, 0.652222574, 0.657154202, 0.107188709, 0.746096134, -0.00953507423, 0.990940213, -0.133966208)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.93817395, 0.29968679, -0.442338288, -0.035282582, -0.140609056, 0.989436805, 0.380841851, 0.913454533, 0.143391714, -0.923967183, 0.381877542, 0.0213210285)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65776509, 0.156545043, -0.939727187, -0.491884768, 0.451594561, -0.744387984, -0.811261892, 0.0726560876, 0.580152512, 0.31607762, 0.88926053, 0.330621988)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--41, 2.8499999046325684
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.588518023, 0.513321459, 0.758121669, 0.0124597251, -0.828985453, 0.559131861, -0.124123439, 0.553568065, 0.823502541, -0.992188632, -0.0796622038, -0.0959991813)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--42, 2.883333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492401, -0.45203799, 0.47378248, -0.732674122, 0.619888783, -0.280938685, 0.568557739, 0.78438282, 0.247963563, 0.374073178, 0.0219466612, -0.927139699)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 1, -2.98023224e-08, -0.849397182, -0.524006367, 0.0627851337, -0.080782339, 0.246656924, 0.96573019, -0.521535218, 0.815216541, -0.251840055)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.780774772, 0.488236189, -1.1278336, 0.386677504, -0.0905625224, -0.917757571, 0.164357811, 0.986002266, -0.0280481912, 0.907450855, -0.139995068, 0.396149725)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05365443, 0.290020645, -1.10303438, -0.604012728, -0.612465978, 0.509955049, 0.574620366, 0.108710468, 0.811168551, -0.552250266, 0.782986701, 0.286272705)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.926625609, -0.369650841, -0.24295491, -0.0187143385, -0.137338609, 0.990347505, 0.376169801, 0.916775286, 0.134244293, -0.926362932, 0.375050962, 0.0345045775)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.670665145, 0.17321676, -0.519614339, -0.479111373, 0.0477823392, -0.876452208, -0.844315946, 0.247891039, 0.475058675, 0.239964068, 0.967608631, -0.0784240961)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--43, 2.9000000953674316
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.709370255, 0.223214507, 0.740711212, -0.364844322, 0.573115647, -0.733775854, -0.785549164, 0.23357828, 0.573022902, 0.499802589, 0.785480618, 0.364991128)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--44, 2.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492449, -0.45779559, 0.47378239, -0.861595035, -0.428305566, -0.272412628, -0.493027687, 0.833795488, 0.248412982, 0.120739691, 0.348338246, -0.929560661)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1, 2.98023224e-08, -0.907072127, 0.416567266, 0.0607619956, 0.159529686, 0.206566781, 0.965339661, 0.389577508, 0.885325789, -0.253825784)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.789428711, 0.429489493, -1.08331299, 0.384832561, 0.163175359, -0.908447862, 0.159179613, 0.957767367, 0.239465043, 0.909156501, -0.236760378, 0.342605889)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.898609161, 0.36445415, -0.482643843, -0.750888288, -0.15152818, 0.64281106, 0.616664767, 0.187553108, 0.764558017, -0.23641333, 0.970496297, -0.0473893322)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.902362406, -0.647587419, -0.136935115, -0.0597219691, -0.121015057, 0.990852714, 0.709308207, 0.693285882, 0.127424911, -0.702364445, 0.71042949, 0.0444327444)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65776509, 0.156545043, -0.939727187, -0.491884768, 0.451594561, -0.744387984, -0.811261892, 0.0726560876, 0.580152512, 0.31607762, 0.88926053, 0.330621988)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--45, 2.9666666984558105
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.588518023, 0.513321459, 0.758121669, 0.0124597251, -0.828985453, 0.559131861, -0.124123439, 0.553568065, 0.823502541, -0.992188632, -0.0796622038, -0.0959991813)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--46, 3
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.05492401, -0.450835168, 0.473782003, -0.684550643, -0.698695838, -0.207881287, -0.683532476, 0.516130745, 0.516132295, -0.253325522, 0.49541226, -0.83089906)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.23634595e-08, 0.99999994, 2.98023224e-08, -0.997077346, 0.0630095601, 0.0432030633, 0.0681556687, 0.478114188, 0.875649333, 0.0345182791, 0.876034617, -0.481011212)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.5499999523162842, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.871932626, -0.521706998, -0.480352938, 0.369414598, -0.0389631651, -0.928447485, 0.336926579, 0.936751604, 0.0947460979, 0.866033196, -0.347819239, 0.35917747)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.865085185, 0.642178416, 0.358035415, 0.0657484382, -0.459584862, 0.885696709, -0.167070925, 0.870016932, 0.463850915, -0.983749986, -0.178471774, -0.0195811093)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.945559204, -0.895381927, -0.185780525, 0.0250121653, -0.126187161, 0.991691053, 0.252229601, 0.960703552, 0.115882508, -0.967344224, 0.247235298, 0.0558574051)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.05794156, 0.288329333, -0.469039083, -0.673457086, -0.401909292, -0.62042284, -0.520198345, -0.338642746, 0.784037709, -0.525213659, 0.850758791, 0.0189887583)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--47, 3.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.0549233, -0.354837954, 0.47378391, -0.61812067, -0.778841317, -0.106457055, -0.494413733, 0.279904366, 0.822926939, -0.611131608, 0.561301887, -0.558084667)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 0.99999994, 2.98023224e-08, -0.720147729, 0.693692088, -0.0133724809, 0.313565314, 0.342595994, 0.885609806, 0.618921995, 0.633576632, -0.464237332)}) tween6:Play() tablesorting(part6, tween6)
		tween4 = ts:Create(part4, TweenInfo.new(0.4833333492279053, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998610854, -0.94767344, 0.103456482, 0.154933706, -0.0609059297, 0.986045599, 0.0284904391, 0.997958004, 0.0571651533, -0.987513959, 0.0192360878, 0.156352594)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.40629673, 0.221515238, -0.115966439, -0.522304833, -0.428861827, -0.737071633, -0.782796502, 0.583986759, 0.214916348, 0.338270634, 0.68922919, -0.640730619)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166674613952635)

		if afterframe() then
			return
		end

		--48, 3.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.79121554, -0.262219518, 0.350118339, -0.671391129, -0.737207949, -0.075885281, -0.314223111, 0.1904338, 0.930053234, -0.671191454, 0.648274302, -0.359503329)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.743561029, 0.438888431, 0.137737185, -0.720795453, -0.272522688, 0.637326896, 0.472578704, 0.479424864, 0.739474118, -0.507074058, 0.834196508, -0.216778606)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.9999997615814209, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02539361, 0.482594848, -0.0072479248, 0.17802757, 0.025667483, -0.983690679, -0.0593013167, 0.998122752, 0.0153117673, 0.982237041, 0.0556082428, 0.179215446)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--49, 3.366666555404663
		tween2 = ts:Create(part2, TweenInfo.new(0.8666665554046631, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99156785, 0.508886218, 0.0223772191, 0.227517366, -0.0287387054, 0.973349929, -0.00777807832, 0.999478817, 0.0313282758, -0.973742962, -0.0146985501, 0.227175251)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--50, 3.433333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63443673, -0.207156122, 0.276596725, -0.795692205, -0.599011183, -0.0897761136, -0.218915328, 0.146207184, 0.964727819, -0.564756751, 0.787279665, -0.247468635)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5166666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.70552254e-08, 1.00000036, -3.87430191e-07, -0.996194899, 0.0865557343, 0.0102042686, 0.0573848896, 0.563284278, 0.824268281, 0.0655972809, 0.821717262, -0.56610775)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.10166655540466309)

		if afterframe() then
			return
		end

		--51, 3.549999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.42134011, -0.132312775, 0.176665276, -0.988680661, -0.0612665378, -0.136957183, -0.142118096, 0.0897941887, 0.985768616, -0.0480966903, 0.994074285, -0.0974848717)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.948773146, -0.80868268, -0.192141131, 0.338802457, 0.1841131, -0.922667444, -0.153424978, 0.978351235, 0.138886973, 0.928263724, 0.0945049971, 0.359715343)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11440277, -0.96504271, -0.0493664145, 0.235997453, -0.0471336916, 0.970609903, 0.147925571, 0.98892498, 0.0120559735, -0.960428774, 0.140732855, 0.240356058)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.21833334922790526)

		if afterframe() then
			return
		end

		--52, 3.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18032849, -0.0893602595, 0.119307876, -0.971859157, 0.199014932, -0.126028195, -0.103577942, 0.119485363, 0.987418532, 0.211569503, 0.972685218, -0.0955093801)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.15166674613952635)

		if afterframe() then
			return
		end

		--53, 3.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07082045, -0.0481195003, 0.0642433241, -0.952541351, 0.290555388, -0.0907887295, -0.0550545976, 0.128893718, 0.990129173, 0.299389422, 0.948137224, -0.106780171)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.28333306312561035, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.3038516e-08, 1, -1.49011612e-07, -0.998560548, -0.0486916304, 0.0224999785, -0.00245981943, 0.460599929, 0.887604535, -0.0535823964, 0.886271477, -0.460056603)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.28333306312561035, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.990242481, -0.963558733, -0.0365982428, 0.337814271, 0.0262106881, -0.940847695, -0.0025177151, 0.999633849, 0.026944384, 0.941209376, -0.00673342869, 0.337756515)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.28333306312561035, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13824511, -0.998641729, 0.0254456103, 0.278017104, -0.0510280505, 0.959219813, 0.237037346, 0.971351206, -0.0170287136, -0.930870414, 0.232105181, 0.282147825)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833344459533691)

		if afterframe() then
			return
		end

		--54, 4.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.14999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05267739, -0.0148060024, 0.0197672918, -0.959693491, 0.276946396, -0.0478457436, -0.0118628955, 0.130171448, 0.991420686, 0.280798465, 0.95202744, -0.121639311)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.13499961853027342)

		if afterframe() then
			return
		end

		--55, 4.233333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07639539, -7.30156898e-07, -0.0125706717, -0.964750409, 0.26233086, -0.0209579337, 0.0141266175, 0.131145388, 0.991262674, 0.262787253, 0.956024885, -0.1302284)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1.00000012, -2.98023224e-08, -0.998112202, -0.0565772429, 0.0238993131, -0.00496669393, 0.462204695, 0.88675952, -0.0612167865, 0.884966671, -0.461613059)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.995021462, -0.99721092, -0.0198328942, 0.333960831, -0.0142277293, -0.942479491, 0.0425643772, 0.999093771, -3.7252903e-09, 0.941625476, -0.0401160643, 0.334263682)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000012, 0.49999997, 3.35276127e-08, 0.228838354, -0.0190753881, 0.973277628, 0.00867006183, 0.999808311, 0.0175568555, -0.973425865, 0.00442068279, 0.228959844)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654733, 0.0430484116, 0.287429333, -0.0394868925, 0.95698756, 0.281359971, 0.958548665, -0.0449545905, -0.915544033, 0.282179236, 0.286625028)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.500000119, 5.96046448e-08, 0.217531532, 0.0304524377, -0.97557807, 0.000687117688, 0.999508142, 0.0313526168, 0.976053059, -0.00749051012, 0.217403576)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833368301391602)

		if afterframe() then
			return
		end

		--56, 4.366666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12883461, -1.93715096e-06, -0.0333123803, -0.968685389, 0.248156086, -0.00820488855, 0.0253255237, 0.131624103, 0.990976214, 0.246996686, 0.959736288, -0.133787006)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.16415322e-09, 1, 0, -0.999574721, -0.0168115348, 0.0238326862, 0.01202772, 0.506819606, 0.861968279, -0.0265698843, 0.861888289, -0.506401718)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.98680687, -0.992608428, -0.0525572598, 0.333693445, -0.0195176005, -0.942479432, 0.0583898127, 0.998293877, -7.4505806e-09, 0.940871537, -0.0550312251, 0.334263742)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.49999994, 1.49011612e-08, 0.209400266, -0.0504156314, 0.976529479, 0.0225146264, 0.998653769, 0.046729967, -0.977570772, 0.0122009069, 0.210253477)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654745, 0.0430484414, 0.287598133, -0.0179331079, 0.957583249, 0.320194215, 0.944095075, -0.0784857869, -0.90264225, 0.329185009, 0.277262062)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999999881, 0.50000006, 0, 0.182121828, 0.0304524396, -0.982804239, 0.00182007253, 0.999508142, 0.0313072726, 0.983274281, -0.00749051198, 0.181976855)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.21833311080932616)

		if afterframe() then
			return
		end

		--57, 4.599999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17695367, 1.19954348e-06, -0.0408554077, -0.97238189, 0.233358294, 0.00414832402, 0.0359470434, 0.132178903, 0.990574062, 0.230610341, 0.963365376, -0.136916935)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.32830644e-09, 1.00000012, -8.94069672e-08, -0.999520302, 0.0209792424, 0.0227857642, 0.0304456949, 0.530338407, 0.847239316, 0.00569027802, 0.84752655, -0.530722678)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819604, -0.990934789, -0.0644570515, 0.333575517, -0.0114900433, -0.942653298, 0.0641410351, 0.997885287, 0.0105342362, 0.940538824, -0.0639767498, 0.333607078)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, 0.50000006, 1.11758709e-08, 0.202206105, -0.0596778654, 0.977523088, 0.0274027437, 0.998095572, 0.0552654266, -0.97895956, 0.0156117827, 0.203456357)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385509, -1.00654674, 0.043048799, 0.287878096, -0.0458820164, 0.956567287, 0.334148049, 0.940889001, -0.0554315597, -0.897480547, 0.335592568, 0.286192775)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.99999994, 0.500000119, 0, 0.169184759, 0.035982348, -0.984927237, 0.00223152433, 0.999316752, 0.0368913673, 0.985581815, -0.0084393397, 0.168988824)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.16833339691162108)

		if afterframe() then
			return
		end

		--58, 4.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.21119189, 5.41657209e-06, -0.0408558771, -0.97496134, 0.221979246, 0.0132501647, 0.0436619818, 0.132663071, 0.990199149, 0.218045846, 0.965984464, -0.139033437)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.58793545e-09, 1.00000012, -5.96046448e-08, -0.99858582, 0.0484544188, 0.0218814462, 0.0445883945, 0.539098024, 0.841062129, 0.0289569367, 0.840848267, -0.540495932)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819604, -0.990934968, -0.0644569993, 0.333575457, 0.000238709152, -0.942723274, 0.0641410276, 0.997677028, 0.0229484271, 0.940538883, -0.0681222901, 0.332785189)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, 0.49999994, 1.11758709e-08, 0.20220606, -0.057221394, 0.977669895, 0.0274027437, 0.998231351, 0.0527572706, -0.97895956, 0.0161229819, 0.203416452)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654733, 0.0430485904, 0.287878156, -0.0623086169, 0.955637872, 0.334148109, 0.941702545, -0.0392593667, -0.897480488, 0.330626488, 0.291915834)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.500000119, 0, 0.169184804, 0.0424983501, -0.984667659, 0.00223152153, 0.999050856, 0.0435025357, 0.985581875, -0.00955727324, 0.168929338)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--59, 4.916666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23384726, 8.53091478e-06, -0.035318017, -0.978001475, 0.207958758, 0.0163157601, 0.0453208014, 0.135485619, 0.989742458, 0.203615025, 0.968708873, -0.141929984)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.3038516e-08, 1.00000012, 0, -0.997245312, 0.0712238699, 0.0207096431, 0.0564673766, 0.547956645, 0.834598899, 0.048095379, 0.833469212, -0.550468922)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819544, -0.990934789, -0.0644570291, 0.333575487, 0.0149960816, -0.942604065, 0.06414105, 0.997195482, 0.0385632664, 0.940538824, -0.0733233914, 0.331678092)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 1.49011612e-08, 0.202206045, -0.0585670583, 0.977590203, 0.0274027437, 0.99815768, 0.0541312471, -0.97895956, 0.0158429891, 0.203438446)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385474, -1.00654745, 0.043048352, 0.288022876, -0.0751158074, 0.954672933, 0.339871556, 0.940037668, -0.0285742823, -0.895282149, 0.332696199, 0.296282053)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.500000119, 0, 0.169184744, 0.041718252, -0.984700918, 0.00223152712, 0.999085009, 0.0427110493, 0.985581875, -0.0094234366, 0.168936849)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--60, 5.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.6499996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23355031, 9.05245543e-06, -0.0256262273, -0.980403602, 0.196688533, 0.0110634463, 0.0391949788, 0.139716133, 0.989415705, 0.193060964, 0.970460296, -0.144687414)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.6499996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.58793545e-09, 1.00000012, 5.96046448e-08, -0.996670187, 0.0790532753, 0.0199774466, 0.060560938, 0.553638875, 0.830551922, 0.0545975603, 0.828996181, -0.556582868)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.6499996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819485, -0.990935087, -0.0644570738, 0.333575487, 0.0271357186, -0.942332685, 0.06414105, 0.996616066, 0.0514040887, 0.940538883, -0.0775893778, 0.330706149)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.6499996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 1.49011612e-08, 0.202206075, -0.0637868717, 0.97726351, 0.0274027437, 0.997854412, 0.0594609641, -0.97895962, 0.014756307, 0.203520164)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.6499996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654733, 0.0430482626, 0.28824839, -0.0783834383, 0.954342008, 0.349856913, 0.936361432, -0.028763786, -0.891354561, 0.342174321, 0.297327667)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.6499996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, 0.50000006, 5.96046448e-08, 0.169184744, 0.0327502191, -0.985040128, 0.00223152246, 0.999432623, 0.0336120017, 0.985581934, -0.00788477622, 0.169015631)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.6349996185302734)

		if afterframe() then
			return
		end

		--61, 5.733333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22703016, 8.77678394e-06, -0.0160111114, -0.982247949, 0.187540397, 0.00421146024, 0.0316836685, 0.143732384, 0.989109397, 0.184892595, 0.971683979, -0.1471228)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.67638063e-08, 1, 2.08616257e-07, -0.996455312, 0.081836395, 0.0194887072, 0.0619971529, 0.557786703, 0.827665687, 0.0568626262, 0.825939953, -0.560883045)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819664, -0.990934849, -0.064457044, 0.333575547, 0.0256380588, -0.942374647, 0.0641410351, 0.996696472, 0.0498201475, 0.940538764, -0.0770636871, 0.330829084)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999999881, 0.5, -3.7252903e-09, 0.20220609, -0.0694098473, 0.976880252, 0.0274027437, 0.997495711, 0.0652024895, -0.978959441, 0.0135848671, 0.203601718)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654745, 0.0430482626, 0.288440406, -0.0812461376, 0.954044759, 0.359723151, 0.932597816, -0.0293369051, -0.88735646, 0.351653904, 0.298224926)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, 0.500000179, -2.98023224e-08, 0.169184789, 0.0226648878, -0.985323727, 0.00223152619, 0.999724209, 0.0233793128, 0.985581875, -0.00615419075, 0.169087499)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--62, 5.900000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19135535, 9.14931297e-06, -0.00554946065, -0.984038532, 0.177920371, -0.00352601521, 0.0232168492, 0.148001611, 0.988714635, 0.176434278, 0.972851515, -0.149770051)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.86264515e-08, 1.00000012, -2.98023224e-08, -0.996289134, 0.0839477703, 0.018996615, 0.0630809888, 0.562017083, 0.824716806, 0.0585567094, 0.822854578, -0.565227032)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819604, -0.990934968, -0.0644570589, 0.333575577, 0.0150350202, -0.942603469, 0.0641410351, 0.997193873, 0.0386044681, 0.940538824, -0.0733370855, 0.331675053)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 1.49011612e-08, 0.20220615, -0.0756074786, 0.976420164, 0.0274027735, 0.997061849, 0.0715310499, -0.97895956, 0.0122925639, 0.203683898)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654721, 0.0430484414, 0.288648486, -0.0779194236, 0.954259157, 0.370407462, 0.928161502, -0.0362540185, -0.882881761, 0.363929391, 0.296774387)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.50000006, -2.98023224e-08, 0.169184759, 0.011470627, -0.985517502, 0.00223153085, 0.999925315, 0.0120214242, 0.985581875, -0.00423303992, 0.169146508)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.16833339691162108)

		if afterframe() then
			return
		end

		--63, 6.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16195643, 2.11372972e-05, 0.00576030463, -0.985743165, 0.167818412, -0.0121437581, 0.0137889925, 0.152503818, 0.988206863, 0.167691216, 0.973950505, -0.152643651)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.31322575e-09, 1.00000024, -1.1920929e-07, -0.996176064, 0.0853876844, 0.0185062289, 0.0638083443, 0.566331148, 0.821704209, 0.0596827641, 0.819742799, -0.569613934)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819425, -0.990935206, -0.0644571111, 0.333575547, -0.00467747822, -0.942711711, 0.06414105, 0.997783184, 0.0177453663, 0.940538824, -0.0663859695, 0.333136022)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000012, 0.49999994, 1.86264515e-08, 0.20220615, -0.0823786929, 0.975872219, 0.0274027735, 0.996541679, 0.0784455314, -0.978959501, 0.0108794123, 0.203764245)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654721, 0.0430484116, 0.288985074, -0.0683975443, 0.954887033, 0.381879538, 0.922887325, -0.0494657829, -0.877869964, 0.378946692, 0.292820334)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.99999994, 0.500000238, 0, 0.169184789, -0.000831867568, -0.985583901, 0.00223152898, 0.999997377, -0.00046094181, 0.985581875, -0.00212137029, 0.169186175)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--64, 6.25
		tween1 = ts:Create(part1, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12886834, 1.12652779e-05, 0.0189747214, -0.987400234, 0.156604767, -0.022710437, 0.00228448003, 0.157608464, 0.987499237, 0.158226371, 0.975004971, -0.155980393)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.04890966e-08, 1.00000024, -1.1920929e-07, -0.996175945, 0.0854895562, 0.0180297848, 0.0638083443, 0.570904493, 0.818533301, 0.0596827641, 0.816553533, -0.574176252)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819604, -0.990934968, -0.0644570813, 0.333575577, -0.0267110392, -0.942344844, 0.06414105, 0.997925282, -0.0055815503, 0.940538824, -0.0585811473, 0.334596753)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 3.7252903e-08, 0.20220612, -0.0904276222, 0.975159287, 0.0274027586, 0.995860517, 0.0866651386, -0.97895956, 0.00919781625, 0.20384708)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654721, 0.0430482924, 0.289368272, -0.0428346768, 0.956258893, 0.395205081, 0.915224552, -0.0785942525, -0.871825099, 0.400661051, 0.281765372)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 2.98023224e-08, 0.169184819, -0.0155846579, -0.985460997, 0.00223152526, 0.999878526, -0.0154295582, 0.985581875, 0.000411368906, 0.16919896)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.235)

		if afterframe() then
			return
		end

		--65, 6.5
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12069869, 7.16000795e-06, 0.0261828378, -0.988209963, 0.150610864, -0.0275214836, -0.00307488791, 0.16019614, 0.987080574, 0.153073877, 0.975527406, -0.157844335)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.58793545e-09, 1.00000012, -5.96046448e-08, -0.996644318, 0.0794132128, 0.0198420025, 0.0619733259, 0.573710382, 0.816710413, 0.0534740388, 0.815199316, -0.576706707)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819485, -0.990934968, -0.0644570738, 0.333575517, -0.0414580144, -0.941811323, 0.0641410649, 0.997715712, -0.0212010983, 0.940538883, -0.0533366241, 0.335472643)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000024, 0.499998868, 7.07805157e-08, 0.201900616, -0.0925255567, 0.975025833, 0.0272801816, 0.995672643, 0.0888358802, -0.97902602, 0.00866284966, 0.203551054)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654733, 0.043048203, 0.289743483, -0.0310175717, 0.95660162, 0.402406812, 0.910790741, -0.0923521519, -0.868399382, 0.411701411, 0.27637732)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, 0.500001311, 3.27825546e-07, 0.169704944, -0.0204135068, -0.985283434, 0.00120400265, 0.99978894, -0.0205066316, 0.985494196, 0.00229381025, 0.169693679)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--66, 6.666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12887836, 6.11692667e-06, 0.0312715545, -0.988755226, 0.146586403, -0.0295903254, -0.00554343686, 0.161807805, 0.986806989, 0.149440378, 0.975874424, -0.159175724)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11758709e-08, 1.00000012, -1.49011612e-07, -0.997498453, 0.0664658099, 0.0240686368, 0.0580597296, 0.576100588, 0.815314353, 0.0403245836, 0.814672172, -0.578518331)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819664, -0.990934789, -0.0644570366, 0.333575547, -0.0557193905, -0.941075206, 0.06414105, 0.997280002, -0.0363115929, 0.940538764, -0.0482489243, 0.33624208)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000095, 0.499996424, 8.19563866e-08, 0.20125331, -0.090773046, 0.975324333, 0.027021423, 0.995832443, 0.0871060118, -0.979166448, 0.00882428885, 0.202867389)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654745, 0.0430481136, 0.290068597, -0.0256928727, 0.956660867, 0.40746212, 0.907822073, -0.0991651267, -0.86593008, 0.418567806, 0.273799509)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000036, 0.500003576, 1.07288361e-06, 0.170804411, -0.0192786865, -0.985116303, -0.00097258389, 0.999804854, -0.0197347607, 0.985304475, 0.0043288935, 0.170752287)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.2516668891906738)

		if afterframe() then
			return
		end

		--67, 6.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14008129, 5.51342964e-06, 0.0327293575, -0.988916695, 0.145696715, -0.0285751168, -0.00464127026, 0.16203092, 0.986774921, 0.148399889, 0.975970626, -0.159558877)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.51925802e-09, 1, -5.96046448e-08, -0.998219192, 0.052205652, 0.0288634095, 0.0537490174, 0.577243328, 0.814801395, 0.0258760247, 0.81490171, -0.579021275)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819723, -0.99093461, -0.0644570068, 0.333575517, -0.0644963533, -0.940514565, 0.0641410723, 0.996897817, -0.0456137285, 0.940538824, -0.0451100133, 0.336677581)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000131, 0.499993712, 1.15483999e-07, 0.20054099, -0.0863327235, 0.975873947, 0.0267408043, 0.996220767, 0.0826375335, -0.979320228, 0.00952342153, 0.202091724)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385498, -1.00654733, 0.0430481732, 0.290168583, -0.0278407186, 0.956570506, 0.408906281, 0.907338858, -0.0976308435, -0.86521548, 0.419477135, 0.274665475)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0000006, 0.500006437, 1.84774399e-06, 0.171995759, -0.0134212151, -0.985006213, -0.00337032788, 0.999893308, -0.0142125459, 0.985091925, 0.00576430187, 0.171932146)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.21833311080932616)

		if afterframe() then
			return
		end

		--68, 7.166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.15502751, 4.9546361e-06, 0.0333922729, -0.988995314, 0.145585746, -0.0263261907, -0.00243993755, 0.161869153, 0.986809313, 0.147926748, 0.976013899, -0.15973264)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.25962901e-09, 1, -5.96046448e-08, -0.998808622, 0.0339768454, 0.0350280963, 0.0482321531, 0.578200579, 0.814467907, 0.00741978735, 0.815187037, -0.579150379)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819783, -0.99093473, -0.064456962, 0.333575487, -0.0737015605, -0.939837933, 0.0641410425, 0.996403515, -0.0553719141, 0.940538764, -0.0418115258, 0.337103069)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000191, 0.499990225, 1.56462193e-07, 0.199629188, -0.079930082, 0.976606011, 0.0263882726, 0.996744454, 0.0761842355, -0.979516089, 0.0105623603, 0.201088533)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385486, -1.00654769, 0.0430482626, 0.290212899, -0.0329017341, 0.956396282, 0.409562618, 0.907523274, -0.0930589586, -0.864890158, 0.418711066, 0.276850343)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000095, 0.500009894, 2.77161598e-06, 0.173490152, -0.00460266043, -0.984824777, -0.00644406583, 0.999962389, -0.00580860116, 0.984814584, 0.00735402294, 0.173453897)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.20166669845581053)

		if afterframe() then
			return
		end

		--69, 7.383333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17867875, 4.14997339e-06, 0.033392787, -0.988996923, 0.146287963, -0.0220362376, 0.00185929053, 0.161234707, 0.986914396, 0.147926733, 0.976013958, -0.159732595)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-09, 1, -5.96046448e-08, -0.998989165, 0.00577742793, 0.0445811749, 0.0396870635, 0.579129755, 0.814269066, -0.0211139116, 0.81521517, -0.578773379)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.983819306, -0.990934491, -0.0644570142, 0.333575547, -0.0862141624, -0.938773155, 0.0641410127, 0.995577455, -0.0686396211, 0.940538764, -0.037317425, 0.337630033)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000429, 0.499985039, 1.89989805e-07, 0.198214993, -0.0694015399, 0.977699637, 0.0258567184, 0.997512877, 0.0655657575, -0.979817569, 0.0122838616, 0.199516267)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14385498, -1.00654745, 0.0430482626, 0.29021275, -0.0427024588, 0.956008673, 0.409562439, 0.908429563, -0.0837524682, -0.864890218, 0.415851474, 0.281127185)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000238, 0.500015736, 4.44054604e-06, 0.175737858, 0.0101741049, -0.984385431, -0.0112231784, 0.99990201, 0.0083310362, 0.984373093, 0.00958373398, 0.175834745)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.235)

		if afterframe() then
			return
		end

		--70, 7.633333206176758
		part1.C0 = CFrame.new(1.17867875, 4.14997339e-06, 0.033392787, -0.988996923, 0.146287963, -0.0220362376, 0.00185929053, 0.161234707, 0.986914396, 0.147926733, 0.976013958, -0.159732595)
		part6.C0 = CFrame.new(-3.7252903e-09, 1, -5.96046448e-08, -0.998989165, 0.00577742793, 0.0445811749, 0.0396870635, 0.579129755, 0.814269066, -0.0211139116, 0.81521517, -0.578773379)
		part5.C0 = CFrame.new(-0.983819306, -0.990934491, -0.0644570142, 0.333575547, -0.0862141624, -0.938773155, 0.0641410127, 0.995577455, -0.0686396211, 0.940538764, -0.037317425, 0.337630033)
		part2.C0 = CFrame.new(1.00000429, 0.499985039, 1.89989805e-07, 0.198214993, -0.0694015399, 0.977699637, 0.0258567184, 0.997512877, 0.0655657575, -0.979817569, 0.0122838616, 0.199516267)
		part4.C0 = CFrame.new(1.14385498, -1.00654745, 0.0430482626, 0.29021275, -0.0427024588, 0.956008673, 0.409562439, 0.908429563, -0.0837524682, -0.864890218, 0.415851474, 0.281127185)
		part3.C0 = CFrame.new(-1.00000238, 0.500015736, 4.44054604e-06, 0.175737858, 0.0101741049, -0.984385431, -0.0112231784, 0.99990201, 0.0083310362, 0.984373093, 0.00958373398, 0.175834745)

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
