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
	local animvalue = anims:FindFirstChild("bad")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "bad"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333507180214, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.202992618, -0.302029371, 1.73530912, -0.720249116, 0.645968497, 0.252914995, 0.411931008, 0.104905047, 0.905156314, 0.558170497, 0.756121576, -0.341652274)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333333507180214, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.41561031e-07, 1.00000024, -5.96046448e-08, -0.732012093, -0.655199826, 0.186739504, -0.437522769, 0.662197471, 0.608332574, -0.522237778, 0.363603741, -0.771401286)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333333507180214, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.973726749, -1.47495615, 0.103320062, 0.327071458, -0.688466311, -0.647332788, -0.121378392, 0.648729324, -0.751279294, 0.937172651, 0.324293882, 0.128616363)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333333507180214, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.914456367, 0.367100805, 0.0543604195, -0.757177949, -0.553197265, 0.347362071, 0.538674593, -0.228015989, 0.81107533, -0.369479597, 0.801239729, 0.470640123)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333333507180214, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.853901863, -0.241794705, -0.521561861, 0.493982583, -0.263623714, 0.828543365, -0.646539271, 0.525777936, 0.552761316, -0.581350863, -0.80874002, 0.0892817527)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333333507180214, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.551805317, 0.273512304, 0.399585009, 0.258002639, 0.703418374, -0.662299156, -0.234392524, 0.710599422, 0.663407862, 0.937281489, -0.015922755, 0.348212153)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.01833333507180214)

		if afterframe() then
			return
		end

		--2, 0.03333333507180214
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333320915699, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.203013211, -0.474737227, 2.58335876, -0.949740767, 0.188690364, 0.24977684, 0.308040559, 0.421339214, 0.852985561, 0.0557093769, 0.88705653, -0.458287299)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666667088866234, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.21540642e-08, 1.00000012, -8.94069672e-08, -0.988505721, 0.0139120109, 0.150541887, 0.114986971, 0.715674758, 0.688903272, -0.0981549919, 0.698295176, -0.709048271)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667088866234, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.916301668, -1.07594728, 0.330152035, 0.46789065, -0.357542843, -0.808233142, 0.0297544003, 0.920366824, -0.389923334, 0.883285165, 0.158393323, 0.441269457)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0833333320915699, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.66628468, 0.325568199, 0.103450626, -0.508530498, -0.824167848, 0.24928771, 0.750312448, -0.282123864, 0.597861052, -0.422407568, 0.491074324, 0.761851788)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667088866234, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.611673355, 0.221046686, -0.703584313, 0.148428977, -0.437870085, 0.886701226, -0.293687046, 0.836663842, 0.462322325, -0.944307864, -0.329034537, -0.00441193581)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.3499999903142452, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.687895477, 0.538438976, -0.0256052427, 0.0321955979, 0.699428558, -0.713979602, -0.458023399, 0.645251572, 0.611447155, 0.888358176, 0.30733344, 0.341128588)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.0683333320915699)

		if afterframe() then
			return
		end

		--3, 0.11666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333879709244, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.203033566, -0.511767745, 2.80443215, -0.967101932, 0.0640703589, 0.246188626, 0.245451257, 0.48929134, 0.836867809, -0.066839546, 0.869763732, -0.488920778)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.1666666641831398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.633046091, 0.296307445, 0.102599978, 0.1261895, -0.991752148, -0.0224496126, 0.948498309, 0.113995433, 0.295560807, -0.290563822, -0.0585899949, 0.955060244)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.01833333879709244)

		if afterframe() then
			return
		end

		--4, 0.15000000596046448
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.203046128, -0.54880619, 3.01981831, -0.967048705, -0.0618018284, 0.246976301, 0.174087629, 0.547330856, 0.818610013, -0.185769349, 0.834631324, -0.518536687)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 0.99999994, 5.96046448e-08, -0.914241612, 0.383723378, 0.13007158, 0.307251424, 0.447327703, 0.83993721, 0.264118969, 0.807870209, -0.526865125)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.3333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.942467928, -1.02236319, 0.230698034, 0.662636101, -0.341114521, -0.666748464, 0.466661513, 0.884363711, 0.0113345385, 0.585781336, -0.318657011, 0.745196462)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333331942558289, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.701004624, -0.102309406, -0.783370972, -0.292583734, -0.167122364, 0.941522598, 0.452920288, 0.842939854, 0.290371358, -0.84217453, 0.511392653, -0.170937389)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--5, 0.18333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.202993482, -0.548930645, 3.5620811, -0.968035579, -0.191482037, 0.161993474, 0.0101138651, 0.615546525, 0.78803581, -0.250609219, 0.764485002, -0.593934298)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--6, 0.28333333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.203068316, -0.503453851, 4.1522851, -0.964923501, -0.230780974, 0.125151366, -0.0152668729, 0.52523005, 0.850823402, -0.262087107, 0.819068789, -0.510330081)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.67638063e-08, 1.00000024, -2.90572643e-07, -0.949826181, 0.312590957, -0.0108265281, 0.00214234344, 0.0411152542, 0.999152184, 0.312770844, 0.948997557, -0.0397222564)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.976932883, 0.31593281, 0.022698462, 0.641514719, -0.754634321, -0.137811244, 0.759640038, 0.599907041, 0.251124889, -0.106832772, -0.265786737, 0.958095372)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--7, 0.38333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.211705208, -0.490721941, 4.35221481, -0.967890322, -0.229768962, 0.101953998, -0.0288180411, 0.504339278, 0.863024592, -0.249715656, 0.83237499, -0.494766593)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.73928988, -0.240890503, -0.817565799, -0.366689622, -0.0424264222, 0.929375589, 0.544752538, 0.800009489, 0.251455545, -0.754177451, 0.598485649, -0.270243585)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.597384036, 0.341927171, 0.316708624, -0.316560596, 0.722374201, -0.614790976, -0.628333688, 0.325855672, 0.706411123, 0.710625291, 0.609915137, 0.350738704)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--8, 0.4000000059604645
		tween6 = ts:Create(part6, TweenInfo.new(0.11666664481163025, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.35276127e-08, 1, -5.68106771e-08, -0.981101871, 0.183245972, -0.0621292591, -0.0640500784, -0.00457646139, 0.997936189, 0.182583466, 0.983056486, 0.0162268914)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--9, 0.4166666567325592
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.228974581, -0.465211987, 4.56502104, -0.972541511, -0.226009309, 0.0555225685, -0.056801416, 0.461867392, 0.88512826, -0.225691289, 0.857670248, -0.462022901)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333335518836975, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17152488, 0.329013109, -0.326408744, 0.63405025, -0.74427259, 0.209853321, 0.583249211, 0.638466239, 0.502176881, -0.507740974, -0.196008682, 0.838916063)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--10, 0.4833333194255829
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.287276208, -0.456614375, 4.57049179, -0.97668767, -0.21283859, 0.0279449802, -0.0734145045, 0.453509867, 0.888222456, -0.20172134, 0.86546433, -0.458562911)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666669249534607, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.930586815, -1.08824587, 0.257019103, 0.619395792, -0.320023656, -0.716891766, 0.44370085, 0.896020889, -0.0166292936, 0.6476717, -0.307785541, 0.696986318)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666669249534607, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.777356982, -0.297443926, -0.739270687, -0.356823325, -0.0790114403, 0.930824518, 0.533671021, 0.800575256, 0.272533506, -0.766728342, 0.59400034, -0.243497819)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--11, 0.5166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.345544249, -0.447954416, 4.54311848, -0.979932666, -0.199328363, 0.000410947949, -0.0902163982, 0.445355982, 0.8907969, -0.177744091, 0.872883916, -0.454401582)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.60770321e-08, 1.00000024, -6.14672899e-08, -0.998877168, 0.0305916369, -0.0361743942, -0.0347698033, 0.0452628806, 0.998369873, 0.0321791247, 0.998506606, -0.044148393)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.01833336114883423)

		if afterframe() then
			return
		end

		--12, 0.550000011920929
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.400266588, -0.492364526, 4.63230419, -0.989542246, -0.140329733, -0.0333722048, -0.0965166688, 0.472226053, 0.876177549, -0.107194543, 0.870235682, -0.480831772)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.948108256, -1.03617549, 0.0185642708, 0.536894262, -0.29103449, -0.791860938, 0.417485416, 0.907285213, -0.050394997, 0.733109832, -0.303533822, 0.608619094)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.857941628, 0.298957556, -0.424640149, 0.313366115, -0.704297125, 0.636998653, 0.562606573, 0.678080201, 0.472949326, -0.765033007, 0.210173368, 0.608729541)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.8154248, -0.353997469, -0.660976291, -0.352064371, -0.0798002854, 0.932567716, 0.600394905, 0.745105147, 0.290421009, -0.718036652, 0.662155807, -0.214413315)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.597390652, 0.341950417, 0.316735327, 0.0013923347, 0.846309364, -0.53269279, -0.241682947, 0.517186463, 0.821041703, 0.970355511, 0.127599448, 0.205258727)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--13, 0.6166666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.397648633, -0.532061458, 4.59617662, -0.993549645, -0.106418751, -0.0391690657, -0.087320365, 0.497602761, 0.862998605, -0.0723486021, 0.860852182, -0.503685534)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.7273826, 0.36135149, -0.467254132, -0.185149297, -0.57041806, 0.800214291, 0.806312263, 0.377310216, 0.455518872, -0.561765254, 0.729561627, 0.390076399)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.834458947, -0.382273793, -0.621829748, -0.347550601, -0.0831714571, 0.933965206, 0.625671744, 0.721310973, 0.297061384, -0.698386431, 0.687599599, -0.198654085)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--14, 0.6499999761581421
		tween6 = ts:Create(part6, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.86264515e-08, 1.00000012, -1.78813934e-07, -0.992239714, -0.093874298, 0.0815357566, 0.0620501265, 0.194420382, 0.978953779, -0.107750937, 0.976415932, -0.187086865)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--15, 0.6666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.396772504, -0.569008827, 4.55210781, -0.994663775, -0.0941351205, -0.0422205776, -0.0853640288, 0.521104515, 0.849213243, -0.0579394549, 0.848285735, -0.526359499)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.967671752, -0.943420887, -0.0173139684, 0.536894262, -0.285042167, -0.794037461, 0.417485565, 0.90763998, -0.0435370728, 0.73311007, -0.308124393, 0.606307685)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.857450187, -0.258810103, -0.507105887, -0.346803308, -0.0734638423, 0.935056627, 0.660389781, 0.68880713, 0.299049079, -0.666042864, 0.721212983, -0.190366179)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--16, 0.699999988079071
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.396327198, -0.587494731, 4.47635841, -0.995152295, -0.0880192891, -0.0438684896, -0.0842383876, 0.532707393, 0.842096627, -0.0507516786, 0.841709852, -0.537539661)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.2218399, -0.464058518, -0.238482326, 0.502221346, -0.332510442, -0.798254728, 0.518426478, 0.854602337, -0.0298142731, 0.692103863, -0.398863047, 0.601581693)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--17, 0.7166666388511658
		tween1 = ts:Create(part1, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395011008, -0.642938495, 4.45524216, -0.996342957, -0.069789201, -0.0492970496, -0.080273971, 0.566897869, 0.819867611, -0.0292715095, 0.82082659, -0.570426941)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333338499069214, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.738887072, 0.587181211, -0.468804896, -0.579480112, 0.261341155, 0.771952152, 0.468660861, -0.668056846, 0.577979684, 0.666755378, 0.696709514, 0.26464498)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--18, 0.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395033121, -0.761458874, 4.2252121, -0.996310055, -0.0656075701, -0.0553349145, -0.0845143571, 0.637610137, 0.765709221, -0.0149542186, 0.767560482, -0.640802085)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.15000003576278687, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.1583553e-07, 0.999982893, -2.26125121e-06, -0.99866426, -0.0492609888, -0.0156049058, -0.0096256882, -0.119363517, 0.992802978, -0.0507690534, 0.991627932, 0.118729532)}) tween6:Play() tablesorting(part6, tween6)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.850355983, 0.0333689451, -0.403140545, -0.334141374, -0.118401892, 0.935056686, 0.564142585, 0.769618154, 0.299048901, -0.755044878, 0.627430439, -0.190366238)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.30000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65823561, 0.352649391, 0.138481766, -0.614378452, 0.741611362, -0.269359618, -0.541963935, -0.148547769, 0.827170372, 0.573425412, 0.654177785, 0.493191063)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--19, 0.8333333134651184
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49064183, -0.0967411399, -0.42524749, 0.449708581, -0.400688589, -0.798254907, 0.634925365, 0.771998227, -0.0298144594, 0.628197074, -0.493424594, 0.601581752)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--20, 0.8500000238418579
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395027697, -0.811085701, 3.32267308, -0.977455199, -0.19029659, 0.091479972, -0.0855934173, 0.753184855, 0.652216434, -0.193015903, 0.629682362, -0.752492428)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.612162709, 0.243462265, -0.0797187984, -0.615141392, -0.0234369487, 0.788068414, 0.511768758, -0.772228718, 0.376504719, 0.599744916, 0.634912431, 0.487024069)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--21, 0.8999999761581421
		tween4 = ts:Create(part4, TweenInfo.new(0.016666710376739502, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.888333261, -0.111175776, -0.359638751, -0.311442167, -0.169332147, 0.935056388, 0.436484158, 0.848558307, 0.299049079, -0.844088554, 0.501273811, -0.19036606)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--22, 0.9166666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395049691, -0.717314243, 2.17140818, -0.938889623, -0.316790044, 0.134649217, -0.147685468, 0.724068701, 0.673731089, -0.310926616, 0.612673402, -0.726605833)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10757537e-05, 0.999997616, -1.60783529e-05, -0.997691989, 0.0670761168, 0.0105584636, -0.0126581397, -0.336494982, 0.941600144, 0.0667117536, 0.939293325, 0.336567402)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.24999994039535522, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.38542747, 0.239142418, -0.769401431, 0.449708581, -0.400688648, -0.798255086, 0.634925485, 0.771998227, -0.0298143774, 0.628197193, -0.493424594, 0.601581872)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.555845439, -0.019824028, 0.215218857, -0.617665827, -0.24622333, 0.746902347, 0.630123913, -0.723212779, 0.282679737, 0.470567048, 0.645242631, 0.601854742)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332657814026, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04950726, -0.674755096, -0.190234318, -0.131650329, -0.329146981, 0.935056388, -0.205660895, 0.93181181, 0.29904902, -0.969727695, -0.152934626, -0.190366)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--23, 0.9833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395009905, -0.66913873, 0.86736989, -0.935388446, -0.309054792, 0.171853438, -0.107822701, 0.71210295, 0.693746209, -0.336782932, 0.630392432, -0.699415982)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--24, 1
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.21071935e-05, 1.00000477, -1.65700912e-05, -0.984733641, 0.123379014, 0.122789428, 0.0260645598, -0.592944503, 0.804821372, 0.172105387, 0.79573518, 0.580676556)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.510791183, -0.23045373, 0.451169312, -0.622735083, -0.411309123, 0.665601969, 0.673071086, -0.715374708, 0.187657058, 0.398969889, 0.564858139, 0.722328842)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--25, 1.0499999523162842
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0657177, -0.649202228, -0.198281482, -0.0949366689, -0.341550291, 0.935056984, -0.306140423, 0.903796077, 0.29904893, -0.947241545, -0.257867813, -0.190366328)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--26, 1.0666667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395024657, -0.589586258, 0.671910644, -0.946697474, -0.224043518, 0.231448591, 0.0104389414, 0.696792185, 0.71719718, -0.321954936, 0.681384802, -0.657312572)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333323001861572, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.594747663, 0.0889139175, 0.525523424, -0.927985132, 0.28190437, -0.243672669, -0.359851658, -0.508276403, 0.782409132, 0.0967114866, 0.813748717, 0.573116481)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--27, 1.1333333253860474
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.28373504e-05, 1.00000858, -3.27825546e-05, -0.994593978, 0.0374383479, 0.0968583971, 0.0534722656, -0.614927232, 0.786769331, 0.0890164375, 0.787695408, 0.609600604)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.51079154, -0.230453014, 0.451168537, -0.719896615, -0.371758699, 0.586126685, 0.50321424, -0.861169398, 0.0718531609, 0.478042364, 0.346674174, 0.807027102)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--28, 1.1666666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395051628, -0.483755529, 0.437158048, -0.954684615, -0.123979434, 0.270566851, 0.11691872, 0.679782987, 0.724033952, -0.273692012, 0.722858429, -0.634482861)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.472825885, -0.042437017, -0.856565058, -0.629270077, -0.281635582, -0.724363267, -0.752604127, 0.453384459, 0.477526248, 0.193926692, 0.845651209, -0.497260779)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13055217, -1.12532401, 0.147796959, 0.723481774, 0.147366554, 0.674430788, -0.279063761, 0.95600152, 0.0904687941, -0.631425142, -0.253661424, 0.732774377)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--29, 1.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.40759027, -0.56513989, 0.327430189, -0.983193517, 0.178598121, 0.0378572159, 0.144154772, 0.63221693, 0.761262894, 0.11202614, 0.753926039, -0.647337317)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.70552254e-08, 0.99999994, -8.94069672e-08, -0.973653316, -0.0407584906, 0.224361241, 0.187550128, -0.702785492, 0.686234295, 0.129707813, 0.710233331, 0.691913605)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--30, 1.2999999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.432643116, -0.596635103, 0.276923358, -0.596095622, 0.656855047, -0.461748421, -0.000671252608, 0.574683249, 0.818375766, 0.802913249, 0.488140106, -0.342125177)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.08152118e-06, 0.999987841, 6.66081905e-06, -0.631037772, -0.775638402, 0.013350755, -0.0156481452, 0.0299344063, 0.999430895, -0.775595844, 0.630468726, -0.0310266614)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25320196, 1.03495526, -0.601626158, -0.523771763, -0.808583736, 0.268061757, 0.824856997, -0.560005546, -0.0775002837, 0.212781847, 0.180519521, 0.960280538)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07700014, -1.2381109, 0.213351712, 0.680966973, 0.51957947, 0.516065776, -0.500345111, 0.844677329, -0.190207824, -0.534737527, -0.128683984, 0.835165441)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.266864359, -0.189791739, 0.437686801, -0.200429082, 0.891478181, -0.406323612, -0.962089062, -0.100793496, 0.253432751, 0.184974015, 0.441713691, 0.877882242)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333420753479004)

		if afterframe() then
			return
		end

		--31, 1.3333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.308492035, -0.707984149, 0.898619413, -0.735103548, 0.628580034, -0.253988057, 0.150445908, 0.516545117, 0.842939615, 0.661051333, 0.581436455, -0.47428146)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.18333327770233154, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.41100788e-05, 0.999969542, 1.77025795e-05, -0.84390831, -0.530536354, -0.0797021836, -0.019302249, -0.118439496, 0.99277544, -0.536143363, 0.839347959, 0.0897120833)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.460170984, -0.228085041, -0.946377099, -0.536559343, -0.43290168, -0.724363267, -0.843388677, 0.24630487, 0.477526128, -0.0283073783, 0.867140353, -0.497260779)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.958762884, 0.781654716, -0.518363833, -0.759364426, -0.348509192, 0.549459517, 0.6122967, -0.668442845, 0.422228038, 0.220132083, 0.657057524, 0.720983505)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.46149683, -0.862366617, -0.0844611526, 0.680966973, 0.519579709, 0.516065896, -0.500344992, 0.844677448, -0.190207839, -0.534737706, -0.128684074, 0.83516556)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.18333327770233154, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.302563548, -0.0474049449, 0.520588994, 0.0724816024, 0.910852075, -0.406323582, -0.948800147, 0.18855527, 0.253432751, 0.307452977, 0.367150009, 0.877882361)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--32, 1.350000023841858
		--33, 1.3833333253860474
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.973364353, 0.800317109, -0.640758991, -0.784748495, -0.346419305, 0.513968349, 0.587642372, -0.679522872, 0.439232498, 0.197094679, 0.646716654, 0.736825168)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--34, 1.4333332777023315
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.236793429, -0.808644593, 1.02564776, -0.798297584, 0.585595846, -0.140707344, 0.211773843, 0.491648078, 0.844650269, 0.563802123, 0.644484103, -0.516495347)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.460171461, -0.228084743, -0.946377397, -0.536559343, -0.320851445, -0.780487239, -0.843388677, 0.172868297, 0.508737504, -0.0283073783, 0.931221306, -0.363355935)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.952224255, 0.778620481, -0.676556468, -0.802747369, -0.24009487, 0.545849025, 0.544078946, -0.669561923, 0.505633473, 0.244079828, 0.702880859, 0.66811955)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.60229552, -0.623132527, -0.129005194, 0.692395151, 0.48488611, 0.534300923, -0.480481625, 0.86230588, -0.15990603, -0.538267434, -0.14600198, 0.830034375)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--35, 1.5166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.206478789, -0.872188866, 0.945444942, -0.824719608, 0.556231618, -0.102196172, 0.221395507, 0.48382476, 0.846698105, 0.520405293, 0.675662756, -0.522166967)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81272626e-05, 0.999971628, 1.08033419e-06, -0.841390014, -0.529161394, -0.109776795, -0.0184925087, -0.174819618, 0.984426796, -0.54011184, 0.83031702, 0.137305975)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.758747995, -0.206134617, -0.705540299, -0.572493553, -0.234795004, -0.785572588, -0.815125346, 0.266346753, 0.514423788, 0.088450782, 0.934843779, -0.343868524)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.921351075, 0.744482696, -0.630757749, -0.796562493, -0.130257726, 0.590356767, 0.520366371, -0.644813716, 0.559851885, 0.307745099, 0.753158867, 0.58141619)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.69684577, -0.423272133, -0.190694749, 0.733250558, 0.411906242, 0.540998936, -0.491817832, 0.87069267, 0.0036617741, -0.469535977, -0.268756181, 0.84101814)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.30256331, -0.0474030972, 0.520589173, -0.488598466, 0.799414098, -0.34958899, -0.87213397, -0.43570295, 0.222594276, 0.0256274641, 0.41364643, 0.910078943)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--36, 1.5666667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.176159635, -1.02624905, 0.657931924, -0.907721579, 0.41888845, 0.0239593536, 0.266266823, 0.530980766, 0.804463446, 0.324258506, 0.736608386, -0.593518794)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81272626e-05, 0.999971628, 1.08033419e-06, -0.841390014, -0.529161394, -0.109776795, -0.0184925087, -0.174819618, 0.984426796, -0.54011184, 0.83031702, 0.137305975)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.921351075, 0.744482696, -0.630757749, -0.796562493, -0.130257726, 0.590356767, 0.520366371, -0.644813716, 0.559851885, 0.307745099, 0.753158867, 0.58141619)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--37, 1.600000023841858
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.176140279, -0.847428203, 0.450665176, -0.957278848, 0.182294458, 0.224467605, 0.289107203, 0.587701499, 0.755661428, 0.00583299994, 0.78827405, -0.615296841)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81123614e-05, 0.999971628, 1.07288361e-06, -0.993750632, 0.0202149451, -0.109776795, -0.111511312, -0.135901064, 0.984426796, 0.00498136878, 0.990516186, 0.137305975)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.753894508, -0.0568572283, -0.608008146, -0.583470225, 0.0272145867, -0.811679602, -0.430816144, 0.836854517, 0.337748021, 0.688449144, 0.546750069, -0.476554424)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.769343317, -0.00800037384, 0.248161837, -0.796562493, -0.130257726, 0.590356767, 0.520366371, -0.644813716, 0.559851885, 0.307745099, 0.753158867, 0.58141619)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.82091188, -0.426907778, -0.0257176757, 0.952874839, 0.0842389166, 0.291429996, -0.255491912, 0.740803123, 0.621236026, -0.163560435, -0.666418493, 0.727416515)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--38, 1.6333333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0752659589, -0.352398306, 0.111604214, -0.669187784, -0.625440955, 0.401261926, 0.356124401, 0.204008803, 0.911896825, -0.652198493, 0.753129542, 0.0862146467)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.740829349, 0.78195405, -0.900037587, -0.668983042, 0.443504453, -0.596462846, -0.736581206, -0.503062069, 0.45208317, -0.0995577574, 0.741777837, 0.663217843)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--39, 1.649999976158142
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81123614e-05, 0.999971628, 1.08033419e-06, -0.94846791, 0.283819675, -0.140907973, -0.175799102, -0.101343654, 0.979195654, 0.26363489, 0.953507185, 0.146016449)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01670718, -0.969989896, -0.297201097, 0.517885387, -0.0934077948, -0.850335002, 0.0344260931, 0.995491207, -0.0883862078, 0.854756892, 0.0165001899, 0.518765807)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--40, 1.6666666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0753342807, -0.399034262, 0.360991478, -0.596219659, -0.641245127, 0.483039111, 0.351199418, 0.332724392, 0.875187635, -0.721928716, 0.691447139, 0.0268280953)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81123614e-05, 0.999971509, 1.0766089e-06, -0.90384227, 0.389048129, -0.178074837, -0.190802291, 0.00602713227, 0.981609941, 0.382966846, 0.921197772, 0.068783693)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01318526, -1.06202233, -0.00410866737, 0.805946052, -0.136222973, -0.576104224, 0.055433318, 0.986255527, -0.155656114, 0.589388907, 0.093514964, 0.802419662)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.713165402, 0.0471258163, 0.252122074, -0.712855101, -0.37857154, 0.590356767, 0.699508548, -0.444132447, 0.559851885, 0.0502525866, 0.812052965, 0.58141619)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.8031565, -0.419311762, -0.0888616294, 0.931615889, 0.2488105, 0.264930665, -0.352077425, 0.798730373, 0.487929285, -0.0902068019, -0.5478369, 0.831710756)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.923309863, 0.509698987, -0.527893662, -0.586907148, 0.429778636, -0.686172843, -0.806115627, -0.389335155, 0.445643038, -0.0756243169, 0.814684153, 0.574956)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--41, 1.6833332777023315
		--42, 1.7000000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0630518347, -0.6411376, 0.496687651, -0.644603491, -0.581423819, 0.496419877, 0.320484787, 0.384015203, 0.86592257, -0.694100797, 0.717271686, -0.0612000972)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08421922, -0.854603946, -0.0624190569, 0.845376492, -0.0435337685, -0.532394171, -0.0748179555, 0.977198958, -0.198707044, 0.528905571, 0.207814902, 0.82284379)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.66734946, -0.51546663, 0.00901599228, 0.89288938, 0.43834424, 0.102981977, -0.447529316, 0.838669538, 0.310410559, 0.0496976376, -0.323248684, 0.945011258)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.905653358, 0.499716997, -0.499049723, -0.621367216, 0.262575418, -0.738212049, -0.761459827, -0.424366713, 0.489991874, -0.184612811, 0.866583705, 0.463628083)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--43, 1.75
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0336730108, -0.704230189, 0.58285445, -0.7036376, -0.506754935, 0.49808988, 0.301373571, 0.42197001, 0.855052829, -0.643481195, 0.751758456, -0.144191444)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08156955, -0.703032553, -0.140011311, 0.884047449, 0.0286955219, -0.466516733, -0.164615631, 0.953277647, -0.253308862, 0.437450349, 0.300732881, 0.84746629)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.713165522, 0.0471258759, 0.252122045, -0.689121425, -0.420226723, 0.590356886, 0.72464329, -0.401818454, 0.559851825, 0.00195157528, 0.813603938, 0.58141619)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--44, 1.7999999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0292932689, -0.749738872, 0.617320418, -0.745977879, -0.464480221, 0.477257878, 0.280096024, 0.431348503, 0.857604027, -0.604204595, 0.773431659, -0.191677392)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81049109e-05, 0.99997139, 1.06543303e-06, -0.908723712, 0.39482379, -0.135408193, -0.174282104, -0.0641336888, 0.98260498, 0.379271626, 0.916515708, 0.127090529)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11399162, -0.652918935, -0.14672178, 0.890835166, 0.0341726542, -0.453039587, -0.189730793, 0.934034944, -0.30262351, 0.412813336, 0.355543226, 0.83855474)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.707220137, 0.0450166464, 0.258593917, -0.652880609, -0.49099341, 0.576777697, 0.754410565, -0.353230655, 0.55325675, -0.0679097772, 0.796337783, 0.601027906)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.58335531, -0.628732443, -0.0556009561, 0.864455223, 0.497774184, 0.0702735186, -0.48693651, 0.794366539, 0.36314553, 0.124941513, -0.348141789, 0.929078698)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.889669895, 0.491654336, -0.474150449, -0.629790902, 0.179618508, -0.755711973, -0.738549888, -0.439868927, 0.510939837, -0.240639985, 0.879916251, 0.409682631)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--45, 1.850000023841858
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0321236104, -0.748267233, 0.631954372, -0.775144696, -0.438604742, 0.454727054, 0.261746526, 0.432129145, 0.862990856, -0.575012684, 0.787966013, -0.220159411)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13878345, -0.633055568, -0.159088433, 0.895570874, 0.0450179577, -0.442635596, -0.207484916, 0.922322154, -0.325993568, 0.393577069, 0.383790553, 0.835345387)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.700914502, 0.0427795649, 0.265457988, -0.616266727, -0.552820027, 0.560896873, 0.777019501, -0.310805261, 0.547394454, -0.128280938, 0.773168802, 0.621090889)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.87541455, 0.484627575, -0.452147186, -0.63250798, 0.117370978, -0.765609384, -0.72094959, -0.450537801, 0.526543021, -0.283135176, 0.885008395, 0.369587243)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--46, 1.899999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0374980643, -0.727131665, 0.635512948, -0.793571949, -0.424463123, 0.435975492, 0.247711673, 0.429077685, 0.868637621, -0.555771947, 0.79732269, -0.235359505)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15583169, -0.629636288, -0.171604156, 0.898480177, 0.0560104996, -0.435426533, -0.219162941, 0.916621923, -0.334322989, 0.380395919, 0.395811915, 0.835842013)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.695602596, 0.0408951044, 0.271240473, -0.58541584, -0.598831713, 0.546524346, 0.792047262, -0.278544188, 0.543207228, -0.173058569, 0.750875235, 0.637367249)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.864483893, 0.479317904, -0.435373098, -0.632588804, 0.075454548, -0.770803511, -0.708851337, -0.457372904, 0.53697288, -0.312027633, 0.886068106, 0.342814982)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--47, 1.9500000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0426774547, -0.659691274, 0.513074994, -0.858188331, -0.359000266, 0.366921663, 0.218727708, 0.390918612, 0.894058585, -0.464403808, 0.84752661, -0.256958485)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81570649e-05, 0.999971628, 1.08033419e-06, -0.910661697, 0.388194889, -0.141421273, -0.18907316, -0.0872246921, 0.978081405, 0.367350787, 0.917440295, 0.152829424)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14386094, -0.670587063, -0.157156527, 0.856325448, 0.0819970965, -0.50988543, -0.269857526, 0.912846327, -0.30641225, 0.440322101, 0.399985015, 0.803821027)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.686967731, 0.0451164246, 0.252994239, -0.533718586, -0.665794015, 0.521404684, 0.811502457, -0.229756832, 0.537285566, -0.237925112, 0.709880471, 0.662918925)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.48555362, -0.763684154, -0.0132452808, 0.839540839, 0.509397268, 0.188906014, -0.541486561, 0.756176949, 0.367408067, 0.0443102568, -0.41074416, 0.910673261)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.84684056, 0.41443181, -0.293597549, -0.629164219, 0.0657764375, -0.774484336, -0.718723297, -0.428627789, 0.547462702, -0.29595542, 0.901083827, 0.316952169)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--48, 2.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0447858013, -0.604328573, 0.388603508, -0.904322386, -0.296547204, 0.307019323, 0.193739504, 0.355754465, 0.914277732, -0.380349964, 0.886283576, -0.264263839)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81794167e-05, 0.999971628, 1.05053186e-06, -0.911355019, 0.380877793, -0.156090528, -0.207048059, -0.0964346379, 0.973566353, 0.355757296, 0.919582725, 0.166746184)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.12214828, -0.71349144, -0.135558605, 0.805395365, 0.101746775, -0.583940089, -0.310807914, 0.911351204, -0.269884139, 0.504714668, 0.39885661, 0.765621781)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.681368411, 0.0504146814, 0.231443673, -0.498629123, -0.70521301, 0.504027486, 0.821594357, -0.199147403, 0.534156382, -0.276318252, 0.680451989, 0.678699732)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.40455079, -0.875981688, 0.0420343205, 0.807725251, 0.501074791, 0.310651064, -0.587555289, 0.727572024, 0.354143679, -0.0485685468, -0.468575507, 0.882087409)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.83544302, 0.352579355, -0.16140601, -0.625761509, 0.0799750537, -0.775903702, -0.734385371, -0.395636976, 0.551497579, -0.262870133, 0.914918303, 0.306306839)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--49, 2.0833332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0447764881, -0.463149786, 0.0109940991, -0.98294723, -0.10705667, 0.149510384, 0.117417186, 0.260321856, 0.958355725, -0.14151901, 0.959568441, -0.243312269)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.80825591e-05, 0.999971509, 1.05798244e-06, -0.908871651, 0.357591987, -0.214662552, -0.266194046, -0.101122573, 0.958600461, 0.321080625, 0.928386807, 0.187096328)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03692269, -0.846235037, -0.0560177565, 0.608643174, 0.150682062, -0.779000044, -0.395215333, 0.908912778, -0.132975593, 0.68801105, 0.388809681, 0.612758398)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.670829773, 0.0685307086, 0.159976766, -0.432079196, -0.770096242, 0.469317168, 0.835731983, -0.146350697, 0.529276192, -0.338908672, 0.620913446, 0.706829607)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19034457, -1.17404079, 0.230033457, 0.64130789, 0.4127689, 0.646794498, -0.695496678, 0.6687392, 0.26282075, -0.324055076, -0.618394196, 0.715949833)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.8141343, 0.173280716, 0.215397403, -0.607313335, 0.170715287, -0.775904596, -0.784389973, -0.283870965, 0.55149895, -0.126109302, 0.943544805, 0.306307673)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--50, 2.1500000953674316
		--51, 2.1500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.331882089, -0.485919416, 0.0111554116, -0.799334705, 0.526374698, -0.28981632, -0.193004191, 0.231849313, 0.953412533, 0.569045901, 0.818031609, -0.083732605)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.79708004e-05, 0.999971509, 1.05798244e-06, -0.900993884, -0.234779313, -0.364812762, -0.292512774, -0.292246342, 0.910509884, -0.320384204, 0.927076399, 0.194636241)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.775590181, -0.515999973, -0.373538733, 0.173843265, 0.398644596, -0.900474429, -0.632633567, 0.745969117, 0.20810391, 0.754687667, 0.533497512, 0.381884158)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720205545, 1.01761627, -1.05429232, -0.779514134, -0.414847076, 0.469317019, 0.624382019, -0.574468136, 0.529276371, 0.050039798, 0.705612421, 0.706829786)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.699402452, -1.23763156, 0.506628036, 0.645638883, 0.644733191, 0.409227848, -0.760721624, 0.589863479, 0.270861268, -0.0667588711, -0.48619017, 0.871304631)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.368375301, -0.0914820433, 0.933094025, -0.464420915, 0.426949948, -0.775904477, -0.827964008, 0.101618052, 0.551499009, 0.314306796, 0.898549974, 0.30630815)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--52, 2.200000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.531081021, -0.485942543, -0.0463280976, -0.783156991, 0.50809294, -0.35847801, -0.166065454, 0.384658098, 0.907998085, 0.599238813, 0.770635962, -0.216870949)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.80155039e-05, 0.999971509, 1.07288361e-06, -0.946347058, -0.0748018026, -0.314375132, -0.300971478, -0.15018329, 0.941733003, -0.117657304, 0.985824347, 0.119612299)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.775589347, -0.516001821, -0.373552918, 0.11968857, 0.309520006, -0.943326652, -0.725585282, 0.67580533, 0.129674897, 0.677643538, 0.668948889, 0.305475235)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720205903, 1.01761615, -1.05429244, -0.817922771, -0.220881462, 0.531236827, 0.562224686, -0.50280726, 0.656573176, 0.122085847, 0.835701525, 0.535443008)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.699408054, -1.23763156, 0.506627321, 0.701449871, 0.668021858, 0.248420641, -0.707237303, 0.695556343, 0.126566589, -0.0882450119, -0.264474422, 0.960351765)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.326015949, 0.147864997, 0.984274268, -0.34639287, 0.52724272, -0.775904179, -0.778249383, 0.300297171, 0.55149895, 0.523774445, 0.794884324, 0.30630818)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--53, 2.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.362303734, -0.453115135, -0.146287829, -0.956773937, 0.199161723, -0.211938635, -0.170539364, 0.206099391, 0.963555574, 0.235583752, 0.95804888, -0.163225561)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.960277855, -0.475087047, -0.411989868, 0.241371661, 0.52074182, -0.818877637, -0.390977979, 0.824501395, 0.409067273, 0.888187766, 0.221428558, 0.402616978)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.967770994, -1.27480268, 0.292633027, 0.503450513, 0.45410347, 0.735068381, -0.735389829, 0.671824515, 0.0886333436, -0.453593075, -0.585187137, 0.672174513)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--54, 2.25
		--55, 2.2833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.469699323, -0.453108817, -0.21963717, -0.353896439, -0.834689319, 0.421960831, 0.0179963112, 0.444997132, 0.895351291, -0.935111463, 0.32445538, -0.142461449)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.8030405e-05, 0.999971569, 1.06170774e-06, -0.440958619, 0.840668499, -0.314375132, -0.256448716, 0.217653185, 0.941733003, 0.860110104, 0.495886534, 0.119612299)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25469708, -1.0880084, 0.282330096, 0.516150057, 0.251040787, -0.818877578, 0.218039438, 0.886072993, 0.409067363, 0.828282416, -0.389687479, 0.402616948)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842008889, -0.195324957, 0.345665336, -0.935321271, -0.13959831, 0.325096041, 0.352526844, -0.445650339, 0.822874188, 0.0300082862, 0.884254754, 0.466038227)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.965122581, -0.676282227, -0.188826144, 0.383983791, -0.378384382, 0.842248082, 0.278984904, 0.917086482, 0.284815729, -0.880183995, 0.125609815, 0.457709759)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32495546, 0.71964699, -0.659597874, -0.965985417, 0.0608796179, -0.251326144, -0.205039546, -0.772541821, 0.600950122, -0.157574207, 0.632038474, 0.758750975)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--56, 2.316666603088379
		--57, 2.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.251267642, -0.441888362, -0.354197204, -0.70679301, -0.527390361, 0.471490115, 0.265477598, 0.420039088, 0.867807031, -0.655717373, 0.738529921, -0.156870276)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.80602074e-05, 0.999971509, 1.06170774e-06, -0.696171522, 0.64537847, -0.314375132, -0.314371943, 0.119620778, 0.941733003, 0.64538002, 0.754438519, 0.119612299)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35845768, -1.10034454, -0.0166500509, 0.328501552, -0.050805565, -0.943132222, 0.0227507949, 0.998689115, -0.0458797701, 0.944231927, -0.00638113916, 0.329231948)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842009068, -0.195325017, 0.345664442, -0.759652793, -0.580766797, 0.292640507, 0.573179007, -0.385325313, 0.723181605, -0.307236314, 0.717100978, 0.625596285)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0686872, -0.627443969, -0.580598116, 0.375110775, -0.517613173, 0.769004881, -0.246257126, 0.744129241, 0.620990753, -0.893671691, -0.422313064, 0.151665345)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.755235195, 0.293447942, 0.523549795, -0.509845257, 0.498559058, -0.701069653, -0.84295553, -0.126870796, 0.522812426, 0.171705484, 0.857520819, 0.48494935)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--58, 2.366666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749682188, -0.175694168, -0.519608498, -0.496090591, 0.849893928, 0.177691847, -0.0480031781, -0.231183469, 0.971725225, 0.866942704, 0.473533899, 0.15548563)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18045136e-05, 0.999973655, 2.22176313e-05, -0.817739844, -0.575042188, 0.0250208825, -0.2019113, 0.327292979, 0.92309916, -0.539010584, 0.749802828, -0.383746982)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03212595, -1.33704162, -0.208964527, 0.296978891, -0.166078508, -0.94032675, -0.041949451, 0.981539011, -0.186611757, 0.953964531, 0.0948711634, 0.284533739)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2750144, 0.37665242, -0.797502637, -0.430091977, -0.854038656, 0.292640686, 0.683870971, -0.0965933651, 0.72318244, -0.589355767, 0.511162162, 0.625596642)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.654480219, -1.19057703, 1.03121305, 0.510333955, 0.707397997, 0.489026725, -0.858967483, 0.44683519, 0.250027388, -0.0416456163, -0.547655046, 0.835667074)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--59, 2.4000000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0750190169, -0.295711875, -0.519627094, -0.692546666, 0.656084895, 0.299886078, 0.322790205, -0.0899300873, 0.942188442, 0.645124316, 0.749309659, -0.149496928)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.0785799e-05, 0.99996978, -9.72300768e-06, -0.820744932, -0.554503322, -0.137480825, -0.241113588, 0.118049353, 0.963290751, -0.517919362, 0.823764622, -0.230584756)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.890568972, -1.54738522, -0.262289703, 0.282387733, -0.55405277, -0.783119142, -0.0204085317, 0.812690496, -0.5823403, 0.959085882, 0.180434495, 0.218188092)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1776346, -0.0322979093, -0.0969777703, -0.815701663, 0.403488934, 0.41451329, 0.158706486, -0.532972753, 0.831115544, 0.556271672, 0.743726373, 0.370716333)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.37572098, -0.73044467, 0.634262383, 0.867370963, 0.430612266, 0.249478474, -0.49403438, 0.684630573, 0.535921335, 0.0599737763, -0.588092566, 0.806566358)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.922497272, 0.624079585, 0.445515841, 0.281105161, 0.0931159854, -0.95514971, -0.9529953, 0.144349575, -0.266394883, 0.113065928, 0.98513633, 0.129316658)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--60, 2.4166667461395264
		--61, 2.450000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749770254, -0.434417903, -0.439865589, -0.730484962, -0.470180899, 0.495299757, 0.502249956, 0.121564716, 0.856134951, -0.462749302, 0.874157906, 0.147347093)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25169754e-05, 0.999974668, 1.27255917e-05, -0.77150017, 0.306160927, -0.557720184, -0.364721745, 0.505446315, 0.78198719, 0.521311522, 0.806714177, -0.278288305)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.973031402, -1.20367813, -0.0109401941, 0.298559874, -0.378429383, -0.876154125, -0.0443003625, 0.911542237, -0.408816308, 0.953364611, 0.1608762, 0.255388319)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25632894, -0.123884439, 0.0642344058, -0.894622445, -0.168022394, 0.414020002, 0.399862677, -0.714544535, 0.574048638, 0.19938533, 0.679105401, 0.706442475)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.85667682, 0.0978659391, -0.53064847, 0.992917657, 0.118553638, -0.00769925117, -0.0895644724, 0.789555967, 0.607108355, 0.0780544281, -0.602118134, 0.794582129)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.690730572, 0.195312142, 0.721746445, -0.595008612, 0.134013116, -0.792468369, -0.774568915, 0.167528838, 0.609899938, 0.214495972, 0.976716518, 0.00412100554)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--62, 2.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.074970223, -0.573113978, -0.360129923, 0.325654566, -0.895547092, 0.303222775, 0.374074876, 0.416573942, 0.828573465, -0.868341506, -0.156400487, 0.470661014)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.10838223e-05, 0.999943972, 2.40281224e-06, -0.0160276592, 0.788650155, -0.614629388, 0.0466685891, 0.61463064, 0.787432432, 0.998778522, -0.0160643905, -0.0466561392)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.792182684, -1.44279289, 0.0616497397, 0.102736622, -0.586289942, -0.803556025, 0.359268814, 0.775170624, -0.519652724, 0.927567303, -0.235301584, 0.290276527)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.62561738, -0.0273588896, -0.489012897, 0.92261833, 0.166679144, 0.347840428, -0.00984462351, 0.911693275, -0.410754144, -0.385586768, 0.375545681, 0.84278512)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.47676361, 0.353621542, 0.210347593, 0.0763176978, 0.97158289, 0.224051446, -0.959210813, 0.0101999342, 0.282504648, 0.27218774, -0.236469671, 0.932732403)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--63, 2.4833333492279053
		--64, 2.4833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.331894398, -0.485924691, 0.0111553669, -0.821642637, 0.561543286, -0.0978388786, -0.0330158472, 0.124473229, 0.991673589, 0.569045901, 0.818031609, -0.083732605)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.0323863e-05, 0.999942839, 1.68057159e-06, -0.9070279, -0.180661678, -0.380338043, -0.37127471, -0.0829472095, 0.924809873, -0.198624477, 0.980038345, 0.00816011988)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.807946503, -0.684606254, -0.226061285, 0.211181968, -0.0944265276, -0.972874761, -0.652653217, 0.727315784, -0.212264284, 0.727630377, 0.679776788, 0.0919682682)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720205545, 1.01761627, -1.05429232, -0.779514134, -0.414847076, 0.469317019, 0.624382019, -0.574468136, 0.529276371, 0.050039798, 0.705612421, 0.706829786)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10533798, -0.808014929, 0.143492848, 0.892559767, 0.207772061, 0.40020901, -0.374408454, 0.836095214, 0.400953472, -0.251305223, -0.507715225, 0.824056625)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.368375301, -0.0914820433, 0.933094025, -0.464420915, 0.426949948, -0.775904477, -0.827964008, 0.101618052, 0.551499009, 0.314306796, 0.898549974, 0.30630815)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--65, 2.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.53108716, -0.485967368, -0.0463097394, -0.792604625, 0.532974243, -0.296169043, -0.112651944, 0.349369109, 0.930188656, 0.599238813, 0.770635962, -0.216870949)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.35499644e-05, 0.999944329, 1.0933727e-06, -0.91770792, -0.395703942, -0.0350104198, -0.0155275911, -0.0523369201, 0.998507977, -0.39694488, 0.916882634, 0.0418850742)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.807946682, -0.684606135, -0.226061046, 0.2187787, -0.169047236, -0.961019456, -0.715067387, 0.642358422, -0.275780588, 0.663938642, 0.747529089, 0.0196541846)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720205903, 1.01761615, -1.05429244, -0.817922771, -0.220881462, 0.531236827, 0.562224686, -0.50280726, 0.656573176, 0.122085847, 0.835701525, 0.535443008)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07835066, -0.888614416, 0.167725235, 0.914469182, 0.231603429, 0.331821322, -0.298867077, 0.93939507, 0.167976275, -0.272806644, -0.252778351, 0.928266108)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.326015949, 0.147864997, 0.984274268, -0.34639287, 0.52724272, -0.775904179, -0.778249383, 0.300297171, 0.55149895, 0.523774445, 0.794884324, 0.30630818)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--66, 2.549999952316284
		--67, 2.566666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.362293005, -0.4531084, -0.14627403, -0.961811125, 0.205754831, -0.180510655, -0.139353663, 0.199517652, 0.969934642, 0.235583752, 0.95804888, -0.163225561)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.35481018e-05, 0.999944329, 1.08778477e-06, -0.99641037, -0.0770445466, -0.0350104198, -0.0316461064, -0.0444835201, 0.998507977, -0.0784859359, 0.996031642, 0.0418850742)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.807946205, -0.684606493, -0.226061225, 0.249789953, 0.358373016, -0.899540544, -0.654581964, 0.747061014, 0.115857437, 0.713531673, 0.559883416, 0.421193123)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07835078, -0.888614297, 0.167724863, 0.914469182, 0.190667227, 0.356919527, -0.298867077, 0.912883818, 0.278068841, -0.272806644, -0.360955626, 0.891788006)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--68, 2.5833332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.469700158, -0.453112125, -0.219644457, -0.352000028, -0.8967852, 0.26808995, -0.0407741815, 0.300840467, 0.952802539, -0.935111463, 0.32445538, -0.142461449)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.272295e-05, 0.999943495, 6.50063157e-07, -0.485627443, 0.873461783, -0.0350104198, -0.0536289327, 0.0102077043, 0.998507977, 0.872516394, 0.486779511, 0.0418850742)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999761224, -0.711870253, -0.113812596, 0.33057937, 0.391428053, -0.858778596, 0.264575005, 0.835015535, 0.4824422, 0.90593487, -0.3866961, 0.172477156)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842008889, -0.195324957, 0.345665336, -0.935321271, -0.13959831, 0.325096041, 0.352526844, -0.445650339, 0.822874188, 0.0300082862, 0.884254754, 0.466038227)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07835019, -0.888614953, 0.167727023, 0.914469182, 0.350030392, 0.20303762, -0.298867077, 0.922500253, -0.244279385, -0.272806644, 0.16270563, 0.948209763)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32495356, 0.719651341, -0.659592986, -0.404322147, 0.838315248, 0.365718633, -0.382231474, -0.518145323, 0.765132487, 0.830917835, 0.169567838, 0.529931664)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--69, 2.616666555404663
		--70, 2.616666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.251279742, -0.44190228, -0.354214758, -0.661657393, -0.462028265, 0.590541601, 0.363654017, 0.491022736, 0.791613877, -0.655717373, 0.738529921, -0.156870276)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.31997871e-05, 0.999944091, -7.4505806e-08, -0.521065652, 0.837376356, -0.165186375, -0.292781144, 0.00643372256, 0.956157029, 0.801726699, 0.546583116, 0.24181515)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.997618079, -0.993837655, -0.218798637, 0.311232001, -0.0537087917, -0.94881475, -0.329521865, 0.930362523, -0.160755202, 0.891375124, 0.362688035, 0.271860182)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842009068, -0.195325017, 0.345664442, -0.759652793, -0.580766797, 0.292640507, 0.573179007, -0.385325313, 0.723181605, -0.307236314, 0.717100978, 0.625596285)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.906475544, -0.607897818, 0.317474782, 0.842026412, -0.475294828, 0.255119115, 0.53781867, 0.77628237, -0.328842491, -0.0417460948, 0.41410172, 0.909271896)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.98312062, 0.463925123, 0.0502897501, -0.9513551, -0.0923041552, -0.293944925, -0.249870807, -0.326999098, 0.91139245, -0.180245042, 0.940506101, 0.288028091)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--71, 2.6666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749855787, -0.175688788, -0.519611657, -0.45124492, 0.878200412, -0.158562467, -0.211632237, 0.0673025995, 0.975029349, 0.866942704, 0.473533899, 0.15548563)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.45557928e-05, 0.999944448, 5.47617674e-07, -0.414547026, -0.89649564, 0.156337649, 0.155161247, 0.0996471792, 0.982849836, -0.896698773, 0.431695849, 0.0977921635)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00741005, -1.16191959, -0.32629478, 0.315458089, 0.0490210317, -0.947672188, -0.524247825, 0.841432393, -0.130985007, 0.790980339, 0.538135946, 0.291135669)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2750144, 0.37665242, -0.797502637, -0.430091977, -0.854038656, 0.292640686, 0.683870971, -0.0965933651, 0.72318244, -0.589355767, 0.511162162, 0.625596642)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.613557875, -1.38395119, 0.614088237, 0.413145244, 0.702984214, 0.578897834, -0.853686869, 0.520298421, -0.0225674435, -0.317064494, -0.484871626, 0.815087676)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.755235195, 0.293447942, 0.523549795, -0.509845257, 0.498559058, -0.701069653, -0.84295553, -0.126870796, 0.522812426, 0.171705484, 0.857520819, 0.48494935)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--72, 2.700000047683716
		--73, 2.700000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749863684, -0.295715213, -0.519618869, -0.740029454, 0.661444843, 0.121848732, 0.190186396, 0.0320246667, 0.98122555, 0.645124316, 0.749309659, -0.149496928)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.34307551e-05, 0.99994421, 6.51925802e-07, -0.789969742, -0.608472407, -0.0755276605, 0.0138090551, -0.140808553, 0.989939749, -0.612985075, 0.780980051, 0.119636372)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.974000931, -1.24557579, -0.360335112, 0.238678753, -0.346936435, -0.9070099, -0.282707334, 0.868725181, -0.406687051, 0.929036379, 0.353486627, 0.109264433)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1776346, -0.0322979093, -0.0969777703, -0.815701663, 0.403488934, 0.41451329, 0.158706486, -0.532972753, 0.831115544, 0.556271672, 0.743726373, 0.370716333)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14434087, -1.02469051, 0.0407245755, 0.407148838, 0.0608243197, 0.911333442, -0.765159726, 0.56757158, 0.30396384, -0.498758674, -0.821072817, 0.277628213)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.922497272, 0.624079585, 0.445515841, 0.281105161, 0.0931159854, -0.95514971, -0.9529953, 0.144349575, -0.266394883, 0.113065928, 0.98513633, 0.129316658)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--74, 2.75
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749744624, -0.434417695, -0.439863741, -0.682637155, -0.457424104, 0.56988585, 0.565570295, 0.163129598, 0.80840528, -0.462749302, 0.874157906, 0.147347093)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.22014093e-05, 0.999943793, 1.28895044e-06, -0.708125651, 0.621689796, -0.334746301, -0.30147624, 0.162493944, 0.939524412, 0.638487875, 0.766218543, 0.0723583549)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.960183263, -1.24105358, -0.228803754, 0.104417734, -0.407957584, -0.9070099, 0.0341672599, 0.912929058, -0.406687051, 0.993946552, 0.0114761293, 0.109264433)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25632894, -0.123884439, 0.0642344058, -0.894622445, -0.168022394, 0.414020002, 0.399862677, -0.714544535, 0.574048638, 0.19938533, 0.679105401, 0.706442475)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.698368967, -0.744135261, -0.874392033, 0.267432809, -0.93860817, 0.217937723, -0.349104643, 0.116429865, 0.929825008, -0.898113132, -0.324746758, -0.296533823)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.690730572, 0.195312142, 0.721746445, -0.595008612, 0.134013116, -0.792468369, -0.774568915, 0.167528838, 0.609899938, 0.214495972, 0.976716518, 0.00412100554)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--75, 2.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749611109, -0.573105812, -0.360149592, 0.390579373, -0.800496638, 0.45459047, 0.305664331, 0.578570366, 0.756191492, -0.868341506, -0.156400487, 0.470661014)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.18288803e-05, 0.999943614, 4.02331352e-07, -0.550381243, 0.696972013, -0.459679961, -0.471225679, 0.195185274, 0.860143781, 0.689219773, 0.690019131, 0.22100471)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.915574908, -1.31264889, -0.231028914, 0.104417734, -0.528633177, -0.842403293, 0.0341672599, 0.848440826, -0.528187454, 0.993946552, 0.0263703018, 0.106653765)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990984559, -0.230677366, -0.471239567, -0.472742468, -0.208258465, 0.85623765, 0.729157329, 0.453170776, 0.512801886, -0.494817227, 0.866755247, -0.0623798668)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.47676361, 0.353621542, 0.210347593, 0.0763176978, 0.97158289, 0.224051446, -0.959210813, 0.0101999342, 0.282504648, 0.27218774, -0.236469671, 0.932732403)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--76, 2.7833333015441895
		--77, 2.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.531081021, -0.485942543, -0.0463280976, -0.783156991, 0.50809294, -0.35847801, -0.166065454, 0.384658098, 0.907998085, 0.599238813, 0.770635962, -0.216870949)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.33636999e-05, 0.999943972, -2.98023224e-08, -0.894670665, -0.434988707, -0.101707704, 0.00751435757, -0.242301375, 0.970171034, -0.446656346, 0.867219865, 0.22004804)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.901547492, -1.23604369, -0.198603868, 0.532714784, -0.0810609162, -0.842403114, -0.786565244, 0.319897264, -0.528187513, 0.312296838, 0.943978786, 0.10665369)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720205903, 1.01761615, -1.05429244, -0.817922771, -0.220881462, 0.531236827, 0.562224686, -0.50280726, 0.656573176, 0.122085847, 0.835701525, 0.535443008)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.85309422, -0.990491271, -0.09183155, 0.533968747, 0.0546664149, 0.843735039, -0.0538527071, 0.998080313, -0.0305851698, -0.843787313, -0.0291059166, 0.535887778)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.326015949, 0.147864997, 0.984274268, -0.34639287, 0.52724272, -0.775904179, -0.778249383, 0.300297171, 0.55149895, 0.523774445, 0.794884324, 0.30630818)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--78, 2.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.362303734, -0.453115135, -0.146287829, -0.956773937, 0.199161723, -0.211938635, -0.170539364, 0.206099391, 0.963555574, 0.235583752, 0.95804888, -0.163225561)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.35071236e-05, 0.999944091, 8.23289156e-07, -0.969018698, -0.24532859, -0.0284929723, -0.00941623375, -0.0785911605, 0.996861577, -0.246796861, 0.966246009, 0.0738455951)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.831874847, -0.842399478, -0.114394546, 0.563117445, 0.254761845, -0.786125302, -0.617845833, 0.761535347, -0.195783928, 0.5487836, 0.595955372, 0.586237371)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.952694416, -0.978616416, -0.0344136804, 0.50266248, 0.0684896037, 0.861765325, -0.305139661, 0.946748972, 0.102742359, -0.808838725, -0.314603537, 0.496794224)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--79, 2.8333332538604736
		--80, 2.8499999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.310188353, -0.45310688, -0.21964477, -0.353896439, -0.834689319, 0.421960831, 0.0179963112, 0.444997132, 0.895351291, -0.935111463, 0.32445538, -0.142461449)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.35071236e-05, 0.99994415, 8.19563866e-07, -0.399200082, 0.916418374, -0.0284929723, -0.0790779665, -0.00345122535, 0.996861577, 0.913444281, 0.400199354, 0.0738455951)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.956249177, -0.909464598, 0.000726923347, 0.294647813, 0.435092807, -0.850809515, -0.149964496, 0.900356591, 0.408495635, 0.943765461, 0.00722888112, 0.330536574)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842008889, -0.195324957, 0.345665336, -0.935321271, -0.13959831, 0.325096041, 0.352526844, -0.445650339, 0.822874188, 0.0300082862, 0.884254754, 0.466038227)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.997751832, -0.535298228, -0.117796242, 0.453164488, -0.215585276, 0.86496526, 0.486754358, 0.872733831, -0.0374942683, -0.746801198, 0.438016713, 0.500429213)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32495546, 0.71964699, -0.659597874, -0.965985417, 0.0608796179, -0.251326144, -0.205039546, -0.772541821, 0.600950122, -0.157574207, 0.632038474, 0.758750975)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--81, 2.883333444595337
		--82, 2.883333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.147619858, -0.4418782, -0.354169786, -0.70679301, -0.527390361, 0.471490115, 0.265477598, 0.420039088, 0.867807031, -0.655717373, 0.738529921, -0.156870276)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.33338976e-05, 0.999943733, -1.05798244e-06, -0.366526216, 0.916418374, -0.160720497, -0.408810556, -0.00345122535, 0.912611723, 0.835780025, 0.400199354, 0.37590602)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.956249356, -0.9094643, 0.000726997852, 0.244517818, 0.030193612, -0.969174504, -0.394582182, 0.916112602, -0.0710105598, 0.885729015, 0.39978236, 0.235919729)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842009068, -0.195325017, 0.345664442, -0.759652793, -0.580766797, 0.292640507, 0.573179007, -0.385325313, 0.723181605, -0.307236314, 0.717100978, 0.625596285)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.997751832, -0.535298109, -0.117796183, 0.453164488, -0.565402329, 0.68917501, 0.486754358, 0.804630458, 0.340058893, -0.746801198, 0.181356266, 0.639842153)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.755235195, 0.293447942, 0.523549795, -0.509845257, 0.498559058, -0.701069653, -0.84295553, -0.126870796, 0.522812426, 0.171705484, 0.857520819, 0.48494935)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--83, 2.9166667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749682188, -0.175694168, -0.519608498, -0.496090591, 0.849893928, 0.177691847, -0.0480031781, -0.231183469, 0.971725225, 0.866942704, 0.473533899, 0.15548563)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.41385603e-05, 0.999944568, 2.7641654e-06, -0.657731175, -0.734003186, 0.169187084, -0.0659506395, 0.279860854, 0.957771659, -0.750355422, 0.618798852, -0.232481971)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.913547814, -1.29667592, -0.12189129, 0.246357113, -0.104558207, -0.963522494, -0.267793179, 0.948115826, -0.171356708, 0.931447744, 0.300239712, 0.205575109)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2750144, 0.37665242, -0.797502637, -0.430091977, -0.854038656, 0.292640686, 0.683870971, -0.0965933651, 0.72318244, -0.589355767, 0.511162162, 0.625596642)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.633814812, -1.03532863, 0.995472431, 0.563448966, 0.535649002, 0.628971696, -0.806715548, 0.520893753, 0.279069394, -0.178144127, -0.664642513, 0.725613534)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--84, 2.950000047683716
		--85, 2.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0750190169, -0.295711875, -0.519627094, -0.692546666, 0.656084895, 0.299886078, 0.322790205, -0.0899300873, 0.942188442, 0.645124316, 0.749309659, -0.149496928)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.30321491e-05, 0.999943972, 2.92807817e-06, -0.746142626, -0.662868857, -0.0622197837, -0.190931857, 0.123510227, 0.973800898, -0.637816548, 0.738474727, -0.218719572)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.810203135, -1.4824934, -0.202647567, 0.246357113, -0.454377383, -0.856066167, -0.267793179, 0.816988945, -0.510701239, 0.931447744, 0.355063558, 0.0795918778)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1776346, -0.0322979093, -0.0969777703, -0.815701663, 0.403488934, 0.41451329, 0.158706486, -0.532972753, 0.831115544, 0.556271672, 0.743726373, 0.370716333)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24011374, -0.857005656, 0.687497497, 0.713569462, 0.153138727, 0.68364203, -0.553744555, 0.721057296, 0.4164657, -0.429167867, -0.675739586, 0.599324584)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.922497272, 0.624079585, 0.445515841, 0.281105161, 0.0931159854, -0.95514971, -0.9529953, 0.144349575, -0.266394883, 0.113065928, 0.98513633, 0.129316658)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--86, 2.9833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749770254, -0.434417903, -0.439865589, -0.730484962, -0.470180899, 0.495299757, 0.502249956, 0.121564716, 0.856134951, -0.462749302, 0.874157906, 0.147347093)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.22312117e-05, 0.999943435, 2.74181366e-06, -0.926918507, 0.28148362, -0.248161837, -0.186827019, 0.227369905, 0.955717742, 0.325444549, 0.93223542, -0.158164948)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.937544167, -1.27591836, -0.195318177, 0.0831516087, -0.498482406, -0.862902641, 0.0159053206, 0.86645484, -0.499001741, 0.996409953, 0.0277680382, 0.0799756423)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25632894, -0.123884439, 0.0642344058, -0.894622445, -0.168022394, 0.414020002, 0.399862677, -0.714544535, 0.574048638, 0.19938533, 0.679105401, 0.706442475)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.993845701, -0.581450939, -0.476714611, 0.258787483, -0.837065697, 0.482031077, -0.365941525, 0.376871049, 0.85091573, -0.893932879, -0.396600664, -0.208788335)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.690730572, 0.195312142, 0.721746445, -0.595008612, 0.134013116, -0.792468369, -0.774568915, 0.167528838, 0.609899938, 0.214495972, 0.976716518, 0.00412100554)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--87, 3
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749797076, -0.503756106, -0.399998277, -0.275437474, -0.86127454, 0.427013457, 0.476852059, 0.263285846, 0.838625431, -0.834713399, 0.434611082, 0.338181704)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.22163105e-05, 0.999943376, 2.82377005e-06, -0.810291648, 0.535143077, -0.238839909, -0.102867164, 0.271350056, 0.956966698, 0.576924264, 0.799990296, -0.164824352)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.901890337, -1.32665825, -0.191072643, 0.0313067473, -0.5735901, -0.818543911, 0.105166048, 0.816289842, -0.567988276, 0.993961751, -0.0683012009, 0.0858776048)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.827575624, -0.240177989, -0.584582269, -0.430201948, -0.852554917, 0.296785474, -0.11013788, 0.37587592, 0.920104206, -0.895989418, 0.363142669, -0.255604267)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24866581, 0.41697678, -0.220977515, -0.274657786, 0.919261932, -0.281995118, -0.87195766, -0.114504188, 0.47600317, 0.40528214, 0.376625597, 0.83300668)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--88, 3.0166666507720947
		--89, 3.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.074970223, -0.573113978, -0.360129923, 0.325654566, -0.895547092, 0.303222775, 0.374074876, 0.416573942, 0.828573465, -0.868341506, -0.156400487, 0.470661014)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.13222408e-05, 0.999943137, 2.06800178e-06, -0.354752004, 0.810168087, -0.466662377, -0.172406465, 0.43388319, 0.884318471, 0.918924153, 0.394168347, -0.0142427236)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.843631983, -1.39974117, -0.18851462, 0.0534617379, -0.623103619, -0.780309916, 0.0774645433, 0.781660438, -0.618874669, 0.995560706, -0.0273602568, 0.0900573879)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.827557325, -0.240195751, -0.584566474, -0.641485751, -0.446452141, 0.623842716, 0.417672038, 0.478850394, 0.77217555, -0.643462837, 0.755900085, -0.120705508)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.47676361, 0.353621542, 0.210347593, 0.0763176978, 0.97158289, 0.224051446, -0.959210813, 0.0101999342, 0.282504648, 0.27218774, -0.236469671, 0.932732403)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--90, 3.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.331894398, -0.485924691, 0.0111553669, -0.821642637, 0.561543286, -0.0978388786, -0.0330158472, 0.124473229, 0.991673589, 0.569045901, 0.818031609, -0.083732605)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.1337142e-05, 0.999943137, 2.07405537e-06, -0.747669458, -0.47245279, -0.466662377, -0.403053641, -0.235640347, 0.884318471, -0.527762294, 0.849268615, -0.0142427236)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.861829877, -0.717969596, -0.367830932, 0.00306658121, -0.0320002697, -0.99948293, -0.621465802, 0.782976925, -0.0269753914, 0.783435225, 0.621227801, -0.0174858943)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720205545, 1.01761627, -1.05429232, -0.779514134, -0.414847076, 0.469317019, 0.624382019, -0.574468136, 0.529276371, 0.050039798, 0.705612421, 0.706829786)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -1.00000012, 5.96046448e-08, 0.304520935, 0, 0.952505648, -0.380203933, 0.916880488, 0.121553145, -0.873333871, -0.399161875, 0.279209316)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.368375301, -0.0914820433, 0.933094025, -0.464420915, 0.426949948, -0.775904477, -0.827964008, 0.101618052, 0.551499009, 0.314306796, 0.898549974, 0.30630815)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--91, 3.049999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.53108716, -0.485967368, -0.0463097394, -0.792604625, 0.532974243, -0.296169043, -0.112651944, 0.349369109, 0.930188656, 0.599238813, 0.770635962, -0.216870949)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.23653221e-05, 0.999943256, 8.49366188e-07, -0.83155185, -0.491288185, -0.259138018, -0.153062031, -0.245800272, 0.957158327, -0.533935905, 0.835591733, 0.129197866)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.856941104, -0.754164398, -0.412998378, 0.0100943614, -0.0841616988, -0.996400774, -0.779784024, 0.623115659, -0.0605319589, 0.625967145, 0.777589023, -0.0593379065)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720205903, 1.01761615, -1.05429244, -0.817922771, -0.220881462, 0.531236827, 0.562224686, -0.50280726, 0.656573176, 0.122085847, 0.835701525, 0.535443008)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000012, -1.00000012, -2.60770321e-08, 0.297237873, 0.00175047666, 0.954801798, -0.171784833, 0.983778298, 0.0516744629, -0.939222932, -0.179380074, 0.292716891)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.326015949, 0.147864997, 0.984274268, -0.34639287, 0.52724272, -0.775904179, -0.778249383, 0.300297171, 0.55149895, 0.523774445, 0.794884324, 0.30630818)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--92, 3.0833332538604736
		--93, 3.0833332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.362293005, -0.4531084, -0.14627403, -0.961811125, 0.205754831, -0.180510655, -0.139353663, 0.199517652, 0.969934642, 0.235583752, 0.95804888, -0.163225561)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.28049064e-05, 0.999943256, 6.48200512e-07, -0.980172336, -0.1182293, -0.158993959, -0.138616651, -0.164198428, 0.976638138, -0.141572744, 0.979313314, 0.14455387)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.81281209, -0.643686175, -0.313912809, 0.0543256104, 0.285023034, -0.956979752, -0.678633094, 0.713569045, 0.174001887, 0.732465506, 0.639985919, 0.232191443)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03665125, -1.03296793, -0.113731071, 0.295680165, 0.0304411277, 0.954801798, -0.265967757, 0.96259588, 0.0516744629, -0.917515397, -0.269225597, 0.292716891)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--94, 3.116666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.469700158, -0.453112125, -0.219644457, -0.352000028, -0.8967852, 0.26808995, -0.0407741815, 0.300840467, 0.952802539, -0.935111463, 0.32445538, -0.142461449)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.2775104e-05, 0.999943256, 6.40749931e-07, -0.92862463, 0.335219681, -0.158993959, -0.197652906, -0.0843150765, 0.976638138, 0.313983887, 0.938355803, 0.14455387)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0276475, -0.556109846, -0.247395307, 0.178009897, 0.419453979, -0.890151918, -0.279857606, 0.888825119, 0.362863541, 0.943394065, 0.184523001, 0.275607497)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842008889, -0.195324957, 0.345665336, -0.935321271, -0.13959831, 0.325096041, 0.352526844, -0.445650339, 0.822874188, 0.0300082862, 0.884254754, 0.466038227)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14695764, -0.482423306, -0.397658259, 0.282323956, 0.0676333085, 0.956932008, -0.00305907056, 0.997570038, -0.0696029663, -0.959314346, 0.0167232696, 0.281844795)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.817663074, 0.71962893, -1.03088856, -0.74957788, 0.426146388, -0.506489992, -0.647625744, -0.314023674, 0.694240808, 0.136798203, 0.848403573, 0.511368454)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--95, 3.133333444595337
		--96, 3.133333444595337
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08289814, -0.962590456, 0.109331116, 0.34742102, 0.29483524, -0.890151918, 0.149110287, 0.919834971, 0.362863541, 0.92577827, -0.258796841, 0.275607497)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32495546, 0.71964699, -0.659597874, -0.965985417, 0.0608796179, -0.251326144, -0.205039546, -0.772541821, 0.600950122, -0.157574207, 0.632038474, 0.758750975)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--97, 3.1500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.251279742, -0.44190228, -0.354214758, -0.661657393, -0.462028265, 0.590541601, 0.363654017, 0.491022736, 0.791613877, -0.655717373, 0.738529921, -0.156870276)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.27825546e-05, 0.999943256, 6.55651093e-07, -0.703622639, 0.692554057, -0.158993959, -0.214802086, 0.00598028302, 0.976638138, 0.67732656, 0.721336365, 0.14455387)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07520199, -1.08415055, -0.175493121, 0.0819906592, -0.0972390473, -0.991877913, -0.467424631, 0.87523061, -0.124441922, 0.880222619, 0.473831952, 0.026308924)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.842009068, -0.195325017, 0.345664442, -0.759652793, -0.580766797, 0.292640507, 0.573179007, -0.385325313, 0.723181605, -0.307236314, 0.717100978, 0.625596285)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03787494, -0.296045423, -0.383681685, 0.117327228, -0.522906005, 0.844276965, 0.285587639, 0.832002699, 0.475616515, -0.951143622, 0.185312361, 0.246952072)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.755235195, 0.293447942, 0.523549795, -0.509845257, 0.498559058, -0.701069653, -0.84295553, -0.126870796, 0.522812426, 0.171705484, 0.857520819, 0.48494935)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--98, 3.200000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749855787, -0.175688788, -0.519611657, -0.45124492, 0.878200412, -0.158562467, -0.211632237, 0.0673025995, 0.975029349, 0.866942704, 0.473533899, 0.15548563)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.3358112e-05, 0.999943554, 9.49949026e-07, -0.461010844, -0.887064993, -0.0240781754, 0.0560307726, -0.0561793596, 0.996846139, -0.88561964, 0.458208799, 0.0756017342)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10822749, -0.889030993, -0.522198558, 0.0712145194, -0.0222341716, -0.997213125, -0.372020453, 0.927021861, -0.0472366326, 0.92548883, 0.374348223, 0.0577460378)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.27501416, 0.37665233, -0.797500968, -0.430091977, -0.901763856, 0.042925626, 0.683870971, -0.294390798, 0.667575598, -0.589355767, 0.316473186, 0.743305206)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.384488821, -1.34806848, 0.569334507, 0.45867759, 0.62604332, 0.630622089, -0.6805107, 0.703836739, -0.203762516, -0.571419239, -0.335683167, 0.748863518)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--99, 3.2333333492279053
		--100, 3.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749863684, -0.295715213, -0.519618869, -0.740029454, 0.661444843, 0.121848732, 0.190186396, 0.0320246667, 0.98122555, 0.645124316, 0.749309659, -0.149496928)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.2261014e-05, 0.999943376, 2.10292637e-06, -0.804796755, -0.549344301, -0.224762082, -0.21949847, -0.0763775632, 0.972617447, -0.551467776, 0.832095027, -0.0591121092)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04128742, -1.10955, -0.626827717, 0.0339184031, -0.361573845, -0.931726277, -0.256948978, 0.897770464, -0.357750714, 0.965829849, 0.251541048, -0.0624551103)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1776346, -0.0322979093, -0.0969777703, -0.815701663, 0.403488934, 0.41451329, 0.158706486, -0.532972753, 0.831115544, 0.556271672, 0.743726373, 0.370716333)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.48523259, -1.13066769, 0.44596073, 0.697569132, 0.394001722, 0.598463893, -0.6318416, 0.732134998, 0.254469454, -0.337894976, -0.555643201, 0.759662211)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.922497272, 0.624079585, 0.445515841, 0.281105161, 0.0931159854, -0.95514971, -0.9529953, 0.144349575, -0.266394883, 0.113065928, 0.98513633, 0.129316658)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--101, 3.2833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749744624, -0.434417695, -0.439863741, -0.682637155, -0.457424104, 0.56988585, 0.565570295, 0.163129598, 0.80840528, -0.462749302, 0.874157906, 0.147347093)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.15755606e-05, 0.999943018, 7.82310963e-07, -0.807098746, 0.420158565, -0.414793074, -0.444830179, 0.0292187184, 0.895136952, 0.38822028, 0.906976104, 0.163316786)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.984986663, -1.2684617, -0.365803748, -0.028325852, -0.499632031, -0.865774453, -0.0516580716, 0.865696371, -0.497896969, 0.998263419, 0.0306214392, -0.0503317118)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25632894, -0.123884439, 0.0642344058, -0.894622445, -0.168022394, 0.414020002, 0.399862677, -0.714544535, 0.574048638, 0.19938533, 0.679105401, 0.706442475)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.47759628, -0.0369619131, 0.0289303362, 0.694890261, -0.490600079, 0.525774479, 0.307019949, 0.863556743, 0.400011659, -0.650280595, -0.116540663, 0.750701725)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.690730572, 0.195312142, 0.721746445, -0.595008612, 0.134013116, -0.792468369, -0.774568915, 0.167528838, 0.609899938, 0.214495972, 0.976716518, 0.00412100554)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--102, 3.299999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749611109, -0.573105812, -0.360149592, 0.390579373, -0.800496638, 0.45459047, 0.305664331, 0.578570366, 0.756191492, -0.868341506, -0.156400487, 0.470661014)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.16798687e-05, 0.999943018, 2.08616257e-07, -0.153226465, 0.898864865, -0.41055885, -0.337388545, 0.34291631, 0.876684189, 0.928808451, 0.27284804, 0.250722855)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.892137051, -1.4055711, -0.368382692, -0.0340061784, -0.560651898, -0.827352941, -0.0418094397, 0.827905118, -0.559307694, 0.998547137, 0.0155717917, -0.0515945666)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990316272, -0.0786459446, -0.457392812, 0.0507333204, -0.334008604, 0.941203713, 0.825408638, 0.544581711, 0.14876616, -0.562251508, 0.769330263, 0.303322017)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.47676361, 0.353621542, 0.210347593, 0.0763176978, 0.97158289, 0.224051446, -0.959210813, 0.0101999342, 0.282504648, 0.27218774, -0.236469671, 0.932732403)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--103, 3.316666603088379
		--104, 3.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0178321898, -0.696097136, -0.71090132, 0.126453996, -0.740733981, 0.659789681, 0.526531458, 0.613819122, 0.588209748, -0.840698481, 0.273018599, 0.467639685)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.1709671e-05, 0.999943137, -2.98023224e-07, -0.231973454, 0.869545996, -0.435973644, -0.466884136, 0.29366684, 0.834132373, 0.853348136, 0.397044748, 0.337854415)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.871584654, -1.4499867, -0.216470093, -0.0604576692, -0.558419049, -0.827352941, -0.00264622271, 0.828955948, -0.559307694, 0.998167634, -0.0316245258, -0.0515945666)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2563026, -0.123893619, 0.0642526448, -0.474355698, -0.077560097, 0.876909971, 0.826508045, -0.382202506, 0.413286597, 0.303102612, 0.920817971, 0.245403945)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.757350206, 0.0652880669, -0.305799842, 0.00311700255, -0.893352747, 0.44934538, 0.843660951, 0.243590415, 0.478434801, -0.536867261, 0.377603889, 0.754446089)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.656861186, 0.809700727, 0.476630926, 0.0763176978, 0.513560653, -0.854650617, -0.959210753, 0.271808147, 0.0776742399, 0.27218762, 0.813864231, 0.513354301)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--105, 3.3499999046325684
		--106, 3.3499999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.590674222, -0.66112113, -0.937375188, -0.379885465, -0.579057276, 0.721373558, 0.689475656, 0.342646807, 0.638135195, -0.616693199, 0.739787698, 0.269079298)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.16798687e-05, 0.999943137, -2.83122063e-07, -0.702943563, 0.561953902, -0.435973644, -0.550043285, -0.0409069955, 0.834132373, 0.450910747, 0.826151967, 0.337854415)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20432091, -0.0215207338, 0.0540069938, 0.101546228, -0.201202005, 0.974272072, 0.979377866, -0.151725292, -0.133411914, 0.174664438, 0.967728019, 0.181645632)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.96968317, -0.622445285, -0.797573686, 0.497367024, -0.774503827, 0.390858591, -0.39637363, 0.197887972, 0.896508873, -0.771695614, -0.600819588, -0.208570167)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.656861603, 0.809701681, 0.476629376, 0.369601697, 0.513560653, -0.774368584, -0.926070929, 0.271808147, -0.261746496, 0.0760542303, 0.813864231, 0.576050758)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--107, 3.383333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0629126579, -0.46818924, -1.03952205, -0.892536819, -0.0604562759, 0.446903288, 0.450758696, -0.088976264, 0.888200223, -0.0139335543, 0.994197249, 0.10666585)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.03685665e-05, 0.999943376, 4.529953e-06, -0.813614607, -0.110462151, -0.570810139, -0.570284545, 0.342706561, 0.746542394, 0.1131569, 0.932922184, -0.341825813)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0634768, -1.16512871, -0.22733739, -0.0247330144, -0.337868989, -0.94086802, -0.10269165, 0.937035978, -0.333793461, 0.994406044, 0.0883641765, -0.0578720272)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10038829, 0.183237255, 0.0334986895, 0.646584153, -0.544623315, 0.53414619, 0.723398209, 0.215516001, -0.655930519, 0.242119089, 0.810513377, 0.533328652)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.27110279, -0.885837555, 0.299543262, 0.663161516, -0.145780385, 0.734142303, -0.662889004, 0.341064215, 0.666523337, -0.347555697, -0.928667426, 0.129544437)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--108, 3.4166667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749521926, 0.0524475724, -1.31089914, 0.127800167, 0.907920063, 0.399183869, 0.0607032552, -0.408890218, 0.910562336, 0.989940464, -0.0921382383, -0.107369937)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.19927931e-05, 0.999944806, 7.86781311e-06, -0.760097206, -0.59332633, -0.264973521, -0.63993901, 0.612694204, 0.463768959, -0.112817481, 0.522076786, -0.845399976)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11777461, -0.350029111, -0.593343556, -0.0858134553, -0.327724248, -0.940867901, 0.0695677251, 0.940075397, -0.333793312, 0.993878961, -0.0940978453, -0.0578719154)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.94340831, 1.33550537, -0.264541805, -0.124742553, -0.716751635, 0.686080515, 0.562808871, -0.62058723, -0.546001136, 0.817119598, 0.318022668, 0.480807781)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08278608, -1.09027445, 0.53331846, 0.663161516, 0.397144914, 0.634423196, -0.662889004, 0.705232739, 0.251445591, -0.347555697, -0.587301135, 0.730946183)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.929997981, 0.216928869, 0.675827622, -0.277323246, 0.637704372, -0.718624473, -0.0542288013, 0.736381233, 0.674388111, 0.959239423, 0.225997567, -0.169633135)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--109, 3.433333396911621
		--110, 3.450000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.074966222, 0.195450217, -1.10412383, 0.439954937, 0.897692859, -0.0242404379, -0.0149059044, 0.0342894718, 0.999300778, 0.897896349, -0.439285994, 0.0284667369)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.51071358e-05, 0.999945879, 2.02655792e-06, -0.753246427, -0.603802204, -0.260850012, -0.593145251, 0.452181458, 0.666116118, -0.284250915, 0.656471491, -0.698746443)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.949892581, -0.885272264, -0.235549673, -0.0858133808, -0.327724457, -0.940868139, 0.0695676878, 0.940075696, -0.333793461, 0.993879497, -0.0940979645, -0.0578720495)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.272072315, 1.12792611, -0.746265173, 0.0549725592, -0.0493116379, 0.997269869, 0.790623069, -0.607859135, -0.0736380816, 0.609830797, 0.792512596, 0.00557130575)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.31669164, 0.0593202114, -0.43899259, 0.773803115, 0.315310121, 0.549371481, -0.416438401, 0.906755388, 0.0661342964, -0.477293015, -0.279954195, 0.832956731)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.809642792, 0.103271425, 0.831542969, -0.159406573, 0.959903836, -0.230595797, -0.546803236, 0.10862866, 0.83018434, 0.821946383, 0.258427203, 0.507562459)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--111, 3.4833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749003291, 0.662077725, -0.903030872, 0.855994463, 0.490632683, -0.162952244, -0.0866381451, 0.446877658, 0.890389919, 0.509674132, -0.748050988, 0.425032198)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.49879265e-05, 0.99994576, 2.04145908e-06, -0.825159431, -0.501566291, -0.259890676, -0.353488863, 0.0995974913, 0.930121481, -0.440633148, 0.859366953, -0.259481907)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.638000607, 0.552945912, -0.640810609, -0.391027719, 0.829122663, 0.399572998, 0.395442605, -0.24067685, 0.886397779, 0.831098378, 0.50461483, -0.23375985)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--112, 3.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748850107, 1.08051848, -0.764407635, 0.836240232, 0.520482898, -0.172626868, -0.142011985, 0.509617805, 0.848600209, 0.529655576, -0.685118437, 0.500077665)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.642634273, 0.344441056, -0.640442133, -0.186113149, 0.981204152, -0.0510168076, 0.299467623, 0.106102943, 0.948188782, 0.935779035, 0.161192402, -0.313586295)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--113, 3.549999952316284
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.890379846, -0.926085532, -0.305988669, -0.186839998, -0.139295518, -0.972464681, 0.494188696, 0.842199802, -0.215585068, 0.849039674, -0.52086097, -0.0885183439)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--114, 3.5833332538604736
		tween6 = ts:Create(part6, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.20822001e-05, 0.999943137, 2.16439366e-06, -0.914764524, -0.334225416, -0.226923168, -0.239575088, -0.00347058661, 0.970870435, -0.325276136, 0.942483544, -0.0768977031)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.713718891, 0.269928783, -0.633913457, -0.390276819, 0.9203794, 0.024235487, 0.311027884, 0.107021153, 0.944356203, 0.866572022, 0.376097947, -0.328031868)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--115, 3.5999999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748935938, 1.18385911, -0.63031292, 0.735228956, 0.64874655, -0.19638218, -0.171610922, 0.458449423, 0.871994138, 0.655734479, -0.607414007, 0.448397398)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10034418, -0.584317327, -0.250970095, 0.591271162, 0.40604955, 0.696794271, -0.173659474, 0.907837272, -0.381672353, -0.787553728, 0.104666978, 0.607292414)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.806532562, 0.275537193, 0.669915915, -0.44859764, 0.847397506, -0.284038514, -0.763894916, -0.198576808, 0.614029348, 0.463923275, 0.492427707, 0.736403584)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--116, 3.633333444595337
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35490823, -0.44499588, -0.748235106, 0.497994453, 0.192420363, -0.84556222, 0.377258748, 0.82989186, 0.411041021, 0.780817807, -0.523691833, 0.34068951)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.815593481, 0.366655827, -0.62444222, -0.584525824, 0.774928808, 0.240442589, 0.383154333, 0.00241303444, 0.92368114, 0.715208054, 0.63204211, -0.298327029)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--117, 3.6500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748592913, 1.13324571, -0.512971044, 0.753087819, 0.635643125, -0.169753954, -0.0841846466, 0.348994374, 0.93333596, 0.652511775, -0.688593149, 0.316334784)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.23057175e-05, 0.999943137, 1.67498365e-06, -0.930589736, -0.311642289, -0.192033172, -0.187114358, -0.0459184498, 0.981263161, -0.314619988, 0.949086189, -0.0155819505)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--118, 3.683333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.595598936, 0.656333029, -0.61878705, -0.877156854, 0.429758012, 0.214258164, 0.359134376, 0.29089123, 0.886794508, 0.318781734, 0.854804516, -0.409498453)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--119, 3.7166666984558105
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.913687944, 0.424238861, 0.39359352, -0.593536019, 0.734820306, -0.328259438, -0.770833313, -0.401788175, 0.494350612, 0.231367946, 0.546448171, 0.804899573)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--120, 3.7333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748655796, 1.05301321, -0.409219354, 0.68876487, 0.695395768, -0.205007449, 0.0478764772, 0.238529325, 0.969954431, 0.723402441, -0.677885652, 0.130997509)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30666518, -0.393426538, -0.777021527, 0.0990189016, 0.104262307, -0.989608049, 0.324115485, 0.936883926, 0.131137937, 0.940820634, -0.333732367, 0.0589763969)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.864321828, -0.928076506, 0.359885812, 0.519990683, -0.18666625, 0.833525777, 0.161844715, 0.979683995, 0.118432492, -0.83869803, 0.0733186305, 0.539637029)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--121, 3.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748197585, 0.924854279, -0.303737313, 0.559913695, 0.810817838, -0.170503885, 0.114892617, 0.127817824, 0.985120416, 0.820546567, -0.571172118, -0.0215900317)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.437133193, 0.854465008, -0.681830943, -0.833244562, 0.487610519, 0.260652065, 0.274768531, -0.0439059138, 0.960507452, 0.479797781, 0.871956646, -0.0973957181)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--122, 3.8499999046325684
		tween3 = ts:Create(part3, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13154674, 0.524767995, 0.0256642997, -0.628899455, 0.728445709, -0.271747857, -0.720843852, -0.415346622, 0.554860771, 0.291315585, 0.544838667, 0.786307514)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--123, 3.883333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748489052, 0.760284662, -0.274028659, 0.535447359, 0.822602034, -0.191370338, 0.187427431, 0.105203085, 0.976628542, 0.823509336, -0.558801174, -0.0978474692)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.34009528e-05, 0.999943972, 4.73856926e-06, -0.982741654, -0.170596853, 0.0714871883, -0.0249252543, 0.505084991, 0.862708151, -0.183281526, 0.846037626, -0.50062108)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--124, 3.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748778731, 0.179862469, -0.254955471, 0.498630524, 0.8367787, -0.226205021, 0.229512453, 0.124196395, 0.965349317, 0.835877597, -0.533269525, -0.130123034)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.387040377, 0.937265515, -0.667543113, -0.78533411, 0.526304543, 0.325966358, 0.269625932, -0.183193505, 0.945379436, 0.557272375, 0.83032763, 0.00196269155)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--125, 3.9833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0748980641, -0.360667884, -0.24432753, 0.439347148, 0.852033913, -0.28462705, 0.232188001, 0.198370859, 0.952227771, 0.86779207, -0.484445512, -0.11067839)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.27188063, -0.0799880028, -0.659723997, 0.0354038104, -0.0039486941, -0.99936527, -0.36475867, 0.930954039, -0.0166004375, 0.930428684, 0.365114868, 0.0315190032)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.333841205, 1.05420518, -0.603164792, -0.673136592, 0.575444221, 0.464490235, 0.286592752, -0.3760252, 0.881175399, 0.68172735, 0.726270914, 0.0881980658)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23515928, -0.291949332, -0.774753153, 0.257152855, 0.202951223, 0.944818914, -0.537054181, 0.842826724, -0.0348715596, -0.803395271, -0.498449683, 0.325731128)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.885983706, 0.159337223, -0.50780642, -0.967504263, 0.224411815, -0.1164985, -0.118544444, 0.00438227132, 0.992937744, 0.22333391, 0.974483013, 0.0223639347)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--126, 4.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0749013424, -1.2220037, -0.244403884, 0.274192214, 0.838836849, -0.47028774, 0.106886953, 0.459417105, 0.881765783, 0.955716312, -0.292041123, 0.0363077894)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.23709571, 0.233450055, -0.542423546, 0.0742441192, -0.133331925, -0.988286316, -0.716990054, 0.681659043, -0.145827472, 0.693117678, 0.719418406, -0.0449883193)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.219677091, 1.37341702, -0.349172086, -0.219882816, 0.490773112, 0.843084872, 0.210439771, -0.820024133, 0.532234013, 0.952554345, 0.294447273, 0.0770335346)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--127, 4.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.6643852, -1.22073579, -0.360105842, 0.4331384, 0.622191668, -0.652125657, 0.270159721, 0.600630999, 0.7524997, 0.859886467, -0.502114773, 0.0920651332)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.34046781e-05, 0.999943972, 4.7981739e-06, -0.961541355, 0.265184134, 0.0714871883, 0.193043128, 0.467403978, 0.862708151, 0.195364013, 0.843329549, -0.50062108)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.23709583, 0.233449697, -0.542423427, 0.0786911026, -0.210379943, -0.97444725, -0.739533961, 0.643160999, -0.19857721, 0.668502986, 0.736263216, -0.104971908)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10785532, 0.443615943, 0.00262987614, -0.420694292, -0.798071146, 0.431391299, 0.312773854, 0.318769366, 0.894738913, -0.851579249, 0.511338651, 0.115512684)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16406298, -0.570180416, -0.598319173, 0.250639081, 0.210942745, 0.944818914, -0.563310146, 0.825509429, -0.0348715596, -0.787312269, -0.523483932, 0.325731128)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.845096529, 0.249507874, -0.499887824, -0.592082381, 0.622624636, -0.511639178, -0.488485008, 0.227671295, 0.842346251, 0.640949249, 0.748666763, 0.16934289)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--128, 4.099999904632568
		--129, 4.150000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.80321789, -1.22071791, -2.99408937, -0.638391495, 0.751928926, -0.164496094, 0.458980441, 0.543438077, 0.70285964, 0.617894113, 0.373198718, -0.692047)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.20094633, -0.156820655, -0.139716506, 0.173723578, -0.142380208, -0.974447191, -0.962537766, 0.184628174, -0.198577195, 0.208183676, 0.972439885, -0.104971901)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.765813351, 0.537030458, -0.995799422, -0.732275724, 0.670510948, 0.119104028, 0.0533511937, -0.117871761, 0.991593063, 0.678909779, 0.732474267, 0.0505441725)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.807140946, -1.27289009, 0.361733019, 0.221921027, 0.240972713, 0.944818914, -0.663274825, 0.747563124, -0.0348715596, -0.714714587, -0.618933856, 0.325731128)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.798584998, 0.341387659, 0.36352545, 0.776497602, 0.453570098, -0.437404305, -0.234386206, 0.85226053, 0.467666805, 0.584902644, -0.260616452, 0.768087626)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--130, 4.199999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.51960897, -1.22072816, 13.9457245, 0.545348704, 0.452209502, -0.705762982, 0.45898056, 0.543438196, 0.702859759, 0.701378405, -0.707235157, 0.0888079405)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.37241217e-05, 0.999943256, -3.57627869e-07, -0.833791733, -0.551215827, 0.0307798088, 0.173181325, -0.208211362, 0.962628603, -0.524206996, 0.807963252, 0.269064724)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 0, -0, 0, -1, 0.574049413, 0.818820655, 0, 0.818820655, -0.574049413, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.43011862, 0.537745178, 0.182917476, 0.95026648, -0.179734021, 0.254340649, -0.0629393756, 0.688985586, 0.722037017, -0.30501169, -0.702135682, 0.643407643)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.893849015, 0.449608088, -0.474688411, 0, -0.396481484, 0.918042719, 0.893051863, 0.413076818, 0.178398341, -0.449953794, 0.819859743, 0.354078531)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.827860534, 0.00602465868, -0.99364233, -0.325019896, -0.698996902, -0.636996806, -0.149714381, -0.627041459, 0.764461815, -0.933780193, 0.343829632, 0.0991511047)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--131, 4.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.63990307, -1.22069883, -9.83428001, -0.513380766, -0.483438492, 0.709032834, 0.45898062, 0.543438077, 0.702859819, -0.725104928, 0.686266899, -0.0571017712)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--132, 4.233333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.4709487, -1.22067714, -16.2019958, -0.429524124, -0.556786239, 0.710984051, 0.45898062, 0.543438137, 0.702859759, -0.777718484, 0.628223062, 0.0221342444)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.43695283e-05, 0.999943733, 1.4109537e-06, -0.833791733, -0.505559087, 0.221802384, 0.173181325, 0.141962618, 0.974603713, -0.524206996, 0.851029336, -0.0308146775)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--133, 4.25
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.422277451, -1.22070122, -14.7494583, -0.731716812, -0.217484921, 0.645980239, 0.458980441, 0.543438077, 0.70285964, -0.503912091, 0.810786486, -0.297821283)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--134, 4.266666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(10.8502913, -1.22074223, -6.1738863, 0.397590965, -0.833109975, 0.384511054, 0.458980441, 0.543438077, 0.70285964, -0.794517696, -0.102967195, 0.598447323)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--135, 4.2833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.865511179, -1.2206924, 12.6168642, 0.0688680559, 0.835181653, -0.545645237, 0.552739978, 0.423376024, 0.717796147, 0.830503225, -0.351033181, -0.4324812)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--136, 4.300000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(11.002717, -1.22068405, -3.31350207, 0.624321699, 0.246087357, -0.741393149, 0.599472582, 0.457584888, 0.656695366, 0.500854671, -0.854434013, 0.138157457)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00592041, -0.964862883, -0.0271141231, -0.000705765444, -0.0101803904, -0.999947965, 0.511024714, 0.859517753, -0.00911136437, 0.859565735, -0.511004567, 0.00459581334)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.765813351, 0.537030458, -0.995799422, -0.732275724, 0.670510948, 0.119104028, 0.0533511937, -0.117871761, 0.991593063, 0.678909779, 0.732474267, 0.0505441725)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.807140946, -1.27289009, 0.361733019, 0.221921027, 0.240972713, 0.944818914, -0.663274825, 0.747563124, -0.0348715596, -0.714714587, -0.618933856, 0.325731128)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.798584998, 0.341387659, 0.36352545, 0.776497602, 0.453570098, -0.437404305, -0.234386206, 0.85226053, 0.467666805, 0.584902644, -0.260616452, 0.768087626)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--137, 4.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.72385597, -0.448333979, 1.47789049, 0.590226769, -0.511810541, -0.624245703, 0.80180037, 0.282094806, 0.526819527, -0.0935354084, -0.811463475, 0.576869607)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02278113, -0.864801049, -0.104329243, 0.00147411646, -0.0391014628, -0.99923414, 0.317047149, 0.947702646, -0.0366172381, 0.948408663, -0.316750377, 0.0137940291)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--138, 4.333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.83531284, -1.2446208, 14.1442871, 0.047261253, 0.761882782, -0.645988762, 0.606801391, 0.491807103, 0.624433875, 0.793447375, -0.421498448, -0.439068049)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04801488, -0.715047657, -0.219889507, 0.0159984753, -0.0798286796, -0.9966802, 0.00300927367, 0.996807098, -0.0797905326, 0.999867499, -0.00172275677, 0.0161876194)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--139, 4.349999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.03119802, -0.766803741, -9.75765038, -0.85749954, -0.0696968734, 0.509742677, 0.161526769, 0.904213965, 0.395356417, -0.488471329, 0.421355009, -0.764104486)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07777989, -0.538401783, -0.356202155, 0.048446551, -0.118870363, -0.991727173, -0.364136279, 0.92245841, -0.12835598, 0.930084765, 0.367342234, 0.001404915)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--140, 4.366666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-13.7707872, -1.24467754, 5.92469406, -0.154459178, 0.843580484, -0.514310002, 0.606801391, 0.491807103, 0.624433875, 0.77970165, -0.21563448, -0.587849855)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1075449, -0.361755669, -0.492514849, 0.0929755867, -0.142917439, -0.985357881, -0.677853763, 0.715796113, -0.167780265, 0.729294062, 0.683528006, -0.030325558)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12200546, 0.282628804, 0.538518548, 0.61132586, -0.761351466, 0.215926528, -0.0331264138, 0.247989282, 0.968194664, -0.790680528, -0.599035978, 0.126383558)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.41948849, 0.51484561, -1.09775567, -0.876846015, 0.000278055668, -0.480779201, -0.411348581, -0.518093467, 0.749914408, -0.248880312, 0.855327785, 0.454402804)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--141, 4.383333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.81836319, -0.335283518, -6.62311888, 0.342241943, -0.888219655, 0.306490898, 0.599472582, 0.457584888, 0.656695366, -0.723535419, -0.0410158038, 0.6890679)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13277876, -0.212002516, -0.608074963, 0.135473549, -0.148924485, -0.979524553, -0.868178427, 0.458527088, -0.189787105, 0.477402508, 0.876113236, -0.0671747252)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99946475, -0.593191922, 0.107630581, 0.190629601, -0.271470308, 0.943379164, -0.163904488, 0.938709974, 0.303247094, -0.967882037, -0.212431952, 0.134450689)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--142, 4.400000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.74498177, -0.448341966, -3.56217718, 0.414961845, -0.897198439, -0.151136339, 0.80180037, 0.282094806, 0.526819527, -0.430026978, -0.339791179, 0.836432338)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.42912972e-05, 0.999943376, -9.08970833e-07, -0.541389883, -0.831446767, 0.124853484, 0.352046937, -0.0893253982, 0.931708872, -0.763513744, 0.548373044, 0.341067612)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14963913, -0.111940503, -0.685290039, 0.16398789, -0.145159766, -0.975723684, -0.945691466, 0.258290708, -0.1973667, 0.280670047, 0.955099225, -0.0949198157)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--143, 4.416666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15555954, -0.0768051147, -0.712400675, 0.173723578, -0.142380208, -0.974447191, -0.962537766, 0.184628174, -0.198577195, 0.208183676, 0.972439885, -0.104971901)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--144, 4.433333396911621
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.158499, -0.0837911367, -0.706626654, 0.173880279, -0.133690447, -0.975649774, -0.958508849, 0.204285026, -0.198817998, 0.225890696, 0.969739437, -0.0926223099)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--145, 4.449999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.26859188, -0.463284612, -1.23430669, 0.825672626, -0.419059157, -0.377696663, 0.520325541, 0.306962281, 0.796891212, -0.218005955, -0.854496539, 0.471497387)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.16721702, -0.104517162, -0.689489782, 0.175280407, -0.107876003, -0.978590548, -0.944492221, 0.262114048, -0.198067307, 0.277869046, 0.958988547, -0.055944562)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--146, 4.4666666984558105
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18141663, -0.138274431, -0.661577821, 0.180541635, -0.0659276024, -0.981355309, -0.915180087, 0.35428375, -0.192168087, 0.36034745, 0.932811141, 0.00362735242)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--147, 4.483333110809326
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.20061445, -0.183914602, -0.62384057, 0.193423659, -0.0101379976, -0.981062949, -0.86331594, 0.473313451, -0.175100058, 0.466125429, 0.880835772, 0.0827977359)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--148, 4.5
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22415674, -0.239882231, -0.577564478, 0.21789971, 0.0553035736, -0.974403024, -0.78198123, 0.607282996, -0.140402406, 0.583973646, 0.792558551, 0.17557314)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--149, 4.516666889190674
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25124168, -0.304272532, -0.524323344, 0.256944895, 0.124114148, -0.958423197, -0.667329848, 0.74011606, -0.0830614939, 0.699035287, 0.66092664, 0.272994101)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.860424876, 0.384924799, 0.532212794, 0.921337008, -0.383575857, 0.0632996857, 0.0646463633, 0.311715662, 0.947972059, -0.383347452, -0.869308352, 0.311993152)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--150, 4.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.8320992, -0.414723337, 0.231065273, 0.849128604, 0.296273142, -0.437268376, 0.405058295, 0.166047961, 0.899086118, 0.338982582, -0.94055897, 0.020988062)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28094673, -0.374892354, -0.465931356, 0.311341405, 0.188478395, -0.931419611, -0.520965278, 0.853576779, -0.00141425431, 0.794771552, 0.48567757, 0.363944471)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14905143, -0.0645408034, -0.0900172591, -0.404351175, -0.448416412, 0.797138214, 0.790173233, 0.267623186, 0.551365077, -0.460572362, 0.85282141, 0.246114269)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--151, 4.550000190734863
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31226075, -0.449336588, -0.404377222, 0.378950685, 0.240436584, -0.893636703, -0.350945771, 0.930864036, 0.101632647, 0.856290519, 0.275104284, 0.437131792)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--152, 4.566666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34411728, -0.52507031, -0.341756999, 0.45484215, 0.273736, -0.847459257, -0.170715064, 0.960742235, 0.218702361, 0.874056637, 0.0451990217, 0.483716905)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--153, 4.583333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3754313, -0.599514902, -0.280203074, 0.532356977, 0.285454869, -0.796938896, 0.00391286612, 0.940589726, 0.339522839, 0.846510947, -0.183865681, 0.49961254)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--154, 4.599999904632568
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.40513659, -0.670134366, -0.221811607, 0.604747772, 0.276722014, -0.746796548, 0.158648789, 0.877044737, 0.453456879, 0.78045547, -0.392705381, 0.486489266)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--155, 4.616666793823242
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43222165, -0.734524548, -0.168570921, 0.666756034, 0.252251238, -0.7012887, 0.28398326, 0.783995867, 0.552000046, 0.689050078, -0.567203522, 0.451098919)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--156, 4.633333206176758
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.4557637, -0.790492654, -0.122293979, 0.715538442, 0.218953699, -0.663373232, 0.376626134, 0.678867877, 0.630310416, 0.588351548, -0.700855017, 0.403292358)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--157, 4.650000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.26641631, -0.322364628, 0.661620259, 0.691847146, 0.523884773, -0.496882915, 0.478035331, 0.183407605, 0.858978391, 0.541137815, -0.831809342, -0.123545431)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.37380916e-05, 0.999943197, -1.96695328e-06, -0.646184504, -0.761985183, -0.0426537134, 0.373713911, -0.36466229, 0.852852166, -0.665414691, 0.535160661, 0.520403266)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.47496176, -0.836132228, -0.0845569372, 0.750698566, 0.184243917, -0.634433568, 0.438854754, 0.57875216, 0.687351823, 0.493820161, -0.794418156, 0.353612214)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.959111392, -0.911775529, -0.0404089689, 0.152133733, -0.59964627, 0.785671234, 0.774258852, 0.566388547, 0.282360286, -0.614309549, 0.565355837, 0.550448298)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.321276128, 0.113155812, -1.05003285, -0.664508104, -0.711413324, -0.228750676, -0.245746434, -0.0810509473, 0.965939641, -0.70572263, 0.698090374, -0.120968372)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--158, 4.666666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.48916125, -0.869889736, -0.0566442013, 0.773573399, 0.154640943, -0.614548981, 0.476361334, 0.497659624, 0.724855065, 0.417928457, -0.853475988, 0.311311364)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--159, 4.683333396911621
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49787927, -0.890615642, -0.0395075083, 0.786171019, 0.13496843, -0.603091061, 0.495587289, 0.445341438, 0.74569726, 0.369226962, -0.88512975, 0.283225954)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--160, 4.699999809265137
		tween5 = ts:Create(part5, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.50081825, -0.897602201, -0.033731997, 0.790157855, 0.12809673, -0.599367321, 0.501398802, 0.427315831, 0.752329648, 0.352490067, -0.894981086, 0.273419648)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--161, 4.7166666984558105
		tween5 = ts:Create(part5, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24764228, -0.889533639, 0.499058545, 0.765393972, -0.234372258, -0.599367321, 0.638641596, 0.161667809, 0.752329648, -0.0794267654, -0.958609283, 0.273419648)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--162, 4.733333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.52910662, -0.236473411, 0.834102571, 0.447762251, 0.731279552, -0.514528394, 0.552064776, 0.226561159, 0.802430391, 0.703373134, -0.643351078, -0.302268177)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166707992553711)

		if afterframe() then
			return
		end

		--163, 4.800000190734863
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.862435699, 0.384484947, 0.526417136, 0.918611944, -0.390192896, 0.0624642074, 0.068092227, 0.312009096, 0.947636008, -0.3892501, -0.866256297, 0.31318444)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.325923026, 0.111518949, -1.04732716, -0.670036972, -0.705878973, -0.229751229, -0.247104764, -0.0797614455, 0.965700626, -0.699993074, 0.703827679, -0.120983064)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--164, 4.816666603088379
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.868459523, 0.38317734, 0.509051681, 0.910178423, -0.409844041, 0.0600286126, 0.0783891976, 0.31273216, 0.946601272, -0.406731606, -0.856870294, 0.316769481)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.33976084, 0.10663572, -1.03931141, -0.686285496, -0.689089715, -0.232739985, -0.251099259, -0.0758467913, 0.96498543, -0.682614148, 0.72069633, -0.120977432)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--165, 4.833333492279053
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.878414512, 0.38101542, 0.480349898, 0.89529413, -0.441918582, 0.0561794937, 0.0954247415, 0.313432693, 0.944803596, -0.435134888, -0.840516329, 0.322784364)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.362632692, 0.098564595, -1.02605891, -0.712225854, -0.66048795, -0.237676322, -0.257487625, -0.0691668391, 0.963802993, -0.653019547, 0.747644067, -0.120805025)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--166, 4.849999904632568
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.892177105, 0.378028721, 0.440677524, 0.872811556, -0.485361606, 0.0512272716, 0.118973345, 0.313384533, 0.942144156, -0.473334372, -0.816219568, 0.331270725)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.394248009, 0.0874094069, -1.00774467, -0.746142924, -0.619273841, -0.244480371, -0.265864491, -0.0595200062, 0.962171257, -0.610399008, 0.78291595, -0.120232522)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--167, 4.866666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.10195827, -0.21846661, 0.576158345, 0.322891355, 0.799367666, -0.506707489, 0.583956778, 0.253057748, 0.771334052, 0.744805813, -0.544952393, -0.38508597)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.90957278, 0.374253035, 0.390529096, 0.84130758, -0.538630128, 0.0455982685, 0.148652911, 0.311636657, 0.938501477, -0.51971519, -0.782790065, 0.342251241)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.434210479, 0.07330814, -0.984593451, -0.785644054, -0.564575136, -0.2530182, -0.275662422, -0.0466817021, 0.960120261, -0.553871393, 0.82406044, -0.118956923)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--168, 4.883333206176758
		tween6 = ts:Create(part6, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.43993306e-05, 0.999943376, -1.40070915e-06, -0.680479527, -0.721604168, 0.127397835, 0.379316181, -0.198136583, 0.903802276, -0.626945138, 0.663343966, 0.408543468)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.930383086, 0.369736165, 0.330536842, 0.799263537, -0.599660337, 0.0398189127, 0.183873683, 0.307081401, 0.933751404, -0.572161198, -0.738991618, 0.355700791)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.908227623, -0.8513304, -0.0224957466, 0.269548535, -0.532868087, 0.802119195, 0.639324367, 0.721922576, 0.264749348, -0.720144391, 0.441451609, 0.535268664)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.482016861, 0.0564402342, -0.956901133, -0.827704608, -0.495672286, -0.263086021, -0.286162287, -0.030461669, 0.957696974, -0.482717931, 0.867975473, -0.116629481)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--169, 4.900000095367432
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.954346418, 0.364534378, 0.261455178, 0.745275736, -0.665863633, 0.0344933867, 0.223793507, 0.298545152, 0.927786231, -0.628076911, -0.683737159, 0.37151444)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.537067115, 0.0370159149, -0.925009608, -0.868768454, -0.412248164, -0.274395585, -0.296514869, -0.0107611418, 0.954967737, -0.396636486, 0.91100812, -0.112888843)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--170, 4.916666507720947
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.981161475, 0.358714044, 0.184152961, 0.678286374, -0.734174192, 0.0302684605, 0.267291248, 0.284896016, 0.92053777, -0.684458315, -0.616297603, 0.389479458)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.59866792, 0.0152793229, -0.889322639, -0.904922724, -0.314633012, -0.28656733, -0.305781573, 0.0123653412, 0.95202136, -0.295993805, 0.9491328, -0.107398599)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--171, 4.933333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01049113, 0.352347851, 0.0996016562, 0.59780401, -0.801160634, 0.0277907699, 0.312970608, 0.265165508, 0.911996067, -0.738024294, -0.536497116, 0.409256756)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.666045547, -0.00849443674, -0.850291073, -0.932148576, -0.204003781, -0.299134463, -0.312993169, 0.0386612415, 0.948968172, -0.182028234, 0.978206396, -0.0998898447)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--172, 4.949999809265137
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04196572, 0.345515907, 0.00886517763, 0.504088223, -0.863209367, 0.0276537985, 0.359202087, 0.238666907, 0.90222621, -0.785410047, -0.444868267, 0.430375785)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.738351583, -0.0340076685, -0.808403909, -0.946638107, -0.08249861, -0.311561197, -0.317224622, 0.0676393509, 0.945935309, -0.0569645166, 0.994293213, -0.0902005732)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--173, 4.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.83993375, -0.0935137868, 0.287383795, 0.0381615162, 0.948828638, -0.313477606, 0.6280967, 0.221214145, 0.746028781, 0.77719909, -0.225363851, -0.587514281)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07519031, 0.338303775, -0.0869155824, 0.398264229, -0.91676873, 0.0303424597, 0.404206187, 0.205097973, 0.891376555, -0.823409379, -0.342738777, 0.452246785)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.8675161, -0.802979112, -0.00816139579, 0.411527842, -0.412233442, 0.812839746, 0.399055243, 0.88332653, 0.245946556, -0.81938827, 0.223154724, 0.528017342)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.814677835, -0.0609392524, -0.764188409, -0.945147872, 0.0467866063, -0.323274493, -0.317680389, 0.0985789895, 0.943059564, 0.0759906173, 0.994028807, -0.0783085525)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--174, 4.983333110809326
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10974753, 0.330803186, -0.186536014, 0.282343775, -0.95863086, 0.0361826122, 0.446172297, 0.164612904, 0.879677832, -0.849242151, -0.232227802, 0.474191934)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.894064188, -0.0889502764, -0.718200505, -0.925344229, 0.17993778, -0.333707333, -0.313777357, 0.130558491, 0.940477788, 0.212795734, 0.974975467, -0.0643512905)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--175, 5
		tween2 = ts:Create(part2, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1452018, 0.323107451, -0.288743615, 0.159137502, -0.986216605, 0.0453025103, 0.483400524, 0.117848262, 0.867430627, -0.860813141, -0.116141394, 0.495491683)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.975511193, -0.117689133, -0.671016574, -0.886083186, 0.312495917, -0.342349112, -0.305213422, 0.162518501, 0.938313603, 0.348857224, 0.935913444, -0.0486269593)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--176, 5.016666889190674
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18110704, 0.315313846, -0.392246544, 0.0320622548, -0.997824073, 0.057612896, 0.514449298, 0.0658945739, 0.854983807, -0.856916726, 0.002223894, 0.515443444)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.05800128, -0.146794915, -0.623249114, -0.827582717, 0.439835936, -0.348794937, -0.292011887, 0.193350554, 0.936666727, 0.479420364, 0.877021551, -0.0315762758)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--177, 5.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.48588502, 0.0290599316, -0.0248070136, -0.170767352, 0.980334997, -0.0989039987, 0.666383088, 0.188849479, 0.721297145, 0.725790799, 0.0572660416, -0.685527921)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.0964613e-05, 0.999942422, 2.98023224e-08, -0.803864121, 0.0784133375, -0.58961767, -0.582588613, -0.303714335, 0.753886878, -0.119959563, 0.949527502, 0.289827883)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06245458, -0.575331688, 0.040465951, 0.735438645, 0.316051096, -0.599367321, 0.382688701, 0.536235929, 0.752329648, 0.559176743, -0.782663167, 0.273419648)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22409034, 0.397272348, -0.536435068, -0.998327553, 0.0423093885, 0.0394088477, 0.0468101352, 0.191369385, 0.980399966, 0.0339360535, 0.980603456, -0.193027407)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01286519, -0.647608042, 0.123555452, 0.283949524, -0.726223707, 0.626077056, 0.0274861753, 0.658849061, 0.75177294, -0.958444357, -0.196256384, 0.207042068)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.975711942, -0.280422986, 0.578697443, 0.663851321, 0.606341243, -0.437780648, 0.270706475, 0.350856096, 0.89644748, 0.697151065, -0.713617802, 0.068775773)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--178, 5.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.936805844, -0.0782989562, -0.188983351, -0.580901444, 0.526220858, 0.621003509, 0.774333239, 0.12206772, 0.620892704, 0.250922203, 0.841541231, -0.478379428)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--179, 5.099999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.909990311, -0.148583323, -0.756622672, -0.145041078, -0.447036266, 0.882678747, 0.926820099, 0.250912398, 0.27936995, -0.346363515, 0.858604431, 0.377929538)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-05, 0.99994278, 3.07708979e-06, -0.530351281, 0.261893064, -0.806309223, -0.632019877, 0.511763632, 0.5819332, 0.565044999, 0.818232238, -0.105892599)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00433564, 0.0691491365, -0.774587393, -0.525669277, 0.798084617, -0.294511348, -0.145499453, 0.256747842, 0.955464959, 0.838151693, 0.545109689, -0.0188429356)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12923551, -0.720965981, -0.0251876116, 0.749357641, -0.33494398, 0.571207106, -0.65395987, -0.238956124, 0.717801213, -0.103929602, -0.91143465, -0.39810133)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.54524684, 0.848378778, 0.953030229, 0.970074892, -0.133024812, -0.203124821, 0.0491121411, -0.711777866, 0.700686216, -0.237788215, -0.689693451, -0.683944345)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--180, 5.116666793823242
		--181, 5.116666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.57548362, 0.110143542, -1.41270018, 0.359901637, -0.623799086, 0.693790972, 0.802149773, 0.586648405, 0.111353204, -0.476473302, 0.516447902, 0.711516023)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.01301479e-05, 0.99994272, 1.78068876e-06, -0.210677564, 0.558884263, -0.802033901, -0.391223878, 0.703677118, 0.593110204, 0.895853639, 0.438729048, 0.0704002008)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.44301236, -0.684535921, -0.34141922, -0.199901417, 0.525554001, -0.826941609, -0.471426725, 0.688278735, 0.551388741, 0.858950138, 0.500065506, 0.110172421)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--182, 5.133333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.57548362, 0.110143542, -1.41270018, 0.359901637, -0.623799086, 0.693790972, 0.802149773, 0.586648405, 0.111353204, -0.476473302, 0.516447902, 0.711516023)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.01301479e-05, 0.99994272, 1.78068876e-06, -0.210677564, 0.558884263, -0.802033901, -0.391223878, 0.703677118, 0.593110204, 0.895853639, 0.438729048, 0.0704002008)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.44301236, -0.684535921, -0.34141922, -0.199901417, 0.525554001, -0.826941609, -0.471426725, 0.688278735, 0.551388741, 0.858950138, 0.500065506, 0.110172421)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00433564, 0.0691491365, -0.774587393, -0.525669277, 0.798084617, -0.294511348, -0.145499453, 0.256747842, 0.955464959, 0.838151693, 0.545109689, -0.0188429356)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12923551, -0.720965981, -0.0251876116, 0.749357641, -0.33494398, 0.571207106, -0.65395987, -0.238956124, 0.717801213, -0.103929602, -0.91143465, -0.39810133)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.54524684, 0.848378778, 0.953030229, 0.970074892, -0.133024812, -0.203124821, 0.0491121411, -0.711777866, 0.700686216, -0.237788215, -0.689693451, -0.683944345)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--183, 5.150000095367432
		--184, 5.383333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.477182269, 0.682804585, -0.844291627, 0.810716331, -0.575638056, -0.10667643, 0.497527003, 0.581404448, 0.643767059, -0.308554441, -0.574986875, 0.757749677)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.05175781e-05, 0.99994266, 3.01748514e-06, -0.726594567, 0.315023184, -0.610586405, -0.476673096, 0.408889562, 0.778196275, 0.494813383, 0.856483102, -0.146933913)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.8924523, 0.16144228, -0.870568752, -0.542247474, -0.103684492, -0.833796501, -0.773483396, 0.44918254, 0.447166562, 0.328162462, 0.887402654, -0.323766053)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.926672697, 0.0759067535, -0.503115714, -0.654886961, 0.699797928, 0.285317361, 0.243200973, -0.162304223, 0.956300557, 0.715525389, 0.695658207, -0.0639006793)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.85704273, -0.92503494, 0, 0, 1, -0.988268018, 0.152729481, 0, -0.152729481, -0.988268018, -0)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.537833512, 0.728972316, 0.924061418, 0.504433632, 0.862866044, 0.0317599326, -0.184295744, 0.0716590211, 0.980255008, 0.843553066, -0.500326872, 0.195169732)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--185, 5.416666507720947
		--186, 5.416666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.357782066, 0.789478242, -0.597283483, 0.984148979, -0.0537654459, -0.168997288, 0.168751851, 0.576925457, 0.799174547, 0.054530859, -0.815025449, 0.576853633)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.26372683e-05, 0.999943018, 2.74181366e-06, -0.986120641, 0.113585509, -0.121076412, -0.0964061692, 0.201954708, 0.974637091, 0.135157555, 0.972782373, -0.188201964)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--187, 5.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.223267049, 0.835212767, -0.0927753299, 0.840364516, 0.512487888, -0.176478058, 0.0601606965, 0.235387951, 0.970037699, 0.53867346, -0.825802207, 0.166979969)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33527493, -0.270494998, -0.534490407, 0.44402796, 0.268469334, -0.854848266, -0.58391881, 0.810342729, -0.0488098375, 0.679618239, 0.520834923, 0.516579032)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.267155647, -1.2383759, 0, 0, 1, -0.469112515, 0.883138418, 0, -0.883138418, -0.469112515, -0)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--188, 5.5
		tween2 = ts:Create(part2, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.97589469, 0.278008521, -0.293654174, -0.841009498, -0.0451971292, 0.539129376, 0.534017265, -0.229169726, 0.813822567, 0.0867698193, 0.972336829, 0.216869831)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.700379252, 0.728971839, 0.556085825, -0.325395763, 0.881922603, -0.341072112, -0.766416848, -0.0347237587, 0.64140439, 0.553825676, 0.470113695, 0.687219203)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--189, 5.550000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.160396218, 0.832985282, -0.0459531248, 0.648892641, 0.741285741, -0.17156361, 0.0308219194, 0.199686766, 0.979374886, 0.760255575, -0.640797198, 0.106727384)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--190, 5.633333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.011617573, 0.508042514, 0.106869556, 0.51362586, 0.856674969, -0.0479257181, -0.0707562864, 0.0979563445, 0.992672205, 0.855091989, -0.506471038, 0.110928036)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.943235755, -0.980179071, 0.173679739, 0.511182308, 0.208942533, -0.833689451, -0.250072032, 0.964190781, 0.0883150995, 0.822290301, 0.163336337, 0.545127451)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05219495, -0.612712383, -0.910112023, 0.4162184, -0.194690987, 0.88817662, -0.426547438, 0.820848763, 0.379821718, -0.803006589, -0.53693825, 0.258607447)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--191, 5.666666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.503263e-05, 0.999945641, 1.90734863e-06, -0.97147423, -0.22475493, -0.0756508261, -0.149712771, 0.333862066, 0.93065685, -0.183912784, 0.915435076, -0.357987106)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12247682, 0.554192185, -0.27188015, -0.623026848, -0.755606413, 0.202228814, 0.393485218, -0.0793135688, 0.915903211, -0.676022887, 0.650206387, 0.346734464)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.935359895, 0.848380029, 0.0698881447, -0.522311151, 0.831428468, -0.189528197, -0.746500373, -0.338355422, 0.572936535, 0.412227273, 0.440733731, 0.79738611)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--192, 5.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.157120779, -0.0559518859, 0.247968331, 0.140147284, 0.990124047, -0.00363945402, -0.109404884, 0.0191387087, 0.993813217, 0.984067798, -0.138882071, 0.111006744)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--193, 5.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0250444151, -0.626502573, 0.248028308, -0.422115386, 0.905026019, -0.052407492, 0.0291495807, 0.0713307336, 0.997026682, 0.906073451, 0.419332653, -0.0564909354)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24996519, -0.299050808, -0.4057706, 0.551104724, -0.0353267044, -0.833689451, 0.196201116, 0.976578236, 0.0883150995, 0.811044276, -0.212243348, 0.545127451)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08117795, 0.440687537, -0.241694331, -0.669515848, -0.389744103, 0.632335544, 0.512699664, 0.373513907, 0.773063123, -0.537482858, 0.841776192, -0.050251931)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05985129, -0.062759459, -1.19827163, 0.411630362, -0.0628509596, 0.909181058, -0.260013044, 0.948055506, 0.183258861, -0.873472154, -0.311833858, 0.373906434)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.944508374, 0.500358999, -0.0262695998, -0.394581348, 0.600494742, -0.695493758, -0.62409693, 0.380385369, 0.682502747, 0.674394965, 0.703358352, 0.224673957)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--194, 5.849999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0739791617, -0.962310195, 0.138785809, -0.700052381, 0.71328485, -0.0339332446, 0.098606497, 0.143622905, 0.984707713, 0.707250595, 0.686000884, -0.170878068)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--195, 5.900000095367432
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.54884362e-05, 0.999960542, 1.49011612e-06, -0.975421488, -0.21349898, -0.0545078814, -0.112356365, 0.269117624, 0.956531107, -0.189549387, 0.939145327, -0.286491066)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0461657, 0.421485364, -0.166368484, -0.484724402, -0.197325647, 0.852117896, 0.506674945, 0.730769753, 0.457445264, -0.712967634, 0.653481662, -0.254242003)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.962495089, 0.391788721, -0.0490766168, -0.266479373, 0.321945727, -0.908482075, -0.415611714, 0.812051594, 0.409681737, 0.869629562, 0.486747533, -0.08259058)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--196, 5.949999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0739784464, -0.87423265, 0.0659366697, -0.797987282, 0.602398038, -0.018249847, 0.0868932232, 0.144965619, 0.985613823, 0.596377373, 0.784921467, -0.168025017)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.2100848, -0.147976637, -0.381869972, 0.460475683, -0.0196754113, -0.887454271, 0.165387467, 0.984150171, 0.0639957935, 0.872129083, -0.176242307, 0.45643127)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05144775, -0.116790712, -0.993897915, 0.33053866, 0.0211540312, 0.943555415, -0.115653381, 0.993121982, 0.018249467, -0.936679482, -0.115157522, 0.330711722)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--197, 5.983333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0369886905, -0.371058106, -0.0216685496, -0.977536201, 0.210503548, 0.0105497958, 0.0270752087, 0.075777404, 0.99675709, 0.209021479, 0.974651754, -0.0797745809)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0608443, -0.609211147, -0.135122359, 0.159154445, 0.0854607746, -0.983547866, 0.0585989989, 0.993672013, 0.095822759, 0.985513091, -0.0728855431, 0.153139412)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--198, 6
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--199, 6.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--200, 6.099999904632568
		--201, 6.133333206176758
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
