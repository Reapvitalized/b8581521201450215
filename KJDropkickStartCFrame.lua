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
		tween1 = ts:Create(part1, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-09, -0.527869821, 0.0858716816, -0.97757864, 0.210570589, 0, 0.0947782621, 0.44001019, 0.892977118, 0.188034713, 0.872955382, -0.450102091)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.66948619e-09, 1, 0, -0.983822465, -0.179146186, 0, -0.102539361, 0.563118517, 0.8199898, -0.146898046, 0.80672437, -0.572378159)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01852643, -0.667432904, -0.367206633, 1.49011612e-08, -0.0852684304, -0.996357799, -0.695488453, 0.715920925, -0.0612685867, 0.718537807, 0.692955375, -0.0593031645)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.919147551, 0.277311444, 0.454758644, 0.195048556, -0.894382775, 0.402536452, 0.479792923, 0.444967747, 0.756176293, -0.855426669, 0.0456430987, 0.515908837)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03104877, -0.925691009, -0.144115508, 0.409277558, -0.0267636254, 0.912017286, 0.0652529895, 0.997868776, 7.4505806e-09, -0.910073638, 0.0595118403, 0.41015169)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.781367481, 0.285810173, 0.490134358, -0.575066924, 0.635023952, -0.515793145, -0.674616456, -0.0114216805, 0.738080144, 0.462807298, 0.772408009, 0.434965909)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166666716337204)

		if afterframe() then
			return
		end

		--2, 0.11666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.10000000149011612, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-09, -0.729117155, 0.202426851, -0.984562218, 0.175034896, 0, 0.0760163739, 0.427588165, 0.900771856, 0.157666504, 0.886865914, -0.434292674)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000000149011612, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0059967, -0.424697459, -0.310296237, -0.0305743348, -0.0429293849, -0.998610139, -0.632651091, 0.77431196, -0.0139171984, 0.773833334, 0.631346345, -0.0508333929)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999999552965164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10187876, -0.613546491, -0.3426238, 0.390867531, 0.120201565, 0.912564874, -0.263595521, 0.964529634, -0.0141435154, -0.881895542, -0.235019967, 0.408687919)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500000149011612)

		if afterframe() then
			return
		end

		--3, 0.21666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-09, -0.670823753, 0.388517201, -0.984155118, 0.177309602, 0, 0.038101349, 0.211481139, 0.976639092, 0.173167482, 0.961164355, -0.21488598)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333331942558289, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-09, 1, 7.4505806e-09, -0.995936394, -0.00885234401, -0.0896236002, -0.0889846236, 0.25003475, 0.964139283, 0.013874121, 0.968196452, -0.249806419)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.987941623, -0.649777532, -0.23384279, -0.057221517, 0.00138827926, -0.998360574, -0.573334098, 0.818615913, 0.0339992605, 0.817321062, 0.574339569, -0.0460464992)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.913297236, 0.618611753, 0.444984078, 0.0526412129, -0.908372819, -0.41483444, 0.727617264, -0.249628991, 0.638951004, -0.683960497, -0.335475922, 0.647807002)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333331942558289, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.837711334, 0.902840078, 0.309433162, -0.774284303, 0.626704752, 0.0878924355, -0.517897129, -0.707328022, 0.481113255, 0.363684595, 0.326999277, 0.872241437)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--4, 0.3166666626930237
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.967742741, -0.750452459, -0.223825619, -0.0624553896, 0.123518884, -0.990374923, -0.203404784, 0.969910145, 0.133793727, 0.97710073, 0.209803149, -0.035451781)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10361874, 0.919281602, 0.313332915, -0.498364657, -0.608142495, -0.617896438, 0.756599188, -0.653069973, 0.0325251222, -0.423308969, -0.451290339, 0.785586834)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07815874, -0.723315716, -0.146806687, 0.444644719, -0.0311935432, 0.895163655, -0.0698520243, 0.995142102, 0.0693742782, -0.892979145, -0.0933759212, 0.440305769)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--5, 0.3333333432674408
		tween1 = ts:Create(part1, TweenInfo.new(0.11666664481163025, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.31322575e-10, -0.269897401, 0.414596826, -0.99952054, -0.0309619419, -0, 1.64771736e-05, -0.000531919883, 0.999999881, -0.0309619382, 0.999520421, 0.000532175065)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.10166664481163025)

		if afterframe() then
			return
		end

		--6, 0.44999998807907104
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-09, -0.0880801231, 0.333248258, -0.990032852, -0.140239358, 0.0129552437, 0.0171375126, -0.0286558699, 0.999442458, -0.139789924, 0.989702821, 0.030773608)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1, 0, -0.990255535, 0.0901573822, -0.106140077, -0.098688364, 0.0834456086, 0.991613567, 0.0982582048, 0.992425561, -0.0737349689)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.96959281, -0.918555677, -0.172820151, -0.0514420271, 0.104552656, -0.993188024, -0.039084807, 0.993532062, 0.106613263, 0.997910857, 0.0443029553, -0.0470228866)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2539767, 1.29408324, 0.03477633, -0.953600109, -0.199796379, -0.225229487, 0.27633214, -0.877803028, -0.391283274, -0.119530022, -0.435365856, 0.892283142)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0490334, -0.952171504, 0.0323506966, 0.477444708, 0.0088747777, 0.878617108, -0.0997805744, 0.99402827, 0.0441807434, -0.872977912, -0.108762749, 0.475479007)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.952985764, 1.27711785, -0.124827832, -0.961325407, 0.21246998, 0.1752422, -0.197727948, -0.975357413, 0.0978833884, 0.19172132, 0.0594475046, 0.979647279)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--7, 0.550000011920929
		tween1 = ts:Create(part1, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, -0.0747581124, 0.209881037, -0.980086207, -0.191406801, 0.0528621674, 0.0428373665, 0.0561415739, 0.99750334, -0.193896696, 0.979903877, -0.0468242131)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.948668122, -0.945494235, -0.0862693191, -0.0716046765, 0.0555482358, -0.995884597, -0.139689937, 0.988049388, 0.0651550144, 0.987603307, 0.1437805, -0.0629895851)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08471549, -0.938660026, 0.127254367, 0.406223893, -0.0174359139, 0.913607121, 0.0341366082, 0.999409497, 0.00389504433, -0.913135767, 0.0296051353, 0.406579405)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13499997615814208)

		if afterframe() then
			return
		end

		--8, 0.699999988079071
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-09, -0.107292779, 0.101915479, -0.969122767, -0.234129325, 0.0773601681, 0.0494142622, 0.122963563, 0.991180182, -0.241576836, 0.964397967, -0.107597448)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.94414562, -0.849669635, -0.0586517751, -0.0784889907, 0.0453024805, -0.995884597, -0.272661746, 0.959901273, 0.0651550144, 0.958903432, 0.276653767, -0.0629895851)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08308697, -0.868611157, 0.144896805, 0.402484119, -0.0213469975, 0.915178061, 0.146854311, 0.98828584, -0.0415324643, -0.903570831, 0.151114002, 0.400904268)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--9, 0.7166666388511658
		tween6 = ts:Create(part6, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.81842256e-08, 1, 1.49011612e-08, -0.994524956, 0.100595504, -0.0282940902, -0.0464881547, -0.183414727, 0.981935799, 0.0935887322, 0.977875054, 0.187087029)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18404007, 1.42381942, -0.22230652, -0.980858207, -0.176256776, 0.082764402, 0.178638503, -0.983663619, 0.0222515166, 0.0774903297, 0.036610797, 0.996320546)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09837222, 1.3150804, -0.704082489, -0.973618686, -0.15083465, -0.171217501, 0.125329524, -0.980537236, 0.151130378, -0.190680757, 0.125684634, 0.973573327)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--10, 0.800000011920929
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.79396772e-09, -0.169288293, -0.0060627535, -0.971876025, -0.222903937, 0.075966239, 0.0339657515, 0.186528251, 0.981862307, -0.233030826, 0.956828594, -0.17371124)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--11, 0.8833333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7252903e-09, -0.260744721, -0.114053726, -0.966849387, -0.24136965, 0.0833240375, 0.0225886367, 0.244189277, 0.969464481, -0.254346132, 0.939208329, -0.230642065)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08249509, -0.843138516, 0.151312232, 0.401588291, -0.0184617862, 0.915633976, 0.177181572, 0.982473493, -0.0579006821, -0.89851743, 0.185485676, 0.397821188)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--12, 0.949999988079071
		tween1 = ts:Create(part1, TweenInfo.new(0.15000003576278687, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-08, -1.00868857, -0.114042103, -0.98806262, 0.149038851, 0.0389838815, 0.130165562, 0.672331929, 0.728715897, 0.0823968872, 0.725091219, -0.683705747)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.15000003576278687, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1, 1.49011612e-08, -0.977308631, 0.178932726, -0.113361433, -0.0312239975, 0.40763551, 0.912610769, 0.209506065, 0.895442069, -0.392798722)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000003576278687, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.905984223, -0.366882324, -0.162614882, -0.0901532024, -0.0786737055, -0.992815077, -0.783078909, 0.621538162, 0.0218554139, 0.615353584, 0.779423535, -0.117641583)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000003576278687, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.840805054, 0.695341051, -1.20305514, -0.960144997, -0.246837825, 0.131119877, 0.244792253, -0.516218185, 0.820729613, -0.134900495, 0.820116043, 0.556067824)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000003576278687, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17935741, -1.02327931, 0.214869559, 0.58678925, -0.113177642, 0.801791251, 0.018155098, 0.991773963, 0.12670815, -0.809536278, -0.0597943217, 0.584017038)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.486112595, 0.682016492, -0.851085484, -0.557228982, -0.134589911, -0.81937921, -0.698138475, -0.458302498, 0.55005765, -0.449555457, 0.878547311, 0.161417261)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499996423721314)

		if afterframe() then
			return
		end

		--13, 1.0499999523162842
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.772994518, 0.0238460004, -0.337083995, -0.289890349, -0.607180119, -0.739794672, -0.878995299, -0.136864871, 0.456766933, -0.378591567, 0.7826882, -0.494032443)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--14, 1.100000023841858
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, -1.17156625, -0.114064187, -0.952163219, 0.273667783, -0.135982513, 0.173308909, 0.850091457, 0.497301519, 0.25169301, 0.449945211, -0.856854916)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.65661287e-08, 1.00000012, 8.94069672e-08, -0.990106702, -0.135551527, -0.036252901, -0.000543743372, -0.254657716, 0.967031181, -0.140314668, 0.957483888, 0.252064675)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.933525264, -0.317732096, -0.176808894, -0.0248000585, -0.0577154011, -0.998025, -0.917847097, 0.39693433, -0.000146853738, 0.396158874, 0.916030765, -0.0628179014)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.891399026, 0.801418304, -0.85804975, -0.975133896, 0.160781324, -0.152520299, -0.0869902372, 0.35528779, 0.930701137, 0.203827605, 0.920825422, -0.332466424)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.945215404, -1.09382677, 0.195856124, 0.641518116, 0.0600060076, 0.764757335, -0.0229679793, 0.997991383, -0.0590397716, -0.766763926, 0.0203101635, 0.641607761)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--15, 1.149999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.72257423e-05, -1.38809001, 0.0343348086, -0.806794286, 0.468715906, -0.359705925, 0.286434144, 0.842773676, 0.455727905, 0.516757607, 0.26464659, -0.814201236)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06973922, -0.208012879, -0.205658138, 0.0747801512, 0.00185970962, -0.997198343, -0.991432905, 0.107532501, -0.0741472468, 0.107093334, 0.994199932, 0.00988505781)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.876576364, -1.21917009, 0.218128204, 0.730717957, 0.261909842, 0.63043946, -0.118702948, 0.958156168, -0.260472834, -0.672279716, 0.115497142, 0.731231689)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10484004, -0.469142914, 0.258562177, 0.348963976, 0.775301456, -0.526432753, -0.835216403, 0.00253582746, -0.549916267, -0.425016016, 0.631586373, 0.648429155)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--16, 1.25
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.57952309e-06, -1.21821511, 0.167588949, -0.783514261, 0.528831184, -0.326256305, 0.337869644, 0.803236067, 0.490566999, 0.521487832, 0.274134099, -0.808022797)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.21540642e-08, 1.00000012, 1.1920929e-07, -0.935654998, -0.327655375, -0.131116405, 0.090726018, -0.582354128, 0.807856858, -0.341054857, 0.743979692, 0.574609518)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07571244, -0.109437048, -0.324646354, 0.187754512, -0.0991716981, -0.977196217, -0.95816505, 0.2003223, -0.204427302, 0.21602796, 0.974698365, -0.0574119687)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.31666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07175326, 0.676477969, -0.828739524, -0.979806662, -0.129290566, -0.152520239, -0.186405569, 0.314721793, 0.930701196, -0.0723296404, 0.940337002, -0.332466304)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00003684, -1.17006874, 0.12838465, 0.73551321, 0.225259468, 0.638966322, -0.100231782, 0.968910158, -0.226200566, -0.670054615, 0.102328733, 0.735224485)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--17, 1.2666666507720947
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.841794848, -0.127666235, 0.347538441, 0.488734603, 0.848836541, 0.20153147, -0.682018995, 0.515783131, -0.518476486, -0.544048309, 0.115949139, 0.831003726)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166667461395264)

		if afterframe() then
			return
		end

		--18, 1.3833333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, -1.17242861, 0.213731647, -0.771608472, 0.543862581, -0.329899788, 0.34215191, 0.792073011, 0.505521834, 0.536239088, 0.277189136, -0.797253847)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.23517418e-08, 1.00000012, 5.96046448e-08, -0.831520081, -0.517298639, -0.202425987, 0.132255271, -0.538288355, 0.832318723, -0.539520919, 0.665317893, 0.516013086)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08622789, -0.116276622, -0.373592496, 0.180958569, -0.1377455, -0.973796844, -0.967648804, 0.152064949, -0.201326013, 0.175812125, 0.978724957, -0.105771825)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.677390575, 0.0857565403, 0.40314889, 0.523938417, 0.805398464, 0.277167529, -0.567656755, 0.572782278, -0.591342688, -0.635023057, 0.152491137, 0.757292688)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--19, 1.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, -1.18696928, 0.232145667, -0.770753086, 0.512163281, -0.378983408, 0.274269521, 0.803601444, 0.528205454, 0.575079083, 0.30317232, -0.759849072)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06394339, -0.0898960233, -0.254578054, 0.170198172, -0.0815617591, -0.982028246, -0.980088115, 0.0894203931, -0.177288115, 0.102273524, 0.992649317, -0.0647190362)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.971087694, -1.25180888, 0.108834565, 0.707004488, 0.383645922, 0.59410435, -0.173706144, 0.908539057, -0.379977733, -0.685543656, 0.165446416, 0.708982944)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.527026296, 0.253565967, 0.578434467, 0.561425745, 0.821745038, 0.0976503193, -0.334315658, 0.333171159, -0.881606638, -0.756990135, 0.462311178, 0.461773574)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--20, 1.5666667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, -1.21497464, 0.225959897, -0.771261454, 0.482545048, -0.415097654, 0.267558694, 0.837500215, 0.476451308, 0.57755357, 0.256405562, -0.775040746)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.216666579246521, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3038516e-08, 1, 2.23517418e-08, -0.993697584, -0.107281595, 0.0324908793, 0.0521637872, -0.186017022, 0.981160939, -0.0992166698, 0.976672173, 0.190440893)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07175326, 0.676478028, -0.828739524, -0.979806662, -0.11266426, -0.165182441, -0.186405569, 0.215856075, 0.958467841, -0.0723296404, 0.969903231, -0.232497901)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--21, 1.6166666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.08616257e-07, -1.40641201, 0.109493047, -0.856829882, 0.350901097, -0.377771139, 0.186988786, 0.894283354, 0.406561941, 0.48049745, 0.277715445, -0.831863225)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06394148, -0.0898954868, -0.254576564, 0.294213474, 0.113472998, -0.948979616, -0.949961782, 0.143736392, -0.277330875, 0.104933321, 0.983088851, 0.150084212)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07175338, 0.676478207, -0.828739405, -0.959803522, 0.206156388, -0.190463498, -0.19747214, -0.0137742721, 0.98021245, 0.199453086, 0.978421628, 0.0539310127)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1169678, -1.27475286, 0.189134449, 0.707004786, 0.306292236, 0.637439907, -0.173706204, 0.948943853, -0.263308644, -0.685543537, 0.0754332244, 0.72411257)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.571633041, 0.135145724, 0.62560302, 0.561425865, 0.825500309, -0.0578798056, -0.334315628, 0.162274629, -0.928385735, -0.756990075, 0.540570378, 0.367083102)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--22, 1.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.87430191e-07, -1.62432146, -0.037548542, -0.940215051, 0.203256011, -0.273281634, 0.0827860534, 0.914722264, 0.395511836, 0.330366969, 0.34924224, -0.876862288)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.956572711, -0.0247689486, -0.0498359203, 0.13981849, 0.447030067, -0.883523762, -0.962418377, 0.271149427, -0.015111506, 0.232812107, 0.852433383, 0.468141764)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.505388618, 0.570670485, -0.905845881, -0.681634307, 0.706468701, -0.190463498, -0.171582386, 0.0987140089, 0.98021245, 0.711289883, 0.700825989, 0.0539310127)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--23, 1.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-08, -1.552513, -0.444758505, -0.982948065, 0.123595387, -0.13615182, 0.0805595815, 0.95503062, 0.285354197, 0.165297627, 0.269520015, -0.948702216)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11758709e-08, 1.00000012, 0, -0.841298401, 0.537263274, 0.059708219, 0.0904345438, 0.0309859589, 0.995420337, 0.532952666, 0.842845261, -0.0746556073)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06162858, -0.876482308, -0.0752415061, 0.210795775, 0.476112485, -0.853745878, -0.817212105, 0.56507951, 0.113355204, 0.536404252, 0.673796773, 0.508201241)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22448254, -1.2272768, -0.139264494, 0.0932469517, 0.393879771, 0.914420068, -0.446024388, 0.837635577, -0.315323055, -0.890149653, -0.378450453, 0.25378716)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--24, 1.8333333730697632
		--25, 1.8333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-9.26852226e-06, -1.30888879, -1.18573177, -0.970883906, -0.165058851, -0.173609018, -0.219688267, 0.902448595, 0.370572209, 0.0955069363, 0.397922426, -0.91243428)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.812094212, -1.05363178, 0.383474052, 0.519349933, -0.0373293795, -0.85374552, 0.255355805, 0.960178912, 0.113355473, 0.815517962, -0.276880473, 0.508201301)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.648447633, 0.32825467, 0.556094348, 0.513216913, -0.418367982, 0.749384046, -0.0429826379, 0.859520555, 0.509292126, -0.85718143, -0.293587148, 0.423137635)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--26, 1.8666666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.513016403, -0.503162026, -2.62759852, -0.852093756, -0.474412411, -0.221063733, -0.50866729, 0.651160598, 0.563247323, -0.123263508, 0.592387378, -0.79616797)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20219529, 0.131432652, -0.906032443, -0.198938519, 0.252075702, 0.947038174, 0.092066586, 0.966887057, -0.238019094, -0.975677848, 0.0398394018, -0.215558857)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--27, 1.8833333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19701612, 0.327515066, -3.80911446, -0.760620236, -0.597063005, -0.254897207, -0.561848819, 0.408709973, 0.719223559, -0.325242728, 0.690269709, -0.646332085)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, 7.4505806e-09, -0.780580282, 0.581277132, 0.229806706, 0.0568688847, -0.300088614, 0.952214777, 0.622463048, 0.756349027, 0.201186672)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.2666667699813843, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08661187, -0.580557704, -0.113089576, 0.608994067, -0.371602684, -0.700740278, 0.714623928, 0.640382051, 0.281466037, 0.344148487, -0.672177851, 0.655545354)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13856864, 1.19147301, 0.239582479, -0.428331852, 0.501573682, 0.751634955, -0.881773114, -0.413811058, -0.22635439, 0.197501361, -0.759726226, 0.619523704)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--28, 1.9166666269302368
		--29, 1.9500000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.46013284, 0.702655971, -4.20717764, -0.755393088, -0.647936642, -0.0977723598, -0.447604477, 0.401245803, 0.799157143, -0.478572428, 0.647441089, -0.593117654)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.41408682, 0.828935564, 0.627171218, 0.255484343, -0.731430292, -0.632247508, 0.949326634, 0.0659720004, 0.307291687, -0.183050811, -0.678717136, 0.711219907)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.903927386, -0.393834949, -0.638727129, -0.386884332, 0.387933135, 0.836557686, 0.89626801, 0.371536642, 0.242207065, -0.216851711, 0.843485653, -0.491433114)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--30, 1.9833333492279053
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04100835, 0.927219391, -0.386790931, -0.638174355, 0.766445458, 0.0727667138, -0.575896561, -0.537959218, 0.615583718, 0.510956645, 0.350943685, 0.784704983)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--31, 2.049999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.78902888, 0.742604136, -5.50419331, -0.935835481, -0.352233171, -0.0119845569, -0.20350875, 0.512307048, 0.834341466, -0.287743062, 0.783245325, -0.551117659)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.65661287e-10, 1, -9.31322575e-10, -0.992634356, -0.120321438, 0.0141365491, 0.0129933357, 0.0102806063, 0.999862731, -0.120450258, 0.992681742, -0.00864150655)}) tween6:Play() tablesorting(part6, tween6)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.884664536, -0.75514555, -0.207968771, -0.148592025, -0.0985283032, 0.983977914, 0.366854757, 0.918530583, 0.147374183, -0.918334365, 0.382875592, -0.100340754)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.956235409, 0.580884099, -0.625133693, -0.806024373, 0.446082562, -0.389018178, -0.38276419, 0.108476907, 0.917455435, 0.451460272, 0.888393641, 0.0833092928)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--32, 2.1500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.18370581, 0.447335958, -5.99167824, -0.989078462, -0.147334814, 0.00404049456, -0.0765132606, 0.536688328, 0.840304375, -0.125974566, 0.830817759, -0.542099953)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19650781, 0.0992021561, -0.522425473, 0.445309043, -0.229022801, -0.865591407, 0.400843143, 0.915439308, -0.0359955654, 0.800640166, -0.330937207, 0.499455631)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.41955161, 1.17536342, -0.094718039, -0.366192043, -0.78548336, -0.498918295, 0.900661469, -0.433956861, 0.0221495926, -0.233906984, -0.441245437, 0.866366088)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.93302989, 0.284596086, -0.162257761, -0.638528943, 0.534942865, -0.553278446, -0.473714828, 0.293388933, 0.830371857, 0.606527209, 0.792312622, 0.0660728812)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--33, 2.25
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.39411569, 0.245573759, -6.15417671, -0.99761641, -0.0222250111, 0.0653264746, 0.0394931212, 0.59242177, 0.804659426, -0.0565843843, 0.805321395, -0.590131998)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15642643, 0.294877648, -0.669778943, 0.291059166, -0.148755565, -0.945069492, 0.0399868935, 0.98886621, -0.143334225, 0.955869019, 0.0039283447, 0.293766826)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.36821294, 1.25049579, -0.518863499, -0.69323802, -0.683678627, -0.22804603, 0.669332981, -0.728067338, 0.148026764, -0.267235219, -0.0500207841, 0.962332249)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.882890522, -0.85593164, -0.104909122, 0.00653563486, -0.180049866, 0.983635724, 0.0870097801, 0.98002845, 0.178811431, -0.996186018, 0.084417291, 0.0220712051)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.849648118, 0.138549745, 0.136349425, -0.327073991, 0.67921102, -0.657034993, -0.458983511, 0.493580759, 0.738723278, 0.826048911, 0.543185413, 0.15030925)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--34, 2.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.60445237, -0.219125509, -6.2354393, -0.980157197, 0.121765651, 0.156413078, 0.197479934, 0.668056428, 0.717427611, -0.0171347186, 0.734080255, -0.678846538)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03410149, 0.351500988, -0.758000672, 0.071786128, -0.106888987, -0.991676092, -0.423195809, 0.897047341, -0.127323896, 0.903189957, 0.428813249, 0.0191605855)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.27841127, 1.04368472, -0.828729033, -0.942273676, -0.32988292, 0.0574271567, 0.305710673, -0.777574182, 0.549472451, -0.136607409, 0.535309494, 0.833536088)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02083611, -0.938524008, 0.00529116392, 0.196560428, -0.199567273, 0.959967196, -0.254172593, 0.935227156, 0.246467829, -0.946974397, -0.292443156, 0.133104146)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.712252021, 0.0683233738, 0.375212014, 0.172344014, 0.720936239, -0.671229184, -0.295440376, 0.687885702, 0.662969291, 0.93968749, 0.0840494409, 0.331546605)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--35, 2.366666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.11709094, -0.70422101, -6.23546886, -0.945219874, 0.233849138, 0.227758408, 0.325778961, 0.71995914, 0.612802565, -0.020673342, 0.653432071, -0.7567029)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.897722065, 0.296548367, -0.777393699, -0.102793492, -0.126995444, -0.98656255, -0.721387088, 0.692391396, -0.0139643028, 0.684860766, 0.710258067, -0.162786186)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19290209, 0.71784848, -0.959119141, -0.991046906, 0.0637053847, 0.117336363, 0.0721800327, -0.483691692, 0.872257233, 0.112322211, 0.872917116, 0.474762768)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05569398, -0.991786063, 0.0857774317, 0.329288989, -0.160261303, 0.930529356, -0.491896689, 0.81208694, 0.313931286, -0.805981755, -0.561098337, 0.188579157)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.584645152, 0.072052747, 0.494623899, 0.570659935, 0.576896369, -0.584412456, -0.0875006765, 0.750333965, 0.655242383, 0.816511452, -0.322784066, 0.478664368)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--36, 2.4166667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.25839281, -1.08085728, -6.23551655, -0.869793534, 0.41251421, 0.27072376, 0.493401945, 0.723022342, 0.483521819, 0.00372035801, 0.554139733, -0.832415462)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.65661287e-10, 1, -9.31322575e-10, -0.992634356, -0.120321438, 0.0141365491, 0.0129933357, 0.0102806063, 0.999862731, -0.120450258, 0.992681742, -0.00864150655)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.871773303, -0.101225317, -0.715249419, -0.186416894, -0.15573746, -0.970048726, -0.817568898, 0.572120547, 0.0652627349, 0.544820964, 0.805247784, -0.233979046)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14695835, 0.54102838, -0.888722301, -0.983307004, 0.171108216, 0.0618816614, 0.00119370222, -0.334021389, 0.942564845, 0.18195051, 0.9269045, 0.328241199)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03420341, -0.632620096, -0.248760104, 0.250837833, -0.172687486, 0.952501833, -0.5397771, 0.79184103, 0.285708338, -0.803568065, -0.585804939, 0.105410799)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.61647284, 0.168896884, 0.373485953, 0.627358317, 0.493720949, -0.60221374, 0.00340548158, 0.771580458, 0.636122763, 0.778723359, -0.401127666, 0.482376069)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--37, 2.4833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.26224661, -1.41615677, -5.93656349, -0.682884812, 0.683786273, 0.257108331, 0.729129314, 0.616214693, 0.297741979, 0.04515782, 0.390788496, -0.919372201)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-9.31322575e-09, 0.999999762, 2.98023224e-08, -0.890571296, -0.451885164, -0.0517939404, -0.173682109, 0.23260954, 0.956936359, -0.420377672, 0.86121577, -0.285639733)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.977373958, -1.02697086, -0.535649419, -0.19373022, -0.146540925, -0.970048547, -0.788944542, 0.610989213, 0.0652634725, 0.583125472, 0.777958572, -0.233979106)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13899136, 0.506278217, -0.549748719, -0.998802125, -0.0488791019, 0.00261451863, 0.0268993005, -0.50350666, 0.86357522, -0.0408884883, 0.862612367, 0.50421524)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.51870662, 0.604099751, -0.811539054, 0.300824434, -0.276657194, 0.912670195, -0.235947162, 0.905656695, 0.352300286, -0.924031019, -0.321321636, 0.207166731)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.855549514, 0.406347215, -0.078624472, 0.323923469, 0.556078732, -0.765407503, -0.0632003993, 0.819939077, 0.568952024, 0.943970382, -0.135922208, 0.30074203)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--38, 2.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.57355499, -1.10735416, -5.62717772, -0.772698343, 0.620173931, 0.135357425, 0.633759499, 0.765769005, 0.109303236, -0.0358652771, 0.170242399, -0.984749436)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.967322826, -1.05117512, -0.0698149055, -0.0755582079, -0.088972792, -0.993164003, -0.0637306273, 0.994405746, -0.0842355192, 0.995102704, 0.0569302849, -0.0808058158)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.900391757, -0.161499143, -0.0653605014, -0.0806414187, -0.935280204, 0.344600022, 0.536213636, 0.250727355, 0.805986047, -0.840222597, 0.249776781, 0.481290549)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.495342433, 0.716182232, -0.444051981, -0.013001807, -0.288881391, 0.957276762, 0.531666756, 0.808813512, 0.251300573, -0.84685427, 0.512219787, 0.143072128)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.724435329, 0.480908513, -0.339165777, -0.539259315, 0.356732428, -0.762850821, -0.838826239, -0.147253215, 0.524106145, 0.0746333599, 0.922528446, 0.378644109)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--39, 2.5999999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.7488246, -0.794409275, -5.21253157, -0.893932879, 0.39887321, 0.20441173, 0.434689939, 0.882704079, 0.178544715, -0.109218374, 0.248462707, -0.962464392)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 1, -2.98023224e-08, -0.948466957, -0.293598562, -0.11920698, -0.181049824, 0.19336307, 0.964277804, -0.26006034, 0.936167955, -0.236554503)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00486171, -0.903724551, -0.342509717, -0.00790930726, -0.107311472, -0.994193971, 0.533374548, 0.840531111, -0.0949686468, 0.845842242, -0.531028867, 0.0505891815)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10101509, 0.290869325, -0.484785259, -0.500736833, -0.613017678, 0.611123621, 0.745294094, 0.0537288785, 0.66456759, -0.440226555, 0.788240254, 0.429974347)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.704718232, 0.386120558, -0.256887555, -0.191409826, -0.291709602, 0.937159419, 0.816322327, 0.482822835, 0.317017674, -0.544959128, 0.825704396, 0.145711988)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.674281538, 0.328668505, -0.366452128, -0.627137184, 0.180882379, -0.757615089, -0.769663334, -0.293328404, 0.567077577, -0.119655728, 0.938743949, 0.323175609)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--40, 2.6666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.72956347, -0.581633091, -5.29114676, -0.928933978, 0.266415089, 0.257108331, 0.3384175, 0.89264971, 0.297741979, -0.150184736, 0.363592386, -0.919372201)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.32830644e-08, 0.99999994, 4.84287739e-08, -0.977227032, -0.211447597, 0.0178128574, 0.0411007628, -0.106257722, 0.993488789, -0.208178043, 0.971596301, 0.112528563)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07747555, -0.633770704, -1.26283503, -0.0275278874, -0.104023047, -0.99419558, 0.678975224, 0.727994561, -0.0949676409, 0.733646393, -0.677645802, 0.0505903922)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00107598, 0.263224483, -0.51347959, -0.509838104, -0.436188459, 0.741490304, 0.735395968, 0.226264074, 0.63875103, -0.446386158, 0.870949388, 0.205405951)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.969240904, -0.38922286, -0.492998779, -0.154508531, -0.179082006, 0.971627891, 0.766699135, 0.598532796, 0.232235119, -0.623136818, 0.780826807, 0.0448215976)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.721806049, 0.000372171402, -0.151388377, -0.147383869, 0.602507412, -0.784388363, -0.423290133, 0.678330541, 0.600580335, 0.893925905, 0.420538396, 0.155062214)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--41, 2.75
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.60039902, -0.461058617, -5.52388668, -0.908854604, 0.30474624, 0.284803569, 0.385947764, 0.873372614, 0.297093809, -0.158201367, 0.379934371, -0.911384881)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 1, -4.47034836e-08, -0.96792084, -0.109832868, -0.225977659, -0.147331014, -0.480436921, 0.86456573, -0.203525752, 0.870124698, 0.448843122)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0814954, -0.464376092, -1.02376175, 0.00380392838, -0.148242652, -0.988943696, 0.0956849232, 0.984467089, -0.147203565, 0.995404422, -0.0940670446, 0.0179294273)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.921200931, 0.723325372, -0.705269814, -0.733386874, 0.0341844559, 0.678951502, 0.640929043, -0.298156619, 0.707327962, 0.226613462, 0.953904688, 0.196754277)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.976892471, -0.611879528, -0.351163507, 0.0730311573, -0.160273522, 0.984367251, 0.345555067, 0.929931641, 0.125773311, -0.935552359, 0.330967724, 0.123297304)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.773177564, 0.0991182625, 0.0773321241, 0.162640244, 0.616268575, -0.770559013, -0.313643783, 0.772741318, 0.551813781, 0.935508311, 0.151933908, 0.31896764)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--42, 2.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.34497499, -0.557671309, -5.8730073, -0.874866068, 0.347290963, 0.337636441, 0.446690172, 0.848026335, 0.28516537, -0.187289208, 0.400300384, -0.897040904)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10996771, -0.305240333, -0.665886402, 0.0874123648, -0.153353572, -0.984297574, -0.781246662, 0.602497578, -0.163249165, 0.618071735, 0.783249259, -0.0671412423)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.847699165, 0.875974178, -0.719818294, -0.579120576, 0.543131232, 0.607970238, 0.153457478, -0.659797847, 0.735607028, 0.800668836, 0.519302666, 0.298754871)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03577256, -0.763702989, -0.304229766, 0.310063809, 0.0468761548, 0.949559391, -0.427387416, 0.899044991, 0.0951742455, -0.849235237, -0.435339808, 0.298795611)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.822489858, 0.256614029, 0.328888535, 0.451110482, 0.465352327, -0.761542201, -0.214869753, 0.884830236, 0.41340825, 0.866216063, -0.022860378, 0.499146342)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--43, 2.8499999046325684
		part1.C0 = CFrame.new(-3.34497499, -0.557671309, -5.8730073, -0.874866068, 0.347290963, 0.337636441, 0.446690172, 0.848026335, 0.28516537, -0.187289208, 0.400300384, -0.897040904)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-08, 1.00000012, 2.98023224e-08, -0.963764727, 0.133793071, -0.230774686, -0.25727725, -0.237670526, 0.93665427, 0.0704695135, 0.962087393, 0.263480395)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13442361, -0.315496385, -0.547083676, 0.113540351, -0.132289529, -0.984686792, -0.942936003, 0.297902226, -0.148748457, 0.313018262, 0.945385635, -0.0909166187)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.943257809, 0.296509802, -0.394143164, -0.722500443, -0.358567297, 0.591119766, 0.677494824, -0.196756348, 0.708722591, -0.137818187, 0.912532985, 0.385084093)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08699906, -0.69286859, -0.399133444, 0.345391303, 0.12771377, 0.929727912, -0.630126476, 0.765717864, 0.128905952, -0.695446253, -0.630369186, 0.344948143)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.820432127, 0.315364182, 0.351724684, 0.448927253, 0.3819471, -0.807824731, -0.254022956, 0.921294391, 0.294430077, 0.856701076, 0.0730283409, 0.510617495)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--44, 2.883333444595337
		part1.C0 = CFrame.new(-4.66381836, -0.774851561, -5.98940372, -0.862653017, 0.352587104, 0.362646043, 0.460543513, 0.843975902, 0.274963081, -0.209115997, 0.404211968, -0.890439987)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.20176792, -0.600353599, -0.549280703, 0.122557968, -0.111898057, -0.986133039, -0.960695624, 0.236001015, -0.146175981, 0.249085248, 0.965288758, -0.0785761625)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.856553853, 0.346446157, -0.215163216, 0.0876402259, -0.871128857, 0.483170599, 0.657442272, 0.414980888, 0.628936112, -0.748390913, 0.262536705, 0.609085858)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22919905, -0.146379054, -0.896600366, 0.359463334, 0.0340939164, 0.932536185, -0.549133837, 0.815709651, 0.181851104, -0.754478693, -0.577455938, 0.311939836)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.737203658, 0.343497604, 0.0771522522, 0.0747515559, 0.119923569, -0.989964962, -0.649279892, 0.759335339, 0.0429586098, 0.756867111, 0.63955313, 0.134625465)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--45, 2.9166667461395264
		part1.C0 = CFrame.new(-2.0340364, -0.793748856, -5.98938274, -0.91596818, 0.110143587, 0.385837585, 0.222133413, 0.939985871, 0.259004653, -0.334154159, 0.322947443, -0.885463715)
		task.wait()

		if afterframe() then
			return
		end

		--46, 2.933333396911621
		part1.C0 = CFrame.new(-3.03371024, -0.80322361, -5.98937225, -0.861775041, 0.315229058, 0.397459924, 0.432591617, 0.865887344, 0.251204729, -0.264968395, 0.388419777, -0.882565558)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1.00000012, 7.4505806e-08, -0.966636956, 0.0702805668, -0.246320263, -0.255608022, -0.32720235, 0.909727037, -0.0166604258, 0.942337155, 0.334250182)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.2265569, -0.840851665, -0.467867613, 0.0735645145, -0.145931751, -0.986555696, -0.802014232, 0.579313397, -0.1454961, 0.592757463, 0.801935077, -0.0744224191)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.77857399, 0.297049731, -0.0778038204, 0.610007823, -0.693714261, 0.382950634, 0.385648906, 0.682094455, 0.621306777, -0.692217827, -0.231317401, 0.683613122)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11561525, 0.206943512, -0.836172938, 0.323444545, -0.162683874, 0.932157516, -0.0855563283, 0.976047158, 0.200030416, -0.942371368, -0.144450724, 0.301778495)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.636145115, 0.424390048, -0.147235334, -0.139797762, 0.0341109559, -0.989592373, -0.901155591, 0.409776092, 0.141429335, 0.4103356, 0.911548138, -0.0265465043)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--47, 2.950000047683716
		--48, 2.9666666984558105
		part1.C0 = CFrame.new(-1.05247462, -0.812680006, -6.11247635, -0.849943638, 0.345868468, 0.397455335, 0.457204103, 0.859067142, 0.230147853, -0.261839926, 0.377330929, -0.88829118)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 1, 2.98023224e-08, -0.928687572, -0.203958228, -0.309742808, -0.139208943, -0.582410038, 0.800886691, -0.343744725, 0.786892474, 0.512484133)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.23357332, -1.27749169, -0.221434891, -0.111663163, -0.119331881, -0.98655808, 0.267587721, 0.952486455, -0.145493567, 0.9570418, -0.280233741, -0.074421525)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.631336808, 0.0989244878, 0.155293465, 0.959354579, 0.0115037337, 0.281972051, -0.19411476, 0.752154887, 0.629747748, -0.204844236, -0.658885002, 0.723815084)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.632661462, 0.720423937, -0.157414317, -0.112154655, -0.344247878, 0.932159126, 0.952055573, 0.231475532, 0.200029299, -0.284627646, 0.909898579, 0.301776588)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.416197956, 0.638933659, -0.545825481, -0.495123059, -0.025552839, -0.868447363, -0.789429426, -0.404212862, 0.461966664, -0.362841964, 0.914307714, 0.179963425)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--49, 3
		part1.C0 = CFrame.new(-5.66228151, -0.812659025, -6.35877228, -0.908031344, 0.192531869, 0.372035801, 0.282643199, 0.93708539, 0.204899877, -0.309179455, 0.291208893, -0.905320704)
		task.wait()

		if afterframe() then
			return
		end

		--50, 3.0166666507720947
		part1.C0 = CFrame.new(-0.061979115, -0.812656403, -6.48185635, -0.989659905, 0.064399302, 0.128163576, 0.0918047652, 0.970937312, 0.221026957, -0.110204771, 0.230507344, -0.96680975)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1, 0, -0.92490226, 0.339120448, 0.171910644, -0.0382851064, -0.532924056, 0.845296562, 0.378272712, 0.775235057, 0.505885839)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33636737, -0.305451632, -0.759150565, -0.134978175, -0.0921393111, -0.98655808, 0.468664348, 0.871313572, -0.145493567, 0.873004496, -0.48199904, -0.074421525)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.631338835, 0.0989239514, 0.15529266, 0.622340679, -0.531029344, 0.575066686, 0.509270728, 0.832612336, 0.217714906, -0.59442085, 0.157373354, 0.788604021)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.837429047, -0.890398145, -0.839354634, -0.150841177, 0.400376976, 0.903853834, 0.747285366, 0.644734919, -0.160885707, -0.647154331, 0.651165664, -0.396449715)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08197641, 0.62765336, -0.399561435, -0.287433684, 0.862333953, -0.41684854, -0.9480896, -0.194339782, 0.251711905, 0.136048496, 0.46756053, 0.87342912)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--51, 3.0333333015441895
		part1.C0 = CFrame.new(1.32708597, -0.812668324, -6.48187542, -0.958615124, -0.24426806, -0.146253169, -0.283432662, 0.770280004, 0.571257412, -0.0268839672, 0.58906877, -0.807635546)
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.95816398, -1.11697102, -4.07709503, -0.58874321, -0.697958469, -0.407719672, -0.805588543, 0.465209424, 0.366889417, -0.0663983524, 0.544457734, -0.836156011)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--52, 3.1500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.61453676, -1.11698151, -3.73505712, -0.782126606, -0.499160707, -0.372983396, -0.611151397, 0.731254697, 0.302920043, 0.121540084, 0.464871138, -0.876996517)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-09, 1, -1.1920929e-07, -0.983041406, 0.0693383664, 0.169770092, 0.113918528, -0.494578123, 0.861635089, 0.143709004, 0.866362929, 0.47829169)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30259085, 0.342255116, -0.512182117, 0.0770236552, -0.0265916064, -0.996674597, -0.0775088817, 0.996459365, -0.032575801, 0.994011939, 0.0797602385, 0.0746898502)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.486938298, 0.499022007, -0.555614412, -0.336265713, -0.414632022, 0.845580101, 0.918875694, -0.34120959, 0.198100671, 0.206381202, 0.843597412, 0.495732278)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.930855691, -1.04110408, -0.483567774, -0.357063681, 0.235713974, 0.903849781, 0.226848543, 0.960549712, -0.160884723, -0.906115472, 0.147590905, -0.396448821)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.795033574, 0.320549548, 0.497146964, 0.92337954, -0.00465643406, -0.383859873, 0.118595019, 0.954474926, 0.273704082, 0.365110695, -0.298256516, 0.881894886)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--53, 3.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.86231947, -1.04184461, -3.31301451, -0.929742992, -0.289014578, -0.228141516, -0.341080338, 0.909427941, 0.237918749, 0.138716191, 0.299017847, -0.944111407)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25630319, 0.285566092, -0.322845459, 0.115529403, 0.0245823041, -0.992999852, -0.610487163, 0.790352643, -0.0514607579, 0.783555031, 0.612158835, 0.106316149)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.461434424, 0.491367489, -0.554565966, -0.558792531, -0.228931054, 0.79708308, 0.66683799, -0.695441842, 0.267746031, 0.493029535, 0.681139767, 0.541267574)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07861018, -0.765775323, -0.483468562, -0.263060451, 0.110520825, 0.958428085, -0.154885635, 0.975693703, -0.155023381, -0.952265561, -0.189227268, -0.239548326)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--54, 3.299999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.67471528, -0.866512537, -2.72729301, -0.984902024, -0.148591563, -0.0888172835, -0.156258613, 0.983904481, 0.0866924822, 0.0745060295, 0.0992619246, -0.992267966)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18770039, -0.602368414, -0.169190407, 0.0508107096, -0.0725872815, -0.99606961, -0.971838236, 0.226204008, -0.0660552979, 0.230106339, 0.971372604, -0.0590439364)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.570391238, 0.00672751665, 0.277272344, -0.285874963, -0.84438765, 0.453085095, 0.954849958, -0.211115927, 0.209020495, -0.080836311, 0.492386252, 0.866617084)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.31437552, 0.0524841547, -0.898324966, 0.104157761, 0.133380771, 0.985579848, -0.315247834, 0.944295824, -0.0944782719, -0.943279147, -0.300855368, 0.140398145)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.713510215, 0.480117917, -0.00931274891, 0.668608308, 0.677512109, -0.306497276, -0.534753203, 0.724482417, 0.434930265, 0.516722441, -0.126897559, 0.846696675)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--55, 3.3499999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.51965356, -0.866515458, -2.80903625, -0.994787037, 0.00227703154, -0.101948336, -0.0198234022, 0.976360202, 0.215238959, 0.100028403, 0.216137901, -0.971225381)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7252903e-09, 1, -7.4505806e-08, -0.995918751, -0.0233047307, 0.0871944949, 0.0897020549, -0.362365663, 0.92770946, 0.00997633487, 0.931744695, 0.362977087)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1821804, -0.854926527, 0.020113647, 0.0136820674, -0.0641591996, -0.997845888, -0.315018177, 0.946843505, -0.0651992708, 0.948987007, 0.315231621, -0.00725653209)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.58371079, 0.526178122, 0.548668206, 0.865420759, 0.163457707, 0.473635346, -0.330894232, 0.896276712, 0.295289338, -0.376247108, -0.412271231, 0.829744518)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.29131937, 0.386120081, -0.511982799, 0.165814728, 0.0338197276, 0.985576808, 0.373330027, 0.922875226, -0.094477661, -0.912759662, 0.383611232, 0.14040038)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.860099733, 0.545142889, -1.04626107, -0.695676684, 0.504838943, -0.511048853, -0.709281981, -0.595437646, 0.377323568, -0.113810122, 0.624973118, 0.772305548)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--56, 3.4000000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.34805131, -0.766311884, -2.85294175, -0.990569949, 0.109336115, -0.0825651288, 0.080579184, 0.952300608, 0.294331342, 0.110807881, 0.284902751, -0.952130377)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19335222, -0.800242782, -0.25677526, 0.0912962854, -0.0727257431, -0.993164599, 0.456778497, 0.889279723, -0.0231294595, 0.884883285, -0.451544613, 0.114407495)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23819685, 0.269664884, -0.217448115, 0.152256101, -0.0738664418, 0.985576928, 0.857180238, 0.506276906, -0.0944766849, -0.491996169, 0.85920167, 0.140400589)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.523287356, 0.852443397, -1.19105136, -0.616645932, -0.57667309, -0.535907269, 0.204285085, -0.774638057, 0.598501444, -0.760273933, 0.2595855, 0.595483363)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--57, 3.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.11045647, -0.666093588, -2.84236598, -0.994274557, 0.0856851116, -0.0638448596, 0.063712731, 0.955045164, 0.289533228, 0.0857833996, 0.283807784, -0.955036283)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.20820868, -0.577184498, -0.659865737, 0.176183432, -0.113771111, -0.977760494, 0.555253327, 0.831674874, 0.00327876583, 0.812805772, -0.543482363, 0.209699094)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.556090713, 0.591507852, 0.144223452, 0.898748159, -0.343970716, 0.271911711, 0.0805328488, 0.739092052, 0.668773055, -0.431006163, -0.57916075, 0.691958606)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20044446, -0.0692126751, -0.180475116, 0.136390015, -0.100179195, 0.985576928, 0.934593916, 0.342941105, -0.0944763273, -0.328530312, 0.933999777, 0.140400603)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.934244514, 0.422247708, -0.54118818, -0.649380028, -0.461117715, -0.604710996, -0.0117912591, -0.788986444, 0.614298105, -0.760372639, 0.40604353, 0.50691545)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--58, 3.5
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.91043448, -0.565895915, -3.39268184, -0.97609055, 0.212669954, -0.044929076, 0.191488981, 0.939135194, 0.285232008, 0.102854759, 0.269808888, -0.957405031)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22852767, 0.407229543, -0.710197926, 0.194225445, -0.0970996618, -0.976139426, -0.066768527, 0.991472721, -0.111910045, 0.978682041, 0.0869111717, 0.186086014)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.991074502, 0.704877079, -0.369967341, 0.109897107, -0.95753473, 0.266551226, 0.807474017, 0.24238506, 0.537806988, -0.579577029, 0.156129852, 0.799821854)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12105918, -0.721763551, -0.0623278022, 0.243831292, -0.0624852851, 0.967802584, 0.625840664, 0.772464871, -0.107802816, -0.740857482, 0.631975889, 0.227456942)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.979655027, 0.141093165, -0.140522033, 0.321457684, 0.691639125, -0.646761119, -0.329152882, 0.722037673, 0.608540773, 0.88787663, 0.0172630697, 0.459759414)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--59, 3.549999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.04403114, -0.565897286, -3.72020841, -0.954873562, 0.293130875, -0.0478623807, 0.253213227, 0.887649059, 0.384658784, 0.155240387, 0.355181098, -0.921817183)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15503907, 0.29186666, -0.46289283, 0.112163663, -0.0905160904, -0.989558518, -0.692797244, 0.706776023, -0.143176258, 0.712356091, 0.701622665, 0.0165652819)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.487029433, 0.754839957, -0.866873622, -0.925356865, 0.0105219185, 0.378954023, 0.193362743, -0.84670794, 0.495677412, 0.326084673, 0.531952262, 0.78147465)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08358932, -1.00406981, 0.0107290149, 0.298549056, 0.0532327816, 0.952908576, 0.0349247307, 0.997165203, -0.0666471347, -0.953755081, 0.0531775132, 0.295843601)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.830398917, 0.0940968394, 0.416355401, 0.67565757, 0.439499557, -0.591884732, -0.0857364684, 0.844261527, 0.529029131, 0.732213199, -0.306696355, 0.608112574)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--60, 3.5833332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.76824546, -0.531252086, -3.26762319, -0.971588373, 0.229845479, -0.0564544201, 0.175149754, 0.858683825, 0.481647819, 0.159181073, 0.458075434, -0.874544621)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11756051, -0.244715929, -0.263811111, 0.043821454, -0.125602961, -0.991112292, -0.882397056, 0.460324168, -0.0973512307, 0.4684605, 0.878820658, -0.0906595886)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13767505, 0.224302709, -0.379936099, -0.9581424, 0.155640051, 0.240294486, 0.0896885246, -0.633895993, 0.768200159, 0.271889925, 0.757595658, 0.593406796)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18229389, -0.843506932, -0.28454721, 0.271149009, 0.173606038, 0.946751893, -0.491888523, 0.870456517, -0.0187392384, -0.827359557, -0.460615277, 0.321418256)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--61, 3.633333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.90518069, -0.479250431, -3.52386141, -0.995315373, 0.0512789376, -0.0819620192, 0.000443234574, 0.850163281, 0.526519299, 0.0966804847, 0.524016201, -0.846203089)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13481998, -0.934233904, -0.212498367, 0.0136405677, -0.132330552, -0.991114259, -0.752302289, 0.651586413, -0.0973471329, 0.658673406, 0.746947408, -0.0906570181)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05853975, 0.0622673035, 0.41249758, 0.716904819, -0.552503228, 0.425193965, 0.00121128559, 0.610869944, 0.791731477, -0.697176874, -0.567077339, 0.438606709)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.36782002, -0.320358753, -0.800517976, 0.235079646, 0.220000982, 0.946754396, -0.641915202, 0.766548038, -0.0187382996, -0.729857147, -0.603325367, 0.32141611)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.639350653, -0.0654808283, -0.137548059, -0.111923523, 0.517403364, -0.848390818, -0.555876017, 0.675082088, 0.485042423, 0.823695719, 0.525888085, 0.212055266)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--62, 3.683333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.56173825, -0.376351357, -4.18834782, -0.969701231, -0.218610644, -0.109036237, -0.241423726, 0.789341986, 0.564494431, -0.0373376086, 0.573714852, -0.818203747)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11758709e-08, 1.00000012, -4.47034836e-08, -0.956848025, 0.277198732, 0.0871944949, -0.0233941898, -0.372569501, 0.92770946, 0.28964597, 0.885636985, 0.362977087)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.16987908, -1.24103034, -0.0225092471, -0.105798803, -0.0806396306, -0.991112411, 0.163707569, 0.981693983, -0.09734869, 0.980819285, -0.172551975, -0.0906607285)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09766424, -0.266329765, -0.686060369, 0.261528105, 0.195509255, 0.94518739, 0.711375773, 0.622808397, -0.325659811, -0.652340174, 0.757552564, 0.023801364)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.373290777, 0.431351364, -1.09794295, -0.52463758, -0.594749033, -0.609121323, -0.458232373, -0.405726016, 0.79082948, -0.717481375, 0.694017649, -0.0596744418)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--63, 3.7333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.44726205, -0.367562294, -3.98382664, -0.969576061, -0.201650918, -0.138777524, -0.244777828, 0.792946398, 0.55796057, -0.00247017294, 0.574954867, -0.818181455)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.86264515e-08, 1.00000012, 2.98023224e-08, -0.975075483, -0.201612219, -0.0926318914, 0.0463211425, -0.593276083, 0.803665459, -0.216984913, 0.779343545, 0.587827682)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1719414, -1.15753794, -0.188505232, -0.0167402439, -0.0243378486, -0.999563634, 0.536145747, 0.843609095, -0.0295197237, 0.843959391, -0.536405981, -0.00107358675)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18025804, 0.215365767, 0.010394603, 0.553215146, -0.71635592, 0.425194085, 0.156202823, 0.590562761, 0.791731477, -0.818268299, -0.371576667, 0.43860656)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.946951032, -0.464814842, -0.517527699, 0.252939999, 0.156789929, 0.954692781, 0.908161879, 0.301737428, -0.290166497, -0.333561718, 0.940410256, -0.0660691485)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.920517087, 0.319313079, -0.528769135, -0.714651525, 0.0797896534, -0.694915056, -0.675346732, 0.180006146, 0.715195656, 0.182154164, 0.980423987, -0.0747561082)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--64, 3.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.44727683, -0.418627381, -3.79213452, -0.983573973, 0.00993888825, -0.180231839, -0.0881340876, 0.844930291, 0.5275653, 0.157526761, 0.534784079, -0.830175519)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15270126, -0.78601867, -0.647152662, 0.204281345, -0.00983436033, -0.978862822, 0.614608467, 0.779584944, 0.120431885, 0.761922359, -0.626219332, 0.165298954)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.825629234, -0.89780283, -0.25676918, 0.250344038, 0.102299839, 0.962737024, 0.794719458, 0.546221137, -0.264694929, -0.552945614, 0.831370711, 0.0554435402)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--65, 3.799999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.44727921, -0.444181442, -4.15400696, -0.959048092, 0.199626863, -0.20093751, 0.0701829121, 0.854777277, 0.514227867, 0.274410516, 0.479066879, -0.833782971)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.12759805, -0.420055509, -0.827664614, 0.147864208, 0.0651698634, -0.986858189, 0.144950166, 0.985623658, 0.0868066922, 0.97832799, -0.155880854, 0.136292085)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989915013, 0.443558991, -0.666827142, -0.885191858, -0.188800991, 0.425193489, 0.464836061, -0.396348119, 0.79172945, 0.0190452933, 0.898477733, 0.438605607)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.788183272, -1.10227752, -0.0779237747, 0.216781467, 0.152398527, 0.96425128, 0.469617367, 0.849660873, -0.239866346, -0.855841875, 0.504827738, 0.112621732)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.669237554, 0.40111202, 0.160341948, -0.387871087, 0.548834801, -0.74049747, -0.697505891, 0.350405008, 0.625061929, 0.602529764, 0.75894469, 0.246903509)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--66, 3.8333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.53511524, -0.444178939, -4.69398928, -0.917587817, 0.383406013, -0.105035804, 0.288948864, 0.824714541, 0.486163199, 0.273022443, 0.415747404, -0.86753279)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09276152, -0.0145977736, -0.717838764, -0.192852974, -0.126373366, -0.97305578, -0.898200393, 0.421964467, 0.123215489, 0.395023823, 0.897761583, -0.194885701)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.840416789, -1.07523501, 0.031124264, 0.0590624437, 0.25832504, 0.964250922, -0.219770372, 0.945602715, -0.239867747, -0.973762095, -0.197746605, 0.112621792)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.740603685, 0.191051483, 0.247334749, 0.236623436, 0.670239568, -0.703411877, -0.231420487, 0.742014527, 0.629173279, 0.943638623, 0.0139067695, 0.330685198)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--67, 3.866666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.67106009, -0.574304342, -4.769701, -0.91714251, 0.392953545, -0.0666115582, 0.31828481, 0.822709918, 0.47100246, 0.239884093, 0.410774946, -0.87961334)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-08, 1.00000012, 2.98023224e-08, -0.9897089, 0.109068528, -0.0926318914, -0.138985023, -0.578623652, 0.803665459, 0.0340556949, 0.808269143, 0.587827682)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03811646, -0.0815721154, -0.569911718, -0.289405584, -0.14571026, -0.94605124, -0.937950909, 0.240413308, 0.249899268, 0.191030383, 0.959671915, -0.206246033)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.989915013, 0.443558991, -0.666827142, -0.885191858, -0.188800991, 0.425193489, 0.464836061, -0.396348119, 0.79172945, 0.0190452933, 0.898477733, 0.438605607)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.966978371, -0.88011688, -0.176400021, -0.0153355151, 0.264547348, 0.964250743, -0.474802524, 0.846773803, -0.239868209, -0.879958749, -0.461507171, 0.112622038)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.811970115, -0.0190091133, 0.334328741, 0.679837465, 0.365669578, -0.635693848, 0.266675353, 0.684215248, 0.67877388, 0.683158696, -0.630980253, 0.367640316)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--68, 3.9000000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.60524511, -0.834513545, -4.56115246, -0.952100754, 0.292260468, -0.089933224, 0.213099062, 0.845092952, 0.490313053, 0.21930106, 0.447662741, -0.866894066)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.952047825, -0.485827088, -0.347276211, -0.335098267, 0.0539210215, -0.940639019, -0.709061325, 0.642997384, 0.289458901, 0.620436311, 0.763967931, -0.177233994)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02104723, 0.181548864, 0.695713937, 0.896661818, -0.366439611, 0.248438075, 0.0864338279, 0.695264518, 0.713538289, -0.43420434, -0.618325353, 0.655093431)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18527913, -0.507908642, -0.664147258, -0.0355088077, 0.262601793, 0.964250743, -0.538128734, 0.80801034, -0.239868402, -0.842114329, -0.527408481, 0.112622082)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.915733576, 0.432968825, -0.0768694058, 0.306399524, 0.631040275, -0.712676287, -0.477599084, 0.749542952, 0.458350509, 0.823419154, 0.199935168, 0.531043947)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--69, 3.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.10139275, -0.878982544, -4.81039047, -0.970878422, 0.236679435, -0.0371206105, 0.190142825, 0.85551542, 0.481600702, 0.145742267, 0.460517526, -0.875604331)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.955622792, -0.746416569, -0.131448925, -0.19064419, 0.209272549, -0.959093213, -0.226451695, 0.941286087, 0.250400096, 0.95518291, 0.264925599, -0.132060602)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19177699, -0.20656687, -0.705167592, 0.117736764, 0.237400696, 0.964250445, 0.00705811661, 0.970779359, -0.239869937, -0.99301976, 0.0350472964, 0.112620823)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.845408976, 0.503109813, -0.287352979, 0.203137264, 0.488883495, -0.848368049, -0.651976109, 0.713961363, 0.25531745, 0.730522394, 0.501251101, 0.463772684)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--70, 3.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.55148292, -0.707756519, -5.51742172, -0.994538546, 0.0452854484, 0.0940316767, 0.0823821127, 0.893776298, 0.440882117, -0.0640777275, 0.446220666, -0.89262563)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04883993, -0.863334656, 0.0775639415, 0.0839528814, 0.162937373, -0.983057559, 0.44162643, 0.878274083, 0.183288738, 0.893262327, -0.449529886, 0.00178065151)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.986471653, 0.0239084959, -0.299460649, 0.26178515, -0.041092325, 0.964250982, 0.928184569, 0.284492701, -0.239869595, -0.264465541, 0.95779717, 0.112617224)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.781399488, 0.556569695, -0.955279112, -0.777140558, -0.172966927, -0.605091214, -0.124361411, -0.900321484, 0.41708076, -0.616917491, 0.399380445, 0.678165972)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--71, 4
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.82295895, -0.558274984, -5.4470644, -0.986136854, 0.104787692, 0.128661126, 0.153454214, 0.870923519, 0.466844767, -0.063134402, 0.480116427, -0.874929905)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, 0, -0.982618034, 0.156434059, -0.0999530777, -0.172571152, -0.57128799, 0.802402437, 0.0684211627, 0.805703878, 0.588353634)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18666828, -0.534430981, -0.641866684, 0.107626215, 0.148372665, -0.983057559, 0.56933105, 0.80141592, 0.18328853, 0.815033019, -0.579411864, 0.00178019702)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13610697, 0.000907838345, 0.412889749, 0.483042359, -0.839612246, 0.248437703, 0.494943321, 0.495880991, 0.713535666, -0.722288847, -0.221705392, 0.655092001)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08435404, -0.733133435, -0.195618868, 0.259461462, 0.053848803, 0.964251041, 0.768266857, 0.593488574, -0.239869356, -0.585188627, 0.803039014, 0.11261715)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--72, 4.016666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.09876347, -0.408807516, -5.3766408, -0.972845793, 0.162400633, 0.164915577, 0.223686561, 0.842734396, 0.48965621, -0.0594595149, 0.513249397, -0.85617739)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.675361991, 0.234322339, 0.214619249, 0.745208204, 0.280227602, -0.605091155, -0.00310960412, 0.908863008, 0.417080879, 0.666822374, -0.308930397, 0.678165734)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--73, 4.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.98913455, -0.540732145, -5.40633345, -0.97224772, 0.18186973, 0.147165701, 0.231219068, 0.842863321, 0.485920936, -0.0356662571, 0.506463051, -0.861523747)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28267169, -0.302715659, -0.850663364, 0.0189524405, 0.182315111, -0.983057499, 0.0919742584, 0.978747129, 0.183288902, 0.995581031, -0.093889758, 0.00178135)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.947066367, 0.137965947, -0.00280100107, -0.307169139, -0.735536635, 0.603848398, 0.692697585, 0.262282282, 0.671846688, -0.652546644, 0.624654949, 0.428939462)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10373926, -1.29242969, -0.0684632659, 0.17614533, 0.197971672, 0.964251041, 0.262695044, 0.934587598, -0.239869446, -0.948664427, 0.29555586, 0.112617061)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--74, 4.050000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.9609437, -0.67269671, -5.43599892, -0.970992148, 0.201164082, 0.129256636, 0.238814294, 0.842819035, 0.4823111, -0.01191625, 0.499188632, -0.866411507)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--75, 4.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.56751251, -0.804659605, -5.46562195, -0.969079912, 0.220268279, 0.111202478, 0.2464661, 0.842601061, 0.478829801, 0.0117717013, 0.491431981, -0.870836377)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--76, 4.083333492279053
		--77, 4.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.68266368, -0.531972647, -5.62488937, -0.97600776, 0.216904774, 0.0190068558, 0.202721238, 0.87338078, 0.442843467, 0.0794546753, 0.436071724, -0.896397591)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33684969, -0.168197334, -0.548817813, -0.163034156, 0.0837713331, -0.983056664, -0.878780782, 0.440620899, 0.1832892, 0.448509455, 0.893775284, 0.00178193254)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.453940809, 0.592709005, -0.551362514, -0.657399774, 0.430699468, 0.618321776, 0.71478045, 0.0966383964, 0.692636669, 0.238575354, 0.897305071, -0.371387661)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04462886, -1.65397501, 0.0820044875, -0.0502050519, 0.260190874, 0.964250207, -0.582659125, 0.776510358, -0.239869729, -0.811163783, -0.573871851, 0.112616234)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--78, 4.099999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.28309679, -0.259317636, -4.60270166, -0.975459158, 0.207708195, -0.0730501562, 0.16186434, 0.901400447, 0.401593149, 0.149261594, 0.379913449, -0.912899852)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--79, 4.116666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.08847952, -0.259282053, -3.65908217, -0.973154664, 0.147634149, -0.176562026, 0.0624787062, 0.907806873, 0.414708674, 0.221509367, 0.392544329, -0.892660499)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1.00000012, -2.98023224e-08, -0.98370409, -0.168931007, -0.0615543984, 0.0523021072, -0.596415579, 0.800970316, -0.172020569, 0.784698188, 0.595531583)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07418227, -1.014431, -0.241453767, -0.07917732, 0.238904238, -0.967806518, 0.64064312, 0.756013691, 0.134215236, 0.763744235, -0.60939163, -0.212908819)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02875483, 0.482883334, 0.344047427, 0.675855398, 0.203063488, 0.708506405, -0.26209873, 0.964675426, -0.0264674723, -0.68886435, -0.167806029, 0.705201387)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08126259, -0.5380193, -0.173082471, 0.183026373, -0.426536679, 0.885754764, 0.910193503, -0.266981751, -0.316645384, 0.371544838, 0.864165425, 0.339363605)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.479900658, 0.143006921, -0.289812475, -0.651435256, 0.216739789, -0.727084875, -0.541182995, -0.804392755, 0.245092899, -0.531741202, 0.553147256, 0.641308784)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--80, 4.133333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.36998701, -0.259309947, -3.44771457, -0.956187248, 0.0882891566, -0.279125333, -0.037942037, 0.908026516, 0.417190969, 0.29028666, 0.409503281, -0.864893496)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--81, 4.150000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.694554865, -0.259283185, -2.15485477, -0.924813211, 0.030569762, -0.379190773, -0.137881115, 0.902056158, 0.40900293, 0.354554474, 0.430534482, -0.830018461)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--82, 4.166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.6316998, -0.636421978, 1.6097405, -0.81038481, 0.392668605, -0.434841901, 0.200779274, 0.883361101, 0.423510075, 0.550421417, 0.255898833, -0.794702172)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--83, 4.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.42429805, -0.636433661, 1.60975599, -0.999112606, -0.00234249234, 0.0420479476, 0.017753318, 0.881970644, 0.470969796, -0.0381884277, 0.471298277, -0.881146431)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.869417548, 0.0446002483, -1.06838357, 0.163000971, 0.150656372, -0.975052357, 0.587437928, 0.779182315, 0.2185992, 0.79268074, -0.608414173, 0.0385099426)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.785539508, 0.52291888, -0.723266423, -0.614723623, 0.250951231, 0.747755349, 0.467644632, -0.647468805, 0.60174197, 0.635156929, 0.719588995, 0.280658364)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09462607, -0.846165955, -0.00827050209, 0.459998041, -0.168141752, 0.871850252, 0.501324236, 0.859605551, -0.0987282693, -0.732849061, 0.482499987, 0.47970891)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.623099804, 0.445245057, 0.325345695, 0.685794592, 0.0320893079, -0.727084935, 0.215619206, 0.945216954, 0.245092899, 0.695118308, -0.324855804, 0.641308904)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--84, 4.233333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.690732002, -0.636556983, -0.297266036, -0.945139349, 0.291975796, -0.146498084, 0.204508692, 0.878567994, 0.431618661, 0.254730761, 0.377979666, -0.89008075)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.87705636, 0.393905163, -0.84418422, 0.0557727329, 0.0541900173, -0.996971846, -0.165370673, 0.985235989, 0.0443009362, 0.984653175, 0.162399113, 0.0639107451)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00154352, -1.01735306, 0.125658333, 0.484114677, 0.0741816014, 0.871854424, 0.0253668018, 0.99479121, -0.0987270772, -0.874636829, 0.0699113756, 0.479711264)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--85, 4.2833333015441895
		--86, 4.2833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.22056055, -0.688213587, -0.615079105, -0.933519244, 0.326596498, -0.147906929, 0.233169436, 0.866425991, 0.44151786, 0.272348583, 0.377678066, -0.884977698)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1.00000012, -2.98023224e-08, -0.991893113, 0.0668698549, 0.108059675, 0.0477345884, -0.59201318, 0.804513693, 0.117770523, 0.803149581, 0.584021449)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.975677252, 0.194090128, -0.516813397, 0.0407351255, -0.0141562382, -0.999069691, -0.625463009, 0.779397547, -0.0365456492, 0.779189765, 0.626369834, 0.0228946507)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.46908927, 0.491876304, 0.510248482, 0.539538205, -0.386988908, 0.747755349, -0.304304898, 0.738448441, 0.601742029, -0.785047174, -0.552208364, 0.280658424)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05823457, -0.740962207, -0.157271788, 0.423333198, 0.246290505, 0.871854365, -0.340640426, 0.934995711, -0.0987276956, -0.839495778, -0.255194128, 0.479711205)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395746052, 0.998468995, -0.600857615, -0.680327296, -0.294610709, -0.671085536, -0.382644802, -0.63816607, 0.668075264, -0.625086844, 0.711298227, 0.321433783)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--87, 4.300000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.86725235, -0.739877284, -0.932910621, -0.920679688, 0.36079815, -0.1489079, 0.261334568, 0.853181601, 0.451426029, 0.289919168, 0.376704007, -0.879796028)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--88, 4.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.95282698, -0.791533947, -1.25076485, -0.906638324, 0.394533813, -0.149499625, 0.288965493, 0.838852823, 0.46132955, 0.307418287, 0.3750588, -0.874542773)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--89, 4.333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.71198726, -0.977408409, -1.61195052, -0.936046004, 0.349664986, -0.0393989757, 0.283642143, 0.816048026, 0.503599823, 0.208242714, 0.460217416, -0.863038182)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08943772, -0.255268455, -0.258489132, 0.042205818, -0.00885253586, -0.99906975, -0.719622433, 0.693403363, -0.036544621, 0.693081737, 0.720495403, 0.0228951722)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18210948, -0.306581616, -0.577146471, 0.382278383, 0.306158751, 0.871854365, -0.475101024, 0.874375045, -0.0987283215, -0.792554259, -0.376477212, 0.479710996)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--90, 4.366666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.33998156, -0.897652388, -2.17004633, -0.94777137, 0.309262753, 0.0780129135, 0.300635427, 0.784521699, 0.542350531, 0.106526025, 0.537477791, -0.836522579)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14322484, -0.689030051, -0.073584497, -0.00115164183, 0.108607396, -0.99408406, -0.581478238, 0.808676541, 0.0890245736, 0.813561201, 0.578140736, 0.0622215271)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24126458, 0.247272491, -0.760095119, 0.430208921, 0.223272681, 0.874682546, -0.341059476, 0.937317669, -0.0715123639, -0.835822225, -0.267553538, 0.479391694)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--91, 4.416666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.46186876, -0.693980098, -2.48734999, -0.880147934, 0.303203404, 0.365249634, 0.452116489, 0.769928396, 0.450334549, -0.144673079, 0.561496377, -0.814734161)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.12117147, -0.823219359, -0.0608962774, -0.0130222589, 0.228402436, -0.973479688, -0.341424346, 0.914034247, 0.219022304, 0.939819038, 0.335221827, 0.0660793483)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.21783662, 0.511539459, -0.663126767, 0.478617519, 0.0881366134, 0.873588681, -0.101475924, 0.993834496, -0.0446721166, -0.872139812, -0.0672673583, 0.484610349)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--92, 4.449999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.553514, -0.603469849, -3.09571481, -0.907503366, 0.284456879, 0.309066206, 0.408648521, 0.768123925, 0.492942214, -0.0971803591, 0.573646188, -0.813317955)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 1.00000012, -2.98023224e-08, -0.958289266, -0.0723104775, -0.276501536, -0.178031951, -0.605797708, 0.775444508, -0.223576576, 0.792326152, 0.567655623)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.951519072, -0.668678761, -0.516154766, 0.146146059, 0.350695401, -0.925015688, 0.316829175, 0.869210482, 0.379595131, 0.937155604, -0.348548323, 0.0159211829)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17550683, 0.3108145, -0.472968042, 0.43371582, -0.248238638, 0.866180241, 0.515119672, 0.857029796, -0.0123156458, -0.739285111, 0.451527983, 0.499579966)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--93, 4.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.58918476, -0.512938976, -4.49129057, -0.930673778, 0.266320586, 0.250837892, 0.362405747, 0.764966488, 0.532436192, -0.0500838682, 0.586429477, -0.808450341)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--94, 4.483333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.77513838, -0.422408581, -5.34233856, -0.949539065, 0.248888642, 0.190866679, 0.313627928, 0.760472417, 0.568611741, -0.0036278069, 0.599780202, -0.800156653)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--95, 4.5
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.94156504, -0.422430515, -4.87021828, -0.976364553, 0.215301409, -0.0189097971, 0.156571031, 0.764907598, 0.624821544, 0.148989215, 0.607092917, -0.780538678)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.741148353, -0.168492615, -1.22441626, 0.29724282, 0.236623943, -0.925015032, 0.696967602, 0.608388186, 0.379595399, 0.652592957, -0.757537365, 0.0159221515)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.785539508, 0.52291888, -0.723266423, -0.614723623, 0.250951231, 0.747755349, 0.467644632, -0.647468805, 0.60174197, 0.635156929, 0.719588995, 0.280658364)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.15886831, -0.518809915, -0.381660342, 0.274233311, -0.41776529, 0.866179347, 0.847436607, 0.530750692, -0.0123163834, -0.454578787, 0.73741138, 0.499579132)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.623099804, 0.445245057, 0.325345695, 0.685794592, 0.0320893079, -0.727084935, 0.215619206, 0.945216954, 0.245092899, 0.695118308, -0.324855804, 0.641308904)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--96, 4.516666889190674
		--97, 4.516666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07383752, -0.42239058, -4.04004574, -0.955950141, 0.182885349, -0.229590595, -0.00898832828, 0.763568997, 0.6456635, 0.293390512, 0.619285583, -0.728290081)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--98, 4.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.742589235, -0.422396541, -4.54637146, -0.915045798, 0.281646729, -0.28873235, 0.0771017447, 0.824772894, 0.560182989, 0.395912349, 0.490331292, -0.776420414)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.788516998, 0.0381715298, -1.01177835, 0.0987565219, 0.293894231, -0.950722516, 0.317404062, 0.896186829, 0.310006201, 0.94313401, -0.332378298, -0.00477891043)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08007646, -0.734523952, -0.194951653, 0.383747339, -0.320108891, 0.866180301, 0.656758904, 0.754000127, -0.012315318, -0.649157822, 0.57359755, 0.499579906)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--99, 4.566666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.173637211, -0.470875263, -5.6608386, -0.683679044, 0.393429369, -0.614651322, 0.085748896, 0.879711926, 0.467711806, 0.724727631, 0.267059088, -0.635176837)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.884966612, 0.219177723, -0.690161943, -0.201834068, 0.162431598, -0.965856552, -0.461384177, 0.854107141, 0.240053266, 0.863937318, 0.494081855, -0.0974445492)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05072176, -0.886063814, -0.0471523702, 0.492309809, -0.085805662, 0.86618036, 0.192680627, 0.981184244, -0.0123154595, -0.848825753, 0.172959208, 0.499579728)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--100, 4.583333492279053
		--101, 4.616666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.61713123, -0.54358232, -6.57302856, -0.739275277, 0.43125093, -0.517198741, 0.254102468, 0.889906347, 0.378812194, 0.623621583, 0.148625046, -0.767467797)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.23517418e-08, 1, -8.94069672e-08, -0.995320737, 0.0408331901, 0.0875757039, 0.0440676659, -0.61476177, 0.78748101, 0.0859936252, 0.787655294, 0.610085428)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.958586693, 0.180695772, -0.526697874, -0.2861242, -0.00871940702, -0.958152831, -0.812849522, 0.531678081, 0.237895221, 0.507354558, 0.846901655, -0.159213543)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12487638, -0.7897982, -0.105523795, 0.49257651, 0.0842610821, 0.86618042, -0.147520334, 0.988982379, -0.0123157725, -0.857674897, -0.121712767, 0.499579698)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--102, 4.650000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.71499777, -0.664762974, -6.75604868, -0.823353291, 0.405537903, -0.397024393, 0.282031298, 0.899444878, 0.333852321, 0.492491394, 0.162905112, -0.854935288)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01812708, -0.158988357, -0.537778318, -0.281137705, -0.0538962185, -0.958152771, -0.886756063, 0.396319568, 0.237895727, 0.366913021, 0.916529298, -0.159213185)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.46908927, 0.491876304, 0.510248482, 0.539538205, -0.386988908, 0.747755349, -0.304304898, 0.738448441, 0.601742029, -0.785047174, -0.552208364, 0.280658424)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.35352206, -0.341732621, -0.451760828, 0.470034748, 0.169702291, 0.86618042, -0.319404632, 0.947538435, -0.0123163611, -0.822829306, -0.270872921, 0.499579638)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.395746052, 0.998468995, -0.600857615, -0.680327296, -0.294610709, -0.671085536, -0.382644802, -0.63816607, 0.668075264, -0.625086844, 0.711298227, 0.321433783)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--103, 4.666666507720947
		--104, 4.666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.55244136, -0.698353529, -6.95381546, -0.890863657, 0.335274071, -0.306517839, 0.252452314, 0.926352978, 0.279531777, 0.377663463, 0.171643585, -0.909894943)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02972794, -0.71123004, -0.283829868, -0.09514869, 0.0811347812, -0.992151082, -0.749560833, 0.650018096, 0.125040233, 0.655061245, 0.755575061, -0.00103291869)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.58386087, 0.345718145, -0.706896245, 0.465502352, 0.153848574, 0.871572256, -0.0905723125, 0.98788619, -0.126005903, -0.880400002, -0.0202842653, 0.473797768)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--105, 4.683333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.78836536, -0.731915712, -8.16496181, -0.942221105, 0.263165027, -0.207276642, 0.214940518, 0.949523568, 0.228486031, 0.256943613, 0.170732215, -0.951225996)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--106, 4.699999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.28696442, -0.765482068, -7.34948301, -0.976436377, 0.190599471, -0.101212144, 0.170218349, 0.968510032, 0.181698307, 0.132656604, 0.16018866, -0.97813189)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--107, 4.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.16497087, -0.734797657, -7.96508837, -0.974761128, -0.0967648923, 0.201188937, -0.0748898089, 0.990694582, 0.113646485, -0.210313827, 0.0957110226, -0.972937047)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.84287739e-08, 1.00000024, -8.94069672e-08, -0.981646478, 0.187603533, 0.0342824459, 0.0464982055, 0.0611055195, 0.997047842, 0.184954882, 0.980342209, -0.0687073767)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.957816839, -1.03005898, 0.113712192, 0.26793313, 0.152680799, -0.95126164, -0.16247943, 0.980377614, 0.111591727, 0.949634671, 0.124662317, 0.287485749)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.58640122, 0.704787016, -0.570238769, 0.437390029, 0.00820071995, 0.899232984, 0.502205014, 0.827266335, -0.251820505, -0.745972872, 0.561746001, 0.357718587)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--108, 4.75
		--109, 4.766666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.841625929, -0.734803677, -8.26798153, -0.950486541, -0.280568093, 0.13362819, -0.244042009, 0.940104485, 0.238005996, -0.192401379, 0.19361043, -0.962026834)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01499283, -0.947958589, -0.227974936, 0.303333521, -0.0555837825, -0.951260149, 0.506611228, 0.854919374, 0.111592233, 0.807051778, -0.515769124, 0.287487715)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04394376, 0.0470814705, -0.297963381, 0.341783583, -0.273058563, 0.899234772, 0.914812565, 0.315758765, -0.251822203, -0.215179056, 0.90869993, 0.357718557)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--110, 4.800000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-8.17318058, -0.82520324, -8.41421318, -0.955883503, -0.279809445, 0.0894058794, -0.266047657, 0.953696549, 0.140290275, -0.12452063, 0.110314935, -0.986065447)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.958022714, -0.143393099, -0.786325216, 0.30030632, -0.0701302812, -0.951261222, 0.547202289, 0.829528093, 0.111592151, 0.781271875, -0.554044187, 0.287487984)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02575827, -0.498223245, -0.430963337, 0.475583851, 0.261174262, 0.840004623, 0.877572894, -0.0749610662, -0.473546892, -0.0607106611, 0.962376535, -0.264849693)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--111, 4.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.7133255, -0.915607691, -8.56042671, -0.958119631, -0.282809496, 0.045006223, -0.281115294, 0.958820283, 0.0404700637, -0.0545982122, 0.0261232238, -0.998166621)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--112, 4.833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.361648947, -1.00600517, -8.70663357, -0.957167923, -0.289531589, 0.00096949935, -0.289061815, 0.955413163, -0.0602405556, 0.0165152699, -0.0579405725, -0.998183429)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--113, 4.849999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.28744602, -0.971794188, -8.89688301, -0.974676192, -0.222964823, -0.0171165764, -0.222500354, 0.974600136, -0.0254585221, 0.0223581716, -0.0210053716, -0.999529302)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.70552254e-08, 1.00000024, -2.98023224e-08, -0.990438521, -0.115495771, -0.0754479915, -0.126549408, 0.542887747, 0.830215991, -0.0549264923, 0.831825435, -0.552312791)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.975820005, 0.34473455, -0.927024186, 0.197615489, -0.0764147714, -0.97729671, 0.0773372948, 0.995064974, -0.062165983, 0.977224112, -0.0632965267, 0.202549979)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08159697, -0.897577882, -0.43330282, 0.214700609, 0.129211947, 0.968095064, 0.804445446, 0.538714409, -0.250309378, -0.553869665, 0.8325212, 0.0117183784)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--114, 4.866666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.467309, -0.937581301, -9.08716488, -0.987416208, -0.154714718, -0.032749556, -0.155129671, 0.987838149, 0.0105178533, 0.0307239927, 0.0154659264, -0.999408245)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.46908927, 0.491876304, 0.510248661, 0.584856868, -0.314331502, 0.747755349, -0.396813035, 0.693142831, 0.601742029, -0.707448661, -0.648652077, 0.280658424)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.729749322, 0.254663944, 0.0772905573, 0.0868564248, 0.440968722, -0.893307388, -0.359725684, 0.850078404, 0.384657294, 0.929002404, 0.287937015, 0.232464552)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--115, 4.883333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.587609529, -0.903366566, -9.27740669, -0.995308638, -0.0852069035, -0.0458319336, -0.0873699337, 0.995044649, 0.0474642441, 0.0415605232, 0.0512459017, -0.997821033)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--116, 4.900000095367432
		--117, 4.900000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03757286, -0.426866055, -10.3806438, -0.935591817, 0.34836328, -0.0575393699, 0.273259848, 0.817598164, 0.506815732, 0.223599881, 0.458449244, -0.860131621)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13349783, 0.265918612, -0.516545534, -0.145197392, -0.17601794, -0.973619401, -0.0866923034, 0.982525587, -0.164697751, 0.98559624, 0.0604929924, -0.157919496)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24304962, -1.11947811, -0.113558337, 0.0203951746, 0.00352719426, 0.999784768, 0.161834121, 0.986792326, -0.0067846328, -0.986605704, 0.161940068, 0.0195541009)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--118, 4.949999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.954262257, 0.111124039, -11.4732189, -0.961994886, 0.272296548, 0.0205031931, 0.175397426, 0.558619618, 0.810666323, 0.20928818, 0.783453107, -0.585149288)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13270545, -1.0531528, -0.0592850745, -0.175710648, -0.145569578, -0.973618984, 0.0996434838, 0.981296659, -0.164696991, 0.979383349, -0.125952154, -0.157919466)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24304807, -1.11947787, -0.113559783, 0.00587223563, 0.0198474452, 0.999784768, -0.813006341, 0.582211316, -0.0067846328, -0.582223654, -0.812792063, 0.0195541009)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--119, 4.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.23594427, 0.649103642, -12.5657148, -0.98376596, 0.169370607, 0.0593120307, 0.0919823647, 0.192109808, 0.977053225, 0.15408954, 0.966647029, -0.204570189)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--120, 4.983333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04993916, 0.838779449, -12.837368, -0.984671891, 0.166828439, 0.0508884229, 0.080523029, 0.176004887, 0.981090426, 0.154717162, 0.970149815, -0.186740577)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.07805157e-08, 1.00000024, 0, -0.993318975, 0.099121742, -0.0590966232, 0.0215264708, 0.662257612, 0.74896735, 0.1133762, 0.74269098, -0.659966648)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.877887964, -1.0745523, -0.462061107, -0.221630782, 0.286045879, -0.932232499, 0.518020272, 0.844492435, 0.135968626, 0.826156735, -0.452780545, -0.335343063)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.601132751, 0.651445031, -0.47723484, -0.735822678, 0.307485253, 0.603338897, 0.661859035, 0.138143882, 0.736790121, 0.143205315, 0.941472828, -0.305161655)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.35648417, -0.765518904, -0.975680113, 0.00587130431, -0.148329616, 0.988920569, -0.813007295, 0.575085044, 0.0910847262, -0.582223952, -0.804534435, -0.117216557)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.274136662, 0.24560231, -0.647636056, -0.535031855, -0.330657661, -0.777433097, -0.842119455, 0.135108799, 0.522089481, -0.0675960481, 0.934026957, -0.350738704)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--121, 5
		tween1 = ts:Create(part1, TweenInfo.new(0.016666889190673828, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.82677078, 1.0284543, -13.1089296, -0.985477269, 0.164425105, 0.0424138382, 0.0690468475, 0.159817278, 0.984728873, 0.155135691, 0.973356485, -0.168849319)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--122, 5.016666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03269792, 1.40781033, -13.6520481, -0.986785829, 0.160038635, 0.0253261626, 0.0460621342, 0.127220482, 0.990804374, 0.155344978, 0.97887826, -0.132911086)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--123, 5.050000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.25295687, 1.78716946, -14.1951771, -0.987689555, 0.15621832, 0.00807677675, 0.0230651721, 0.0943721309, 0.995269775, 0.154717147, 0.983203828, -0.096813567)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--124, 5.066666603088379
		--125, 5.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.781057239, 1.97684157, -14.4668055, -0.987989068, 0.154522583, -0.000599212945, 0.0115745515, 0.0778714195, 0.996896267, 0.154089645, 0.984915674, -0.0787246451)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.494645417, 1.1220032, -0.110620081, -0.363092184, 0.318857551, 0.875496387, 0.585857391, -0.652516067, 0.480618596, 0.724524319, 0.687424898, 0.0501183569)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.539342523, 0.922560871, -0.227753788, -0.194733083, -0.1667265, -0.966582298, -0.814049721, -0.52226603, 0.254089087, -0.54717648, 0.836325526, -0.0340211764)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--126, 5.099999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33972812, 2.2949388, -14.6656656, -0.98790282, 0.154322997, 0.0152441561, 0.0209938847, 0.0356968157, 0.99914211, 0.153646454, 0.987375379, -0.0385048278)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--127, 5.150000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.75598443, 3.0371623, -15.1297083, -0.987121999, 0.151258692, 0.0520671308, 0.0429715738, -0.0627931505, 0.997100949, 0.154089659, 0.98649776, 0.0554846711)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03179359, -0.914223909, -0.835129261, -0.218850866, -0.23243317, -0.947670341, 0.478202939, 0.821034729, -0.311807573, 0.850544691, -0.521418095, -0.0685339496)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.430753708, 1.40433621, 0.10934785, -0.620245159, -0.21411106, 0.754620671, 0.581261337, -0.771440268, 0.258872658, 0.526717305, 0.599196374, 0.602936566)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.38830292, -0.313323975, -1.40669274, 0.0112255756, 0.0943499058, 0.995475829, -0.616029739, 0.784830868, -0.0674385428, -0.787642956, -0.612485647, 0.0669325292)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.749662995, 1.25296891, 0.0280611515, -0.40703392, 0.361157537, -0.838980734, -0.813697457, -0.560679674, 0.153410912, -0.414993942, 0.745119929, 0.522088587)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--128, 5.25
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07674527, -0.487221479, -0.849290013, -0.178274602, -0.448428631, -0.875859559, 0.036695715, 0.886469483, -0.461329937, 0.983296335, -0.114383683, -0.141579598)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.430754066, 1.40433693, 0.109349221, -0.364726543, -0.921652079, -0.132410645, 0.572772801, -0.334198236, 0.748493791, -0.734102547, 0.197154999, 0.649789035)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.32711935, -0.0505002737, -1.18493962, -0.0619220212, 0.211662829, 0.975379169, -0.728963375, 0.657929778, -0.18905279, -0.681746423, -0.722722173, 0.11355409)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.852059245, 1.10143685, 0.0358246863, -0.359072745, 0.931399703, -0.0596458018, -0.66978687, -0.212659404, 0.711447716, 0.64995718, 0.295409739, 0.700201511)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--129, 5.266666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43753731, 3.25607872, -14.8014889, -0.983766079, 0.141306505, 0.110620186, 0.0919822156, -0.132241368, 0.986940503, 0.154089674, 0.981093645, 0.117096879)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--130, 5.316666603088379
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.516171694, 0.855007052, -0.039377749, 0.120165132, -0.975467741, 0.184452936, 0.760442555, 0.209883809, 0.614553332, -0.638190627, 0.066418007, 0.767007887)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.794875383, 0.838068068, -0.151941225, 0.189982504, 0.956609845, -0.220916361, -0.667184711, 0.290868759, 0.685754895, 0.720257819, 0.0171106607, 0.693495333)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--131, 5.366666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43753672, 3.36167288, -14.0390434, -0.983766079, 0.137052432, 0.115848891, 0.0919821784, -0.169212699, 0.981277883, 0.154089615, 0.976003945, 0.153859317)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--132, 5.383333206176758
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10836196, -0.296085715, -0.836997211, -0.103075348, -0.486894906, -0.867357373, -0.142399013, 0.870243132, -0.471592367, 0.98442775, 0.0749012753, -0.159033969)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2878803, 0.0642027855, -1.07936716, -0.051032573, 0.290332586, 0.955564082, -0.573028445, 0.775127351, -0.266112804, -0.817945004, -0.561145842, 0.1268121)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--133, 5.400000095367432
		tween2 = ts:Create(part2, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.60157162, 0.305650741, -0.188061565, 0.286044538, -0.482013673, 0.828155696, 0.685879827, 0.706527531, 0.17432034, -0.669140339, 0.518152952, 0.53270185)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.73768878, 0.57471025, -0.339680046, 0.0352843702, 0.327043265, -0.944348514, -0.6083498, 0.756719232, 0.239337757, 0.792879283, 0.566051006, 0.225659087)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--134, 5.483333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43754256, 3.33590603, -12.5992985, -0.98988694, 0.137052432, 0.0366129726, 0.0130225271, -0.169212699, 0.985493481, 0.141259655, 0.976003945, 0.165716648)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.26415533e-08, 1.00000036, -3.7252903e-08, -0.997367859, -0.0725086853, -0.000195693225, -0.0138371438, 0.18768087, 0.982132912, -0.0711762905, 0.979550123, -0.188190222)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.4833335876464844, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09542525, -0.43937546, -0.342842072, 0.259648561, 0.245450556, -0.933988094, 0.194574863, 0.934024215, 0.299557686, 0.945893466, -0.259508908, 0.194757998)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.676245749, 0.307252914, -0.219331801, -0.122508273, -0.0655974448, 0.990297318, 0.746805072, 0.651089966, 0.135514513, -0.653661966, 0.756160617, -0.0307754129)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.3166670799255371, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.962154448, -1.33353877, 0.173844248, 0.158861116, 0.376012653, 0.912895203, -0.699844182, 0.695092022, -0.164515451, -0.696406007, -0.612749279, 0.373573363)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03810811, 0.475976944, 0.0269713104, -0.712660193, 0.110916957, -0.692685246, -0.672913909, 0.170960486, 0.719693959, 0.198248059, 0.979014754, -0.0471991301)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166707992553711)

		if afterframe() then
			return
		end

		--135, 5.550000190734863
		tween2 = ts:Create(part2, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.887704253, 0.350379497, -0.22620219, -0.501595736, -0.50177145, 0.704717755, 0.630103707, 0.3462632, 0.695033312, -0.592765689, 0.792670965, 0.14248383)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--136, 5.616666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3391335, 2.93033791, -10.7942629, -0.954083025, 0.299463749, 0.00685527921, -0.0283311568, -0.112998247, 0.993191183, 0.298199415, 0.947392702, 0.11629387)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--137, 5.666666507720947
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16127276, 0.433427095, -0.177401349, -0.360562891, -0.922980309, 0.134542629, 0.493485153, -0.0663660914, 0.867218494, -0.791496575, 0.379081607, 0.479406267)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--138, 5.699999809265137
		tween3 = ts:Create(part3, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.2460891, 0.407623768, 0.280809104, -0.512381375, 0.858325481, -0.0272566676, -0.401144087, -0.211159527, 0.891344607, 0.759308159, 0.467642277, 0.452506304)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--139, 5.75
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24072254, 2.55053401, -9.61466789, -0.942177892, 0.335090071, -0.00393181294, -0.0251066871, -0.0588833168, 0.997949064, 0.334171295, 0.940344334, 0.0638915673)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--140, 5.7833333015441895
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.47451782, 0.579036951, -0.0144755542, 0.0800533742, -0.975058675, -0.207004756, 0.537043691, -0.132760823, 0.833040714, -0.83974582, -0.177858457, 0.51302135)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--141, 5.800000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.997710228, 1.03154564, -7.01893759, -0.930407345, 0.364070892, -0.0423613861, -0.016068697, 0.074947834, 0.997057974, 0.366174698, 0.928350806, -0.0638818741)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16919076, -0.355941892, -0.83091563, 0.305693477, -0.279320687, 0.910235405, -0.51117748, 0.758390903, 0.404394865, -0.803272367, -0.588912368, 0.0890538245)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--142, 5.849999904632568
		tween6 = ts:Create(part6, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.68575478e-08, 1.00000036, -7.4505806e-08, -0.819093943, -0.541821539, 0.188453391, -0.108114518, 0.468426704, 0.876862764, -0.563379407, 0.697858214, -0.442264199)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.4078505, 0.354463667, 0.478234679, -0.0643880442, 0.991484523, 0.113173127, -0.251629084, -0.125879824, 0.959600151, 0.965674043, 0.033307828, 0.257593483)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--143, 5.900000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.804908514, -0.487365365, -5.13073397, -0.801549375, 0.595673859, -0.0518761985, 0.0366634429, 0.135559618, 0.990090549, 0.596803188, 0.791704297, -0.130497247)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--144, 5.949999809265137
		--145, 5.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.804905593, -0.743040323, -2.57768965, -0.652331889, 0.749807775, -0.110686287, -0.14573805, 0.0192239322, 0.989136457, 0.74379003, 0.661376417, 0.0967351347)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0954262, -0.439376473, -0.342844278, 0.284929335, -0.0117075592, -0.95847702, 0.365106463, 0.925874889, 0.0972269475, 0.886291504, -0.37764895, 0.268083364)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02575946, 0.294030726, -0.440795481, -0.599030018, -0.641088009, 0.479759574, 0.667932868, -0.0696158409, 0.740958571, -0.441620708, 0.764303565, 0.469905615)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22766638, -0.559090734, -0.506109834, 0.00161488354, -0.4140836, 0.910237432, 0.211592972, 0.889770329, 0.404397339, -0.977356613, 0.191946834, 0.0890541002)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.3666667938232422, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.26557624, 0.350821793, 0.597781301, 0.765447855, 0.639951587, -0.0674316138, -0.0195956975, 0.12791422, 0.991589308, 0.643193543, -0.757688642, 0.110454276)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--146, 6.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.756140769, -0.85926038, -1.887779, -0.365937471, 0.913411796, -0.17823787, -0.329860985, 0.0517838225, 0.942608178, 0.87021929, 0.403729379, 0.282349229)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--147, 6.099999904632568
		tween5 = ts:Create(part5, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09542394, -0.439375401, -0.34284538, 0.351505518, -0.21455662, -0.911268055, -0.131119758, 0.952506661, -0.274843276, 0.926958144, 0.216094106, 0.306678712)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.853573442, 0.0542199016, -0.688713133, -0.662724257, 0.14520663, 0.734650612, 0.704198003, -0.212896883, 0.677333057, 0.25475806, 0.966224551, 0.0388377011)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.3300029, -0.914594173, 0.0623013675, 0.0468505099, -0.41142869, 0.910235405, 0.113100991, 0.907561243, 0.404394865, -0.99247551, 0.0840042233, 0.0890538245)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--148, 6.199999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.694826424, -0.925663471, -1.23570275, -0.128208041, 0.967450559, -0.218178749, -0.450641811, 0.139141917, 0.881794453, 0.883450329, 0.211373568, 0.41813463)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1920929e-07, 1.00000036, -5.96046448e-08, -0.62747401, -0.657587171, 0.416959941, -0.133464664, 0.618407369, 0.774441779, -0.767113745, 0.430292577, -0.475799173)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.05166707992553711)

		if afterframe() then
			return
		end

		--149, 6.266666889190674
		tween2 = ts:Create(part2, TweenInfo.new(0.33333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.28673077, -0.192501307, -0.614582062, -0.2816903, 0.743740916, 0.60621798, 0.435407966, -0.463922948, 0.771487951, 0.855025768, 0.48127234, -0.19314754)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--150, 6.333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.636291623, -0.925647914, -0.784481525, -0.0345419273, 0.962776482, -0.268082649, -0.49303475, 0.216912597, 0.842535138, 0.869323313, 0.161276907, 0.467189461)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.366666316986084, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0285008, -0.229535103, -0.242033064, 0.33427161, -0.118180841, -0.935037911, -0.0587052181, 0.987569749, -0.145807266, 0.940646648, 0.103630722, 0.323178679)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.366666316986084, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.34102237, -0.80935967, -0.164054513, -0.0334044509, -0.412738025, 0.910235405, 0.286067307, 0.868691325, 0.404394895, -0.957623959, 0.273899198, 0.0890538394)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.48333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06329513, 0.441409886, 0.195851475, 0.468597919, 0.149929121, -0.870595872, -0.0277352966, 0.987504065, 0.155133858, 0.882976055, -0.0485491306, 0.466900676)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166631698608398)

		if afterframe() then
			return
		end

		--151, 6.449999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.636295676, -0.902427435, -0.420916647, 0.0691800117, 0.930060863, -0.360833943, -0.415847778, 0.355662376, 0.837003589, 0.906799316, 0.0921480656, 0.4113684)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--152, 6.599999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.63629806, -0.8166821, -0.222929373, 0.0439758301, 0.905905664, -0.421190023, -0.276301086, 0.416181684, 0.866285443, 0.960064471, 0.0782796144, 0.268604636)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.15555418, 0.26266548, -0.396753371, -0.534774065, 0.222223684, 0.815250516, 0.837901294, 0.0147044063, 0.545623899, 0.109262824, 0.974884927, -0.194065064)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--153, 6.699999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.636298716, -0.725284219, -0.248577625, -0.0613371134, 0.908991635, -0.412276566, -0.16085124, 0.398653209, 0.902885616, 0.985070884, 0.121695578, 0.12176019)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000012, 5.96046448e-08, -0.67439127, -0.709250987, 0.205327541, -0.114989825, 0.375570804, 0.919632494, -0.729365289, 0.596581459, -0.334838301)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0735718, -0.506997764, -0.476046681, 0.162128627, 0.0257574413, -0.986433446, -0.117698744, 0.993027627, 0.00658485293, 0.979725122, 0.115034357, 0.164029822)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2459048, -0.647608757, -0.112417281, -0.0334040076, -0.488718212, 0.871801913, 0.286068738, 0.831118107, 0.476872504, -0.957626641, 0.265324771, 0.11204432)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--154, 6.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.424199909, -0.44870463, -0.175489292, -0.566285014, 0.774449348, -0.282045662, -0.13036789, 0.253730178, 0.958449364, 0.813833952, 0.579525232, -0.0427203327)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.67638063e-08, 1.00000012, 1.49011612e-08, -0.862496257, -0.504995346, 0.0328629352, -0.0556223281, 0.159143314, 0.985687375, -0.502997398, 0.848323703, -0.165349528)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07679462, 0.435144514, -0.219818473, -0.353232354, -0.0576255172, 0.933759212, 0.723988831, 0.615296423, 0.31185025, -0.59250921, 0.786186755, -0.175622374)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16097832, -0.608467102, 0.00705069304, 0.478241265, -0.223871052, 0.849215508, 0.451628, 0.89199996, -0.0191873312, -0.753204763, 0.392705679, 0.527697682)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.26666688919067383, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--155, 6.949999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333368301391602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--156, 7
		--157, 7.083333492279053
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
