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
	local animvalue = anims:FindFirstChild("RavageStart")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "RavageStart"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.95503235e-05, -0.271499991, 0.36815834, -0.726480782, -0.683004797, 0.0756981149, -0.161496386, 0.276763022, 0.947272122, -0.667940557, 0.675948858, -0.311366528)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.96046448e-08, 1, -8.94069672e-08, -0.801718891, 0.555942595, -0.219490558, -0.151242673, 0.166580498, 0.974360108, 0.578251004, 0.814358592, -0.0494680107)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.957310319, -1.18283439, 0.2304997, 0.542074084, -0.474043638, -0.693857491, 0.699325919, 0.712305248, 0.059699297, 0.465938538, -0.517594814, 0.717633009)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.2666666805744171, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.204515457, 0.673167944, 0.664359391, 0.683251679, -0.624135435, 0.37897414, 0.664268076, 0.315804899, -0.677506149, 0.303173959, 0.714648485, 0.630367458)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.850619614, -0.880170047, -0.362876534, 0.141398996, 0.290575653, 0.946346223, 0.371530473, 0.870497704, -0.322798699, -0.917590678, 0.397239238, 0.015130043)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.3166666626930237, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.714469075, -0.0976041555, 0.585027874, -0.854358733, 0.23590225, -0.463056862, -0.511781514, -0.227127746, 0.828547716, 0.0902838558, 0.944862664, 0.314778775)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166667014360428)

		if afterframe() then
			return
		end

		--2, 0.06666667014360428
		tween1 = ts:Create(part1, TweenInfo.new(0.10000000149011612, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0628600121, -0.849838018, 0.356669664, -0.625892699, -0.771623313, 0.113384463, -0.272435248, 0.35253492, 0.895265937, -0.730778635, 0.529449582, -0.430867374)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000000149011612, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.783291757, -0.825461268, -0.53174901, 0.148008317, 0.458284259, 0.876395106, 0.744399548, 0.531800508, -0.403805256, -0.651125431, 0.712153971, -0.262435347)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500000149011612)

		if afterframe() then
			return
		end

		--3, 0.1666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.115262508, -0.80413723, 0.347122669, -0.680447817, -0.724218249, 0.111799054, -0.307601899, 0.420756698, 0.853432775, -0.665110528, 0.546326041, -0.509074867)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.783291161, -0.825461149, -0.531748772, 0.0478713214, 0.516924739, 0.854690731, 0.818693638, 0.469899774, -0.3300547, -0.572232842, 0.715529501, -0.400707781)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499999701976776)

		if afterframe() then
			return
		end

		--4, 0.21666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.167637587, -0.744319677, 0.276793003, -0.823809028, -0.550311506, 0.136000335, -0.238936335, 0.554657996, 0.797035873, -0.514050722, 0.62410897, -0.588422835)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.99999994, -8.94069672e-08, -0.916953862, 0.374074161, -0.138801262, -0.194820106, -0.11617291, 0.973935187, 0.34819904, 0.920094132, 0.17940259)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999626398, -1.20840359, 0.150490269, 0.5655545, -0.51285094, -0.645857573, 0.676686704, 0.736227989, 0.00794005394, 0.471426517, -0.441534251, 0.763416052)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.783291161, -0.825461149, -0.531748772, 0.0478713214, 0.516924739, 0.854690731, 0.818693638, 0.469899774, -0.3300547, -0.572232842, 0.715529501, -0.400707781)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--5, 0.2666666805744171
		tween5 = ts:Create(part5, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.982063174, -1.14655924, 0.171356454, 0.645554423, -0.538520038, -0.541531026, 0.584656715, 0.804684162, -0.103245467, 0.491361201, -0.249959558, 0.834316373)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333331942558289, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.409187734, 0.537798882, 0.517484128, 0.340092897, -0.770180583, 0.539590836, 0.919210434, 0.151166409, -0.363593876, 0.198465124, 0.619653761, 0.759368479)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499998211860657)

		if afterframe() then
			return
		end

		--6, 0.3166666626930237
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.167639017, -0.726712227, 0.175496578, -0.930479407, -0.316219687, 0.184968591, -0.0597735159, 0.629183352, 0.774956644, -0.361434937, 0.71002382, -0.604344845)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.839291513, -0.489076018, -0.423662186, -0.144677162, -0.0194268152, 0.989287794, 0.84355247, 0.520170331, 0.13357833, -0.517193556, 0.853841186, -0.0588691309)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.3333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.714460254, -0.0975924134, 0.585020721, -0.700489461, 0.634405971, -0.326869696, -0.428496957, -0.00760900415, 0.90351063, 0.570706487, 0.772963941, 0.277171373)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--7, 0.36666667461395264
		tween5 = ts:Create(part5, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.942143679, -1.08828378, 0.238606721, 0.681938529, -0.527781606, -0.506366074, 0.536540508, 0.831484675, -0.144074321, 0.497075319, -0.173436448, 0.850197196)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--8, 0.4000000059604645
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.170271873, -0.706809044, 0.112250805, -0.964088202, -0.1423347, 0.224220976, 0.0820929483, 0.643203795, 0.76128304, -0.252576292, 0.752349734, -0.608421743)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-08, 1.00000012, 0, -0.943762898, 0.288646817, -0.161234111, -0.212693065, -0.1566796, 0.964475989, 0.253130794, 0.944529235, 0.209261954)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.908910096, -1.03372502, 0.320886493, 0.710976005, -0.512157261, -0.48187995, 0.497071505, 0.850733995, -0.170796424, 0.497426242, -0.118096948, 0.859429717)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--9, 0.46666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.172904372, -0.693948507, 0.0895228386, -0.96680969, -0.0685180798, 0.246138945, 0.14776361, 0.635967255, 0.757438958, -0.208434135, 0.768668413, -0.604736149)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.47034836e-08, 1, -5.96046448e-08, -0.951598227, 0.239892185, -0.192131117, -0.231100231, -0.146362841, 0.961858273, 0.2026214, 0.959703445, 0.194718003)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.18333330750465393, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.94568038, -1.05416906, 0.403550476, 0.676535308, -0.503049493, -0.537811816, 0.550265789, 0.83067435, -0.0847799927, 0.489394695, -0.238583207, 0.838791192)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--10, 0.5
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.220779419, -0.599782944, 0.0667982101, -0.943886578, 0.150980592, 0.293740064, 0.329898447, 0.473162293, 0.816876352, -0.0156542584, 0.867941618, -0.49642083)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1.00000012, -2.98023224e-08, -0.982484818, 0.00073094666, -0.186346218, -0.186050743, -0.0602818429, 0.980689526, -0.0105165131, 0.998181581, 0.0593624413)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.484439135, 0.434740901, 0.49628365, 0.284545898, -0.813568652, 0.507088959, 0.941973388, 0.139007792, -0.3055529, 0.178099141, 0.564608812, 0.805913985)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.857746363, -0.378222108, -0.388043046, -0.152364522, -0.260580063, 0.953353226, 0.636020124, 0.712482631, 0.296390682, -0.756481886, 0.651510596, 0.0571772009)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--11, 0.5666666626930237
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.333888531, -0.396517664, 0.0668096542, -0.781524956, 0.453556389, 0.428376019, 0.481711, 0.00236435235, 0.876328647, 0.396451026, 0.891224623, -0.22033149)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 0.999999881, 0, -0.899223864, -0.437467068, -0.00456500053, -0.0894481316, 0.173629045, 0.980740964, -0.428249359, 0.882313013, -0.1952613)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.599469781, 0.225440979, 0.495740235, 0.28454563, -0.875218511, 0.39118439, 0.941974282, 0.179449201, -0.283695877, 0.17809774, 0.44921118, 0.875495434)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.878429711, -0.253989995, -0.348125517, 0.0890315175, -0.502580583, 0.859933376, -0.0567751527, 0.85939765, 0.508145452, -0.994410396, -0.0940638483, 0.0479787886)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--12, 0.6499999761581421
		tween1 = ts:Create(part1, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.203024864, -0.00637698174, 0.0667376518, -0.0161858872, 0.921977937, 0.386904985, 0.213820845, -0.374811888, 0.902108788, 0.976739049, 0.097329542, -0.191071823)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1.00000012, -8.94069672e-08, -0.496911615, -0.86310339, 0.0901811123, -0.345405936, 0.292044967, 0.89185524, -0.79610014, 0.412023336, -0.443240941)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.93163991, -0.96313262, 0.365604311, 0.715102077, -0.0187509656, -0.698768377, 0.298069954, 0.912383437, 0.280554414, 0.632284164, -0.408907413, 0.658035755)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.898313105, 1.02154517, -0.351136476, -0.177339509, -0.149098247, 0.972792029, 0.588153362, -0.808579206, -0.0167077594, 0.789067745, 0.569186687, 0.231085658)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.997078538, -0.556364, -0.558049917, 0.433551371, -0.301092207, 0.849338472, -0.609465003, 0.596285462, 0.522490025, -0.663767219, -0.744168222, 0.0750155002)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.591687202, 0.249096155, 0.453636467, 0.0449573994, 0.747891605, -0.662298441, -0.428728104, 0.613256633, 0.663407326, 0.902315199, 0.254121959, 0.348212004)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.01833336114883423)

		if afterframe() then
			return
		end

		--13, 0.6833333373069763
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0833525658, -0.441579819, 0.0667468607, 0.0352484025, 0.920508564, 0.389130205, 0.139542311, -0.390090525, 0.910143197, 0.989588678, 0.0222189054, -0.142200246)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1.00000012, -8.94069672e-08, -0.250027061, -0.957250655, 0.145460159, -0.348623782, 0.229158759, 0.908817291, -0.903299451, 0.176517561, -0.391015798)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.903559923, -0.781061351, 0.289711356, 0.513002276, 0.395589828, -0.761799037, -0.202687606, 0.918206453, 0.340317279, 0.834114313, -0.020176664, 0.551222444)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.961133957, 0.423728228, 0.117208511, -0.0232886598, -0.532216609, 0.846287489, 0.870260954, -0.427425742, -0.244852632, 0.492040038, 0.730789542, 0.473121464)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.946375012, -0.756253421, -0.536969125, 0.480929554, -0.315842628, 0.81789422, -0.563231707, 0.603619397, 0.564282477, -0.671922088, -0.732042849, 0.112405777)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.713105142, 0.154567242, 0.263613284, 0.233694643, 0.876194417, -0.421513855, -0.454644144, 0.481677413, 0.749190331, 0.859469712, 0.0165582895, 0.510921419)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--14, 0.75
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0329785347, -0.500210524, 0.0939289331, -0.167728901, 0.933936894, 0.315641373, 0.251123607, -0.269137949, 0.929787755, 0.953312099, 0.235216856, -0.189391688)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.918587863, -0.731389821, 0.285072237, 0.586202741, -0.00263673067, -0.810159743, 0.0786017179, 0.995462358, 0.053633824, 0.806342363, -0.0951206237, 0.583749592)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.874967456, -0.417663515, -0.609520435, 0.314607769, -0.354883701, 0.880385518, -0.291176558, 0.846685946, 0.445351839, -0.903459787, -0.396458954, 0.163040429)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833336114883423)

		if afterframe() then
			return
		end

		--15, 0.7833333611488342
		tween6 = ts:Create(part6, TweenInfo.new(0.2333332896232605, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, -5.96046448e-08, -0.681406617, -0.724708915, 0.102388054, -0.172676578, 0.295125365, 0.939726114, -0.711245179, 0.622654796, -0.326239944)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.678527296, -0.00210738182, 0.321799934, -0.155341029, 0.893418312, -0.421513081, -0.614745855, 0.246579409, 0.749189615, 0.773276985, 0.375504345, 0.510920942)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--16, 0.8333333134651184
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.920142353, 0.333236635, 0.205497265, 0.0985064656, -0.671969533, 0.733998001, 0.919647455, -0.22032249, -0.325125039, 0.380190611, 0.707047105, 0.596271753)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--17, 0.8500000238418579
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.036567688, -0.516961932, 0.106542587, -0.297069937, 0.909760773, 0.289974719, 0.281013191, -0.2069363, 0.937129915, 0.91256839, 0.359879255, -0.194180548)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--18, 0.8833333253860474
		tween3 = ts:Create(part3, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.671383142, -0.0336636305, 0.336156577, -0.266506493, 0.849824071, -0.454723746, -0.636688113, 0.198972896, 0.74500829, 0.723604321, 0.488067806, 0.488044918)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.01833336114883423)

		if afterframe() then
			return
		end

		--19, 0.9166666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0477485657, -0.523243666, 0.113922119, -0.381920457, 0.881825984, 0.276622534, 0.290205896, -0.169743612, 0.941791475, 0.877449155, 0.439966172, -0.191082895)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.941318095, -0.750778973, 0.232362852, 0.516946435, 0.00884351134, -0.855971694, 0.123757213, 0.988669276, 0.0849551857, 0.847024381, -0.149850368, 0.509994149)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.86425662, -0.36687535, -0.620403171, 0.282853961, -0.33724311, 0.897919655, -0.222680509, 0.887482345, 0.403469533, -0.932956696, -0.31407243, 0.175930619)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.667487741, -0.0487261415, 0.350100696, -0.400680542, 0.733415544, -0.549141884, -0.653247595, 0.191578537, 0.732505798, 0.642435551, 0.65222764, 0.402339786)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--20, 0.9333333373069763
		tween2 = ts:Create(part2, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.9044981, 0.316930473, 0.198431239, 0.227204636, -0.656446457, 0.719343901, 0.963051438, 0.0417754054, -0.266057044, 0.144601598, 0.753215253, 0.641683161)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--21, 0.949999988079071
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.061937809, -0.46747148, 0.109758854, -0.605384886, 0.75890553, 0.239941418, 0.268706888, -0.0888901502, 0.959113479, 0.749203384, 0.645105541, -0.150110692)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.870707929, -0.396233082, -0.557307363, 0.217154756, -0.264654607, 0.939574838, -0.11662434, 0.948615134, 0.29415521, -0.969146013, -0.173454836, 0.175131351)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833336114883423)

		if afterframe() then
			return
		end

		--22, 0.9833333492279053
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.670736432, -0.0322322249, 0.349688321, -0.428118944, 0.668946147, -0.607639015, -0.655378819, 0.233140945, 0.718417048, 0.622248471, 0.705802798, 0.338601023)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--23, 1
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.903508067, 0.323859572, 0.180183634, 0.26372838, -0.623948932, 0.735618532, 0.96373868, 0.138278693, -0.228224799, 0.0406805128, 0.769134045, 0.637791693)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--24, 1.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0520682335, -0.318897605, 0.0775227547, -0.832096279, 0.526880682, 0.1732416, 0.188483164, -0.0251373574, 0.981756508, 0.5216223, 0.849567652, -0.0783916935)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.47034836e-08, 1.00000024, -1.1920929e-07, -0.830254555, -0.554258466, 0.0589608848, -0.0997849405, 0.251873493, 0.962602615, -0.548381388, 0.793321013, -0.264425159)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.960068226, -0.808167338, 0.168871403, 0.395313948, 0.0184669942, -0.918360114, 0.116053969, 0.990781784, 0.0698795617, 0.911185026, -0.13420409, 0.389526367)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.921414673, 0.371867001, 0.111504525, 0.334669948, -0.411246479, 0.847863019, 0.826568365, 0.560186386, -0.0545525402, -0.452526569, 0.719074309, 0.527400851)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.911800444, -0.588125348, -0.380181074, 0.143135831, -0.165477142, 0.975770712, -0.0638806671, 0.982322216, 0.175958753, -0.987639904, -0.0875192955, 0.130034924)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.730387568, 0.075283885, 0.289334446, -0.348964244, 0.544443429, -0.762761295, -0.612442315, 0.483573049, 0.625356555, 0.70932281, 0.685375512, 0.164690763)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--25, 1.0833333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0327533484, -0.189117104, 0.0464773178, -0.942415714, 0.316854954, 0.107030474, 0.112611614, -0.000702464953, 0.993640721, 0.314914554, 0.948473811, -0.0350197256)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1.00000012, -5.96046448e-08, -0.938858092, -0.343962669, 0.015388459, -0.0462197065, 0.170196354, 0.984326124, -0.341190547, 0.923430443, -0.175687492)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.976828277, -0.884554625, 0.0999891311, 0.239989147, 0.0186430514, -0.970596135, 0.0762598515, 0.996363938, 0.0379940271, 0.967775464, -0.0831360817, 0.237694547)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.95124507, 0.42309171, 0.0632295012, 0.262826085, -0.208293349, 0.942091048, 0.543198109, 0.838918388, 0.0339398682, -0.797406852, 0.502822042, 0.333634347)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.947694838, -0.755744934, -0.225459516, 0.0836052895, -0.0958269835, 0.991880298, -0.0364263505, 0.994405985, 0.0991412997, -0.995833576, -0.0444197059, 0.079647243)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.814991057, 0.211816967, 0.199422777, -0.210665941, 0.404875875, -0.889772058, -0.481751561, 0.748999059, 0.454880059, 0.850609064, 0.524477959, 0.0372614115)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--26, 1.1333333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, -1.1920929e-06, 4.76837158e-07, -0.99999994, -7.4505806e-09, -2.70083547e-08, 2.70083547e-08, -7.82310963e-08, 1.00000191, 7.4505806e-09, 1.00000012, -7.82310963e-08)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14087015e-08, 1, -8.94069672e-08, -1.00000095, 2.60770321e-08, -1.49011612e-08, 1.49011612e-08, 2.68220901e-07, 1.00000048, -2.60770321e-08, 1.00000048, 2.68220901e-07)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000024, -1.00000024, 2.08616257e-07, 8.94069672e-08, -7.4505806e-09, -0.999999523, -2.08616257e-07, 1.00000012, 7.4505806e-09, 0.999999881, -2.08616257e-07, -8.94069672e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999999881, 0.500000119, 2.98023224e-07, -2.79396772e-09, 6.70552254e-08, 0.999999642, 1.63912773e-07, 1.00000012, 6.70552254e-08, -0.999999762, -1.63912773e-07, 2.79396772e-09)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000012, -0.999999523, -3.57627869e-07, -1.78813934e-07, -5.96046448e-08, 0.999999523, 2.08616257e-07, 0.999999642, -5.96046448e-08, -1.00000072, -2.08616257e-07, 1.78813934e-07)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999999523, 0.499999583, -1.78813934e-07, -2.08616257e-07, -1.34110451e-07, -0.999999344, 2.98023224e-07, 1.0000006, 1.34110451e-07, 1.00000024, 2.98023224e-07, 2.08616257e-07)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--27, 1.2000000476837158
		part1.C0 = CFrame.new(0, -1.1920929e-06, 4.76837158e-07, -0.99999994, -7.4505806e-09, -2.70083547e-08, 2.70083547e-08, -7.82310963e-08, 1.00000191, 7.4505806e-09, 1.00000012, -7.82310963e-08)
		part6.C0 = CFrame.new(-1.14087015e-08, 1, -8.94069672e-08, -1.00000095, 2.60770321e-08, -1.49011612e-08, 1.49011612e-08, 2.68220901e-07, 1.00000048, -2.60770321e-08, 1.00000048, 2.68220901e-07)
		part5.C0 = CFrame.new(-1.00000024, -1.00000024, 2.08616257e-07, 8.94069672e-08, -7.4505806e-09, -0.999999523, -2.08616257e-07, 1.00000012, 7.4505806e-09, 0.999999881, -2.08616257e-07, -8.94069672e-08)
		part2.C0 = CFrame.new(0.999999881, 0.500000119, 2.98023224e-07, -2.79396772e-09, 6.70552254e-08, 0.999999642, 1.63912773e-07, 1.00000012, 6.70552254e-08, -0.999999762, -1.63912773e-07, 2.79396772e-09)
		part4.C0 = CFrame.new(1.00000012, -0.999999523, -3.57627869e-07, -1.78813934e-07, -5.96046448e-08, 0.999999523, 2.08616257e-07, 0.999999642, -5.96046448e-08, -1.00000072, -2.08616257e-07, 1.78813934e-07)
		part3.C0 = CFrame.new(-0.999999523, 0.499999583, -1.78813934e-07, -2.08616257e-07, -1.34110451e-07, -0.999999344, 2.98023224e-07, 1.0000006, 1.34110451e-07, 1.00000024, 2.98023224e-07, 2.08616257e-07)

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
animation(char)
