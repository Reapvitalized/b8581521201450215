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
	local animvalue = anims:FindFirstChild("user")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "user"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.10947609e-07, -0.337014347, -0.946534276, 0.256628931, -0.944451928, 0.205310404, 0.224826828, 0.264931202, 0.937691092, -0.939997137, -0.194479346, 0.280327201)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1.00000012, -1.49011612e-08, -0.70603925, 0.690950513, -0.155228704, 0.0358993001, 0.253835082, 0.966581166, 0.707262278, 0.676871598, -0.204022169)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13838291, -0.872077227, -0.570191741, 0.417243123, -0.362334728, -0.833439529, 0.225240499, 0.929698765, -0.291421652, 0.880439878, -0.0661309808, 0.469522834)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, 0.5, 2.98023224e-07, -0.788375378, 0.159517556, 0.594153404, 0.612688065, 0.290679485, 0.734927773, -0.0554743558, 0.943429589, -0.326899081)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13015485, -0.621609926, -0.454595804, 0.275688589, -0.205469385, 0.939030409, 0.597582936, 0.801807046, 1.49011612e-08, -0.752921402, 0.561148584, 0.343834072)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.915979922, 0.149582565, -0.0990090072, -0.640523911, 2.14204192e-08, -0.767938077, -0.609338045, 0.608605683, 0.508238435, 0.467371583, 0.793472826, -0.389826596)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.0683333358168602)

		if afterframe() then
			return
		end

		--2, 0.0833333358168602
		tween1 = ts:Create(part1, TweenInfo.new(0.05000000447034836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.1209969, -0.149367392, -1.81358099, 0.969390213, 0.224234551, 0.100006804, -0.0779973567, -0.10497041, 0.991412044, 0.232806563, -0.968865395, -0.0842675567)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.05000000447034836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-08, 1.00000024, -5.96046448e-08, -0.882653773, 0.470005095, -0.00420941412, 0.184654698, 0.35498327, 0.91645503, 0.432232797, 0.808135092, -0.400115848)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000000447034836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28047645, -0.847444296, -0.0622396171, 0.655640483, 0.249912724, -0.712514997, -0.18314451, 0.96809417, 0.171031058, 0.732524931, 0.0183577463, 0.680491686)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.05000000447034836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22473717, 0.928734958, -0.091291368, -0.947785258, 0.270089, 0.169571176, 0.286670983, 0.488591582, 0.824073732, 0.13972196, 0.829656303, -0.540506959)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000000447034836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06578767, -1.14204597, -0.565938413, -0.231350288, 0.125686139, 0.964717388, 0.271808982, 0.960481882, -0.0599514842, -0.934129119, 0.248349011, -0.256370455)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000000447034836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.89339304, 0.0968235731, -0.580488205, 0.0322628468, -0.0257524103, -0.999147296, -0.516911447, 0.855162501, -0.0387322381, 0.855430663, 0.517720282, 0.0142780542)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500000447034836)

		if afterframe() then
			return
		end

		--3, 0.13333334028720856
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.121000089, -0.149367943, -1.92851245, 0.911658585, 0.393360645, 0.118936479, -0.0510025844, -0.178878605, 0.982548475, 0.407771051, -0.901814699, -0.143013835)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.70552254e-08, 1, 2.98023224e-08, -0.890795767, 0.452410281, -0.042519182, 0.177045569, 0.431727409, 0.884458303, 0.418494731, 0.780343771, -0.464678109)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28047669, -0.847444713, -0.0622397959, 0.67711246, 0.183955133, -0.712514997, -0.0866622105, 0.981446862, 0.171031043, 0.730758071, -0.0540597737, 0.680491567)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22473717, 0.928734779, -0.0912912488, -0.947785199, 0.250303388, 0.197612375, 0.286670983, 0.397209764, 0.871804893, 0.13972196, 0.882933855, -0.448224545)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07843184, -0.961099625, -0.597774804, -0.241617143, 0.104599684, 0.964717209, 0.185257941, 0.98085928, -0.0599515513, -0.952523351, 0.164236128, -0.256370425)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.893393219, 0.0968234241, -0.580488205, -0.356101036, 0.0383689366, -0.933659196, -0.526884198, 0.816939533, 0.234528184, 0.77174145, 0.57544589, -0.270697117)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--4, 0.15000000596046448
		--5, 0.1666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.121178627, -0.184804708, -1.60345137, 0.970558822, 0.221786737, 0.0939533338, -0.0630853623, -0.14238441, 0.987799227, 0.232458189, -0.964644074, -0.12420091)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000024, -5.96046448e-08, -0.890795767, 0.449250042, -0.0682447478, 0.177045584, 0.481453598, 0.85840416, 0.418494761, 0.752580166, -0.508414388)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28047717, -0.847444892, -0.0622397661, 0.579108, 0.0951506421, -0.809677958, -0.028307857, 0.994913578, 0.0966722816, 0.81475848, -0.0330641158, 0.578855872)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22473705, 0.928734958, -0.091291368, -0.947785199, 0.209164336, 0.240733743, 0.286671013, 0.228063375, 0.930487335, 0.13972199, 0.950913787, -0.27611661)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07843173, -0.961100101, -0.597774744, -0.254983485, 0.0655999631, 0.964717269, 0.0298707932, 0.997754097, -0.0599515364, -0.966483891, 0.0135300756, -0.256370425)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999999701976776, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.882454753, 0.268121421, -0.605186462, -0.346187174, -0.0918410718, -0.93366009, -0.784730434, 0.573755622, 0.234528214, 0.514152825, 0.813862026, -0.270697355)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499999701976776)

		if afterframe() then
			return
		end

		--6, 0.21666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.121415533, -0.23205322, -1.1700263, 0.998682737, -0.00949973986, 0.0504200719, -0.0497992039, 0.0570214503, 0.997130334, -0.0123474728, -0.998327732, 0.0564733036)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1.00000024, -5.96046448e-08, -0.906760275, 0.339908391, -0.249496162, -0.0668531433, 0.468335032, 0.881018281, 0.416313231, 0.815551758, -0.401943624)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22532177, -0.771437049, -0.345664889, 0.555220485, 0.0911530554, -0.826689482, -0.0074473992, 0.994481206, 0.104653463, 0.831668496, -0.051950261, 0.552835524)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24163043, 0.939890802, -0.057010591, -0.795553088, 0.424336195, 0.432473212, 0.569531322, 0.280220568, 0.77272892, 0.206708819, 0.86105448, -0.464603424)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08100116, -0.876074672, -0.55266118, -0.267540455, 0.00833011791, 0.963509738, 0.247361481, 0.967043877, 0.0603244863, -0.931254268, 0.254474401, -0.260783732)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.782117844, 0.504555225, -0.321957529, -0.0852280483, -0.351892948, -0.932150602, -0.936551154, 0.347558469, -0.0455744416, 0.340014398, 0.869122744, -0.359187812)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.0683333432674408)

		if afterframe() then
			return
		end

		--7, 0.30000001192092896
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.113728195, -0.301119059, -0.834385574, 0.993345261, -0.103746079, 0.050018426, -0.0383983515, 0.111123562, 0.993064702, -0.108584777, -0.988376737, 0.10640043)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000012, 5.96046448e-08, -0.935346186, 0.292241126, -0.199305639, -0.0247309431, 0.508029699, 0.860984623, 0.352868229, 0.81024754, -0.467956126)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24636638, -0.635713398, -0.196419775, 0.600241184, 0.12511152, -0.789969087, 0.0076351501, 0.986748278, 0.162079901, 0.799781799, -0.103320926, 0.591334105)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.26665771, 0.855025589, -0.0837958455, -0.749847889, 0.371406376, 0.547525048, 0.661582232, 0.413355589, 0.625656426, 0.00604985654, 0.831380785, -0.555670321)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09238315, -0.736180127, -0.594148874, -0.0806458965, -0.0449623317, 0.995726883, 0.0761364102, 0.995785892, 0.0511307381, -0.993831098, 0.0799341425, -0.07688272)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.994992137, 0.408909291, -0.356924057, -0.260276079, -0.511606991, -0.818848193, -0.875986874, 0.481806725, -0.0225887448, 0.406084418, 0.711422086, -0.57356441)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--8, 0.36666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.113727354, -0.301119506, -0.768674612, 0.988685429, -0.139280751, 0.0556947067, -0.0319273733, 0.167387903, 0.985374153, -0.146566242, -0.976003289, 0.161047176)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-08, 1.00000024, 2.98023224e-08, -0.916382611, 0.35979563, -0.1754715, 0.00542076025, 0.449459434, 0.89328444, 0.400267154, 0.817639053, -0.413827002)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.2527653, -0.646579385, -0.154356226, 0.592998803, 0.125136375, -0.79541564, -0.0366147533, 0.991019189, 0.128614038, 0.804369807, -0.0471461751, 0.59225744)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.21601105, 0.921019077, -0.113997638, -0.782959759, 0.337273031, 0.522701859, 0.619656146, 0.496827543, 0.607609332, -0.0547628105, 0.799630582, -0.597991526)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09443855, -0.67280066, -0.583382964, -0.0314045548, -0.0499894097, 0.998254418, 0.0838053972, 0.995100439, 0.0524671227, -0.995987713, 0.0853063837, -0.0270612538)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03937864, 0.302984089, -0.260349631, -0.46325472, -0.383735001, -0.798835278, -0.765708745, 0.627139807, 0.142787829, 0.44619143, 0.677823663, -0.58435595)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499998211860657)

		if afterframe() then
			return
		end

		--9, 0.4166666567325592
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.113730349, -0.288021624, -0.75536567, 0.988366187, -0.145671546, 0.0437249355, -0.0154024605, 0.190144181, 0.981635511, -0.151310414, -0.970888972, 0.185688436)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1.00000024, 2.98023224e-08, -0.907731235, 0.364140987, -0.208388075, -0.0340675414, 0.431078732, 0.901671231, 0.418166995, 0.825574279, -0.378898025)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25613594, -0.688325584, -0.151185751, 0.579758525, 0.0996138602, -0.808671594, -0.0351021439, 0.994630337, 0.0973570421, 0.814031541, -0.0280597582, 0.580145419)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.21018815, 0.913404167, -0.1243909, -0.791059256, 0.34016344, 0.508439481, 0.610154688, 0.498508811, 0.615792751, -0.0439916104, 0.797356606, -0.601904631)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09625721, -0.654487848, -0.590201855, -0.031705901, -0.0654686242, 0.997348547, 0.0967425629, 0.992966712, 0.0682552233, -0.994805813, 0.0986494869, -0.0251498222)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02680945, 0.267887205, -0.242982745, -0.450726449, -0.317999572, -0.834096849, -0.743160307, 0.651323855, 0.153270453, 0.49453038, 0.688952446, -0.529894769)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--10, 0.44999998807907104
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.113740534, -0.208805874, -0.40071708, 0.982199252, -0.176031649, 0.065552488, -0.0188157149, 0.255023122, 0.966752112, -0.186896324, -0.950776517, 0.247171476)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1.00000024, -8.94069672e-08, -0.935346186, 0.307709903, -0.174477071, -0.024730945, 0.435151756, 0.90001756, 0.352868229, 0.846142948, -0.399407625)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.27095163, -0.349980056, -0.638949573, 0.254083514, 0.0649492815, -0.964995444, 0.0619466081, 0.99460125, 0.0832535475, 0.965195358, -0.0809331164, 0.248688921)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.33533812, 0.522147179, -0.199955702, -0.670636654, 0.411519974, 0.61716795, 0.737497985, 0.459224701, 0.495185673, -0.0796402246, 0.787250459, -0.611468494)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09727693, -0.764540374, -0.455068201, 0.148421437, -1.34110451e-07, 0.988923073, 0.0639592856, 0.997906446, -0.00959936343, -0.98685348, 0.0646754354, 0.14811042)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01706529, 0.270694047, -0.131895661, -0.257623911, 0.108734831, -0.96010524, -0.470409989, 0.853827119, 0.222923696, 0.844005466, 0.509073973, -0.168816417)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--11, 0.550000011920929
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655157715, -0.15804714, -0.105270289, 0.970014334, -0.240767717, 0.0332076102, 0.0415397696, 0.298852593, 0.953394949, -0.239470869, -0.923427224, 0.299892843)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1920929e-07, 1.00000024, 0, -0.915989161, 0.372014165, -0.15023081, -0.0149123957, 0.342622817, 0.939354897, 0.400925756, 0.862679124, -0.308291078)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.2018714, -0.263465464, -0.905337811, 0.117337987, 0.055105105, -0.991558075, 0.158198878, 0.984672189, 0.0734443814, 0.980409145, -0.165482983, 0.106822282)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.35298157, 0.517704487, -0.22107619, -0.581865311, 0.299400628, 0.756168246, 0.721572816, 0.618975461, 0.310164094, -0.375186592, 0.726104617, -0.576199949)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06587636, -0.871595562, -0.117929131, 0.179111317, -0.0204253644, 0.983613312, 0.160988048, 0.986917913, -0.00882205553, -0.970566094, 0.159930274, 0.180055603)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13172817, 0.362787724, -0.00470701605, -0.143946543, 0.141562104, -0.979406655, -0.45341745, 0.870278478, 0.192429483, 0.879598141, 0.471779734, -0.0610868186)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--12, 0.5833333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655149966, -0.15804562, 0.108103342, 0.989048839, -0.147354871, -0.00828086119, 0.0452988259, 0.249688923, 0.967266142, -0.14046374, -0.957048595, 0.253629655)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1.00000036, 0, -0.881107867, 0.427706242, -0.201782942, -0.0483955517, 0.342890859, 0.938127995, 0.47043258, 0.836357117, -0.281424761)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08526564, -0.234847903, -0.995023549, -0.0703465417, 0.0281078219, -0.997121751, -0.0993667692, 0.994434357, 0.0350439847, 0.992559612, 0.101544872, -0.0671616793)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17744589, 0.505496204, -0.245580018, -0.353706598, -0.011307098, 0.935284436, 0.631042778, 0.735196948, 0.247534543, -0.690417051, 0.67775923, -0.252909422)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06528354, -0.865784585, -0.0725575089, 0.0963269323, -0.0489855446, 0.994139433, 0.0555510297, 0.997497916, 0.0437671095, -0.99379611, 0.051009655, 0.098805815)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03930235, 0.451630771, -0.0149402171, 0.112289131, 0.267638057, -0.956951439, -0.315883219, 0.922703624, 0.22099489, 0.942129612, 0.277469367, 0.188152552)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--13, 0.6333333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655149817, -0.196368575, 0.346088707, 0.998514891, -0.0535756089, -0.00986735057, 0.0216558091, 0.224163607, 0.974311233, -0.0499874242, -0.973077655, 0.224991024)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000036, 0, -0.933714747, 0.342066854, -0.105674766, 0.0168158878, 0.33674255, 0.941446781, 0.357622862, 0.877265573, -0.320173591)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08488655, -0.398831248, -0.971814513, -0.0736903772, 0.0175642334, -0.997126162, -0.243140846, 0.969357967, 0.0350440145, 0.967187583, 0.245024443, -0.0671616867)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1233983, 0.460280716, -0.0457190871, -0.349589139, -0.0549853481, 0.935283601, 0.535226762, 0.807628334, 0.247534543, -0.768971682, 0.587123454, -0.252909392)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06528318, -0.865784407, -0.07255885, 0.0131171793, -0.0567005575, 0.998300791, -0.0460514575, 0.997299135, 0.0572474524, -0.998850584, -0.0467240363, 0.0104693174)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04355669, 0.43245402, 0.0679916441, 0.212478757, 0.193456635, -0.95782119, -0.0615621768, 0.980910957, 0.184464663, 0.975223303, 0.0197703615, 0.220332995)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--14, 0.7166666388511658
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655159503, -0.287870288, 0.635235906, 0.996153772, 0.0857806578, -0.0178620126, -0.00632929942, 0.273770988, 0.961774349, 0.0873916894, -0.957961917, 0.27326104)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1.00000036, 2.98023224e-08, -0.945765913, 0.307180375, -0.105674751, 0.00430753129, 0.33713454, 0.941446781, 0.324820518, 0.889932871, -0.320173562)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08345282, -0.594131589, -0.737179637, 0.0931936651, 0.105844632, -0.990004599, -0.484034866, 0.873740315, 0.04785043, 0.870071411, 0.474737376, 0.132659808)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11738777, 0.469244659, -0.0536863804, -0.292202055, -0.146461621, 0.945069909, 0.433407009, 0.860624373, 0.26737532, -0.852509737, 0.487727016, -0.187999755)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06618905, -0.834358931, -0.239996716, 0.02135019, -0.0783063471, 0.996700346, -0.192914605, 0.977870345, 0.0809591785, -0.980983019, -0.194006458, 0.00577116013)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04355788, 0.432453692, 0.0679912865, 0.370315909, 0.118159667, -0.921356976, -0.0174851324, 0.992589116, 0.120268375, 0.928739786, -0.0284275785, 0.369638205)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--15, 0.8166666626930237
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655301437, -0.192226201, 1.03081381, 0.998033762, 0.0598215051, -0.0186956432, 0.000528644305, 0.290251374, 0.956950605, 0.0626726076, -0.95507884, 0.289649159)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.70552254e-08, 1.00000024, 0, -0.95514524, 0.279944837, -0.0965839624, -0.00652435049, 0.306173682, 0.95195353, 0.296065867, 0.909883797, -0.290614009)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07365561, -0.718767107, -0.586837828, 0.101042777, 0.0929897949, -0.990522623, -0.415286183, 0.908679724, 0.0429444611, 0.904060662, 0.40701139, 0.130433619)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1173867, 0.469243616, -0.0536881089, -0.132934377, -0.192972362, 0.972152352, 0.318095922, 0.920669556, 0.226247668, -0.938690186, 0.339313388, -0.0610060841)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05741441, -0.88821733, -0.441206753, 0.0311395526, -0.0749536604, 0.996699274, -0.315759897, 0.945380151, 0.0809591115, -0.948327661, -0.317238361, 0.00577107072)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04355741, 0.432453871, 0.0679917037, 0.307680815, 0.166579291, -0.93679148, -0.144155458, 0.981352866, 0.127157778, 0.940504789, 0.0959192589, 0.325957417)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--16, 0.949999988079071
		tween1 = ts:Create(part1, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655291528, -0.124323837, 1.49733436, 0.999992311, -0.00322077423, -0.00214126008, 0.00287791528, 0.249762416, 0.968303323, -0.00258392468, -0.968301833, 0.249769807)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000024, 5.96046448e-08, -0.986951172, 0.156141341, -0.0393353812, 0.00993175432, 0.302855194, 0.952984989, 0.160713211, 0.940158844, -0.30045408)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07440495, -0.833627999, -0.277322143, 0.0377768427, 0.0770104527, -0.99631387, -0.311199218, 0.948352993, 0.0615037866, 0.949593604, 0.307728797, 0.0597914904)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00085187, 0.460610479, -0.0215599537, 0.0724623129, -0.160110474, 0.984434307, 0.286321044, 0.948825359, 0.133243084, -0.955389559, 0.272209525, 0.114596732)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05828893, -0.575811744, -0.914940834, 0.0384463221, -0.0714815706, 0.996696949, -0.408299446, 0.909254253, 0.0809590071, -0.912038267, -0.410062462, 0.0057708621)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04322314, 0.463965029, -0.0541710258, 0.117972881, 0.172152489, -0.977977037, -0.255661428, 0.956925035, 0.137607753, 0.959540665, 0.23379682, 0.156904757)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499996423721314)

		if afterframe() then
			return
		end

		--17, 1.0499999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655262023, -0.106603771, 1.9137485, 0.999885798, -0.0138325598, 0.00604785327, -0.00289819716, 0.217270911, 0.976107359, -0.0148161165, -0.976013362, 0.217206091)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000024, -2.98023224e-08, -0.993881941, 0.103204794, -0.0393353775, -0.00625810493, 0.302953422, 0.952984929, 0.110269353, 0.947400689, -0.300454021)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07820785, -0.889354706, -0.0269424841, 0.0526299626, 0.0677330196, -0.996313214, -0.112106591, 0.991792023, 0.0615038909, 0.992301345, 0.108456492, 0.0597915798)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999207795, 0.436525613, 0.0866509229, 0.0720582008, -0.127707601, 0.98918879, 0.190183848, 0.975333571, 0.112064362, -0.979100227, 0.180053174, 0.09456826)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05828977, -0.575814188, -0.914939344, -0.00126697123, -0.0811549574, 0.996696889, 0.0866198391, 0.992949486, 0.0809590146, -0.996239722, 0.0864372775, 0.0057708621)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04322243, 0.463965416, -0.0541704595, -0.19370985, 0.172152489, -0.965832889, -0.199820802, 0.956925035, 0.210642651, 0.960493028, 0.233796835, -0.150965452)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--18, 1.1333333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655295029, -0.21990779, 2.23882675, 0.999950588, 0.00726938061, 0.00674197683, -0.0083154114, 0.244607329, 0.969586968, 0.00539912656, -0.969595075, 0.244655728)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 1.00000024, 1.1920929e-07, -0.99684298, 0.0689667463, -0.0393353775, -0.0166721791, 0.302558959, 0.952984989, 0.0776255131, 0.950632095, -0.30045405)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0767591, -0.860835493, -0.0781055093, 0.126884237, 0.0603003651, -0.990079403, 0.120726213, 0.98979342, 0.0757554173, 0.9845438, -0.129140139, 0.118310481)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998929501, 0.433892727, 0.0970662087, 0.129654333, -0.120670296, 0.984186411, 0.106380358, 0.988533556, 0.107188463, -0.985836029, 0.0908014774, 0.1410041)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05097282, -0.604371309, -0.623808742, -0.0238821507, -0.0775709227, 0.996698856, 0.360486746, 0.929245651, 0.0809585825, -0.932459056, 0.361231089, 0.00577054918)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04322267, 0.463965446, -0.0541702807, -0.278403878, 0.1107518, -0.9540537, -0.312276453, 0.928924978, 0.198962003, 0.908280492, 0.353320301, -0.22403051)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--19, 1.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655231774, -0.245379552, 2.50839353, 0.995943367, 0.0897027627, -0.00702661648, -0.0170008205, 0.264291108, 0.96429342, 0.0883568376, -0.960262418, 0.264744103)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.21540642e-08, 1.00000024, 1.49011612e-07, -0.99684304, 0.0682247728, -0.0406086557, -0.0166721754, 0.320194721, 0.947205245, 0.0776255056, 0.94489187, -0.318046451)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07779336, -0.731400013, -0.0844905376, 0.131391093, 0.0497255176, -0.99008286, 0.201244026, 0.976607442, 0.0757552236, 0.970689058, -0.209201843, 0.118310511)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998929441, 0.433892727, 0.0970661491, 0.13418591, -0.11561016, 0.984186471, 0.0683983937, 0.991885543, 0.107188448, -0.988592744, 0.0529344082, 0.1410041)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04548252, -0.770266116, -0.444212794, -0.0348030403, 0.00265322626, 0.999386251, 0.493885398, 0.869402945, 0.0148903318, -0.868831575, 0.494102746, -0.0315693319)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04322267, 0.463965356, -0.0541700721, -0.287735194, 0.0499497689, -0.956402898, -0.388174921, 0.906851888, 0.164146289, 0.875515699, 0.418482363, -0.241543323)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--20, 1.3666666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655397773, -0.198581964, 2.82613349, 0.971016049, 0.231803417, -0.0582602583, 0.00591980293, 0.2203549, 0.975402176, 0.238939509, -0.947476208, 0.21259594)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.25962901e-08, 1.00000024, 8.94069672e-08, -0.98177892, -0.185635909, -0.0406086631, -0.0969646573, 0.305614889, 0.947205186, -0.1634247, 0.933883667, -0.31804648)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10743988, -0.80168736, -0.226281449, 0.133888617, 0.0423789695, -0.990085661, 0.253950417, 0.964258492, 0.0756161213, 0.957906842, -0.261556655, 0.118339658)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998929441, 0.433892816, 0.0970662683, 0.113191985, -0.136231944, 0.984186471, 0.231683031, 0.966870427, 0.107188463, -0.966183424, 0.215887278, 0.1410041)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00637376, -0.735468626, -0.599229097, -0.105489247, 0.0107472064, 0.994362414, 0.302981466, 0.952746093, 0.0218451042, -0.947140098, 0.303577811, -0.103760667)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04322243, 0.463965416, -0.0541701317, -0.281610847, 0.0773424283, -0.956402898, -0.299321681, 0.939929068, 0.164146289, 0.91164726, 0.332497448, -0.241543323)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166667461395264)

		if afterframe() then
			return
		end

		--21, 1.4833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655390173, -0.198583901, 2.99758983, 0.909184456, 0.403668433, -0.10214904, 0.0204533935, 0.201728314, 0.979228258, 0.415889949, -0.892388642, 0.175151914)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 1.00000024, 8.94069672e-08, -0.907366037, -0.401813745, 0.123419397, 0.00853014085, 0.275954813, 0.961132884, -0.420254618, 0.873152077, -0.246964574)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17126679, -0.734748542, -0.236630857, 0.0271865577, 0.115051851, -0.992982328, 0.0692830458, 0.990750849, 0.116691761, 0.997226477, -0.0719672963, 0.0189595968)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998929977, 0.433892995, 0.0970664173, -0.150629401, -0.122396253, 0.980981469, 0.288735926, 0.943594635, 0.16206634, -0.945485055, 0.307657331, -0.106793493)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.97072196, -0.68399775, -0.666529655, -0.182810858, 0.0225004777, 0.982886374, 0.228613392, 0.973308921, 0.0202381425, -0.956198692, 0.228402808, -0.183071837)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04322243, 0.463965416, -0.0541703403, -0.271308899, 0.10806489, -0.956402957, -0.19334805, 0.967303872, 0.164146304, 0.942871511, 0.229452878, -0.241543338)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--22, 1.5666667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655375645, -0.198585391, 3.19339609, 0.705738127, 0.674962282, -0.215314031, 0.0861258954, 0.219923422, 0.971708, 0.703218639, -0.704315364, 0.097076565)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 1.00000024, 8.94069672e-08, -0.936024725, -0.334091097, 0.110639192, -0.00987738743, 0.339189142, 0.940666497, -0.351795912, 0.879394114, -0.320789248)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22057104, -0.739191055, -0.460457206, 0.163896024, -0.0798600763, -0.98323971, 0.140251741, 0.988479137, -0.056907095, 0.976456702, -0.128574267, 0.173208296)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06119847, 0.455452025, 0.0152017474, -0.30016908, -0.0508895367, 0.952527642, 0.444886863, 0.875848413, 0.18698968, -0.843785584, 0.479895532, -0.240262568)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.915198028, -0.659085393, -0.820901573, -0.289944738, 0.00632761233, 0.957022429, 0.174319312, 0.983599544, 0.0463094003, -0.9410339, 0.180254668, -0.286292553)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04323244, 0.463967502, -0.0541721657, -0.035955444, 0.180925548, -0.982839286, -0.203743666, 0.961492002, 0.184449419, 0.978363872, 0.206879258, 0.00229154527)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--23, 1.7000000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.065539524, -0.244948775, 3.36594582, 0.416579068, 0.865377724, -0.278538674, 0.142605007, 0.240393028, 0.960143507, 0.897845268, -0.43969658, -0.0232645255)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 0.99999994, 5.96046448e-08, -0.828828275, -0.539347887, 0.148821041, -0.0392429046, 0.321371675, 0.946139753, -0.558125198, 0.778347135, -0.287527472)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.21094012, -0.833941281, -0.41532886, 0.2355102, -0.176260427, -0.955754697, 0.13323538, 0.979986906, -0.147898436, 0.962695718, -0.0925087929, 0.254281044)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0878787, 0.464687467, -0.0198820829, -0.497356236, -0.0551657602, 0.865790725, 0.495680571, 0.800969422, 0.335780859, -0.711995482, 0.596158266, -0.371022582)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.87635529, -0.590375602, -0.868626356, -0.333209008, -0.043875508, 0.941831589, 0.170709193, 0.979599953, 0.106029846, -0.927270293, 0.196109414, -0.318921596)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04323244, 0.463967413, -0.0541721582, 0.300031424, 0.388639241, -0.871171951, -0.374031633, 0.888045311, 0.267350197, 0.877542853, 0.245632455, 0.411804855)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--24, 1.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0655429065, -0.322220266, 3.51366854, 0.0966903716, 0.953698039, -0.284800202, 0.189242199, 0.263305873, 0.945969224, 0.977158368, -0.145362258, -0.155020833)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(2.8333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, 0.999999881, 0, -0.689463675, 0.721713543, 0.0613973737, 0.594713211, 0.515668929, 0.616767228, 0.41346857, 0.461752295, -0.784747481)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15966976, -0.988679469, -0.180238634, 0.267605573, -0.192918256, -0.944017768, 0.0598572269, 0.981187046, -0.183546036, 0.961667478, -0.00738836452, 0.274118662)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.8166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.864863932, 0.131558865, 0.47515595, 0.703747988, -0.537244558, 0.464873016, -0.242150664, 0.433766961, 0.867876172, -0.667908311, -0.723335505, 0.175168902)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.851275086, -0.493647993, -0.837898314, -0.332841575, -0.113058589, 0.936180711, 0.204847336, 0.960409641, 0.188814223, -0.920464039, 0.2546193, -0.296504498)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.8166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.590346456, 0.249174833, -0.540904999, -0.870173991, 0.237153932, -0.431920171, -0.416519463, 0.114311151, 0.901911497, 0.263265193, 0.964723408, -0.000691335648)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--25, 1.8833333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.203544855, -0.260583997, 3.67430067, -0.227073625, 0.960447371, -0.161178559, 0.137701049, 0.195503324, 0.970987737, 0.964093447, 0.198291197, -0.176648274)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.12276196, -1.08083749, -0.0289026089, 0.261911273, -0.121144176, -0.957458377, 0.129635155, 0.987515628, -0.0894857198, 0.956345797, -0.100682959, 0.274345934)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.910830021, -0.443381786, -0.863543749, -0.268396914, -0.0172614399, 0.96315378, 0.0786655173, 0.99610728, 0.0397733338, -0.960091054, 0.0864420533, -0.265994221)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--26, 2.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.428947359, -0.0841837674, 3.81639385, -0.426758319, 0.904365599, 0.00053793937, -0.00151402666, -0.00130926818, 0.999998212, 0.904364407, 0.42675665, 0.00192798115)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11272454, -1.07971907, -0.012108624, 0.241007656, 0.0182931721, -0.970350683, 0.314108253, 0.94453913, 0.0958221406, 0.918287158, -0.327889174, 0.221895143)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03268158, -0.456072807, -0.935544848, -0.209683597, 0.228125766, 0.950784624, -0.185561478, 0.945445538, -0.267767966, -0.959999919, -0.232575521, -0.15591304)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--27, 2.1666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.600027204, -0.0629031509, 3.97236919, -0.476139039, 0.876478136, 0.0712586194, -0.0580826513, -0.112202436, 0.991986513, 0.877449811, 0.468184501, 0.104332142)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11071694, -1.07949495, -0.00874987245, 0.238056287, 0.034755446, -0.970629275, 0.384192526, 0.914480329, 0.126971826, 0.892034411, -0.403135031, 0.204344958)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.14999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.069242, -0.413485706, -0.933331072, -0.146810606, 0.218564495, 0.96471554, -0.137822822, 0.961250067, -0.238753244, -0.97951597, -0.168011278, -0.110998541)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13499985694885253)

		if afterframe() then
			return
		end

		--28, 2.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.714855969, -0.0557733588, 4.02323484, -0.508416891, 0.852621555, 0.120618194, -0.0780844837, -0.185143769, 0.979604483, 0.857563555, 0.488628983, 0.160706758)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1094656, -1.07935572, -0.00665655732, 0.234675676, 0.0604640394, -0.970191419, 0.429089427, 0.889121413, 0.159202293, 0.872244, -0.453659743, 0.182710677)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09737611, -0.367158771, -0.924669087, -0.0845174789, 0.180243641, 0.979984224, -0.0591870844, 0.980858386, -0.185508966, -0.994662583, -0.0736811459, -0.0722315982)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--29, 2.433333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.825547874, -0.0610823669, 3.98061991, -0.53547436, 0.826110959, 0.175522104, -0.0707506761, -0.250977069, 0.965404153, 0.841582775, 0.504530787, 0.192839697)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10842299, -1.07923949, -0.00491189957, 0.229569033, 0.11012888, -0.967041671, 0.469936937, 0.857546866, 0.209219098, 0.852324724, -0.502478838, 0.145112604)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13061714, -0.29229176, -0.904100239, -0.000421702862, 0.0805066675, 0.996753991, 0.10121382, 0.991638839, -0.0800507069, -0.994864583, 0.100851536, -0.00856657326)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--30, 2.5999999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.875547349, -0.0985832512, 3.69728279, -0.532599628, 0.81507355, 0.228017598, 0.00200873055, -0.268189341, 0.963364482, 0.846364796, 0.513545632, 0.141200304)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10842466, -1.07924128, -0.00491476059, 0.219640732, 0.203410685, -0.954139173, 0.484631568, 0.826063216, 0.287667423, 0.846693039, -0.525589108, 0.082858637)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.562420428, -0.0349193811, 0.810667276, -0.535665274, -0.668895364, 0.515403807, 0.433990926, 0.30550465, 0.847537577, -0.724371254, 0.677676916, 0.126645595)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16327369, -0.171417832, -0.859591722, 0.0689365715, -0.148733243, 0.986471176, 0.408349097, 0.906400442, 0.108124018, -0.910218716, 0.395369381, 0.123217508)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.16440356, -0.176113725, 0.585665822, -0.871411383, 0.314362705, -0.376583695, -0.350764692, 0.137362957, 0.926335216, 0.342934966, 0.939311385, -0.00943090022)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--31, 2.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821563184, -0.299493343, 3.31596065, -0.668989956, 0.697418034, 0.257020682, 0.380308509, 0.0240819305, 0.92454654, 0.638605893, 0.716259539, -0.281344771)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10842609, -1.07924628, -0.00491863489, 0.214960918, -0.275039583, -0.937092721, 0.467292041, 0.87152642, -0.148602039, 0.857569933, -0.405951083, 0.315869689)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.756601989, -0.251980722, -0.439797103, 0.02593036, -0.687264979, 0.725942433, 0.639268041, 0.569698453, 0.51650995, -0.768546999, 0.4506782, 0.454115599)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--32, 2.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821573257, -0.659495831, 2.48595858, -0.875403404, 0.462944776, 0.139104962, 0.360301167, 0.433046073, 0.826229334, 0.322259665, 0.773403585, -0.545889735)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10842323, -1.07924056, -0.00491379201, 0.297347099, -0.245860517, -0.922570944, 0.104599014, 0.968848526, -0.224480689, 0.949022532, -0.0297513567, 0.31380105)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.994203329, 0.171580642, 0.810496211, 0.648917913, -0.757879376, -0.0672609732, -0.0437278599, -0.125403851, 0.991141975, -0.759600818, -0.640228808, -0.114517644)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.756603241, -0.25197947, -0.439794838, -0.0633919388, -0.506295264, 0.860026002, 0.746353388, 0.548038304, 0.377641261, -0.662524939, 0.665821552, 0.343130887)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--33, 2.866666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821569085, -0.671999693, 2.73596168, -0.922797382, 0.383293569, 0.0391294286, 0.275310755, 0.584938705, 0.762922645, 0.269534945, 0.714795589, -0.645304978)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.763589859, -0.200723469, -0.468853235, -0.0880018175, -0.368197262, 0.925573528, 0.893710077, 0.381180942, 0.23660782, -0.439929366, 0.848016322, 0.295517087)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13042641, -0.132990777, 0.597915173, 0.251992762, 0.898820162, -0.358639032, 0.0970970765, 0.345245123, 0.933476269, 0.962845743, -0.270052165, -0.000273540616)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--34, 2.933333396911621
		--35, 2.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821567178, -0.594117522, 2.94134521, -0.947633207, 0.307523757, -0.0861433297, 0.152604714, 0.672985077, 0.723742485, 0.280541122, 0.672696471, -0.684672594)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10279965, -1.00792849, -0.00403766334, 0.324880451, -0.153995544, -0.933133364, -0.0475469939, 0.982747257, -0.178737327, 0.944559097, 0.102435932, 0.311953366)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.776761055, 0.0296416879, 0.550526321, 0.61311543, -0.526337326, 0.589116395, -0.410638154, 0.424728751, 0.806834221, -0.674881697, -0.736596346, 0.0442733616)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.767500222, -0.202793956, -0.565075755, -0.0622965097, -0.217556477, 0.974057674, 0.944324195, 0.303061873, 0.128083989, -0.323065281, 0.927805364, 0.186564118)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04207587, -0.0208702683, 0.629765511, 0.410871714, 0.8563779, -0.31273222, 0.154752895, 0.272534847, 0.949618697, 0.898463249, -0.438567668, -0.0205503404)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--36, 3.049999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821570575, -0.394890428, 3.07057309, -0.932031155, 0.262356341, -0.2499744, -0.0035106549, 0.683246553, 0.730179489, 0.362361282, 0.681427479, -0.635886014)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08967829, -0.841534138, -0.00199355185, 0.322805166, 0.0188111328, -0.946278393, -0.0716177598, 0.997421503, -0.00460326113, 0.943751931, 0.0692562908, 0.323320001)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.766834378, -0.279391408, -0.748924971, -0.0233287364, -0.0645501316, 0.997641742, 0.915328801, 0.399922252, 0.0472800061, -0.402031004, 0.914273202, 0.0497549251)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--37, 3.1666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.83357197, -0.387508929, 3.12595725, -0.915181994, 0.204902306, -0.347069472, -0.110480987, 0.700603127, 0.704946518, 0.387603015, 0.6834988, -0.618541539)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08405447, -0.770222366, -0.00111764669, 0.309169173, 0.137898445, -0.940956116, -0.162177786, 0.982583165, 0.0907123014, 0.937076747, 0.12455675, 0.32614845)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.828609586, 0.124695539, -0.402336776, 0.698202372, -0.585481644, 0.411976576, 0.666041076, 0.742241025, -0.073943764, -0.262493402, 0.326020956, 0.908189535)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.766549587, -0.312218487, -0.827716172, -0.00125226378, 0.058590252, 0.99828136, 0.930367589, 0.366064519, -0.0203177035, -0.366625875, 0.928743005, -0.0549688712)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.705987096, -0.0457913876, 0.194978818, -0.563681901, 0.701715171, -0.435727596, -0.0722794086, 0.483592778, 0.872303784, 0.822823405, 0.523196101, -0.221872866)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--38, 3.2666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.849571645, -0.491509914, 3.1259582, -0.910847783, 0.153275341, -0.383227229, -0.163791522, 0.71802026, 0.676475942, 0.378851861, 0.678935885, -0.628901958)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08405471, -0.770222664, -0.00111751258, 0.30546394, 0.20219171, -0.930489182, -0.176171005, 0.972325742, 0.153448641, 0.93576467, 0.117052175, 0.332630813)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.766549528, -0.312218308, -0.827717185, 0.0178987086, 0.131320357, 0.991178274, 0.962324262, 0.26674515, -0.0527185202, -0.271315038, 0.954778433, -0.121598348)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--39, 3.3333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.861571848, -0.560421348, 2.88868856, -0.958147764, -0.00604696199, -0.286210597, -0.193783432, 0.749597192, 0.632892013, 0.210715532, 0.661866844, -0.719396651)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09227765, -0.680460274, -0.0768003762, 0.30824697, 0.242223322, -0.919951975, -0.162365571, 0.966247201, 0.200009242, 0.937348008, 0.0877162963, 0.337171435)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.785575151, -0.459113061, -0.758112371, -0.00652753562, 0.187497765, 0.982243359, 0.909104288, 0.410251737, -0.0722703785, -0.416517586, 0.892489851, -0.173132926)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--40, 3.433333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.861566961, 0.0413953885, 2.68323135, -0.989586234, -0.117637485, -0.0829503834, -0.129156888, 0.471273065, 0.872479439, -0.0635440275, 0.874107122, -0.481559038)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.183333158493042, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.12399578, -1.02266335, -0.0612929687, 0.375977904, 0.111035585, -0.919951916, 0.206531733, 0.957779229, 0.200009286, 0.903318942, -0.26519838, 0.337171376)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.183333158493042, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.565535963, -0.0687583089, -0.599770129, -0.70947051, 0.109784797, 0.696131408, 0.613639355, 0.581981301, 0.533615053, -0.34655264, 0.805757642, -0.480266631)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.816378295, -0.937750697, -0.484842002, -0.107672617, 0.15363799, 0.982243299, 0.538564503, 0.839479327, -0.0722705424, -0.835676372, 0.52121973, -0.173132837)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--41, 3.5166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.86156404, 0.270486653, 2.80595517, -0.934825659, -0.350599647, 0.0564003438, -0.0793089196, 0.360946417, 0.929208219, -0.346137553, 0.864174604, -0.36522764)}) tween1:Play() tablesorting(part1, tween1)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.877386332, -0.871158004, -0.471606851, -0.0974407792, 0.124422155, 0.987433136, 0.386347234, 0.919076145, -0.0776837319, -0.917191923, 0.373922527, -0.13762565)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.991461098, -0.177933037, -0.199907199, -0.185057193, 0.623525023, -0.759585798, -0.249716848, 0.717729568, 0.650004566, 0.950471222, 0.309969395, 0.022883594)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--42, 3.616666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.861564338, 0.770487905, 2.80595517, -0.70821327, -0.699974, 0.0920357704, 0.0445640422, 0.0857802555, 0.995317221, -0.704590678, 0.708998203, -0.0295570418)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14749002, -0.249877453, -0.50810039, 0.391692996, 0.0162770264, -0.919951916, 0.433234304, 0.87880832, 0.200009555, 0.811717033, -0.47689712, 0.337171286)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.982525587, 0.650962412, -0.638309598, -0.950805187, -0.207285613, 0.230221808, 0.304201126, -0.484208345, 0.820368171, -0.0585751981, 0.850044072, 0.523444414)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0006125, -0.93213737, -0.168925449, -0.0118478984, -0.119353935, 0.992780983, -0.129314125, 0.984695971, 0.116838753, -0.991532803, -0.126996279, -0.027100727)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32397342, 0.209597707, -0.50744766, 0.304809391, 0.95230037, -0.014675539, -0.517782807, 0.178623691, 0.836656809, 0.79937005, -0.247422189, 0.54753089)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--43, 3.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.743696749, 0.953341722, 2.82738853, -0.432838589, -0.892941713, 0.123717606, 0.229542822, 0.023544617, 0.973013818, -0.871757329, 0.44955641, 0.194777355)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.23312378, -0.175540209, -0.785842896, 0.534748912, -0.0671248361, -0.842340589, 0.567610502, 0.766998231, 0.299219012, 0.625988841, -0.638128519, 0.448252141)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0578078, -0.707057476, 0.0299684703, 0.0338044316, -0.515410304, 0.856278002, -0.198502257, 0.836237252, 0.511181891, -0.979513407, -0.187253386, -0.0740400106)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--44, 3.75
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0614742, 0.91446048, -0.597254574, -0.98800683, -0.0585488528, 0.142879322, 0.137430102, -0.755284071, 0.640826762, 0.0703948438, 0.652776957, 0.754272223)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.55062699, 0.438207358, 0.291842639, 0.00831066817, 0.962631524, 0.270690531, -0.484437525, -0.232938349, 0.84324497, 0.874784648, -0.138138846, 0.464396745)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--45, 3.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.311567217, 0.770479083, 3.09596634, -0.273921967, -0.960723817, -0.0444444083, 0.345521063, -0.141431257, 0.927692592, -0.897542417, 0.238758773, 0.370691508)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--46, 3.816666603088379
		tween2 = ts:Create(part2, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09640551, 0.987449229, -0.409305274, -0.462989569, 0.752440631, 0.468480557, -0.523141742, -0.658638895, 0.540849507, 0.71551621, 0.00532601774, 0.698575795)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--47, 3.883333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.311569273, 0.470480025, 3.09596252, -0.115742519, -0.975693524, 0.186080515, 0.437575877, 0.11809516, 0.891392887, -0.891701221, 0.184596375, 0.413271368)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14883649, -0.376885593, -0.0895704627, 0.903826416, -0.0264864415, -0.427078843, -0.0247591287, 0.993173063, -0.113991946, 0.427182466, 0.113603011, 0.897000313)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06319928, -0.652096152, -0.148339197, -0.117537506, -0.611823738, 0.782212555, 0.0532557815, 0.782655478, 0.620172679, -0.991639435, 0.114550911, -0.0594081953)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24363327, 0.244209766, -0.223748356, -0.112951607, 0.980802894, 0.158960074, -0.255578399, -0.183280408, 0.949256897, 0.960167706, 0.0665934533, 0.27137357)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--48, 3.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.311567307, 0.0950236768, 3.09596801, 0.0501675047, -0.933086097, 0.356137365, 0.391526014, 0.346417844, 0.852468431, -0.918798625, 0.0966708064, 0.382706404)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.494135559, 0.0885225534, 0.484044343, -0.239467919, -0.730612159, 0.639422834, 0.893038034, 0.0926652104, 0.440334082, -0.380956441, 0.676477909, 0.63027519)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05596447, -0.601565301, -0.273187816, -0.280427277, -0.489539146, 0.825658441, 0.318538547, 0.763965905, 0.561149955, -0.905479848, 0.420365751, -0.0582998246)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.908346176, 0.165136129, -0.92007184, -0.959306896, -0.18143782, 0.216359437, 0.194151431, 0.132516056, 0.971978962, -0.205020234, 0.974433541, -0.0918908045)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--49, 4.016666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.311567903, -0.179521933, 3.09596419, 0.227625266, -0.817973018, 0.528304517, 0.149449438, 0.565466285, 0.811118782, -0.962211967, -0.105676591, 0.250960171)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09985268, -0.407879829, 0.0324920416, 0.850506544, 0.169394255, -0.497939795, -0.34055832, 0.898826301, -0.27591905, 0.400822312, 0.404248416, 0.822146297)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02947819, -0.540094078, -0.36836946, -0.441633523, -0.129598007, 0.88778621, 0.650241196, 0.635553241, 0.416243255, -0.618177891, 0.761102915, -0.196411818)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--50, 4.050000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.641568601, -0.439527988, 2.52596259, 0.249276742, -0.779286027, 0.574954927, -0.311173141, 0.497761667, 0.809571087, -0.917078197, -0.380718201, -0.118412539)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33363271, -0.456628323, 0.358522475, 0.871630967, 0.478373587, -0.106856637, -0.489911377, 0.843248308, -0.221177816, -0.0156989247, 0.24513565, 0.969361782)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.97339052, -0.799216509, -0.529026508, -0.0183842778, 0.0589279905, 0.998093009, 0.575481415, 0.816948473, -0.0376327932, -0.817606866, 0.573693037, -0.0489320159)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--51, 4.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.641569853, -0.473277539, 2.52596331, 0.192420602, -0.787933767, 0.584923267, -0.31149748, 0.516191483, 0.797819495, -0.930561125, -0.335718989, -0.146113545)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34589112, -0.456617296, 0.336303324, 0.855891705, 0.495958, -0.146543264, -0.517115355, 0.817242622, -0.254374355, -0.00639756024, 0.293496668, 0.955938697)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.603022337, 0.411869973, 0.615152597, 0.425557852, -0.730128288, 0.534615338, 0.637484789, 0.661182284, 0.395538777, -0.642272234, 0.172484457, 0.746817112)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.973388672, -0.799211144, -0.529027522, -0.0564960539, 0.0514448732, 0.997076511, 0.578953266, 0.815308154, -0.00926198065, -0.813401163, 0.576737344, -0.0758458972)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.664753914, 0.0402272344, -0.900443375, -0.749440014, -0.624095321, 0.22100845, -0.0759736449, 0.412674308, 0.907704771, -0.65769881, 0.663479507, -0.356689423)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--52, 4.133333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.641569197, -0.478456795, 2.52596211, 0.141769946, -0.793614626, 0.591673493, -0.301467031, 0.534704506, 0.789435863, -0.942878067, -0.290288329, -0.163443714)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.37030745, -0.470759392, 0.300299317, 0.84558326, 0.496915042, -0.195100754, -0.533572435, 0.798334301, -0.279218256, 0.0170078352, 0.340202749, 0.940198183)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.973388493, -0.799210966, -0.529027581, 0.0584897846, 0.0332411155, 0.997734368, 0.581717134, 0.811091125, -0.0611246228, -0.811285377, 0.583974361, 0.0281036347)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--53, 4.199999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.641569734, -0.44381386, 2.52596307, 0.257447004, -0.766820431, 0.587969303, -0.322506487, 0.505401671, 0.800349295, -0.910884678, -0.395671338, -0.117190391)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.40279579, -0.499058425, 0.257916361, 0.845943689, 0.510667861, -0.15361549, -0.530608535, 0.834795594, -0.146871328, 0.0532350689, 0.205754578, 0.977154553)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.573128521, 0.360897362, 0.517828465, 0.234663785, -0.865697503, 0.442154706, 0.82884109, 0.415843874, 0.37429443, -0.507892966, 0.278642654, 0.815109134)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.973388672, -0.799211383, -0.529028654, 0.111778587, 0.102181897, 0.988465667, 0.589740515, 0.793776274, -0.148745626, -0.799819827, 0.59956485, 0.0284663439)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--54, 4.2166666984558105
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.564412951, -0.0179237723, -0.927951336, -0.768340826, -0.621067584, 0.1546866, -0.140300959, 0.399235815, 0.906050026, -0.624474764, 0.674452543, -0.393885553)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--55, 4.266666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.641570687, -0.375244707, 2.52596474, 0.318947554, -0.746727645, 0.583670318, -0.347000003, 0.481071383, 0.805084884, -0.881965935, -0.459313393, -0.105678022)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43740106, -0.547420263, 0.21111542, 0.858063698, 0.498424113, -0.123694114, -0.505203605, 0.862508953, -0.0291167423, 0.0921747983, 0.0874747708, 0.991893053)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999971389770508, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.94590044, -0.924479127, -0.62800622, 0.0818237886, 0.142635405, 0.986387372, 0.601997972, 0.781689167, -0.162972808, -0.794294119, 0.607138276, -0.0219054595)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--56, 4.2833333015441895
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.583966017, 0.407177478, 0.496489376, 0.162630528, -0.893111706, 0.419407815, 0.882839322, 0.321533561, 0.342360973, -0.440620124, 0.314591438, 0.840765297)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--57, 4.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.653124571, -0.321467638, 2.52416635, 0.341001391, -0.766754508, 0.543880522, -0.368463844, 0.423246711, 0.827705801, -0.864842653, -0.482648998, -0.138193607)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.44005108, -0.545164466, 0.161819369, 0.866446853, 0.492172569, -0.0838805512, -0.485586196, 0.869786024, 0.0876261964, 0.116085306, -0.0351922326, 0.992615581)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.934741974, -0.988540769, -0.667305529, 0.0649352297, 0.177717745, 0.981936753, 0.532824337, 0.825823545, -0.18469888, -0.843730807, 0.535193264, -0.0410672873)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--58, 4.349999904632568
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.709338307, 0.773856521, 0.593234181, 0.250343323, -0.841198623, 0.479283959, 0.873173714, 0.410015911, 0.263542414, -0.418205529, 0.352521956, 0.837157428)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.623429894, -0.00606608391, -1.03059483, -0.996183872, 0.0871593654, -0.00491972268, -0.00226044655, 0.0305765402, 0.999529958, 0.0872686803, 0.995726466, -0.0302625094)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--59, 4.383333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.682011962, -0.301311076, 2.51967788, 0.296423227, -0.845901251, 0.443378896, -0.387322277, 0.317878038, 0.865410447, -0.872992039, -0.428258181, -0.233409941)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43321633, -0.534063995, 0.157236516, 0.866446972, 0.498318851, -0.0307902694, -0.485586166, 0.855436087, 0.18009755, 0.116085127, -0.141093627, 0.983166814)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.952658832, -0.939914465, -0.600590348, 0.0684977099, 0.198605165, 0.977682948, 0.319811374, 0.923896432, -0.210085437, -0.94500196, 0.327064544, -0.000231385231)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--60, 4.4666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.587849081, -0.227534324, 2.44503355, 0.266242713, -0.945700169, 0.186458126, -0.314521879, 0.0976186618, 0.944217563, -0.911148429, -0.310036153, -0.271453083)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43048227, -0.529623449, 0.155403748, 0.890677273, 0.454037696, -0.0233212113, -0.421513259, 0.843919873, 0.331852019, 0.170354575, -0.285742819, 0.943043053)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.939867377, -0.990099907, -0.451371491, 0.0175839663, 0.175141826, 0.984386146, 0.0455825031, 0.983374238, -0.17577602, -0.998805821, 0.047961615, 0.00930823386)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--61, 4.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.563554943, -0.0632517934, 2.25790024, 0.26777339, -0.953488529, -0.138404548, -0.292575926, -0.217337161, 0.931216717, -0.917985141, -0.20886147, -0.337165266)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43048191, -0.52962327, 0.155403972, 0.934883893, 0.344974279, -0.0835748464, -0.232287511, 0.772637188, 0.590824962, 0.268392444, -0.532939374, 0.802459359)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.766325295, 0.94052875, 0.637209117, 0.325451672, -0.290037125, 0.899977565, 0.829481065, 0.544485509, -0.124486342, -0.453919142, 0.787028491, 0.417784065)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.889970005, -1.16419792, -0.145038992, -0.0756268129, 0.0575513579, 0.995474279, -0.412910521, 0.906909943, -0.0838009045, -0.907621264, -0.41737771, -0.0448265374)}) tween4:Play() tablesorting(part4, tween4)
		part3.C0 = CFrame.new(-0.623429894, -0.00606608391, -1.03059483, -0.996183872, 0.0871593654, -0.00491972268, -0.00226044655, 0.0305765402, 0.999529958, 0.0872686803, 0.995726466, -0.0302625094)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--62, 4.616666793823242
		part1.C0 = CFrame.new(0.563554943, -0.0632517934, 2.25790024, 0.26777339, -0.953488529, -0.138404548, -0.292575926, -0.217337161, 0.931216717, -0.917985141, -0.20886147, -0.337165266)
		part6.C0 = CFrame.new(8.94069672e-08, 0.999999881, 0, -0.689463675, 0.721713543, 0.0613973737, 0.594713211, 0.515668929, 0.616767228, 0.41346857, 0.461752295, -0.784747481)
		part5.C0 = CFrame.new(-1.43048191, -0.52962327, 0.155403972, 0.934883893, 0.344974279, -0.0835748464, -0.232287511, 0.772637188, 0.590824962, 0.268392444, -0.532939374, 0.802459359)
		part2.C0 = CFrame.new(0.766325295, 0.94052875, 0.637209117, 0.325451672, -0.290037125, 0.899977565, 0.829481065, 0.544485509, -0.124486342, -0.453919142, 0.787028491, 0.417784065)
		part4.C0 = CFrame.new(0.889970005, -1.16419792, -0.145038992, -0.0756268129, 0.0575513579, 0.995474279, -0.412910521, 0.906909943, -0.0838009045, -0.907621264, -0.41737771, -0.0448265374)
		part3.C0 = CFrame.new(-1.75256205, 0.408654004, -0.773679554, -0.484179199, 0.873696625, 0.0472010747, 0.0240985453, -0.0406106263, 0.998885632, 0.874637604, 0.484773785, -0.00139199197)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--63, 4.7166666984558105
		part1.C0 = CFrame.new(0.113557853, -0.0632480755, 1.79681778, 0.264876634, -0.878035426, -0.398615777, -0.288008898, -0.466548234, 0.836291671, -0.920266986, -0.106709234, -0.376459748)
		part6.C0 = CFrame.new(2.98023224e-08, 0.999999762, 2.98023224e-08, -0.549649894, 0.805771828, -0.220492631, 0.428480834, 0.498498738, 0.753593504, 0.717139721, 0.319735706, -0.61925751)
		part5.C0 = CFrame.new(-1.43048215, -0.529623806, 0.155403867, 0.967601418, 0.238249362, -0.0835745335, -0.14441599, 0.793769479, 0.590824902, 0.207102567, -0.559613645, 0.80245924)
		part2.C0 = CFrame.new(0.896777034, 0.775474548, 0.168356046, 0.402425885, -0.511521101, 0.759209812, 0.862380743, 0.490095675, -0.126908273, -0.307169139, 0.705798984, 0.638353229)
		part4.C0 = CFrame.new(0.889972091, -1.16419065, -0.145039618, -0.0756286457, -0.0197030995, 0.996941447, -0.412909925, 0.910674274, -0.0133254528, -0.90762639, -0.412654757, -0.0770086795)
		part3.C0 = CFrame.new(-1.51836705, 0.367325008, -0.238134354, -0.102575943, 0.993604779, 0.0472031236, 0.00623452663, -0.0468103364, 0.998884439, 0.994705677, 0.1027558, -0.00139307976)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--64, 4.849999904632568
		part1.C0 = CFrame.new(0.127558485, -0.0732474998, 1.7091639, 0.10269139, -0.889096618, -0.446051538, -0.34361589, -0.452524722, 0.822891057, -0.933478832, 0.0687665269, -0.351978123)
		part6.C0 = CFrame.new(1.04308128e-07, 0.999999762, 5.96046448e-08, -0.551086068, 0.825427949, -0.122364029, 0.447098851, 0.415896058, 0.791917443, 0.704561532, 0.381705821, -0.598242342)
		part5.C0 = CFrame.new(-1.43048251, -0.529623628, 0.155403778, 0.975465298, 0.182497442, -0.123135269, -0.086889118, 0.833051443, 0.546329141, 0.202281669, -0.522225976, 0.828469813)
		part2.C0 = CFrame.new(1.01273441, 0.628759623, -0.248402357, 0.434434235, -0.681856811, 0.588504851, 0.885969937, 0.441195071, -0.142842889, -0.162247077, 0.583453536, 0.795774996)
		part4.C0 = CFrame.new(0.895985007, -1.19289589, -0.116388679, -0.0718995631, -0.0764918923, 0.994474411, -0.445736647, 0.894416869, 0.0365694761, -0.892271996, -0.440644324, -0.0984033942)
		part3.C0 = CFrame.new(-1.31020665, 0.330595493, 0.2379179, 0.252446592, 0.96646142, 0.047200758, -0.0105802864, -0.0460222326, 0.998884857, 0.967553377, -0.252665848, -0.00139138103)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--65, 5.016666889190674
		part1.C0 = CFrame.new(0.19767946, -0.183876038, 1.95102632, 0.000425579026, -0.859248698, -0.511558115, -0.246832013, -0.495819986, 0.832608461, -0.969058335, 0.125914589, -0.21230109)
		part6.C0 = CFrame.new(-3.27825546e-07, 0.999998212, -3.03983688e-06, -0.504320621, 0.859970093, -0.0781854391, 0.458238572, 0.343268931, 0.819868326, 0.731900632, 0.37764883, -0.567188859)
		part5.C0 = CFrame.new(-1.43048215, -0.529623747, 0.155403912, 0.966023266, 0.160359457, -0.202691436, -0.0543198586, 0.892697394, 0.447370917, 0.252682269, -0.421160638, 0.871077061)
		part2.C0 = CFrame.new(1.39995134, 0.443828702, -0.708361983, 0.259238601, -0.92546916, 0.276233673, 0.958823681, 0.212262437, -0.188687339, 0.115990169, 0.313773572, 0.942387581)
		part4.C0 = CFrame.new(0.908387065, -1.25209928, -0.0572965145, -0.0616501048, -0.122215837, 0.990586996, -0.511351228, 0.856196105, 0.0738106817, -0.857157588, -0.501987457, -0.115279771)
		part3.C0 = CFrame.new(-1.20217872, 0.109297484, 0.0977361873, -0.231239468, 0.972851813, -0.00938304141, -0.0141860545, 0.006271875, 0.999879718, 0.972793519, 0.231344834, 0.0123506039)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--66, 5.150000095367432
		part1.C0 = CFrame.new(0.259195209, -0.197179168, 2.04129243, -0.0954619944, -0.894172549, -0.43742761, -0.218536854, -0.409888059, 0.885569751, -0.971148252, 0.180132285, -0.15628086)
		part6.C0 = CFrame.new(6.15417957e-06, 1.0000037, 1.4603138e-06, -0.391831845, 0.916407764, -0.0816524625, 0.550518334, 0.304641187, 0.777254343, 0.737156451, 0.259601712, -0.62386626)
		part5.C0 = CFrame.new(-1.43048263, -0.529623866, 0.155403852, 0.948478341, 0.163798988, -0.271217704, -0.0583114773, 0.93162173, 0.358721018, 0.311430395, -0.324423999, 0.89317435)
		part2.C0 = CFrame.new(1.55687261, 0.578365088, -0.517872453, 0.206394166, -0.978149533, -0.0250777565, 0.975312948, 0.207716912, -0.074963212, 0.07853508, -0.00898633059, 0.996872306)
		part4.C0 = CFrame.new(0.918963671, -1.3025893, -0.00690233707, -0.0520799011, -0.139368296, 0.988870084, -0.564981103, 0.820620179, 0.0859003142, -0.823458552, -0.554219127, -0.121478282)
		part3.C0 = CFrame.new(-1.36537957, 0.0595843792, 0.0300576761, -0.273397326, 0.960667074, -0.0487220176, -0.0377207398, 0.0399055667, 0.998491168, 0.961161613, 0.274822712, 0.025327161)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--67, 5.316666603088379
		part1.C0 = CFrame.new(0.354551017, -0.138251439, 2.06540251, -0.205646202, -0.910109103, -0.359738141, -0.230908245, -0.312090546, 0.921564519, -0.950994909, 0.272582769, -0.145971432)
		part6.C0 = CFrame.new(-2.98023224e-07, 0.999999702, 2.98023224e-08, -0.582632065, 0.752632678, -0.306731582, 0.399290532, 0.593792856, 0.698553622, 0.70788908, 0.284524709, -0.646481872)
		part5.C0 = CFrame.new(-1.43048239, -0.529623568, 0.155403674, 0.907357216, 0.18277961, -0.37854287, -0.102697313, 0.969619155, 0.222018272, 0.407622814, -0.16257453, 0.898561835)
		part2.C0 = CFrame.new(1.52759862, 0.723666191, 0.134370506, -0.146155566, -0.842608213, -0.518315315, 0.949637413, -0.266303599, 0.165140808, -0.27717793, -0.468075752, 0.839094281)
		part4.C0 = CFrame.new(0.935070276, -1.37947822, 0.0698409081, -0.0382563323, -0.143779084, 0.988870084, -0.642233908, 0.761680245, 0.0859002322, -0.765553474, -0.631799579, -0.121478885)
		part3.C0 = CFrame.new(-1.59605145, 0.081625104, -0.0358373374, -0.138262004, 0.989212275, 0.0485021062, -0.0157296658, -0.051160384, 0.998567581, 0.990274608, 0.137299523, 0.022636503)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--68, 5.449999809265137
		part1.C0 = CFrame.new(0.454654336, -0.154919207, 2.13168383, -0.668938637, -0.734849572, -0.111880943, -0.300822496, 0.129998192, 0.944778502, -0.679725766, 0.665655136, -0.308020115)
		part6.C0 = CFrame.new(4.47034836e-08, 0.999999821, -2.98023224e-08, -0.795634627, 0.605270743, -0.0247599483, 0.332299769, 0.470256388, 0.817579329, 0.506500363, 0.642266631, -0.575283587)
		part5.C0 = CFrame.new(-1.35363245, -0.659208655, 0.122607648, 0.794089615, 0.342449516, -0.50214529, -0.388217509, 0.921454012, 0.0144817643, 0.46766305, 0.183441758, 0.864661932)
		part2.C0 = CFrame.new(1.45038986, 0.444450617, 0.0698049664, 0.264577478, -0.433769256, -0.861303091, 0.963132799, 0.16397731, 0.213275731, 0.0487217009, -0.885977268, 0.46116215)
		part4.C0 = CFrame.new(0.945092082, -1.42731869, 0.117592156, 0.0464945138, -0.0102487467, 0.998865902, -0.700683534, 0.712354243, 0.0399239808, -0.711955667, -0.701745272, 0.0259394348)
		part3.C0 = CFrame.new(-1.53513873, 0.232405365, 0.0207143128, 0.275799543, 0.948342025, 0.156787694, -0.228694499, -0.0936900675, 0.968979478, 0.933613122, -0.303100526, 0.191040918)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--69, 5.599999904632568
		part1.C0 = CFrame.new(0.0676511452, -0.163252577, 1.97252166, -0.907565415, -0.338707685, -0.248197898, -0.369548589, 0.363585681, 0.855125546, -0.199396327, 0.867803395, -0.4551467)
		part6.C0 = CFrame.new(8.19563866e-08, 0.999999881, 2.98023224e-08, -0.906972826, 0.394979894, 0.146258041, 0.271749318, 0.283455342, 0.9196769, 0.321796209, 0.873867333, -0.364421695)
		part5.C0 = CFrame.new(-1.26065528, -0.796959519, -0.0695351362, 0.733084798, 0.267733395, -0.625224471, -0.54571867, 0.780189216, -0.305770963, 0.405928254, 0.565352798, 0.718052149)
		part2.C0 = CFrame.new(1.49598455, 0.366129458, 0.0718414783, 0.235127866, -0.694705665, -0.679778874, 0.971251309, 0.194720283, 0.136948764, 0.0372277647, -0.692436337, 0.720517933)
		part4.C0 = CFrame.new(0.950103164, -1.4512403, 0.141467452, 0.160365224, 0.214005962, 0.96357888, -0.748744071, 0.66247654, -0.0225216448, -0.643168211, -0.717862248, 0.266473889)
		part3.C0 = CFrame.new(-1.36229229, 0.269593656, 0.19482559, 0.401616544, 0.903227389, 0.151276723, -0.335574478, -0.00855444465, 0.941974878, 0.852111459, -0.429077268, 0.299664438)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--70, 5.699999809265137
		part1.C0 = CFrame.new(-0.296446085, -0.163257658, 2.06790447, -0.909082294, 0.16250585, -0.383614421, -0.305894613, 0.364757776, 0.879420996, 0.282837301, 0.916811824, -0.281885564)
		part6.C0 = CFrame.new(2.23517418e-08, 0.99999994, 1.49011612e-08, -0.960914731, 0.200442389, 0.190961212, 0.202915445, 0.0406971574, 0.978350282, 0.188331351, 0.978859961, -0.0797792673)
		part5.C0 = CFrame.new(-0.849866152, -0.686004877, -0.034738183, 0.231840119, 0.36128211, -0.903170824, -0.737248063, 0.67097199, 0.0791439116, 0.63459909, 0.64751482, 0.42191267)
		part2.C0 = CFrame.new(1.60665059, 0.258309782, 0.218492568, 0.207908958, -0.883334577, -0.420110375, 0.97752589, 0.202962667, 0.0570105761, 0.0349073261, -0.422522187, 0.905680895)
		part4.C0 = CFrame.new(0.950103462, -1.45123982, 0.141467363, 0.285657585, 0.503877223, 0.81517309, -0.794575036, 0.600080907, -0.0924843177, -0.535770714, -0.621297419, 0.571785927)
		part3.C0 = CFrame.new(-1.04711616, 0.219690949, 0.394950807, 0.42612946, 0.891742766, 0.152345002, -0.407819033, 0.0390362889, 0.912228107, 0.807525456, -0.450856268, 0.380304128)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--71, 5.7833333015441895
		part1.C0 = CFrame.new(-0.786439061, -0.203258663, 2.33790231, -0.465515703, 0.556575418, -0.688126326, -0.265370011, 0.653958678, 0.708461523, 0.844318449, 0.512408316, -0.156729937)
		part6.C0 = CFrame.new(0, 1.00000012, 1.49011612e-08, -0.892894566, -0.449814379, -0.0201659575, -0.0569061525, 0.0683062971, 0.996040225, -0.446655601, 0.890506446, -0.0865874887)
		part5.C0 = CFrame.new(-0.833969474, -0.874203742, -0.280761719, 0.244425714, -0.044709444, -0.968632042, -0.842237055, 0.485222697, -0.234937295, 0.480508149, 0.873248518, 0.0809440985)
		part2.C0 = CFrame.new(1.34130394, 0.526644588, -0.208703458, 0.202708632, -0.977767944, -0.0536381863, 0.888809144, 0.20670037, -0.409016043, 0.411011219, 0.0352381244, 0.910949528)
		part4.C0 = CFrame.new(0.950103521, -1.45123982, 0.141467452, 0.0853916928, 0.572888076, 0.815173149, -0.957194567, 0.274272144, -0.0924843103, -0.276562512, -0.772381961, 0.571785927)
		part3.C0 = CFrame.new(-0.668913007, 0.159817725, 0.635107756, 0.454652786, 0.876781702, 0.156682312, -0.48840189, 0.0983152539, 0.867063403, 0.744816124, -0.470738739, 0.472923726)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--72, 5.866666793823242
		--73, 5.866666793823242
		part1.C0 = CFrame.new(-0.786433578, -0.253259897, 2.33789778, -0.00155848265, 0.643621504, -0.765341938, -0.267520815, 0.737179875, 0.620483041, 0.963550746, 0.205712318, 0.171032533)
		part6.C0 = CFrame.new(0, 1.00000012, 1.49011612e-08, -0.892894566, -0.449814379, -0.0201659575, -0.0569061525, 0.0683062971, 0.996040225, -0.446655601, 0.890506446, -0.0865874887)
		part5.C0 = CFrame.new(-0.833964646, -0.87420547, -0.280761778, 0.248044178, 0.0147288702, -0.968631983, -0.933497012, 0.270901799, -0.234937266, 0.258944184, 0.962496161, 0.0809441134)
		part2.C0 = CFrame.new(1.34130394, 0.526644588, -0.208703458, 0.202708632, -0.977767944, -0.0536381863, 0.888809144, 0.20670037, -0.409016043, 0.411011219, 0.0352381244, 0.910949528)
		part4.C0 = CFrame.new(0.950103462, -1.45123994, 0.141467333, 0.38077414, 0.503877282, 0.775318325, -0.799934149, 0.600080907, 0.00287248194, -0.46380645, -0.621297359, 0.631563842)
		part3.C0 = CFrame.new(-0.668913007, 0.159817725, 0.635107756, 0.454652786, 0.876781702, 0.156682312, -0.48840189, 0.0983152539, 0.867063403, 0.744816124, -0.470738739, 0.472923726)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--74, 5.933333396911621
		part1.C0 = CFrame.new(-0.786441743, -0.718720078, 1.84790742, 0.529985368, 0.487930864, -0.693570256, -0.275319695, 0.872582376, 0.403483927, 0.802069306, -0.0228872634, 0.596792698)
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.7864393, -0.770837009, 1.84790385, 0.708374918, 0.434958518, -0.555892885, -0.234376654, 0.887828767, 0.396015346, 0.665787756, -0.150239244, 0.730859399)}) tween1:Play() tablesorting(part1, tween1)
		part6.C0 = CFrame.new(3.7252903e-08, 1.00000012, 1.1920929e-07, -0.919599295, -0.37162742, 0.127398521, 0.192061067, -0.142388344, 0.970998526, -0.342709661, 0.917397857, 0.202315465)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000024, 1.11758709e-07, -0.927115202, -0.326409072, 0.184159428, 0.237311229, -0.130968943, 0.962564647, -0.290070623, 0.936111331, 0.198883921)}) tween6:Play() tablesorting(part6, tween6)
		part5.C0 = CFrame.new(-0.73601675, -0.253143609, -0.35753572, 0.238081425, 0.0711645186, -0.968634427, -0.970733106, 0.0498197787, -0.234936997, 0.0315379389, 0.996219635, 0.0809428841)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.712715507, -0.152536154, -0.409016967, 0.283665478, -0.0134105906, -0.958829463, -0.9466905, 0.155287281, -0.282246172, 0.152679071, 0.987778187, 0.0313539542)}) tween5:Play() tablesorting(part5, tween5)
		part2.C0 = CFrame.new(0.63782382, 0.985817611, -0.803493381, -0.431031615, 0.211529195, 0.877192795, 0.332710564, -0.86638099, 0.372408062, 0.83875829, 0.452370942, 0.303059578)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0311980247, 0.8803882, -1.06350958, -0.37471664, 0.69450134, 0.614211082, 0.12591204, -0.618222296, 0.775852978, 0.918549895, 0.368061572, 0.144212127)}) tween2:Play() tablesorting(part2, tween2)
		part4.C0 = CFrame.new(0.856405497, -1.5695591, -0.197346658, 0.370180398, 0.585309565, 0.721373141, -0.201586902, 0.808647931, -0.55267638, -0.906823695, 0.0591705516, 0.417336345)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.84334445, -1.58232331, -0.256285667, 0.367651105, 0.674854577, 0.639846802, -0.0868846178, 0.709950864, -0.698871136, -0.925896168, 0.201347783, 0.319648743)}) tween4:Play() tablesorting(part4, tween4)
		part3.C0 = CFrame.new(-0.597050846, 0.110349923, 0.632504821, 0.385086209, 0.812642574, 0.437402219, -0.749454796, -0.00120518915, 0.66205442, 0.538540661, -0.582761228, 0.608574748)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.5842067, 0.0935198367, 0.621142745, 0.448072255, 0.75291425, 0.482028693, -0.786823273, 0.0761423334, 0.612463474, 0.424429566, -0.653699219, 0.626527786)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--75, 6
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.786437213, -0.77916503, 1.80208206, 0.74572283, 0.412248403, -0.523400962, -0.202290758, 0.888596773, 0.411672622, 0.634803772, -0.201114416, 0.746041119)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000024, 5.96046448e-08, -0.931396008, -0.289625287, 0.220496759, 0.259552211, -0.103710517, 0.960144222, -0.255214214, 0.951504827, 0.171768486)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.699978292, -0.113759041, -0.448579729, 0.296436757, -0.0630278438, -0.952970445, -0.929595828, 0.209803477, -0.303041756, 0.219036579, 0.975710154, 0.0036030896)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.00206708908, 0.724329472, -1.09494293, -0.333236873, 0.867151916, 0.370136321, 0.0509726703, -0.375431478, 0.925447822, 0.941464663, 0.327260077, 0.0809064806)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.839383245, -1.58400798, -0.28105247, 0.375333488, 0.676391125, 0.633734822, -0.0563559383, 0.699110031, -0.712789655, -0.925175011, 0.231819093, 0.300518095)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.578647733, 0.0825782716, 0.611237109, 0.508126557, 0.699743867, 0.502161682, -0.792965114, 0.152506754, 0.589871526, 0.33617568, -0.697925866, 0.632365167)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--76, 6.133333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.786437511, -0.773826063, 1.73589957, 0.747098923, 0.403112531, -0.528529584, -0.169906124, 0.884520769, 0.434459567, 0.642631292, -0.234783828, 0.729315937)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-08, 1.00000012, 7.4505806e-08, -0.934529006, -0.250511885, 0.252783716, 0.277490467, -0.0681746006, 0.958306551, -0.222833738, 0.965710223, 0.133225814)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.689347625, -0.0912852883, -0.488560259, 0.299907297, -0.105649285, -0.94810003, -0.913780272, 0.253611565, -0.317311734, 0.273972899, 0.961519301, -0.020480264)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.152094007, 0.534052253, -1.05367148, -0.306356788, 0.942996085, 0.13001579, 0.00730128586, -0.134251654, 0.990920544, 0.951889098, 0.304524481, 0.0342437923)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.838015258, -1.58218706, -0.297179759, 0.384199172, 0.65120405, 0.654464841, -0.0507129133, 0.722685337, -0.689314067, -0.921856344, 0.231644124, 0.310679555)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.574899375, 0.072383821, 0.600716233, 0.570357978, 0.638494551, 0.516736865, -0.784013867, 0.235551998, 0.574315131, 0.244978428, -0.73269397, 0.634937406)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--77, 6.233333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.786439061, -0.756901622, 1.63790178, 0.721422315, 0.404214114, -0.562282383, -0.127616361, 0.875660479, 0.465760678, 0.680635393, -0.264253855, 0.683305264)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.53674316e-07, 1.00000072, -9.53674316e-07, -0.936660528, -0.198770493, 0.288374364, 0.297644615, -0.0177875161, 0.954511344, -0.184599504, 0.979885161, 0.0758229494)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.677634537, -0.0754144192, -0.538860798, 0.29681614, -0.15315713, -0.942573607, -0.894779742, 0.300185353, -0.330543011, 0.333572477, 0.941505611, -0.0479418337)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.485347867, 0.270549685, -0.947566569, -0.287386328, 0.945758164, -0.151518375, -0.0280494541, 0.149814919, 0.988317907, 0.957406044, 0.288278043, -0.0165304989)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.838251054, -1.57728088, -0.310859412, 0.39663595, 0.597205758, 0.697155058, -0.0614717603, 0.775022686, -0.62893641, -0.91591543, 0.206603393, 0.344113171)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.571571767, 0.060200721, 0.587103188, 0.83699286, 0.132250085, 0.530992806, -0.464006096, 0.685899675, 0.560571551, -0.290072203, -0.71557802, 0.635457754)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500038146972656)

		if afterframe() then
			return
		end

		--78, 6.333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.786420882, -0.643262208, 1.67788565, 0.617138088, 0.469574273, -0.631379485, -0.0268632043, 0.814515531, 0.579520345, 0.786396503, -0.340682715, 0.515281975)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.93715096e-07, 1, 2.98023224e-08, -0.937927365, -0.056015484, 0.342279524, 0.330857128, 0.151561409, 0.931430578, -0.10405086, 0.986859441, -0.123620421)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.659593761, -0.121429086, -0.66594553, 0.274471372, -0.279057264, -0.92021364, -0.822811365, 0.427085787, -0.374934912, 0.497635067, 0.860074103, -0.112390116)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.774925411, -0.0165367126, -0.693074822, -0.577797174, 0.800068557, 0.161378324, 0.227194205, -0.0322442576, 0.973311007, 0.783924222, 0.599043012, -0.1631331)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.952691197, -1.58403552, -0.245284885, 0.415857822, 0.358501345, 0.835787296, -0.179737657, 0.933291554, -0.310892314, -0.891492724, -0.0209302902, 0.452552676)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666631698608398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.572803259, 0.0339040458, 0.550073087, 0.802574694, 0.42064327, 0.423011363, -0.573312879, 0.73985076, 0.352036268, -0.164891079, -0.525049746, 0.834947944)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166631698608398)

		if afterframe() then
			return
		end

		--79, 6.449999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.786433578, -0.643260419, 1.59790146, 0.563464403, 0.545590699, -0.620354235, 0.0706443042, 0.716335595, 0.694170654, 0.823114693, -0.434964925, 0.365086645)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.383333683013916, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-9.31322575e-10, 1, 0, -1.00000012, -2.32830644e-10, 0, 0, 2.98023224e-08, 1, 2.32830644e-10, 1.00000012, 2.98023224e-08)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.650603414, -0.175791562, -0.714330316, 0.270336062, -0.303226113, -0.913768113, -0.687227368, 0.603926301, -0.403722316, 0.674267709, 0.737107217, -0.0451221615)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.952983081, 0.207353681, -0.295247793, -0.727824509, 0.423579842, 0.539306462, 0.678534865, 0.33093667, 0.655798376, 0.0993066728, 0.843244255, -0.528277576)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10739338, -1.25843275, -0.238753736, 0.41585803, 0.213000879, 0.884133875, -0.179735467, 0.972258925, -0.14969179, -0.891491532, -0.0966596752, 0.442605466)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00667214, 0.246651083, -0.00591284037, 0.498501867, 0.38166979, -0.778347611, -0.047439754, 0.908528328, 0.415121764, 0.865589976, -0.170014501, 0.471009076)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500038146972656)

		if afterframe() then
			return
		end

		--80, 6.550000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.622591794, -0.509244978, 1.42958736, 0.154240444, 0.790102661, -0.593252182, -0.0617092885, 0.606968522, 0.79232651, 0.986104488, -0.0855996087, 0.142375767)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.721520782, -0.35883081, -0.575590074, 0.195447519, -0.267180324, -0.94361788, -0.542194605, 0.772319257, -0.33098042, 0.817205787, 0.576313794, 0.00608415902)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999873161, 0.314961553, -0.150858402, -0.61548841, 0.1946311, 0.76373601, 0.673478961, 0.633226752, 0.381379008, -0.409389853, 0.749094486, -0.520823717)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1172483, -1.13675594, -0.187656388, 0.336199164, 0.133635432, 0.932261586, -0.139016867, 0.986079991, -0.0912168026, -0.931474447, -0.0989330262, 0.350096822)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--81, 6.633333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.349524468, -0.285890639, 0.88573277, -0.564335883, 0.738578141, -0.368819118, -0.161834419, 0.339115351, 0.92672044, 0.809527516, 0.58266902, -0.0718475878)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.842714369, -0.645769417, -0.328230828, 0.0913464874, -0.167808205, -0.98157841, -0.304114282, 0.93390882, -0.18795982, 0.948245823, 0.315681547, 0.034276396)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01867127, 0.419684172, -0.0428165793, -0.332611442, 0.0276696831, 0.942657948, 0.410655677, 0.904075623, 0.118360303, -0.848959148, 0.426475734, -0.312068671)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08210742, -1.04249978, -0.104665205, 0.192918524, 0.0540635288, 0.979724169, -0.0764830559, 0.996271551, -0.039916303, -0.978229463, -0.06723167, 0.196334213)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, 1.49011612e-08, -9.77888703e-09, -0.99999994, 5.58793545e-09, 1.00000012, 9.77888703e-09, 1, 5.58793545e-09, -1.49011612e-08)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--82, 6.666666507720947
		--83, 6.733333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, -1.49011612e-08, -1.49011612e-08, -1, 0, 1.28056854e-09, -1.28056854e-09, 3.7252903e-09, 1.00000024, 0, 1, 3.7252903e-09)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 7.4505806e-09, 1.49011612e-08, 2.79396772e-09, -0.99999994, 0, 1, -2.79396772e-09, 1, 0, -1.49011612e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 7.4505806e-09, 0, 3.7252903e-09, 1, 1.49011612e-08, 0.99999994, 3.7252903e-09, -1, -1.49011612e-08, 0)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -1, 0, 0, -3.7252903e-09, 1, 0, 0.99999994, -3.7252903e-09, -1, 0, 0)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500038146972656)

		if afterframe() then
			return
		end

		--84, 6.833333492279053
		part1.C0 = CFrame.new(0, -1.49011612e-08, -1.49011612e-08, -1, 0, 1.28056854e-09, -1.28056854e-09, 3.7252903e-09, 1.00000024, 0, 1, 3.7252903e-09)
		part6.C0 = CFrame.new(-9.31322575e-10, 1, 0, -1.00000012, -2.32830644e-10, 0, 0, 2.98023224e-08, 1, 2.32830644e-10, 1.00000012, 2.98023224e-08)
		part5.C0 = CFrame.new(-1, -1, 7.4505806e-09, 1.49011612e-08, 2.79396772e-09, -0.99999994, 0, 1, -2.79396772e-09, 1, 0, -1.49011612e-08)
		part2.C0 = CFrame.new(1, 0.5, 7.4505806e-09, 0, 3.7252903e-09, 1, 1.49011612e-08, 0.99999994, 3.7252903e-09, -1, -1.49011612e-08, 0)
		part4.C0 = CFrame.new(1, -1, 0, 0, -3.7252903e-09, 1, 0, 0.99999994, -3.7252903e-09, -1, 0, 0)
		part3.C0 = CFrame.new(-1, 0.5, 0, 1.49011612e-08, -9.77888703e-09, -0.99999994, 5.58793545e-09, 1.00000012, 9.77888703e-09, 1, 5.58793545e-09, -1.49011612e-08)

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
