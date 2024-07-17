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
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.6098063e-06, -0.283624977, 0.0570173189, -0.94109571, 0.337584794, 0.0193750411, -0.0396826938, -0.167164385, 0.985130131, 0.335803747, 0.926332891, 0.170713961)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00071883, -0.921546817, -0.0312382281, 0.13023898, 0.255307585, -0.958047926, 0.365299404, 0.885946691, 0.285753042, 0.921734333, -0.387190521, 0.0221211016)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -1.1920929e-07, -0.65613693, -0.304148972, 0.6906358, 0.424419343, 0.607997894, 0.670974553, -0.623981357, 0.733370364, -0.269843221)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -5.96046448e-08, -0.972032547, -0.209230915, 0.106654011, -0.0977593139, 0.773421288, 0.626308918, -0.213531658, 0.598366261, -0.77224493)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.49999997, -1.1920929e-07, -0.586155415, 0.179243118, -0.790122628, -0.461919099, 0.727263689, 0.507659674, 0.665621996, 0.662540197, -0.343493789)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999750495, -0.972808182, -0.0108260661, -0.00675866287, -0.0349478647, 0.999366283, 0.189637035, 0.981208861, 0.0355954021, -0.981831014, 0.189757437, -4.25078906e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--2, 0.01666666753590107
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.44541264e-06, -0.411690354, 0.20874694, -0.940972865, 0.336297512, 0.0383939855, -0.0398047678, -0.222585082, 0.974100351, 0.33613342, 0.915073693, 0.222832769)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00132823, -0.855010986, -0.0577313304, 0.23532185, 0.197564453, -0.951625943, 0.423288673, 0.860552788, 0.283329517, 0.874900222, -0.469486088, 0.118880093)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1.00000012, -8.94069672e-08, -0.972032607, -0.1666684, 0.165451795, -0.0977593437, 0.927732468, 0.360216141, -0.213531628, 0.333967358, -0.918079615)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.49999997, -2.98023224e-08, -0.55930531, 0.327124834, -0.761686921, -0.338191628, 0.748856425, 0.569947898, 0.756838262, 0.576370955, -0.308208495)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666753590107, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999538898, -0.949746907, -0.0200075507, -0.0124863433, -0.0645535365, 0.997836113, 0.189409748, 0.979694307, 0.0657500401, -0.981818736, 0.189820871, -5.73135912e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--3, 0.03333333507180214
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.67734241e-06, -0.518552125, 0.335354924, -0.940871596, 0.334401518, 0.054187566, -0.039921701, -0.268292069, 0.962510109, 0.336402923, 0.903435111, 0.265778244)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00183678, -0.799491465, -0.0798378587, 0.317740858, 0.142345101, -0.937431931, 0.469637722, 0.835247159, 0.286011606, 0.823699713, -0.53113097, 0.198541522)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -1.1920929e-07, -0.65613693, -0.304148972, 0.6906358, 0.424419343, 0.607997894, 0.670974553, -0.623981357, 0.733370364, -0.269843221)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -8.94069672e-08, -0.972032607, -0.134448782, 0.192551732, -0.0977593437, 0.977141142, 0.188781247, -0.213531628, 0.164677799, -0.962956667)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, -0.519303322, 0.444193453, -0.730079651, -0.232887954, 0.748412967, 0.62100023, 0.82224524, 0.492514223, -0.285206079)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999362409, -0.930503845, -0.0276688784, -0.0172586702, -0.0892132595, 0.99586302, 0.189087808, 0.977746844, 0.0908673033, -0.981808484, 0.189873815, -5.47338277e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--4, 0.05000000074505806
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666939854622, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-9.10460949e-06, -0.605945349, 0.438896894, -0.940789759, 0.332298338, 0.0670257881, -0.0400273353, -0.305232018, 0.9514364, 0.336619139, 0.892418802, 0.30046019)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666939854622, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00225282, -0.754086614, -0.0979169607, 0.380790144, 0.0929502845, -0.919977725, 0.505718231, 0.812007248, 0.291364461, 0.774111032, -0.57619822, 0.262197703)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666939854622, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, 0.5, 5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419224, 0.607997894, 0.670974493, -0.623981357, 0.733370245, -0.269843161)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666939854622, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -1.1920929e-07, -0.972032607, -0.118837982, 0.202559099, -0.0977593511, 0.988989532, 0.111099467, -0.213531643, 0.0881902575, -0.972947538)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666939854622, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, -0.475291431, 0.533813775, -0.69938612, -0.147019953, 0.735548317, 0.661327302, 0.867457926, 0.417146891, -0.271118581)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666939854622, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999217987, -0.91476655, -0.0339344293, -0.0211545341, -0.109338768, 0.993779421, 0.188735217, 0.975692809, 0.111366428, -0.981800139, 0.189917088, -4.25241888e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--5, 0.06666667014360428
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18464231e-05, -0.675604939, 0.521428406, -0.940725267, 0.330267936, 0.077194877, -0.0401178822, -0.334353149, 0.941593587, 0.336788505, 0.882683992, 0.327784121)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00258434, -0.717895329, -0.112327516, 0.427847624, 0.051151678, -0.902402341, 0.533077776, 0.791985452, 0.297636032, 0.729914069, -0.60839349, 0.311581254)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -5.96046448e-08, -0.972032607, -0.117066547, 0.203587994, -0.0977593511, 0.989920914, 0.102468349, -0.213531628, 0.079699941, -0.973679721)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 2.98023224e-08, -0.433363259, 0.600393474, -0.67210412, -0.0796052068, 0.717355251, 0.692144811, 0.897696674, 0.3534531, -0.263080955)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99910295, -0.902222693, -0.0389285833, -0.0242541507, -0.12534754, 0.991816401, 0.188396767, 0.973758876, 0.127672508, -0.981793463, 0.189951584, -2.62819231e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--6, 0.0833333358168602
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.39474869e-05, -0.729266167, 0.585005164, -0.940676093, 0.328491062, 0.0849830881, -0.0401914045, -0.356571615, 0.933403075, 0.336917132, 0.874614358, 0.348620892)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00283968, -0.690015912, -0.123428434, 0.461985558, 0.0176403672, -0.886712015, 0.553204, 0.775730431, 0.303657174, 0.693206072, -0.630817831, 0.348617524)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -5.96046448e-08, -0.972032607, -0.123371631, 0.19983016, -0.0977593511, 0.986235261, 0.133354008, -0.213531643, 0.110089168, -0.970713496)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 2.98023224e-08, -0.397175074, 0.648334503, -0.649549305, -0.0287093669, 0.698644578, 0.714892626, 0.917293668, 0.302585721, -0.258870959)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999014258, -0.892559767, -0.04277578, -0.0266378522, -0.137656704, 0.990121782, 0.188101307, 0.972090006, 0.140210345, -0.981788337, 0.189978108, -9.84407961e-07)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--7, 0.10000000149011612
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.54972076e-05, -0.768663883, 0.631682873, -0.940640271, 0.327069223, 0.0906731635, -0.0402474366, -0.372757345, 0.927055657, 0.337010443, 0.868376493, 0.363794297)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0030272, -0.669547081, -0.131578624, 0.485807866, -0.00762115419, -0.874032438, 0.567412376, 0.763368964, 0.30872494, 0.664856374, -0.645917773, 0.375174969)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -8.94069672e-08, -0.972032607, -0.131450266, 0.194611102, -0.0977593586, 0.979948044, 0.17362377, -0.213531643, 0.149742901, -0.965391874)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000012, 0.50000006, 2.98023224e-08, -0.368572652, 0.681513608, -0.632213295, 0.00791060925, 0.682367265, 0.730966866, 0.92956531, 0.264413118, -0.256893098)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99894923, -0.885465264, -0.04560031, -0.0283854734, -0.146680057, 0.988776624, 0.187865242, 0.970765591, 0.149401397, -0.981784523, 0.189997599, 4.39584255e-07)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--8, 0.11666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.016666673123836517, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.66296959e-05, -0.795533061, 0.663516998, -0.940616012, 0.326042742, 0.0945391953, -0.0402866341, -0.383731455, 0.922565579, 0.337073475, 0.863971233, 0.374079138)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666673123836517, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00315511, -0.655587256, -0.137137204, 0.501427352, -0.0251434743, -0.864834309, 0.576812088, 0.754743338, 0.312490433, 0.644870877, -0.655538142, 0.392952025)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666673123836517, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666673123836517, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -2.98023224e-08, -0.972032607, -0.135388985, 0.191891775, -0.0977592841, 0.976206124, 0.193558574, -0.213531643, 0.169386059, -0.962139726)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666673123836517, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.49999997, 0, -0.34812507, 0.703105509, -0.620041668, 0.0324615389, 0.670059025, 0.741597712, 0.936885953, 0.238041267, -0.256088227)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666673123836517, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998904765, -0.880626798, -0.0475267023, -0.0295760557, -0.152826741, 0.987810373, 0.187694922, 0.96981436, 0.155662313, -0.981782019, 0.190010861, 1.51712447e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--9, 0.13333334028720856
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.72555447e-05, -0.811608851, 0.682563305, -0.940601587, 0.325406671, 0.0968463123, -0.0403104722, -0.390271544, 0.919816971, 0.337110937, 0.861277342, 0.3802073)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00323153, -0.647235155, -0.140462756, 0.510522962, -0.0357340425, -0.859121323, 0.582319558, 0.749510586, 0.314861715, 0.63266927, -0.661027253, 0.403450996)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 1.00000012, -1.1920929e-07, -0.985543549, -0.137562782, 0.0988960713, -0.0778896064, 0.886267364, 0.456578165, -0.150456518, 0.44227469, -0.884169757)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 5.96046448e-08, -0.335539758, 0.71560818, -0.612632096, 0.0469700098, 0.662234724, 0.747822821, 0.940854311, 0.222148925, -0.255818188)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99887836, -0.87773186, -0.0486792028, -0.0302878618, -0.156501397, 0.987213194, 0.187589437, 0.969226539, 0.159405276, -0.98178041, 0.190018833, 2.20257789e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--10, 0.15000000596046448
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.75535679e-05, -0.818626165, 0.690877318, -0.940595269, 0.325123936, 0.0978520066, -0.0403209813, -0.393120289, 0.918602586, 0.337127298, 0.860087752, 0.382876396)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00326502, -0.643589377, -0.141914397, 0.514433861, -0.0403811187, -0.856578767, 0.584695756, 0.747209966, 0.315924346, 0.627286792, -0.663360178, 0.408000767)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, 0.5, 5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419224, 0.607997894, 0.670974493, -0.623981357, 0.733370245, -0.269843161)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.04890966e-08, 0.99999994, 0, -0.991964996, -0.122255012, 0.0325451717, -0.0750500634, 0.775745571, 0.626567185, -0.101847753, 0.619090199, -0.778687656)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 4.47034836e-08, -0.329965472, 0.72096616, -0.60936904, 0.0532586202, 0.658712566, 0.750507414, 0.942489445, 0.215187341, -0.25575006)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998866677, -0.87646836, -0.0491822958, -0.0305984393, -0.158104688, 0.986948133, 0.187542498, 0.96896565, 0.161038369, -0.981779814, 0.19002223, 2.51270831e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--11, 0.1666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.74939632e-05, -0.818319917, 0.690514684, -0.940595508, 0.325136334, 0.0978081375, -0.0403205156, -0.392996073, 0.918655694, 0.337126583, 0.860139787, 0.382759988)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00326359, -0.643748403, -0.141851157, 0.514264047, -0.040178135, -0.856690228, 0.584592402, 0.747310519, 0.315877676, 0.62752229, -0.663259089, 0.40780279)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.62981451e-08, 0.999999881, 5.96046448e-08, -0.994512081, -0.104131907, -0.0101101846, -0.0787941441, 0.681922793, 0.727167547, -0.0688269883, 0.723973572, -0.686385512)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.50000006, 1.49011612e-08, -0.330209643, 0.720733702, -0.609511733, 0.0529849008, 0.658867538, 0.750390708, 0.94241935, 0.215491325, -0.255752414)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998867154, -0.876523435, -0.0491603762, -0.0305848941, -0.158034772, 0.986959815, 0.187544569, 0.968977094, 0.160967141, -0.981779814, 0.190022096, 2.49780715e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--12, 0.18333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.72257423e-05, -0.812425673, 0.683531046, -0.940600812, 0.325374007, 0.0969634354, -0.040311709, -0.390603393, 0.919676065, 0.337112904, 0.861139238, 0.380518228)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00323546, -0.646810889, -0.140631735, 0.510980129, -0.0362742096, -0.858826876, 0.582597077, 0.749243259, 0.31498462, 0.632044435, -0.661300838, 0.403981656)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3038516e-08, 0.999999881, 0, -0.995315015, -0.0902922675, -0.0345730819, -0.083258763, 0.618640721, 0.78125, -0.0491525158, 0.780468404, -0.623260081)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.49999997, 0, -0.334893435, 0.716234982, -0.612253189, 0.0477033779, 0.661828101, 0.748136342, 0.941047728, 0.221339375, -0.255808741)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998876929, -0.877584934, -0.0487377644, -0.030324012, -0.156688035, 0.987182558, 0.187583998, 0.969196379, 0.15959537, -0.98178041, 0.190019205, 2.23796815e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--13, 0.20000000298023224
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.68383121e-05, -0.802677751, 0.67198199, -0.940609574, 0.325762123, 0.0955651477, -0.0402972028, -0.386640579, 0.921349704, 0.337090164, 0.862779319, 0.376805156)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00318909, -0.651875317, -0.138615191, 0.505493045, -0.029840678, -0.862314522, 0.57927072, 0.75242424, 0.313533425, 0.639470339, -0.658002496, 0.397631109)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 0.999999881, 2.98023224e-08, -0.995499969, -0.0828978196, -0.0459104106, -0.0859872624, 0.586617172, 0.805286646, -0.0398246795, 0.805610538, -0.591105521)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.50000006, 5.96046448e-08, -0.342563689, 0.708701193, -0.616759896, 0.0389269516, 0.666623712, 0.744377315, 0.938687801, 0.230987996, -0.255948663)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998893023, -0.879340231, -0.0480389148, -0.0298924595, -0.154460177, 0.987546682, 0.187648356, 0.969554842, 0.157326117, -0.981781304, 0.190014392, 1.81887299e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--14, 0.21666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.6450882e-05, -0.790811658, 0.657923222, -0.940620244, 0.326226413, 0.0938607529, -0.0402796939, -0.381807059, 0.923363924, 0.337062418, 0.86475414, 0.37227574)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0031327, -0.658040226, -0.136160433, 0.498720288, -0.0220479965, -0.866482496, 0.575177848, 0.756270111, 0.311810762, 0.648420036, -0.653887928, 0.389848769)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-08, 0.999999881, 5.96046448e-08, -0.995521069, -0.0813739449, -0.0481259823, -0.0865735114, 0.58014226, 0.809901237, -0.0379849449, 0.810440183, -0.584588647)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.49999997, 1.49011612e-08, -0.351771861, 0.69937396, -0.622199893, 0.028174229, 0.672291756, 0.739750028, 0.935661674, 0.242693216, -0.256197661)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998912632, -0.881476939, -0.0471881926, -0.0293669272, -0.151747093, 0.987982988, 0.187725395, 0.969984293, 0.154562607, -0.981782436, 0.190008521, 1.32061541e-06)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--15, 0.23333333432674408
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.58846378e-05, -0.778562069, 0.643410325, -0.94063127, 0.326696426, 0.0920987874, -0.0402617864, -0.376806319, 0.925416648, 0.337033719, 0.866767824, 0.367589235)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00307441, -0.664404392, -0.133626372, 0.491621971, -0.0140494555, -0.870695353, 0.570903122, 0.760209203, 0.310083151, 0.65755415, -0.649526417, 0.381756485)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.86264515e-08, 0.999999821, 8.94069672e-08, -0.995483637, -0.0838686973, -0.0444784723, -0.0856178254, 0.59076333, 0.802289367, -0.0410107188, 0.802474141, -0.595275879)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.999999881, 0.5, 8.94069672e-08, -0.361126781, 0.689567506, -0.627761126, 0.0169972181, 0.677945793, 0.734915316, 0.932361782, 0.254727393, -0.256545126)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998932898, -0.883682907, -0.0463099778, -0.0288242009, -0.148945153, 0.988425255, 0.187803403, 0.970419705, 0.151708573, -0.981783569, 0.190002516, 8.27014446e-07)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--16, 0.25
		tween1 = ts:Create(part1, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.54674053e-05, -0.767664433, 0.630498886, -0.940641165, 0.327106476, 0.0905291289, -0.0402459912, -0.37234813, 0.927220106, 0.337008059, 0.868538022, 0.363410711)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00302243, -0.670066297, -0.131371856, 0.485217035, -0.00697390735, -0.874365985, 0.567058265, 0.763686717, 0.308589756, 0.665589571, -0.645549476, 0.37450844)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 0.999999881, 2.98023224e-08, -0.99538368, -0.0881450847, -0.0379712656, -0.0840301216, 0.609232485, 0.788526952, -0.0463714525, 0.788077593, -0.613826931)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, -0.369318634, 0.680693865, -0.632660806, 0.00699049234, 0.682806432, 0.730565906, 0.929276586, 0.265388995, -0.256931514)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998950839, -0.885645211, -0.0455286801, -0.0283411629, -0.146451294, 0.988811851, 0.187871382, 0.970800281, 0.149168372, -0.981784701, 0.189997032, 4.00468707e-07)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--17, 0.2666666805744171
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.51693821e-05, -0.759853482, 0.62124455, -0.940648258, 0.327395707, 0.0894028395, -0.0402347445, -0.369147301, 0.928499579, 0.336989611, 0.869794428, 0.360410452)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00298524, -0.674124479, -0.129756123, 0.480574399, -0.00192634761, -0.876951873, 0.564278424, 0.766163349, 0.307544649, 0.671295881, -0.642643034, 0.369285494)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, -5.96046448e-08, -0.65613687, -0.304148912, 0.6906358, 0.424419284, 0.607997894, 0.670974553, -0.623981357, 0.733370304, -0.269843191)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 0.999999881, 5.96046448e-08, -0.99524802, -0.0920731351, -0.0316834152, -0.0826332122, 0.626517653, 0.77501446, -0.0515078083, 0.773949742, -0.631148815)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, -0.375113457, 0.674248159, -0.636144221, -0.000217229128, 0.68619132, 0.727421105, 0.926978886, 0.273003608, -0.25725314)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.998963773, -0.887051821, -0.0449686944, -0.0279948488, -0.144663259, 0.98908484, 0.187919438, 0.971069098, 0.147347108, -0.981785417, 0.189993232, 1.04308128e-07)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--18, 0.28333333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.50799751e-05, -0.75686419, 0.617702901, -0.940651119, 0.32750535, 0.0889715552, -0.0402304493, -0.367921233, 0.928986251, 0.336982518, 0.870272577, 0.359261185)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00297105, -0.675677478, -0.129137695, 0.478786349, -1.49011612e-08, -0.877931595, 0.563209236, 0.767107546, 0.307150275, 0.673467994, -0.641518354, 0.367280662)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 0, -0.65613687, -0.304148942, 0.69063586, 0.424419314, 0.607997894, 0.670974493, -0.623981357, 0.733370304, -0.269843161)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.58324838e-08, 0.999999881, 5.96046448e-08, -0.995175064, -0.0937769562, -0.0288548283, -0.0820472911, 0.63411957, 0.768869698, -0.0538048744, 0.767527342, -0.638754129)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 2.98023224e-08, -0.377313972, 0.671762705, -0.637470901, -0.00298315287, 0.687464774, 0.726211607, 0.926080644, 0.275911421, -0.257386088)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666680574417114, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99896872, -0.887590051, -0.044754371, -0.0278623104, -0.143978864, 0.989188671, 0.187937587, 0.971171081, 0.146649957, -0.981785715, 0.189991802, 1.49011612e-08)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--19, 0.30000001192092896
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--20, 0.3166666626930237
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.167964354, 0.0547394753, 0.695679784, -0.992848933, -0.0525438786, 0.107192397, 0.112692744, -0.116263188, 0.986804545, -0.0393880084, 0.991827607, 0.121353097)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 0, 0, 0, -1, -0.478198618, 0.878251731, 0, 0.878251731, 0.478198618, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, 0.5, 2.98023224e-08, -0.404711664, -0.460301518, 0.790146172, 0.637988329, 0.476900667, 0.604596257, -0.655117869, 0.748791218, 0.100659758)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, 5.96046448e-08, -0.859851062, 0.510544896, 0, 0.486617118, 0.819552302, 0.302551895, 0.154466331, 0.260149568, -0.953132868)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00000525, 0.406361938, -0.324621618, -0.843418598, -0.03760802, -0.535939157, -0.511822224, 0.359542698, 0.780235291, 0.163349882, 0.932370543, -0.322493583)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, -1, 0, 0, -0.515346467, 0.856981933, 0.554498374, 0.713167369, 0.428863525, -0.832184851, 0.47519508, 0.285758793)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--21, 0.3499999940395355
		tween1 = ts:Create(part1, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.419883698, 0.13685149, 1.79000986, -0.955862045, -0.152656719, 0.251045108, 0.284994245, -0.27392441, 0.91855526, -0.0714562461, 0.949558496, 0.30534023)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--22, 0.4000000059604645
		tween1 = ts:Create(part1, TweenInfo.new(0.13333335518836975, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0349547863, 0.849235296, 9.68140125, -0.876628041, -0.476753563, 0.0650331676, 0.377626806, -0.597913861, 0.707033932, -0.298196703, 0.644364059, 0.704182982)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333335518836975, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0.825177431, 0.564873695, 0, 0.564873695, -0.825177431, 0)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333335518836975, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.999999881, 0.500000119, 5.96046448e-08, -0.878389657, -0.0626979768, 0.473814815, 0.452890217, 0.207574844, 0.867065847, -0.152715281, 0.976207733, -0.153936297)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333335518836975, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.0733645e-08, 0.999999881, -1.49011612e-07, -0.974149466, 0.223769873, -0.030979529, 0.215297043, 0.961166024, 0.17264697, 0.0684096739, 0.161514178, -0.984496474)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333335518836975, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.927119493, 0.91506052, -0.113585979, -0.589324057, 0.52439934, -0.614575088, -0.369978666, 0.501074374, 0.782329857, 0.71820122, 0.688425481, -0.101278529)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333335518836975, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.62771225, -0.57880044, -0.412041306, -0.457870126, 0.00961640477, 0.888967156, 0.643322408, 0.693729997, 0.323844254, -0.61358887, 0.720171034, -0.323824704)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833335518836975)

		if afterframe() then
			return
		end

		--23, 0.5333333611488342
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0933058262, 2.35993528, 20.225111, -0.876334369, -0.467210948, -0.117268801, 0.346430928, -0.780432582, 0.520490706, -0.334699392, 0.415498376, 0.8457762)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.002653, -0.99426055, -0.0259361863, 2.72761214e-09, 3.17293036e-09, -1, 0.873247147, 0.487277478, 3.92797705e-09, 0.487277478, -0.873247147, -1.44164825e-09)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.990592659, 0.520378888, -0.0920261145, -0.530482054, -0.758968413, 0.377565295, -0.0491558313, 0.472193837, 0.880123019, -0.846269667, 0.448330015, -0.287798107)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.99999994, 0, -0.973288238, 0.114816174, -0.198814571, -0.0197338667, 0.820925653, 0.57069397, 0.228736892, 0.55937314, -0.796731472)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.05730724, 1.13366723, 0.0558275804, -0.185714513, 0.981101871, 0.0543084554, -0.194353506, -0.090855144, 0.976714969, 0.963190973, 0.170835122, 0.207553685)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.644033134, -0.609535933, -0.447403014, -0.568419695, 0.128233805, 0.81268394, 0.50378406, 0.835192561, 0.220578775, -0.650461912, 0.534798503, -0.539342046)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--24, 0.6666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0933176279, 2.93973875, 28.5747795, -0.929122984, -0.272578031, -0.249863476, 0.184305131, -0.927184582, 0.326129854, -0.320565373, 0.256963611, 0.911705971)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00751686, -0.983738422, -0.0734855533, -8.08476486e-09, 8.35778646e-09, -1, -0.606743157, 0.794897914, 1.15489645e-08, 0.794897914, 0.606743157, -1.35553258e-09)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.973346472, 0.55774039, -0.260740757, -0.557748973, -0.739162028, 0.377565354, -0.0319405943, 0.473669887, 0.880123079, -0.829394937, 0.478828073, -0.287798166)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.34999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.47034836e-08, 1.00000012, 2.98023224e-08, -0.829403222, 0.471892148, 0.299011976, -0.206557125, -0.756350398, 0.620699883, 0.519061208, 0.453047395, 0.724792123)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.10631776, 0.785095334, 0.608283997, 0.174335569, 0.972405374, -0.155031741, 0.270497978, 0.104092211, 0.957076609, 0.946804047, -0.208788261, -0.244886726)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.901463687, -0.923284411, -0.260430038, -0.533993244, -0.00542099029, 0.845471382, 0.0977904573, 0.992872238, 0.0681297928, -0.839814425, 0.119059883, -0.529657006)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--25, 0.800000011920929
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0933282599, 2.35966301, 37.0087204, -0.964196503, -0.00451639295, -0.265150428, -0.024023883, -0.994256198, 0.10429614, -0.264098465, 0.10693191, 0.958549798)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03805304, -0.842376113, -0.239188731, -7.774557e-09, -1.91217762e-08, -1, -0.94240886, 0.33446312, 9.31282385e-10, 0.33446312, 0.94240886, -2.0620833e-08)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.88216567, 0.587730348, -0.374415994, -0.739339709, -0.557513654, 0.377565265, 0.0994048119, 0.464221895, 0.880123198, -0.665954649, 0.68824172, -0.287798166)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13082314, 0.610809445, 0.884512484, 0.373711795, 0.854897439, -0.359847188, 0.50731194, 0.136397064, 0.850899875, 0.776514113, -0.500546098, -0.382726401)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0301789, -1.08015871, -0.16694358, -0.468832582, -0.130206138, 0.873637438, -0.310684055, 0.950181425, -0.0251126364, -0.826844275, -0.283198863, -0.485928982)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--26, 0.9333333373069763
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0933338106, 1.20963502, 41.533268, -0.961858034, 0.187793702, -0.198903695, -0.18614091, -0.982147932, -0.0271491669, -0.200451255, 0.0109104654, 0.979642987)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07318342, -0.672249556, -0.416599333, -1.97522105e-08, 0.286536515, -0.958069324, -0.803143501, 0.57080394, 0.170714334, 0.595785618, 0.769467175, 0.230129912)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.778968453, 0.601866841, -0.411063552, -0.804467738, -0.458558977, 0.377565235, 0.157859087, 0.447731793, 0.880123198, -0.572636306, 0.767632782, -0.287798107)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13082337, 0.610809445, 0.884512663, 0.460577041, 0.783248961, -0.417600185, 0.51324749, 0.148842216, 0.845235527, 0.724186301, -0.603628397, -0.333447188)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03017879, -1.08015871, -0.16694355, -0.418731719, -0.207288742, 0.884135306, -0.527287781, 0.848162532, -0.0508717895, -0.739345312, -0.487495363, -0.464453369)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--27, 1.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0933241844, 0.341268539, 45.6819077, -0.879462421, 0.475453198, -0.0221411735, -0.455881655, -0.8548069, -0.247946411, -0.136813238, -0.207965806, 0.96852088)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.21781147, -0.472743154, -0.340033174, 0.00232343376, 0.335499972, -0.942037463, -0.845542967, 0.503618419, 0.177274868, 0.533903182, 0.79612112, 0.284849882)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.729801893, 0.631694376, -0.401870012, -0.7776016, -0.502772689, 0.377565324, 0.132607073, 0.45584932, 0.880123258, -0.614614725, 0.734452963, -0.287798047)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-08, 0.99999994, -1.49011612e-08, -0.787999988, 0.599115789, -0.141831562, -0.240216121, -0.0870727226, 0.966806352, 0.566879332, 0.795913637, 0.212530583)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.13082325, 0.610809505, 0.884512484, 0.287395447, 0.840432346, -0.459431738, 0.443366826, 0.308453143, 0.841595352, 0.849016905, -0.445567429, -0.283971697)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03017879, -1.08015871, -0.16694355, -0.349275231, -0.253245413, 0.902149439, -0.719356418, 0.689424157, -0.0849746019, -0.600444198, -0.678646564, -0.4229725)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--28, 1.0833333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0933017731, -0.627052307, 49.5651169, -0.528027654, 0.731480777, 0.431418955, -0.722963274, -0.120665185, -0.680267692, -0.445545554, -0.671100199, 0.592548311)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30938423, -0.411224246, -0.438155293, 0.029806016, 0.0390758179, -0.99879086, -0.695071697, 0.718901336, 0.00738309324, 0.718320906, 0.694012284, 0.0485883355)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821627557, 0.682619631, -0.295963228, -0.49306497, -0.783792377, 0.377565026, -0.0719889998, 0.469255388, 0.880122781, -0.867008209, 0.406777799, -0.287797958)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.99999994, -1.49011612e-08, -0.787999928, 0.420244068, -0.449945509, -0.240216106, 0.463036269, 0.853166759, 0.566879332, 0.780379534, -0.263923198)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1308229, 0.610809326, 0.884512544, -0.426997036, 0.774227381, -0.467165977, 0.0547266752, 0.537812114, 0.841286123, 0.902595162, 0.333661258, -0.272015452)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0301789, -1.08015871, -0.166943669, -0.304293573, -0.232168779, 0.923851609, -0.816815376, 0.56259805, -0.127654046, -0.49012053, -0.793461144, -0.360833913)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--29, 1.149999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.091714859, -1.30986977, 52.1162376, -0.0284490287, 0.558501482, 0.829015613, -0.6458534, 0.622723997, -0.44168812, -0.762931347, -0.547988296, 0.342994183)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14293981, -0.412236571, -0.411766171, 0.424643189, 0.208270133, -0.881079912, -0.681323051, 0.714393973, -0.159500003, 0.596219063, 0.66803062, 0.445261747)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821627557, 0.682619691, -0.295963168, -0.820233643, 0.240486607, 0.519021153, 0.541331828, 0.619563341, 0.568419755, -0.18486917, 0.747199714, -0.638369739)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.96046448e-08, 1, -2.98023224e-08, -0.847009897, 0.28306061, -0.449945509, -0.314015388, 0.416534185, 0.853166819, 0.42891562, 0.863930583, -0.263923168)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.934904754, 0.65930891, 0.353292912, -0.23546432, 0.642183423, -0.729490995, -0.0534381419, 0.740905285, 0.669480324, 0.970412731, 0.196621343, -0.140139684)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.939251184, -0.908985615, -0.11720705, 0.383081257, -0.0457105339, 0.922582984, -0.848531246, 0.377273023, 0.371025503, -0.365025401, -0.924973309, 0.105739385)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--30, 1.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906918645, -1.71952152, 54.8923912, 0.19689177, -0.0109142885, 0.98036468, 0.0853629708, 0.996331692, -0.00605207682, -0.976702213, 0.0848783255, 0.197101086)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0430733, -0.412844002, -0.395932555, 0.509753406, 0.223557815, -0.830766737, -0.493476182, 0.866978765, -0.0694915205, 0.704721749, 0.445387155, 0.552265823)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821627617, 0.682619691, -0.295963228, -0.487688839, 0.433725566, 0.757655442, 0.867102861, 0.13979727, 0.478110164, 0.101450443, 0.890134215, -0.444262266)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999999881, -1.49011612e-08, -0.877832115, -0.164194345, -0.449945539, -0.476855546, 0.211459786, 0.853166759, -0.0449397899, 0.963496208, -0.263923168)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.789683878, 0.509943366, -0.0459844172, -0.466273725, 0.529080272, -0.708987296, -0.237507373, 0.697147012, 0.676443934, 0.852161467, 0.483797699, -0.199400902)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.368962526, -0.171416283, -0.707039893, 0.413349956, -0.502285421, 0.759507298, -0.421300769, 0.633956194, 0.648540974, -0.807246864, -0.588055313, 0.0504325479)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--31, 1.2666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906562805, -1.53183651, 58.1201439, -0.379030466, -0.204471558, 0.902511299, 0.8799541, 0.222188801, 0.419895858, -0.286384851, 0.953322172, 0.095709309)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04307318, -0.412844002, -0.395932585, 0.271071911, -0.00428876281, -0.962548733, 0.663536608, 0.725255191, 0.183632851, 0.697307289, -0.688464701, 0.199442655)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821627736, 0.682619691, -0.295963138, -0.304188251, -0.613629937, 0.728647172, 0.952045858, -0.169474304, 0.2547279, -0.0328214467, 0.771191478, 0.635755956)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23517418e-08, 0.99999994, -2.98023224e-08, -0.863772869, -0.441129744, -0.243517518, -0.490810931, 0.627226472, 0.604724288, -0.114021242, 0.641865611, -0.758292675)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.734344065, 0.153012782, -0.207075477, -0.949640393, 0.131193995, -0.284551263, -0.240166783, 0.278506279, 0.929919839, 0.201249152, 0.951431215, -0.232973024)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08340013, -0.181258559, -0.031229794, 0.533230364, 0.101266772, 0.839887202, -0.0864165425, 0.994136453, -0.0650004745, -0.841544747, -0.0379199311, 0.538854837)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--32, 1.3333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0907011032, 0.0322608948, 63.0309372, -0.547587216, -0.142723352, 0.824486732, 0.5659042, -0.788988233, 0.239269868, 0.616360903, 0.597601652, 0.512807548)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09857416, -0.663853049, -0.432678461, 0.259548187, -0.0783154666, -0.962549448, 0.83669883, 0.515959501, 0.183633149, 0.482255191, -0.853025615, 0.199442834)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821651936, 0.682610333, -0.296050131, -0.714600444, -0.405182838, 0.570239544, 0.425390124, 0.395427823, 0.814051747, -0.55532825, 0.824295998, -0.110212177)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.82310963e-08, 1, -1.78813934e-07, -0.863772869, -0.491441607, -0.111272395, -0.49081111, 0.770625174, 0.406498998, -0.114021242, 0.405736506, -0.906850159)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.708853126, 0.147627354, -0.311855912, -0.933749318, -0.105341643, -0.342075109, -0.345946223, 0.510819972, 0.787009716, 0.0918338895, 0.853209376, -0.513420343)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02382851, -0.766073942, -0.00892282277, 0.570379496, 0.049776759, 0.819871724, -0.174517199, 0.982716203, 0.0617469512, -0.802627623, -0.178300902, 0.569208026)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--33, 1.4166666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906774402, 0.399259567, 67.1376953, -0.670960307, -0.0819773972, 0.736947834, -0.063073054, -0.983957827, -0.166880161, 0.73880589, -0.158451572, 0.655026078)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08764064, -0.84290266, -0.525586128, 0.248673081, -0.0952683613, -0.96389091, 0.898385346, 0.394644558, 0.192767799, 0.362029612, -0.9138816, 0.183725178)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821668029, 0.682604194, -0.296107948, -0.845227838, -0.37800777, 0.377756655, 0.105491132, 0.574945211, 0.811362863, -0.523890793, 0.725636363, -0.446083307)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17346644e-07, 1, -3.87430191e-07, -0.863772929, -0.500995219, -0.0538535863, -0.490811169, 0.812363505, 0.314912885, -0.114021227, 0.298445165, -0.947591662)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.673454642, 0.204413831, -0.401998878, -0.853122592, -0.315258265, -0.415685117, -0.52012974, 0.575941563, 0.630679369, 0.0405834317, 0.754257023, -0.655323982)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -1, -4.47034836e-08, 0.598439932, 0.0704547316, 0.798063755, -0.304614305, 0.941325128, 0.145317435, -0.740999162, -0.33006537, 0.584788084)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--34, 1.5
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906953812, 0.263528824, 72.49366, -0.79559952, 0.0846512392, 0.599879682, -0.55236876, -0.508040726, -0.660896122, 0.248817608, -0.857163429, 0.450955629)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00480628, -1.03951764, -0.721108913, 0.24837482, -0.0669200495, -0.966349661, 0.919817328, 0.329090297, 0.213625282, 0.303720474, -0.941924334, 0.14329195)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821684241, 0.682597756, -0.296165705, -0.890928507, -0.319609165, 0.322639495, 0.135545462, 0.49091655, 0.86059761, -0.433444023, 0.810463309, -0.394049972)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02445483e-07, 1, -2.08616257e-07, -0.863772929, -0.501371205, -0.0502330214, -0.490811169, 0.814617217, 0.309036225, -0.114021197, 0.291592032, -0.949722826)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.610449433, 0.351765215, -0.522576332, -0.61860311, -0.576460302, -0.533876181, -0.785101116, 0.480121493, 0.391279578, 0.0307682753, 0.66119355, -0.749584317)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.999999881, -5.96046448e-08, 0.609509945, 0.174233049, 0.773395419, -0.525649846, 0.819093585, 0.229734451, -0.593455911, -0.546560585, 0.59083128)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--35, 1.5833333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906944275, 0.0973777771, 76.3068008, -0.880722582, 0.293259978, 0.371922582, -0.317092687, 0.21821788, -0.92294836, -0.351823866, -0.930795372, -0.0991988406)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.80907625, -1.08733451, -1.00045085, 0.266506672, 0.0550232381, -0.9622612, 0.833361685, 0.488430202, 0.258735836, 0.484233916, -0.870866477, 0.0843156502)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.82168442, 0.682598054, -0.296165973, -0.584449112, -0.413753986, 0.698016465, 0.809560716, -0.355693281, 0.467005551, 0.0550544262, 0.838027656, 0.542843401)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-8.94069672e-08, 0.999999881, -2.79396772e-08, -0.782468557, -0.437574744, 0.443025291, 0.411463588, 0.170677811, 0.895302534, -0.467376411, 0.882834792, 0.0464961156)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.535297692, 0.598303437, -0.605425119, -0.23840864, -0.637598753, -0.732549787, -0.971099973, 0.16523248, 0.172229439, 0.0112277865, 0.752440095, -0.658564985)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.99999994, 5.96046448e-08, 0.478803188, 0.415459991, 0.773395419, -0.822522283, 0.520268381, 0.229734436, -0.306927741, -0.746132612, 0.59083128)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--36, 1.649999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906934738, -0.438528061, 80.0785217, -0.745651603, 0.570033729, 0.345058292, 0.304261357, 0.751977384, -0.584769487, -0.592814267, -0.331046462, -0.734152377)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.667879999, -1.05410385, -0.0820525885, 0.26714766, 0.090208374, -0.959424078, 0.802843332, 0.529824913, 0.273364365, 0.532986522, -0.843295932, 0.0691182911)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.821684361, 0.682597935, -0.296165884, -0.471561968, -0.50960207, 0.719677031, 0.829847515, -0.53251487, 0.166677326, 0.29829967, 0.675820887, 0.674005687)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.913073063, 0.440506399, 0.170562938, -0.374034554, 0.881236255, -0.288997531, 0.492136598, 0.452722788, 0.743533731, 0.786064804, 0.135880217, -0.603024125)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.999999762, 5.96046448e-08, 0.42343843, 0.0527900755, 0.904385448, -0.880821347, 0.257373303, 0.397382289, -0.211786866, -0.964869022, 0.155480385)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--37, 1.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0907363892, -1.99755669, 84.7414093, -0.448276192, 0.445100904, 0.775198698, 0.874967813, 0.395998597, 0.278596669, -0.182973891, 0.803162575, -0.566966057)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.216666579246521, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.800931156, -0.829536021, -0.576399922, 0.599601448, -0.388855904, -0.699477971, 0.486260533, 0.871203423, -0.0674933493, 0.635632694, -0.299659371, 0.711460054)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14494014, 0.826781988, 0.102301478, -0.981398404, 0.176478833, -0.0755825639, -0.0409845412, 0.192029536, 0.980533004, 0.187557504, 0.965391159, -0.181224436)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.216666579246521, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.930403233, -1.09396851, 0.691266477, 0.632297754, -0.383416802, 0.673195362, -0.21284014, 0.749540508, 0.626808345, -0.744915724, -0.539612234, 0.392326355)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--38, 1.8166667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906600952, -1.96871305, 86.6817627, -0.0933396146, 0.093053624, 0.991276264, 0.995156527, 0.0395612121, 0.0899913013, -0.0308420658, 0.994874835, -0.096295476)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.52207112, 0.994995296, 0.567179203, -0.471562475, -0.683864892, -0.556739867, 0.829848111, -0.130573332, -0.542497993, 0.298300028, -0.717831075, 0.6290766)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-09, 1.00000048, -1.78813934e-07, -0.812964797, -0.550333858, -0.190318093, 0.168786138, -0.535501599, 0.827496052, -0.557314694, 0.640602052, 0.528232634)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.573873281, 0.587688446, -0.0328102708, -0.161958396, 0.706865668, -0.688557386, 0.0972073451, 0.70580399, 0.701706529, 0.981998503, 0.0467147231, -0.183023274)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--39, 1.850000023841858
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.090672791, -0.994604111, 91.5891571, 0.477912366, 0.0708964765, 0.875542045, -0.0992920399, -0.985989451, 0.134038091, 0.872777939, -0.15099293, -0.464176893)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--40, 1.9333332777023315
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906534195, -0.494449615, 94.0882874, 0.620042801, -0.0663060844, 0.781761467, -0.614662588, -0.660297036, 0.431506544, 0.48758319, -0.748072028, -0.450168133)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.20000016689300537, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03458166, -1.27321601, 0.00340163708, 0.599011421, 0.0902083814, -0.795644641, 0.647602797, 0.529825091, 0.547627807, 0.470952511, -0.843297124, 0.258952081)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.20000016689300537, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.982485294, 0.936307669, 0.994334579, 0.209969282, -0.507513344, -0.835673511, 0.59514308, -0.611785173, 0.521080911, -0.77570796, -0.606755018, 0.173586905)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.4166666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.36928463e-06, 1.00000322, -1.56462193e-05, -0.731507421, 0.545393288, 0.409198403, 0.646267533, 0.745903373, 0.161141664, -0.217336357, 0.382327646, -0.898103952)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000016689300537, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.513825297, 0.668743134, -0.629096806, -0.975044906, -0.194004506, 0.107934944, -0.08197245, 0.766425908, 0.637080729, -0.206320643, 0.612334669, -0.763202608)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000016689300537, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23284698, -0.947500825, 0.302041173, 0.157773346, -0.15902409, 0.974587679, 0.832938075, 0.551546812, -0.0448466688, -0.530398726, 0.818846345, 0.219476491)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--41, 2
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906391144, -0.293613434, 94.9515839, 0.656999707, -0.0831807926, 0.74928844, -0.718058348, -0.371819764, 0.588338733, 0.229661703, -0.924571276, -0.304013938)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--42, 2.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.090681076, -0.634277344, 98.1272202, 0.677357912, -0.268626243, 0.684855342, -0.441870928, 0.595739245, 0.670704782, -0.588164091, -0.756924927, 0.284830332)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--43, 2.133333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906791687, -0.516075134, 100.007782, 0.601674199, -0.379391909, 0.702886939, -0.0218823254, 0.871833146, 0.48931396, -0.798441887, -0.309788465, 0.516257465)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.21666646003723145, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.923748016, -0.62224257, -1.03272033, 0.551579893, -0.421460509, -0.719814777, 0.478221893, 0.866832376, -0.141087711, 0.683421135, -0.266410202, 0.679679155)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666646003723145, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.37988269, 0.877966404, 0.627417445, -0.604562163, 0.137906447, -0.784533858, 0.14612335, -0.948987603, -0.279413939, -0.783044875, -0.283561051, 0.553571165)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666646003723145, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.513825715, 0.668743312, -0.629096389, 0.0237770453, -0.639346838, -0.768550992, -0.82436657, -0.447443962, 0.34671855, -0.565556765, 0.625323713, -0.537694991)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666646003723145, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23285842, -0.947479904, 0.302018881, 0.539962888, 0.165811419, 0.825195909, -0.489243984, 0.859600544, 0.147409603, -0.684895873, -0.483317047, 0.545274198)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--44, 2.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906000137, -0.727924347, 102.901596, 0.385760605, -0.382251084, 0.839686155, 0.544811845, 0.828879476, 0.127039254, -0.744559467, 0.408464193, 0.528003931)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--45, 2.25
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904693604, -1.16391754, 105.361801, 0.212393224, -0.207358688, 0.954929829, 0.85296613, 0.516160429, -0.0776328519, -0.476799399, 0.831011832, 0.286499262)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--46, 2.299999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0905303955, -2.03823471, 107.845436, 0.0306981057, -0.376397252, 0.925949633, 0.943979323, -0.293612003, -0.150648788, 0.328573793, 0.878701985, 0.34629792)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--47, 2.3499999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904893875, -1.92848587, 111.662292, -0.441261709, -0.252937108, 0.86099422, 0.488796532, -0.872378945, -0.00577218831, 0.752573073, 0.418303788, 0.508582354)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.953297555, -0.927700877, -0.515832186, 0.289046943, -0.299365073, -0.909303308, 0.796959043, 0.601495862, 0.055307962, 0.530384958, -0.740664124, 0.412442207)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.959331393, 1.02863264, 0.4076159, -0.937197328, 0.301889002, -0.174711421, -0.267552823, -0.943565488, -0.195190996, -0.223777771, -0.136187851, 0.965078413)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0.917361677, 0.398054659, 0, 0.398054659, -0.917361677)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.844357789, 0.838089466, -0.631234169, -0.466750175, 0.675594628, -0.570715606, -0.884389579, -0.35663256, 0.301113009, -0.000105470419, 0.645279646, 0.763946891)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11642206, -0.575814843, -0.222846389, 0.0743025094, 0.243988752, 0.966927409, -0.877117395, 0.47733736, -0.0530473255, -0.474493563, -0.844167352, 0.249474138)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333539962768555)

		if afterframe() then
			return
		end

		--48, 2.383333444595337
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.931193411, 1.20256603, 0.392445117, 0.563201785, -0.767697334, 0.305687189, 0.696362257, 0.241801366, -0.675730467, 0.444840878, 0.593441606, 0.670778334)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--49, 2.4166667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904541016, -0.846998215, 114.988464, -0.542633891, -0.625291705, 0.560855508, -0.501616478, -0.29434076, -0.813477039, 0.67374289, -0.722754598, -0.15393728)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.145980775, 1.77061379, -0.0187257975, 5.96046448e-08, 9.68575478e-08, 1, 0.40243876, -0.915446997, -4.47034836e-08, 0.915446997, 0.4024387, 8.94069672e-08)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12876296e-06, 1.00000322, -1.44839287e-05, -0.954615831, -0.289683789, -0.0692250133, 0.173248202, -0.729133129, 0.66208005, -0.242267609, 0.620038986, 0.746229291)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--50, 2.5
		tween1 = ts:Create(part1, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904121399, 0.119056702, 119.577774, -0.740686297, -0.67075628, 0.0383387506, -0.557030559, 0.581196249, -0.593235135, 0.375633895, -0.460757017, -0.804115832)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--51, 2.5333333015441895
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.976514935, -1.16770399, -0.109705567, 0.238955095, 0.156603158, -0.958319366, 0.322206616, 0.918206692, 0.230389774, 0.916014969, -0.363829613, 0.168951586)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.206848383, 1.56364131, -0.448923826, -0.0549058169, 0.430637389, 0.900853455, 0.107917219, -0.894370317, 0.434115797, 0.992643118, 0.121053025, 0.00263312459)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.43796206e-06, 1.00000334, -1.44094229e-05, -0.984848619, -0.169047594, -0.0386818051, 0.0267820507, -0.36864692, 0.929183662, -0.171335638, 0.914069176, 0.367589027)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.41666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.53533912, 1.21743107, -0.848127604, -0.763582945, 0.603149533, -0.230543286, -0.645699203, -0.715181828, 0.267561167, -0.00350099802, 0.353164852, 0.93555373)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02494752, -0.283777475, -0.635259449, 0.0322942585, 0.046517022, 0.998395383, -0.429272085, 0.90273571, -0.0281747654, -0.902597666, -0.42767337, 0.0491216406)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--52, 2.5999999046325684
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0903925896, 0.436214924, 122.171371, -0.843440354, -0.512994707, -0.159514576, -0.484742701, 0.854723275, -0.185668945, 0.231587887, -0.0792771578, -0.969578505)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.562950313, 0.316024989, -0.787674904, -0.713012397, 0.27184692, 0.646306872, 0.53191489, -0.390838981, 0.751206875, 0.456815243, 0.879400074, 0.134073496)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--53, 2.6500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904541016, 0.560157776, 125.70977, -0.904065371, -0.365821719, -0.22099857, -0.378270984, 0.925567925, 0.0153342858, 0.198939562, 0.0974605456, -0.975153625)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--54, 2.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904364586, 0.339710236, 129.707336, -0.967565596, -0.0552360192, -0.246507421, -0.131401375, 0.94345057, 0.304359883, 0.21575591, 0.326879531, -0.920108318)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04141998, -1.01924956, -0.139987513, 0.0642528608, 0.239916787, -0.968664825, -0.09752848, 0.967533588, 0.233167395, 0.993156493, 0.0794907287, 0.0855655149)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.613340855, 0.221104413, -0.960992336, -0.864626706, -0.0496999323, 0.499950558, 0.485105932, -0.341530919, 0.805002451, 0.130739987, 0.938555658, 0.31940645)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.204130888, -0.74773562, 0.232747123, -0.0553484485, 0.970961034, -0.167106986, 0.981254697, 0.0959920958, -0.95807308, -0.184596241, 0.219135091)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--55, 2.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904903412, -0.0782585144, 132.756042, -0.95816654, 0.196838915, -0.207777023, 0.0776723698, 0.877545178, 0.473161012, 0.275470197, 0.437228501, -0.856123388)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19761419, -0.448823214, -0.516104162, -0.152432248, 0.0205923915, -0.988100946, -0.74525857, 0.654256165, 0.128605545, 0.649119616, 0.755993724, -0.0843826011)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.964060485, 0.412442863, -0.462416798, -0.383582324, -0.904600441, 0.185907513, 0.750663757, -0.188149929, 0.633327723, -0.537929296, 0.382487774, 0.751221836)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.59442425e-06, 1.0000031, -1.47670507e-05, -0.939415693, -0.134209126, -0.315414011, -0.224500313, -0.454456806, 0.862014294, -0.25903222, 0.880600333, 0.396793902)}) tween6:Play() tablesorting(part6, tween6)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1, -0.204130828, -0.74773562, 0.718863428, -0.280279011, 0.636143863, 0.188948035, 0.959443688, 0.20920442, -0.668979824, -0.0301913023, 0.742667139)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--56, 2.883333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904273987, -0.687843323, 135.939713, -0.872208536, 0.470836639, -0.132531241, 0.287174195, 0.712262094, 0.640479445, 0.395958036, 0.520571947, -0.756453395)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--57, 2.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906524658, -1.08349609, 139.365128, -0.875314713, 0.418512046, -0.242222935, 0.211957276, 0.782306552, 0.585722446, 0.434624523, 0.46135056, -0.773471057)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19761419, -0.448823094, -0.516104102, -0.144377157, -0.190827206, -0.970949709, -0.964663208, 0.245706439, 0.0951531827, 0.220411211, 0.950377047, -0.219557837)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.667114198, 0.471233845, -0.67960906, -0.616808951, -0.444820881, 0.649369121, 0.762392521, -0.132492721, 0.63340646, -0.195714712, 0.885765016, 0.420850605)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.60187483e-06, 1.0000031, -1.47819519e-05, -0.97919035, -0.0490003079, -0.196939632, -0.184319153, -0.191371247, 0.964055777, -0.0849276036, 0.98029387, 0.178357199)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1273272, 0.457996458, -0.319721878, -0.245950818, 0.92533648, -0.288550049, -0.840337873, -0.0552040935, 0.539245725, 0.48305434, 0.37510708, 0.791172504)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.40956521, -0.285237849, -0.448176801, 0.744656086, 0.0881196558, 0.661605895, -0.101260677, 0.994687736, -0.0185113326, -0.659722447, -0.053210035, 0.749623239)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--58, 3.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0905170441, -1.27098274, 141.469254, -0.797034085, 0.582963169, -0.157767504, 0.495171249, 0.78035754, 0.381899953, 0.345748723, 0.226265311, -0.910638154)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--59, 3.049999952316284
		tween6 = ts:Create(part6, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.5925616e-06, 1.0000031, -1.47670507e-05, -0.99704957, -0.0687253028, -0.0341897607, -0.0454140604, 0.16905269, 0.984560192, -0.0618843287, 0.983208001, -0.171674997)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--60, 3.133333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.016666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0903873444, -1.34210014, 144.934784, -0.857979238, 0.507444799, -0.0798213631, 0.473206878, 0.841231227, 0.261543781, 0.199867219, 0.186627135, -0.961885333)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25477624, -0.0947090387, -0.646664023, 0.398058146, 0.024055481, -0.917046428, -0.289961278, 0.951705515, -0.100896277, 0.870330572, 0.306070119, 0.38580963)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.3666665554046631, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.667114139, 0.471233875, -0.679609179, -0.616808951, -0.0606274903, 0.784774005, 0.762392521, 0.201893896, 0.61481452, -0.195714712, 0.97752893, -0.0783082247)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.40956521, -0.285237849, -0.448176742, 0.748124063, 0.0899294168, 0.657436788, 0.084118925, 0.969927311, -0.228396773, -0.65820545, 0.22617203, 0.718061149)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--61, 3.1500000953674316
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.59069896e-06, 1.0000031, -1.47968531e-05, -0.992873788, -0.069491744, 0.0968117788, 0.0497197434, 0.496741146, 0.866473436, -0.108303145, 0.865112185, -0.489746183)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.815149784, -0.0657544136, -0.767728567, 0.229150862, 0.796897769, -0.558968902, -0.817555726, 0.469236195, 0.333808154, 0.528298318, 0.380494654, 0.75903368)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--62, 3.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0906164646, -1.31067276, 147.888947, -0.996525407, 0.0832896531, -5.77867031e-05, 0.0808447003, 0.967438579, 0.239847705, 0.0200327635, 0.239009634, -0.970810652)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--63, 3.2833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.60187483e-06, 1.0000031, -1.48415565e-05, -0.980814338, -0.109514043, 0.161275923, 0.0360870287, 0.710997701, 0.702267826, -0.191574976, 0.694614351, -0.693404675)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.915091097, 0.388125122, -0.774489641, -0.405321836, 0.346241385, -0.846067965, -0.867910564, 0.14494504, 0.475102514, 0.287133515, 0.926880777, 0.241757274)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--64, 3.3333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0905296803, -1.21141434, 151.723618, -0.995070338, -0.057357043, 0.080902487, -0.030611705, 0.953589439, 0.29954955, -0.0943290442, 0.295596331, -0.950644374)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--65, 3.450000047683716
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84215605e-06, 1.0000031, -1.47521496e-05, -0.999373198, -0.0279164612, 0.0217729732, -0.00195838511, 0.657645226, 0.753325343, -0.0353485197, 0.752810538, -0.657287478)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.903779805, 0.192948639, -1.08446431, -0.872583926, 0.229359955, -0.4312675, -0.484236538, -0.290261596, 0.82538718, 0.0641305074, 0.929054618, 0.364342451)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--66, 3.5
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0905284882, -1.13973618, 155.0896, -0.986366689, -0.116397992, 0.116327934, -0.068197079, 0.932463527, 0.354768962, -0.149765953, 0.341999054, -0.927688956)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.4500000476837158, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.727300227, 0.359409779, -0.538103342, -0.630515158, 0.185820743, 0.753605545, 0.728439033, 0.476913929, 0.491863698, -0.268006533, 0.859083295, -0.436060578)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.11833344459533691)

		if afterframe() then
			return
		end

		--67, 3.633333444595337
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0905189514, -1.03704453, 156.720688, -0.975225151, -0.164201051, 0.148235708, -0.0841919109, 0.895172477, 0.437696189, -0.204566687, 0.414372116, -0.886819124)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.3833334445953369, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17610407, -0.238919973, -0.301636815, 0.353739738, 0.184112057, -0.917046428, -0.652478516, 0.751061678, -0.100896209, 0.670182109, 0.634043276, 0.385809779)}) tween5:Play() tablesorting(part5, tween5)
		tween6 = ts:Create(part6, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.59908086e-06, 1.0000031, -1.47819519e-05, -0.985514045, 0.168190271, 0.021772787, 0.126773864, 0.645313323, 0.753325284, 0.112651728, 0.745172918, -0.657287538)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.541686535, 0.105859637, -0.909563482, -0.872582197, 0.0311494768, -0.48747313, -0.484238833, 0.0758653283, 0.871640563, 0.0641334653, 0.996631384, -0.0511149466)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.3833334445953369, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.41016698, -0.37951386, -0.454542756, 0.700617015, 0.102469869, 0.706141472, 0.0249964893, 0.985502839, -0.167810142, -0.713099718, 0.135221481, 0.687898636)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--68, 3.799999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904922485, -0.912971497, 158.413361, -0.960713387, -0.213365898, 0.177495748, -0.0878436267, 0.840409398, 0.534785509, -0.263274074, 0.498183757, -0.826135397)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--69, 3.9000000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0904083252, -0.845069885, 158.915878, -0.978580058, -0.177425966, 0.104407988, -0.0837009698, 0.806257188, 0.585613966, -0.188082859, 0.564331234, -0.803837955)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--70, 3.950000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.090379715, -0.616912842, 159.427429, -0.976615131, -0.213991955, 0.0207441151, -0.135857299, 0.689033866, 0.711881459, -0.166630358, 0.692416012, -0.701993346)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.67250061, 0.240392864, -0.532257795, -0.781716108, 0.0768469572, 0.618881762, 0.50328517, 0.663762331, 0.553284645, -0.368272126, 0.743985534, -0.557549655)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.59908086e-06, 1.0000031, -1.47819519e-05, -0.985514045, 0.168190271, 0.021772787, 0.126773864, 0.645313323, 0.753325284, 0.112651728, 0.745172918, -0.657287538)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.605097592, 0.0641784966, -0.778598487, -0.792416036, 0.242270648, -0.559805214, -0.514173925, 0.228464305, 0.826697886, 0.328180075, 0.94292587, -0.0564696193)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--71, 4.016666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0903720856, -0.369667053, 159.758743, -0.995216846, -0.0940478146, -0.0264268965, -0.0747281834, 0.558670521, 0.826016307, -0.0629211068, 0.824040174, -0.563026428)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293594, -0.934629083, 0.00799679756, 0.398772418, -0.00309675932, -0.917046428, -0.224505395, 0.969236374, -0.100896209, 0.889146745, 0.246115893, 0.385809779)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.594244003, 0.104729891, -0.544828653, -0.87631917, 0.282679975, 0.390072823, 0.460356832, 0.729930162, 0.505246282, -0.141902968, 0.622329712, -0.769785404)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.6130507e-06, 1.00000334, -1.49086118e-05, -0.975594759, -0.206100121, 0.0757475421, 0.0252839681, 0.23723112, 0.971124232, -0.218118489, 0.949338794, -0.226230443)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.75163734, 0.0269640684, -0.643715799, -0.59661895, 0.506502151, -0.622496188, -0.507982492, 0.362153202, 0.781536341, 0.621288776, 0.782496452, 0.0412267447)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11849546, -1.012918, -0.126865923, 0.680576146, -0.0603916906, 0.730184257, 0.070141457, 0.997390687, 0.0171150416, -0.72931236, 0.0395678803, 0.683036208)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--72, 4.116666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0903768539, -0.165794373, 160.127853, -0.994598627, 0.0933292657, -0.0454238541, -0.00379507989, 0.404634178, 0.914470792, 0.103726909, 0.909703732, -0.402094394)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.906162858, 0.045207262, -0.494018674, -0.760090232, 0.394227922, 0.516572773, 0.624068618, 0.664416671, 0.411204189, -0.18111147, 0.634929061, -0.75104183)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.944502473, -0.00931966305, -0.266430974, -0.550099969, 0.547452807, -0.630623102, -0.427460939, 0.464129865, 0.775796771, 0.717403114, 0.696332574, -0.0213031769)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--73, 4.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0903816223, -0.100162506, 160.316483, -0.970745862, 0.229299679, -0.0712329149, 0.00621266477, 0.320555985, 0.947209179, 0.240028888, 0.919056833, -0.312602937)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03734529, 0.064807266, -0.402363062, -0.57613337, 0.0590967871, 0.815216601, 0.749463797, 0.436183184, 0.498044401, -0.326150894, 0.897915363, -0.29559043)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0590868, -0.0250887871, 0.0487887561, -0.651828289, 0.461714387, -0.601614296, -0.370487899, 0.498317122, 0.783848763, 0.661708891, 0.733825564, -0.153757647)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--74, 4.300000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0975723267, -0.00922012329, 160.516571, -0.89545846, 0.425847918, -0.129644468, -0.0353115462, 0.222369388, 0.974322796, 0.443742275, 0.877043545, -0.184085205)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.964642704, 0.0710231066, -0.329064995, -0.378538728, -0.33222127, 0.863908172, 0.680757701, 0.532458365, 0.503047764, -0.627118409, 0.778535306, 0.0246061236)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.61677599e-06, 1.00000334, -1.48564577e-05, -0.961273134, -0.243599281, 0.128892764, 0.0150949061, 0.420445383, 0.90719229, -0.275183767, 0.874005198, -0.400485754)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.144907, -0.0361011624, 0.272089154, -0.743215919, 0.346326411, -0.572440505, -0.372846842, 0.496034175, 0.784178197, 0.555531621, 0.79624629, -0.239533871)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--75, 4.366666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.107810974, 0.05818367, 160.62265, -0.851895213, 0.498318404, -0.161100343, -0.087359488, 0.168089733, 0.981893182, 0.516374767, 0.850543737, -0.0996620208)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293654, -0.934629083, 0.00799676776, 0.39877224, 0.0734580681, -0.91410315, -0.224504858, 0.974274874, -0.0196454227, 0.889144659, 0.213054657, 0.405005515)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.942687154, 0.0667631626, -0.317878157, -0.223680586, -0.353043258, 0.908475399, 0.553164303, 0.721447945, 0.416559964, -0.802481294, 0.595712543, 0.0339170247)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15837932, -0.0368148088, 0.290880501, -0.776808739, 0.262452275, -0.572439492, -0.425158769, 0.45199877, 0.78417933, 0.464551568, 0.852535009, -0.239532709)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06905389, -1.03634334, -0.0734245777, 0.682393372, -0.0342113711, 0.730184197, 0.0317877904, 0.999348104, 0.0171152577, -0.730293691, 0.0115316026, 0.683036029)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--76, 4.433333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.112915039, 0.0190677643, 160.739548, -0.838891923, 0.521129131, -0.157113686, -0.0966436416, 0.141456857, 0.985215664, 0.535649419, 0.841673553, -0.0683031976)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293654, -0.934629202, 0.00799676776, 0.39877221, 0.0575104281, -0.915244937, -0.224504858, 0.973784387, -0.0366279408, 0.889144719, 0.220083147, 0.401229531)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.931709349, 0.0646332502, -0.312284529, -0.16627261, -0.289072812, 0.942756712, 0.539743185, 0.77344656, 0.332351804, -0.825245857, 0.564107478, 0.0274221208)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.59442425e-06, 1.0000031, -1.48266554e-05, -0.947706699, -0.292846173, 0.126858905, -0.00977349281, 0.423944056, 0.905635655, -0.318993002, 0.857037127, -0.404636741)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.16014743, -0.0363102555, 0.29175064, -0.795838237, 0.21198228, -0.567190588, -0.466884732, 0.381636232, 0.797729731, 0.385564953, 0.899676323, -0.204749495)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0443331, -1.04805601, -0.0467038751, 0.692534328, 0.0484742969, 0.719754457, -0.091986239, 0.995528996, 0.0214601755, -0.715496123, -0.0810694098, 0.693897009)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--77, 4.516666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.115509033, -0.080909729, 160.861847, -0.843345642, 0.519390702, -0.137845606, -0.083033666, 0.127485573, 0.988358617, 0.530917645, 0.844973803, -0.0643874854)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293654, -0.934629142, 0.00799682736, 0.39877221, -0.00475107133, -0.917037725, -0.224504873, 0.969051778, -0.10264609, 0.889144719, 0.246811852, 0.385364264)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.926220477, 0.0635681152, -0.309487909, -0.165385157, -0.334514409, 0.927765012, 0.593839049, 0.717290819, 0.364484817, -0.787402689, 0.611223459, 0.0800184384)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.60932541e-06, 1.0000031, -1.48415565e-05, -0.927779555, -0.357362717, 0.107317671, -0.0408557393, 0.383180976, 0.922769308, -0.370885402, 0.85174191, -0.37010777)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15606332, -0.0351963043, 0.283660173, -0.808467507, 0.178099811, -0.560946405, -0.4993954, 0.296740562, 0.8139714, 0.31142363, 0.938203454, -0.150962949)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197277, -1.05391216, -0.0333435237, 0.69133693, 0.160329759, 0.704519391, -0.25571233, 0.966254652, 0.0310339183, -0.675769567, -0.201609209, 0.709005892)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--78, 4.616666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.115524292, -0.149837494, 160.91658, -0.852434278, 0.508131862, -0.123117015, -0.0671576709, 0.127113804, 0.989612043, 0.518503308, 0.85184747, -0.0742312148)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293654, -0.934629142, 0.00799685717, 0.398772329, -0.0512715019, -0.915615559, -0.224504903, 0.96259594, -0.151679441, 0.889144659, 0.266045749, 0.372345895)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.926220477, 0.0635682344, -0.309487849, -0.188675642, -0.321952879, 0.927765012, 0.643178642, 0.673403323, 0.364484847, -0.742106974, 0.665488064, 0.0800184011)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.60187483e-06, 1.0000031, -1.48415565e-05, -0.91609776, -0.390724003, 0.0899980068, -0.0555709451, 0.346021056, 0.936579585, -0.397085309, 0.852997184, -0.338702023)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15180492, -0.0344578624, 0.276352584, -0.81240499, 0.170993507, -0.557457924, -0.510091484, 0.254767954, 0.821523011, 0.282497466, 0.951763928, -0.119752496)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197265, -1.05391216, -0.0333435237, 0.683359861, 0.220039785, 0.696133494, -0.341084838, 0.939266801, 0.0379346833, -0.645507932, -0.2633636, 0.716909409)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--79, 4.683333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0695114136, -0.191902161, 161.002548, -0.861921906, 0.499587119, -0.0866217017, -0.0350993089, 0.11163947, 0.993128717, 0.505824745, 0.859039724, -0.0786893368)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293594, -0.934629083, 0.00799679756, 0.401339024, -0.0829669535, -0.912164152, -0.253390014, 0.946963429, -0.197620094, 0.880182087, 0.310445964, 0.359030396)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.963852644, 0.064539969, -0.288138807, -0.24370195, -0.373250514, 0.895149887, 0.629087985, 0.641634226, 0.438809484, -0.738144755, 0.670066774, 0.0784398764)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.29453838e-06, 1.00000203, -1.52140856e-05, -0.904624104, -0.422270119, 0.0578207448, -0.0696135387, 0.280228227, 0.957405925, -0.420486927, 0.862067342, -0.282896906)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1482563, -0.0338426232, 0.270262897, -0.789591789, 0.226941556, -0.570124865, -0.499827743, 0.301118612, 0.812096, 0.355973482, 0.926188588, -0.12432918)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197384, -1.0539124, -0.0333373547, 0.679973722, 0.249006495, 0.68966049, -0.385817438, 0.921338975, 0.0477427691, -0.623522878, -0.29854688, 0.722557306)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--80, 4.766666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0197982788, -0.195977211, 161.062546, -0.866133809, 0.496659279, -0.0560518168, -0.0098717697, 0.0951248258, 0.995416403, 0.499714732, 0.862717152, -0.0774879158)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293654, -0.934629023, 0.00799691677, 0.404309779, -0.0892081261, -0.910261214, -0.284184694, 0.933719099, -0.217733055, 0.869351864, 0.346713901, 0.352160186)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00449538, 0.0655893087, -0.265081972, -0.285517871, -0.435833097, 0.853539109, 0.581369698, 0.629263163, 0.515787899, -0.76189816, 0.643488467, 0.0737142786)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(9.64850187e-07, 1.00000083, -1.56462193e-05, -0.899520874, -0.435600817, 0.0333780423, -0.0759610385, 0.231182441, 0.969940484, -0.430223286, 0.869946301, -0.241042122)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14697886, -0.0336210132, 0.268070668, -0.756346703, 0.288313508, -0.587209463, -0.475492775, 0.374186069, 0.796172976, 0.44927302, 0.881396711, -0.145923406)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197503, -1.05391264, -0.0333307013, 0.683632255, 0.244872272, 0.687520504, -0.384166479, 0.921700001, 0.0537145808, -0.62053442, -0.300843358, 0.724175572)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--81, 4.849999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0337982178, -0.215231895, 161.117111, -0.868445277, 0.495110542, -0.0258520618, 0.01442663, 0.0773577541, 0.996899009, 0.495575041, 0.865379333, -0.0743237585)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293535, -0.934629202, 0.00799685717, 0.407315344, -0.0872658566, -0.909108877, -0.316934109, 0.920058489, -0.230315417, 0.856531978, 0.381938577, 0.347096413)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04826486, 0.0667192936, -0.240251601, -0.319926918, -0.504602492, 0.801887214, 0.516649008, 0.616541445, 0.594096363, -0.794179201, 0.604361653, 0.0634541363)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(6.12344593e-07, 0.999999702, -1.6130507e-05, -0.896383703, -0.443158716, 0.0103311576, -0.0801969022, 0.185048997, 0.979451597, -0.435964257, 0.877135873, -0.201414853)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14638925, -0.0335189104, 0.267058939, -0.712224066, 0.350381345, -0.608251452, -0.437444031, 0.456134021, 0.774973869, 0.548980534, 0.818031013, -0.171597362)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197622, -1.053913, -0.0333235115, 0.689884186, 0.229455978, 0.686592937, -0.367107421, 0.928329349, 0.058624059, -0.623932719, -0.292497188, 0.724674702)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.11833320617675781)

		if afterframe() then
			return
		end

		--82, 4.983333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0601577759, -0.262268066, 161.142365, -0.86910665, 0.494493544, -0.011394904, 0.0259557478, 0.0686005428, 0.997306526, 0.493943334, 0.86646986, -0.0724561289)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.883333683013916, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.965701759, -1.06929779, -0.000388622284, 0.411587328, -0.075858213, -0.908209205, -0.371035099, 0.89626056, -0.243005544, 0.832425535, 0.436994433, 0.34074384)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06983995, 0.0672763288, -0.228012025, -0.33353439, -0.538216531, 0.774001122, 0.481728375, 0.608432293, 0.630672634, -0.810365677, 0.583209336, 0.0563411117)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.46947524e-07, 0.999999046, -1.63689256e-05, -0.895208836, -0.445646495, -0.000517103821, -0.0818686783, 0.163315922, 0.983171105, -0.43806228, 0.880185843, -0.182686359)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14622235, -0.0334899426, 0.266772896, -0.687605858, 0.378795743, -0.619444847, -0.414592087, 0.495550364, 0.763245225, 0.596080184, 0.781628788, -0.183697611)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197694, -1.05391312, -0.0333199352, 0.693193734, 0.220079452, 0.686329007, -0.356229246, 0.932418346, 0.0608013198, -0.626564622, -0.286637604, 0.724745333)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--83, 5.099999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0691452026, -0.284218788, 161.160172, -0.86956495, 0.493773311, -0.006692986, 0.0292274654, 0.0649916828, 0.997457683, 0.492952973, 0.867158651, -0.0709462315)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08562851, 0.0676839948, -0.219055146, -0.341938972, -0.562661648, 0.752655089, 0.454896629, 0.601729631, 0.656498671, -0.82228148, 0.566862762, 0.0501980484)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.10130417e-07, 0.999998569, -1.65104866e-05, -0.894533277, -0.446926385, -0.00818654895, -0.0829195231, 0.147913158, 0.985518157, -0.439243168, 0.88225764, -0.169372171)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14615893, -0.0334789157, 0.26666376, -0.668422103, 0.398558021, -0.627983689, -0.396106243, 0.523871303, 0.75409472, 0.629533052, 0.752801776, -0.192295924)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197718, -1.05391335, -0.0333172828, 0.695694149, 0.212370902, 0.686227679, -0.347089887, 0.935761511, 0.0622822866, -0.628918469, -0.281512141, 0.724715531)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--84, 5.266666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.1833329200744629, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.071395874, -0.279068947, 161.172302, -0.869909108, 0.493179232, -0.00568851549, 0.0295014083, 0.0635429919, 0.997542918, 0.492328912, 0.867603898, -0.0698261112)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.1833329200744629, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0967958, 0.0679721832, -0.212720037, -0.347112685, -0.579824328, 0.737100184, 0.435364157, 0.59651804, 0.674258471, -0.830644846, 0.554950655, 0.0453757048)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.1833329200744629, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.24914402e-07, 0.999998331, -1.66296959e-05, -0.894128442, -0.447607011, -0.0135024525, -0.0835960805, 0.137215495, 0.98700738, -0.439938694, 0.88364017, -0.16010645)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833329200744629, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14613712, -0.0334750414, 0.266626269, -0.654288471, 0.411965936, -0.634185016, -0.382166088, 0.543520927, 0.747351289, 0.652576149, 0.731347382, -0.198180065)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.1833329200744629, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197742, -1.05391335, -0.0333155692, 0.697472572, 0.206578597, 0.686190426, -0.34015137, 0.93823874, 0.0632859915, -0.630736887, -0.27754885, 0.724663734)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.16833292007446288)

		if afterframe() then
			return
		end

		--85, 5.449999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0716781616, -0.288499832, 161.183197, -0.870231092, 0.492609948, -0.00576626882, 0.0288832821, 0.0627020225, 0.997614264, 0.491796285, 0.867988408, -0.0687934384)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1068809, 0.0682325959, -0.206998676, -0.35127604, -0.595194757, 0.722736776, 0.417415828, 0.591412365, 0.6899243, -0.838074684, 0.544035673, 0.0406946689)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.47148967e-07, 0.999998033, -1.67414546e-05, -0.893792868, -0.448108286, -0.0182580687, -0.0841771215, 0.127633229, 0.988242865, -0.440509468, 0.884821296, -0.151798144)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14612722, -0.0334733725, 0.266609251, -0.648219466, 0.412645191, -0.63994962, -0.37862879, 0.554494143, 0.741064429, 0.660644948, 0.722675741, -0.203194559)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197789, -1.05391347, -0.0333138928, 0.699064612, 0.201197952, 0.686169147, -0.33367613, 0.940500915, 0.0641741157, -0.632430971, -0.273820132, 0.724605799)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--86, 5.616666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0694274902, -0.276835442, 161.198944, -0.870725095, 0.491714358, -0.00736976229, 0.0266547576, 0.0621529147, 0.997710586, 0.491046786, 0.868535101, -0.0672246516)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12190819, 0.0686207116, -0.198473305, -0.356588066, -0.61784029, 0.700797856, 0.390178084, 0.583076596, 0.712588429, -0.848884583, 0.527536213, 0.0331493616)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.0733645e-08, 0.999997616, -1.68904662e-05, -0.89333725, -0.448674172, -0.0252752677, -0.0849972516, 0.113473393, 0.989898205, -0.441273302, 0.886460721, -0.13950631)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14612699, -0.0334732533, 0.266609341, -0.649565578, 0.396800071, -0.648546338, -0.387647718, 0.560961962, 0.731471658, 0.654057503, 0.726545513, -0.210563332)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03197825, -1.05391335, -0.0333114862, 0.701399684, 0.192949772, 0.686154008, -0.323705673, 0.943889976, 0.0654692203, -0.635021031, -0.268032789, 0.724502802)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.235)

		if afterframe() then
			return
		end

		--87, 5.866666793823242
		tween1 = ts:Create(part1, TweenInfo.new(1.75, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.069442749, -0.288169146, 161.30835, -0.870725274, 0.491714537, -0.00736958068, 0.00447504874, 0.022907827, 0.999727547, 0.491749406, 0.870455086, -0.0221468695)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(1.75, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.968636036, -1.07778347, 0.00470370054, 0.411587119, -0.0758569241, -0.908208013, -0.371034235, 0.896259665, -0.243006423, 0.832423925, 0.436994612, 0.340743452)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(1.75, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12190843, 0.0686207414, -0.198473483, -0.403963447, -0.587958753, 0.700798273, 0.434722096, 0.55066669, 0.712588966, -0.804879069, 0.592512369, 0.0331493467)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(1.75, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.25845724e-08, 0.999997675, -1.69202685e-05, -0.893337965, -0.449378937, -0.00242966786, -0.0849979371, 0.163656756, 0.982848823, -0.441273957, 0.878222644, -0.184397087)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(1.75, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14612699, -0.0334732533, 0.266609401, -0.573502302, 0.50048244, -0.648546457, -0.287687182, 0.618211567, 0.731471539, 0.767027557, 0.606079042, -0.210563377)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(1.75, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198004, -1.0539124, -0.0332943052, 0.702061236, 0.191073179, 0.686003685, -0.320057988, 0.945214868, 0.0642782226, -0.636139035, -0.264688194, 0.724753201)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(1.735)

		if afterframe() then
			return
		end

		--88, 7.616666793823242
		tween1 = ts:Create(part1, TweenInfo.new(1.3999996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0691375732, -0.327951431, 161.664581, -0.870725095, 0.491714358, -0.00736976229, -0.0831050873, -0.132358983, 0.987711787, 0.484696776, 0.860637724, 0.156112358)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(1.3999996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293475, -0.934637904, 0.0079883337, 0.403291762, -0.0539554805, -0.913480341, -0.345103621, 0.915581346, -0.206435978, 0.847503304, 0.39849776, 0.350626349)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(1.3999996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12190831, 0.0686207712, -0.198473334, -0.43314901, -0.56680125, 0.700797856, 0.461984873, 0.528003037, 0.712588429, -0.773919404, 0.632414699, 0.0331493616)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(1.3999996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.5250864e-06, 0.999989986, -1.80155039e-05, -0.899904311, -0.427844822, 0.0843678415, -0.0754861385, 0.343382239, 0.936156809, -0.429499805, 0.836081386, -0.341308624)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(1.3999996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14612532, -0.0334724188, 0.266609907, -0.663520694, 0.372996092, -0.648546338, -0.407724857, 0.546543241, 0.731471658, 0.627294421, 0.749774218, -0.210563332)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(1.3999996185302734, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03200221, -1.0539149, -0.0332817361, 0.691496611, 0.218655407, 0.688489437, -0.373653233, 0.923950434, 0.0818445086, -0.618232012, -0.313853383, 0.720608592)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(1.3849996185302735)

		if afterframe() then
			return
		end

		--89, 9.016666412353516
		tween1 = ts:Create(part1, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162387848, -0.0743026733, 161.036346, -0.909944177, 0.321355671, -0.262167245, -0.413414538, -0.753145635, 0.511722565, -0.0330049992, 0.57402277, 0.818173707)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293714, -0.934628963, 0.00799679756, 0.323756844, 0.0604024529, -0.944212019, -0.659941673, 0.729532599, -0.179613829, 0.677984118, 0.681275308, 0.276053667)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517120957, -0.665837467, 0.537815809, 0.237339184, 0.492163301, 0.837523222, -0.822347343, 0.560745358, -0.0964787975)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 0.999997675, -1.68681145e-05, -0.870742023, 0.250812948, 0.422965765, 0.465221167, 0.698824763, 0.543334663, -0.159303561, 0.669876218, -0.725179315)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.40644646, 0.149122268, -0.651886225, -0.721377134, 0.691839516, -0.0310997516, 0.178938717, 0.229579031, 0.956697822, 0.669021308, 0.684577167, -0.289412558)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688288748, -0.23619549, 0.685906172, 0.266719699, 0.961679161, 0.0635088012, -0.67462188, 0.139230639, 0.724910021)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333778381347657)

		if afterframe() then
			return
		end

		--90, 9.050000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162410736, -0.0742950439, 161.511719, -0.909944177, 0.321355671, -0.262167245, -0.413414538, -0.753145635, 0.511722565, -0.0330049992, 0.57402277, 0.818173707)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299674, -0.934622407, 0.00797539949, 0.325643867, 0.17260021, -0.929603517, -0.503432095, 0.863886952, -0.0159549117, 0.800320446, 0.473187953, 0.368212402)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(5.683333396911621, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517120957, -0.665837467, 0.537815809, 0.237339184, 0.492163301, 0.837523222, -0.822347343, 0.560745358, -0.0964787975)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68979168e-05, -0.75066328, -0.143371612, 0.644940436, 0.325063616, 0.769697309, 0.549453378, -0.575184584, 0.622100353, -0.531178534)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35164046, 0.21696341, -0.751722932, -0.94021666, 0.316576332, -0.125558257, 0.0702489614, 0.541014075, 0.838072121, 0.333242089, 0.779150605, -0.530913472)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(5.683333396911621, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688288748, -0.23619549, 0.685906172, 0.266719699, 0.961679161, 0.0635088012, -0.67462188, 0.139230639, 0.724910021)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--91, 9.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(5.6666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162410736, -0.0742950439, 161.511719, -0.909944177, 0.321355671, -0.262167245, -0.413414538, -0.753145635, 0.511722565, -0.0330049992, 0.57402277, 0.818173707)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(5.6666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299674, -0.934622407, 0.00797539949, 0.325643867, 0.17260021, -0.929603517, -0.503432095, 0.863886952, -0.0159549117, 0.800320446, 0.473187953, 0.368212402)}) tween5:Play() tablesorting(part5, tween5)
		tween6 = ts:Create(part6, TweenInfo.new(5.6666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68979168e-05, -0.75066328, -0.143371612, 0.644940436, 0.325063616, 0.769697309, 0.549453378, -0.575184584, 0.622100353, -0.531178534)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(5.6666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35164046, 0.21696341, -0.751722932, -0.94021666, 0.316576332, -0.125558257, 0.0702489614, 0.541014075, 0.838072121, 0.333242089, 0.779150605, -0.530913472)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(5.651666984558106)

		if afterframe() then
			return
		end

		--92, 14.733333587646484
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162416458, -0.0743103027, 161.511734, -0.909944415, 0.321355492, -0.262167573, -0.413414896, -0.753145158, 0.51172328, -0.0330050588, 0.574023724, 0.818173349)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299674, -0.934622347, 0.0079754591, 0.325644016, 0.172601074, -0.92960465, -0.503433824, 0.863886416, -0.015955694, 0.800318897, 0.473190308, 0.3682127)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209567, -0.517121136, -0.665834665, 0.537819684, 0.237338915, 0.492167652, 0.837520957, -0.822347879, 0.560745299, -0.0964818746)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 0.999997675, -1.69575214e-05, -0.75066328, -0.143368676, 0.644941926, 0.325063318, 0.769699633, 0.549450934, -0.575185597, 0.622099638, -0.531181395)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35163808, 0.216964245, -0.751724243, -0.940219104, 0.316580802, -0.125557423, 0.0702491105, 0.541017413, 0.8380723, 0.33324638, 0.77915132, -0.530914485)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391204, -0.0332833529, 0.688289464, -0.236191705, 0.685908973, 0.26671955, 0.961679518, 0.0635076612, -0.674624562, 0.139233679, 0.724910796)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--93, 14.75
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162418365, -0.0742797852, 161.51181, -0.909944415, 0.321353257, -0.262170315, -0.413414836, -0.753140748, 0.511729777, -0.0330050588, 0.574030697, 0.818168461)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299734, -0.934622407, 0.00797539949, 0.325644225, 0.172604322, -0.929603994, -0.503446698, 0.863878906, -0.0159587041, 0.800310731, 0.473202914, 0.36821422)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209447, -0.517121196, -0.665814042, 0.537845135, 0.23733893, 0.492199719, 0.837502122, -0.82234782, 0.560741663, -0.0965033621)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.69277191e-05, -0.75066334, -0.143352196, 0.644945502, 0.325063318, 0.76971364, 0.549431324, -0.575185478, 0.622086108, -0.531197309)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3516221, 0.216969907, -0.751731873, -0.940215588, 0.316591799, -0.125557125, 0.070255518, 0.541016579, 0.838072479, 0.333255231, 0.779147565, -0.530914664)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391216, -0.0332834125, 0.688289464, -0.236176103, 0.685914338, 0.266719609, 0.961680949, 0.0634857342, -0.674624562, 0.139250249, 0.724907696)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--94, 14.766666412353516
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162405014, -0.074256897, 161.511932, -0.909944415, 0.321347147, -0.262177765, -0.413414836, -0.753128767, 0.511747241, -0.0330050886, 0.574049711, 0.81815505)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299793, -0.934622467, 0.00797533989, 0.325644761, 0.172613174, -0.929602146, -0.503481746, 0.863858342, -0.0159669146, 0.800288498, 0.473237246, 0.368218511)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209507, -0.517121136, -0.665757895, 0.537914634, 0.237338975, 0.49228704, 0.837450743, -0.822347879, 0.56073159, -0.0965617746)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999997616, -1.68979168e-05, -0.75066334, -0.143307611, 0.644955337, 0.325063288, 0.769751549, 0.549378157, -0.575185478, 0.622049391, -0.531240225)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.351578, 0.216985106, -0.751750946, -0.940205514, 0.316621512, -0.125557184, 0.0702725649, 0.541014314, 0.838072419, 0.333279848, 0.779137015, -0.530914485)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289464, -0.236133665, 0.685928941, 0.26671958, 0.961684823, 0.0634262338, -0.674624503, 0.139295086, 0.724898994)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--95, 14.783333778381348
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162399292, -0.0742111206, 161.512222, -0.909944415, 0.321335256, -0.262192339, -0.413414866, -0.7531057, 0.511781394, -0.0330050439, 0.574086845, 0.818129122)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299674, -0.934622407, 0.00797539949, 0.325645804, 0.172630399, -0.92959857, -0.503549993, 0.863818228, -0.0159828365, 0.800245106, 0.473304152, 0.368226826)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652148128, -0.616209388, -0.517121196, -0.665648818, 0.538049638, 0.237338945, 0.492456913, 0.837350845, -0.82234782, 0.56071198, -0.0966755599)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999997616, -1.68979168e-05, -0.75066334, -0.143220693, 0.644974709, 0.325063348, 0.769825578, 0.549274385, -0.575185537, 0.621977806, -0.531324029)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35149193, 0.217015058, -0.751788676, -0.940185905, 0.316679329, -0.125557363, 0.0703057647, 0.541010022, 0.8380723, 0.333327949, 0.779116392, -0.530914426)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391216, -0.0332833529, 0.688289523, -0.236051083, 0.685957313, 0.266719639, 0.961692512, 0.0633104146, -0.674624503, 0.139382407, 0.724882364)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--96, 14.800000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162363052, -0.0741195679, 161.512604, -0.909944475, 0.321315646, -0.2622163, -0.413414806, -0.753067315, 0.511837661, -0.0330050737, 0.57414794, 0.818086088)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299674, -0.934622526, 0.00797533989, 0.325647384, 0.172658741, -0.929592788, -0.503662467, 0.863752246, -0.016009137, 0.80017364, 0.473414361, 0.368240386)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538814, -0.0652146339, -0.616209328, -0.517121077, -0.665468693, 0.538272381, 0.237338945, 0.492737055, 0.837185979, -0.822347879, 0.560679495, -0.0968630612)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68681145e-05, -0.75066334, -0.143077493, 0.645006537, 0.325063318, 0.769947648, 0.549103379, -0.575185537, 0.621859729, -0.531462193)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35135043, 0.217064202, -0.751851439, -0.940153897, 0.316774666, -0.125557423, 0.0703606009, 0.541002989, 0.83807236, 0.333406925, 0.779082596, -0.530914485)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289523, -0.235914826, 0.686004162, 0.26671958, 0.961705029, 0.0631194338, -0.674624503, 0.139526308, 0.724854589)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--97, 14.816666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.16232872, -0.0739822388, 161.513245, -0.909944415, 0.321286321, -0.262252152, -0.413414776, -0.753010154, 0.511921823, -0.0330050439, 0.574239314, 0.818021894)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299555, -0.934622407, 0.00797539949, 0.325649798, 0.172701031, -0.929584086, -0.503830194, 0.86365366, -0.016048342, 0.800067127, 0.473578691, 0.368260622)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538838, -0.0652147532, -0.616209507, -0.517121136, -0.665200174, 0.538604319, 0.237338915, 0.493154705, 0.83694011, -0.822347879, 0.560631156, -0.0971428901)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.69277191e-05, -0.75066328, -0.142863795, 0.645053983, 0.325063348, 0.770129681, 0.548848152, -0.575185657, 0.621683478, -0.531668305)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35113907, 0.217137575, -0.751945078, -0.940105915, 0.316916913, -0.125557423, 0.0704424977, 0.540992379, 0.8380723, 0.333524823, 0.779032111, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391181, -0.0332834125, 0.688289583, -0.235711604, 0.686074018, 0.266719609, 0.961723685, 0.0628345236, -0.674624503, 0.139741093, 0.724813282)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--98, 14.833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162288666, -0.0737915039, 161.51416, -0.909944415, 0.321245551, -0.26230216, -0.413414776, -0.752930462, 0.512039006, -0.0330050141, 0.574366629, 0.817932546)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299614, -0.934622407, 0.0079754591, 0.325653046, 0.17276001, -0.929571986, -0.504064143, 0.863516092, -0.0161030665, 0.799918413, 0.473807901, 0.368288785)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517121077, -0.664824903, 0.539067388, 0.23733893, 0.49373734, 0.836596429, -0.822347879, 0.560563326, -0.0975331962)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.96046448e-08, 0.999997616, -1.68681145e-05, -0.75066328, -0.142565474, 0.645119905, 0.325063318, 0.770383358, 0.548491955, -0.575185597, 0.62143755, -0.531955719)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35084414, 0.217240065, -0.752075553, -0.940038979, 0.317115366, -0.125557303, 0.0705567598, 0.540977359, 0.83807236, 0.333689213, 0.778961718, -0.530914485)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391204, -0.0332833529, 0.688289464, -0.235427886, 0.686171532, 0.26671955, 0.961749613, 0.0624368861, -0.674624562, 0.140040725, 0.724755347)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--99, 14.850000381469727
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162231445, -0.0735549927, 161.515366, -0.909944415, 0.321191281, -0.262368739, -0.413414896, -0.752824605, 0.512194753, -0.0330050886, 0.574535847, 0.817813814)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299674, -0.934622645, 0.00797557831, 0.325657457, 0.172838539, -0.929555833, -0.504375458, 0.863332987, -0.0161759406, 0.799720287, 0.474112958, 0.368326336)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652146339, -0.616209388, -0.517121196, -0.664325118, 0.539683104, 0.237339005, 0.49451226, 0.836138725, -0.82234782, 0.560472846, -0.0980525762)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999997616, -1.68979168e-05, -0.75066328, -0.142168432, 0.645207524, 0.325063348, 0.770720661, 0.548017859, -0.575185537, 0.621110201, -0.532337964)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.35045207, 0.217376411, -0.752249479, -0.939949989, 0.317379534, -0.125557184, 0.0707087517, 0.540957451, 0.838072479, 0.333907992, 0.77886802, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391216, -0.0332833529, 0.688289464, -0.23505035, 0.686300933, 0.26671958, 0.961783826, 0.0619077459, -0.674624562, 0.140439436, 0.724678218)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--100, 14.866666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162149429, -0.0732345581, 161.516922, -0.909944415, 0.321121454, -0.262454093, -0.413414836, -0.752688289, 0.512394965, -0.0330050439, 0.574753344, 0.817660928)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299614, -0.934622526, 0.00797557831, 0.32566312, 0.172939405, -0.929535091, -0.504775226, 0.863097548, -0.016269505, 0.799465775, 0.47450465, 0.368374556)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2553885, -0.0652148724, -0.616209507, -0.517121255, -0.66368264, 0.540473104, 0.237338915, 0.495506793, 0.835549772, -0.82234776, 0.560355783, -0.098719433)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997616, -1.69575214e-05, -0.75066334, -0.141658604, 0.645319641, 0.325063348, 0.771153331, 0.547408819, -0.575185537, 0.620689452, -0.532828569)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34994793, 0.217551172, -0.752472162, -0.93983531, 0.317718416, -0.125557423, 0.0709038377, 0.540932059, 0.8380723, 0.334189057, 0.778747439, -0.530914426)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289464, -0.234565452, 0.686466813, 0.26671958, 0.961827278, 0.0612282902, -0.674624562, 0.140951365, 0.724578798)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--101, 14.883333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.162042618, -0.0728378296, 161.518829, -0.909944415, 0.321034312, -0.262560695, -0.413414806, -0.752518117, 0.512644887, -0.0330050439, 0.575024843, 0.817470014)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299674, -0.934622467, 0.00797557831, 0.325670063, 0.173065364, -0.929509223, -0.505274177, 0.86280328, -0.0163863823, 0.799147725, 0.474993587, 0.368434668)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538814, -0.0652148128, -0.616209388, -0.517121077, -0.662878633, 0.541458845, 0.23733893, 0.496747941, 0.834812403, -0.822347879, 0.560208321, -0.0995519161)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68979168e-05, -0.75066334, -0.141021803, 0.645459056, 0.325063348, 0.771693051, 0.546647608, -0.575185537, 0.620163441, -0.53344065)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34931886, 0.217769593, -0.752750933, -0.93969214, 0.318141758, -0.125557303, 0.0711474419, 0.540899992, 0.83807236, 0.334539741, 0.778596878, -0.530914426)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391228, -0.0332832932, 0.688289523, -0.233959705, 0.686673462, 0.26671958, 0.961880982, 0.0603796765, -0.674624562, 0.141590565, 0.724454165)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--102, 14.899999618530273
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.161916733, -0.0723342896, 161.521179, -0.909944475, 0.320927739, -0.262690842, -0.413414776, -0.752310038, 0.512950182, -0.0330050439, 0.575356424, 0.817236662)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299555, -0.934622526, 0.00797569752, 0.325678438, 0.173219189, -0.929477632, -0.505883396, 0.862443507, -0.0165292025, 0.798758745, 0.475590527, 0.368507951)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652148128, -0.616209447, -0.517121077, -0.661894858, 0.542661071, 0.237338945, 0.498262256, 0.833909452, -0.822347879, 0.560026765, -0.100568503)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68979168e-05, -0.75066334, -0.140243813, 0.645628512, 0.325063348, 0.772351265, 0.545717239, -0.575185478, 0.619520128, -0.534187675)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34855056, 0.218036652, -0.753091455, -0.939517021, 0.318658799, -0.125557244, 0.0714451075, 0.540860772, 0.838072419, 0.334968001, 0.778412759, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391204, -0.0332833529, 0.688289464, -0.233219653, 0.686925232, 0.26671958, 0.961945474, 0.0593431816, -0.674624562, 0.142371118, 0.724301159)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--103, 14.916666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.16178894, -0.0717697144, 161.524017, -0.909944415, 0.320799947, -0.262847006, -0.413414836, -0.752060592, 0.513315916, -0.0330050439, 0.575753808, 0.816956818)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299436, -0.934622526, 0.00797575712, 0.325688362, 0.173403695, -0.929439783, -0.506613731, 0.862011373, -0.0167005956, 0.798291683, 0.47630617, 0.368595779)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209507, -0.517121196, -0.660712123, 0.544100404, 0.23733896, 0.500076115, 0.832823038, -0.82234782, 0.559806645, -0.101787314)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68681145e-05, -0.75066334, -0.13931039, 0.645830631, 0.325063288, 0.773139477, 0.544600129, -0.575185537, 0.618747175, -0.535082698)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34762859, 0.218356788, -0.75349915, -0.939306438, 0.319278687, -0.125557303, 0.0718020201, 0.540813506, 0.8380723, 0.335481703, 0.778191447, -0.530914485)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391216, -0.0332834125, 0.688289523, -0.232331678, 0.687225997, 0.266719609, 0.962021351, 0.058099851, -0.674624503, 0.14330712, 0.724116683)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--104, 14.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.161596298, -0.0710754395, 161.527344, -0.909944475, 0.320648819, -0.263031274, -0.413414806, -0.751765311, 0.513748169, -0.033005029, 0.576223314, 0.816625655)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299555, -0.934622526, 0.00797599554, 0.325699747, 0.173621655, -0.92939508, -0.507475853, 0.861500144, -0.0169031173, 0.797739267, 0.477150887, 0.368699193)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517121196, -0.659310699, 0.545797706, 0.237338975, 0.50221616, 0.831534266, -0.82234782, 0.559543014, -0.103226557)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.69277191e-05, -0.75066328, -0.138207346, 0.646067619, 0.325063318, 0.774068356, 0.543279052, -0.575185657, 0.617832541, -0.536138535)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34653974, 0.21873495, -0.753981233, -0.939057291, 0.320010841, -0.125557244, 0.0722236335, 0.540757358, 0.83807236, 0.336088181, 0.777929664, -0.530914485)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391216, -0.0332833529, 0.688289523, -0.2312821, 0.687579989, 0.26671955, 0.96210897, 0.0566309541, -0.674624503, 0.144412532, 0.72389698)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--105, 14.949999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.161396027, -0.0702896118, 161.531189, -0.909944415, 0.320472419, -0.263246119, -0.413414776, -0.751420856, 0.514251888, -0.0330050141, 0.576770484, 0.816239238)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299555, -0.934622645, 0.00797599554, 0.32571286, 0.173875958, -0.929342926, -0.508480906, 0.860902667, -0.0171395168, 0.797093689, 0.478135705, 0.368819654)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652148724, -0.616209507, -0.517121196, -0.657670736, 0.547772706, 0.23733893, 0.504707932, 0.830024242, -0.82234782, 0.559230924, -0.104904309)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.69277191e-05, -0.75066334, -0.136920333, 0.646341562, 0.325063318, 0.775148749, 0.541736424, -0.575185537, 0.616763592, -0.53736794)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34526968, 0.219175994, -0.754543424, -0.938765883, 0.320864648, -0.125557244, 0.0727153718, 0.540691495, 0.8380723, 0.336795509, 0.777623653, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332833529, 0.688289642, -0.230057374, 0.687990606, 0.266719609, 0.962208211, 0.0549175888, -0.674624443, 0.145701408, 0.723638773)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--106, 14.966666221618652
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.16116333, -0.0693588257, 161.535675, -0.909944415, 0.320268869, -0.263493866, -0.413414806, -0.751023054, 0.514832675, -0.0330050439, 0.57740134, 0.815793157)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299436, -0.934622645, 0.00797611475, 0.325727582, 0.174169302, -0.929282844, -0.509639263, 0.860211968, -0.0174123719, 0.796347558, 0.479270726, 0.368958294)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517121077, -0.655771554, 0.550044954, 0.23733893, 0.507576764, 0.828272998, -0.822347879, 0.558864474, -0.106838554)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999997616, -1.69277191e-05, -0.75066334, -0.135435015, 0.646654487, 0.325063348, 0.776391447, 0.539953947, -0.575185657, 0.615527272, -0.53878361)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3438046, 0.21968478, -0.755192041, -0.938428819, 0.321849138, -0.125557184, 0.0732824206, 0.540614843, 0.838072419, 0.33761096, 0.777270079, -0.530914485)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391181, -0.0332833529, 0.688289523, -0.228643566, 0.68846184, 0.266719609, 0.962319016, 0.0529408678, -0.674624503, 0.147187635, 0.723337889)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--107, 14.983333587646484
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.160902023, -0.0683135986, 161.540802, -0.909944415, 0.320035964, -0.263776779, -0.413414896, -0.750567973, 0.515495956, -0.0330050588, 0.578121841, 0.815282762)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299436, -0.934622765, 0.00797629356, 0.325743884, 0.174504504, -0.929214239, -0.510961473, 0.859420896, -0.0177244097, 0.795493126, 0.480566323, 0.369116157)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209507, -0.517121136, -0.653591931, 0.552633166, 0.23733893, 0.510847211, 0.826259911, -0.822347879, 0.558437824, -0.109047055)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997616, -1.69277191e-05, -0.7506634, -0.133736908, 0.647007704, 0.325063288, 0.777806103, 0.537914038, -0.575185537, 0.614110827, -0.540397584)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34213078, 0.220266163, -0.755933285, -0.938042402, 0.322973669, -0.125557244, 0.0739303231, 0.540526688, 0.83807236, 0.338542312, 0.776864827, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391216, -0.0332833529, 0.688289464, -0.227026969, 0.688996613, 0.26671958, 0.96244061, 0.050681971, -0.674624562, 0.148885041, 0.722990334)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--108, 15
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.160587311, -0.0671157837, 161.546585, -0.909944415, 0.319771677, -0.264096946, -0.413414806, -0.750051439, 0.516247153, -0.0330050588, 0.578937769, 0.814703524)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299436, -0.934622765, 0.00797647238, 0.325761825, 0.174884468, -0.929136515, -0.512458384, 0.85852176, -0.0180783123, 0.794522345, 0.482033014, 0.369294614)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538838, -0.0652147532, -0.616209507, -0.517121136, -0.651109815, 0.555555463, 0.23733896, 0.514543414, 0.823963165, -0.822347879, 0.557943702, -0.111547604)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997556, -1.68681145e-05, -0.75066334, -0.131811634, 0.647402704, 0.325063288, 0.779402852, 0.535597801, -0.575185537, 0.612500489, -0.542222023)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34023404, 0.220925063, -0.756773233, -0.937602997, 0.32424733, -0.125557125, 0.0746643543, 0.540425777, 0.838072419, 0.339596927, 0.77640444, -0.530914664)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332833529, 0.688289583, -0.22519362, 0.689597964, 0.26671958, 0.962572038, 0.048121959, -0.674624503, 0.15080747, 0.722591817)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--109, 15.016666412353516
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.160247803, -0.0657730103, 161.553116, -0.909944475, 0.319474101, -0.264456868, -0.413414776, -0.749469697, 0.517091393, -0.0330050588, 0.579854786, 0.814051092)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299316, -0.934622884, 0.0079767108, 0.325781018, 0.175311834, -0.929049253, -0.51414001, 0.857507288, -0.0184767917, 0.793427289, 0.483680785, 0.369494408)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517121136, -0.648302138, 0.558829248, 0.237338945, 0.518688738, 0.821360052, -0.822347879, 0.557374537, -0.114357591)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.69277191e-05, -0.75066328, -0.129644632, 0.647840261, 0.325063318, 0.781190872, 0.53298676, -0.575185657, 0.610682607, -0.544268608)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33810031, 0.221665919, -0.75771755, -0.93710655, 0.325679243, -0.125557125, 0.0754899383, 0.540311098, 0.83807236, 0.340782583, 0.775884688, -0.530914605)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391204, -0.0332832932, 0.688289464, -0.223129466, 0.690268695, 0.26671958, 0.962711751, 0.0452419072, -0.674624562, 0.152968645, 0.722137272)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--110, 15.033333778381348
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.159856796, -0.0642700195, 161.560379, -0.909944415, 0.31914103, -0.264858663, -0.413414776, -0.748818278, 0.51803416, -0.0330050588, 0.580878794, 0.813320637)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299197, -0.934622943, 0.00797700882, 0.325801462, 0.17578952, -0.9289518, -0.516016722, 0.856369495, -0.0189226121, 0.792199612, 0.485519677, 0.369716734)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538802, -0.0652147532, -0.616209328, -0.517121077, -0.645144939, 0.562471032, 0.23733893, 0.523305714, 0.818426132, -0.82234782, 0.556721687, -0.117494434)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.96046448e-08, 0.999997616, -1.68681145e-05, -0.75066334, -0.127221197, 0.648320317, 0.325063288, 0.783178151, 0.53006202, -0.575185537, 0.608643293, -0.546548188)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33571577, 0.222494006, -0.758773029, -0.936549187, 0.327278525, -0.125557065, 0.0764122009, 0.540181339, 0.838072419, 0.34210664, 0.775301814, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391204, -0.0332832336, 0.688289523, -0.220820397, 0.691010833, 0.266719609, 0.962857604, 0.042022936, -0.674624503, 0.155382186, 0.721621871)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--111, 15.050000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.159433365, -0.0626068115, 161.568497, -0.909944415, 0.318770468, -0.265304685, -0.413414836, -0.748093247, 0.519080639, -0.0330050439, 0.582015395, 0.812507749)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299138, -0.934623003, 0.00797736645, 0.32582289, 0.176320285, -0.928843737, -0.518098474, 0.855100513, -0.0194185302, 0.790830851, 0.487559527, 0.369962573)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2553885, -0.0652147532, -0.616209388, -0.517121196, -0.641613483, 0.566496253, 0.23733899, 0.52841574, 0.815136313, -0.82234782, 0.555975795, -0.120975107)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68979168e-05, -0.75066334, -0.124526709, 0.648843348, 0.325063348, 0.785373628, 0.526803732, -0.575185537, 0.606367409, -0.549072087)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3330667, 0.223413914, -0.75994575, -0.935926795, 0.329054177, -0.125556886, 0.0774367452, 0.540035486, 0.83807236, 0.343576372, 0.774651587, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332833529, 0.688289464, -0.218252078, 0.691826284, 0.26671958, 0.963007033, 0.0384460837, -0.674624562, 0.158061594, 0.721039712)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--112, 15.066666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.15895462, -0.0607681274, 161.577423, -0.909944475, 0.31836009, -0.26579684, -0.413414776, -0.747290313, 0.520235896, -0.0330050588, 0.583270133, 0.81160742)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969299018, -0.934623182, 0.00797742605, 0.325845093, 0.176907003, -0.928724408, -0.520395458, 0.853691995, -0.0199673697, 0.789312184, 0.489810199, 0.37023291)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538802, -0.0652146339, -0.616209388, -0.517121136, -0.637681246, 0.570918858, 0.237338901, 0.534039021, 0.811463237, -0.822347879, 0.555126011, -0.124816313)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999997616, -1.68979168e-05, -0.75066334, -0.121546298, 0.649408221, 0.325063348, 0.78778398, 0.523192286, -0.575185537, 0.603840053, -0.551850319)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33013892, 0.22443065, -0.761241913, -0.935234964, 0.331015438, -0.125557065, 0.078568548, 0.53987205, 0.8380723, 0.345199585, 0.773929596, -0.530914605)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832336, 0.688289404, -0.215410158, 0.692716479, 0.26671955, 0.96315676, 0.0344924629, -0.674624622, 0.161020219, 0.720384717)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--113, 15.083333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.158449173, -0.0587463379, 161.587296, -0.909944415, 0.317907929, -0.266337574, -0.413414836, -0.746405125, 0.521505117, -0.0330050737, 0.584648609, 0.810615063)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969298959, -0.934623182, 0.00797790289, 0.325867474, 0.177552402, -0.928593338, -0.522917032, 0.852135301, -0.0205719396, 0.787634611, 0.49228096, 0.37052834)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652148128, -0.616209507, -0.517121136, -0.633320987, 0.57575196, 0.237338915, 0.540194809, 0.807378352, -0.822347879, 0.554160774, -0.129034415)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.69873238e-05, -0.75066328, -0.118265212, 0.650013864, 0.325063348, 0.79041636, 0.51920706, -0.575185657, 0.60104531, -0.554892898)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32691884, 0.225549042, -0.762667537, -0.934469283, 0.333170831, -0.125556946, 0.0798131227, 0.539689422, 0.83807236, 0.346982956, 0.773131728, -0.530914605)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332833529, 0.688289642, -0.212280124, 0.693681955, 0.26671958, 0.963302672, 0.0301431194, -0.674624503, 0.164271384, 0.719650507)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--114, 15.100000381469727
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.157878876, -0.0565185547, 161.598038, -0.909944415, 0.317411631, -0.266928792, -0.413414776, -0.745433092, 0.522893548, -0.0330050588, 0.586156368, 0.809525371)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969298899, -0.93462342, 0.00797820091, 0.325889826, 0.178259432, -0.928449988, -0.525673032, 0.850421667, -0.0212351456, 0.785788655, 0.494981438, 0.370849967)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2553885, -0.0652147532, -0.616209507, -0.517121196, -0.628503799, 0.581006706, 0.23733899, 0.546900392, 0.802851319, -0.82234782, 0.553066969, -0.133645371)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.96046448e-08, 0.999997616, -1.68979168e-05, -0.75066328, -0.114668265, 0.650657892, 0.325063318, 0.793275654, 0.514827609, -0.575185537, 0.597967267, -0.558208525)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32339191, 0.226773679, -0.764228702, -0.933624983, 0.335529327, -0.125557065, 0.0811756253, 0.539486229, 0.8380723, 0.348934114, 0.772253036, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289464, -0.208847195, 0.694723308, 0.26671955, 0.963440001, 0.0253791288, -0.674624562, 0.167828098, 0.718829215)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--115, 15.116666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.157268524, -0.0541000366, 161.609818, -0.909944415, 0.31686905, -0.267572761, -0.413414836, -0.744369984, 0.524405897, -0.0330050886, 0.587798774, 0.808333635)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.96929872, -0.93462342, 0.00797849894, 0.325911373, 0.179030776, -0.928294063, -0.528672397, 0.848541856, -0.021959886, 0.783764839, 0.497920424, 0.371198088)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538814, -0.0652146339, -0.616209328, -0.517121136, -0.623199105, 0.586692929, 0.23733896, 0.554172099, 0.797849298, -0.82234782, 0.551829815, -0.138664722)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68681145e-05, -0.75066334, -0.110740691, 0.651337922, 0.325063288, 0.796367347, 0.510032296, -0.575185537, 0.594588578, -0.561806023)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31954479, 0.228109896, -0.765931666, -0.932697177, 0.338099629, -0.125556946, 0.0826613605, 0.539260566, 0.8380723, 0.351059854, 0.771288991, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832336, 0.688289404, -0.205096588, 0.695839763, 0.26671955, 0.963562846, 0.020181641, -0.674624562, 0.171703249, 0.717913389)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--116, 15.133333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.156591415, -0.0514755249, 161.622604, -0.909944415, 0.316277802, -0.268271357, -0.413414866, -0.743210852, 0.526047349, -0.0330050737, 0.589581251, 0.807034552)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969298601, -0.934623778, 0.00797903538, 0.325931638, 0.179869324, -0.928124785, -0.531924367, 0.84648633, -0.0227491185, 0.78155303, 0.501106858, 0.371573538)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652148724, -0.616209447, -0.517121196, -0.617375255, 0.59281832, 0.237338975, 0.562023759, 0.792338133, -0.82234776, 0.550433695, -0.144107178)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997616, -1.68681145e-05, -0.75066328, -0.106467128, 0.652050138, 0.325063288, 0.799694836, 0.504799068, -0.575185597, 0.590891659, -0.565692961)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31536353, 0.229562074, -0.767782927, -0.931680918, 0.340890467, -0.125556827, 0.0842754841, 0.539010584, 0.83807236, 0.353367269, 0.770234644, -0.530914545)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289583, -0.201013297, 0.697030246, 0.266719609, 0.963664591, 0.0145317838, -0.674624443, 0.175909549, 0.716894448)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--117, 15.149999618530273
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.155874252, -0.0486221313, 161.636475, -0.909944415, 0.315635562, -0.269026756, -0.413414896, -0.741951227, 0.527822614, -0.0330050737, 0.591508865, 0.805622816)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969298482, -0.934623718, 0.00797945261, 0.325949818, 0.180777922, -0.927941859, -0.535437465, 0.844244957, -0.0236058533, 0.779142797, 0.504549146, 0.371976763)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538838, -0.0652147532, -0.616209447, -0.517121196, -0.610998392, 0.599388599, 0.23733896, 0.570467412, 0.786280632, -0.82234782, 0.54886061, -0.149987161)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.69575214e-05, -0.750663221, -0.101832554, 0.65279007, 0.325063378, 0.803260565, 0.499105603, -0.575185597, 0.586858332, -0.569876194)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31083381, 0.231135279, -0.769788504, -0.930570483, 0.343910217, -0.125556707, 0.0860231519, 0.538734436, 0.838072419, 0.355863333, 0.769084573, -0.530914664)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391216, -0.0332832932, 0.688289464, -0.196582094, 0.698292911, 0.26671958, 0.963737488, 0.00841085613, -0.674624503, 0.180459291, 0.715762675)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--118, 15.166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.155092239, -0.045539856, 161.651367, -0.909944415, 0.314939916, -0.269840717, -0.413414836, -0.740586042, 0.52973634, -0.0330050737, 0.593586743, 0.804093003)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969298363, -0.934623837, 0.00797998905, 0.325964898, 0.181759268, -0.927744806, -0.539220095, 0.841807485, -0.0245331451, 0.776523411, 0.508255601, 0.372407943)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652146935, -0.616209388, -0.517121196, -0.604033053, 0.606407285, 0.237339005, 0.579513013, 0.779637754, -0.82234782, 0.547091246, -0.156317934)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999997675, -1.69575214e-05, -0.750663221, -0.0968215168, 0.653552055, 0.325063407, 0.807065904, 0.492928535, -0.575185657, 0.582469165, -0.574361622)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30594206, 0.232834041, -0.771954417, -0.92936033, 0.347167373, -0.125556529, 0.0879096389, 0.538429797, 0.838072419, 0.358554691, 0.767833531, -0.530914724)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391181, -0.0332832932, 0.688289523, -0.19178769, 0.699624896, 0.26671958, 0.963772476, 0.00180013478, -0.674624503, 0.185364664, 0.714508057)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--119, 15.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.154230118, -0.0422286987, 161.66745, -0.909944415, 0.314188451, -0.270715237, -0.413414776, -0.739110231, 0.531793356, -0.0330050588, 0.595820069, 0.802439451)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969298244, -0.934623957, 0.00798052549, 0.325976104, 0.182816297, -0.92753315, -0.543280303, 0.839163005, -0.0255340636, 0.773683488, 0.512234032, 0.372867554)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538814, -0.0652148128, -0.616209388, -0.517121136, -0.596442044, 0.613875091, 0.23733893, 0.589167595, 0.772367656, -0.82234782, 0.545104146, -0.163112089)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.69575214e-05, -0.75066328, -0.0914189667, 0.654329598, 0.325063348, 0.811110675, 0.486244202, -0.575185597, 0.577704191, -0.579154074)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30067384, 0.234663606, -0.77428627, -0.9280442, 0.350670189, -0.125556588, 0.0899398327, 0.538094401, 0.8380723, 0.361448288, 0.766475618, -0.530914664)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289523, -0.186614543, 0.701022506, 0.26671958, 0.963759482, -0.00531899184, -0.674624562, 0.190637454, 0.713119268)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--120, 15.199999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.153327942, -0.0386581421, 161.684769, -0.909944415, 0.313378662, -0.271652251, -0.413414806, -0.737518966, 0.533998132, -0.0330050588, 0.598213673, 0.800656617)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969298124, -0.934624255, 0.00798106194, 0.325982094, 0.183951735, -0.927306533, -0.547625601, 0.836300135, -0.0266117975, 0.770611286, 0.51649183, 0.373355567)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652146339, -0.616209328, -0.517121136, -0.588186324, 0.621789873, 0.237338945, 0.59943521, 0.76442641, -0.82234782, 0.542875946, -0.170381129)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997675, -1.70171261e-05, -0.75066328, -0.0856093764, 0.655115008, 0.325063348, 0.815393209, 0.479027927, -0.575185597, 0.572542548, -0.584257364)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.29501569, 0.236628681, -0.776791036, -0.926616073, 0.354426891, -0.125556529, 0.0921189785, 0.537725568, 0.838072419, 0.364550322, 0.765005112, -0.530914664)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832336, 0.688289464, -0.181047082, 0.702480972, 0.26671955, 0.963686943, -0.0129648671, -0.674624503, 0.196288988, 0.711584389)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--121, 15.216666221618652
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.152349472, -0.034866333, 161.703308, -0.909944415, 0.312507987, -0.27265349, -0.413414806, -0.735806823, 0.536354959, -0.0330050439, 0.600772202, 0.798738718)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969297886, -0.934624314, 0.00798171759, 0.325981706, 0.185168415, -0.927064478, -0.552263319, 0.833207071, -0.0277694985, 0.767294645, 0.521036088, 0.373872012)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2553885, -0.0652148128, -0.616209388, -0.517121196, -0.579224586, 0.630146623, 0.23733899, 0.61031729, 0.75576663, -0.82234782, 0.540381193, -0.17813547)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, 0.999997675, -1.69575214e-05, -0.75066334, -0.0793775618, 0.655899286, 0.325063378, 0.819910288, 0.471254706, -0.575185537, 0.566962421, -0.589673877)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28895378, 0.238733828, -0.779474735, -0.925069034, 0.358445257, -0.125556409, 0.0944520831, 0.537320793, 0.8380723, 0.367867082, 0.763415635, -0.530914724)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332833529, 0.688289583, -0.175069451, 0.703994513, 0.26671958, 0.963541925, -0.0211557522, -0.674624443, 0.20233041, 0.709890306)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--122, 15.233333587646484
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.151319504, -0.0307769775, 161.723083, -0.909944415, 0.311573654, -0.273720652, -0.413414806, -0.733968198, 0.538868248, -0.0330050588, 0.603500307, 0.796679437)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969297707, -0.934624553, 0.00798231363, 0.325973541, 0.186469167, -0.926806629, -0.557200193, 0.829871237, -0.029010497, 0.763720632, 0.525873542, 0.374416739)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652146935, -0.616209388, -0.517121136, -0.569513738, 0.63893652, 0.23733896, 0.621811092, 0.746338546, -0.82234782, 0.537591934, -0.186383888)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.98023224e-08, 0.999997616, -1.68979168e-05, -0.75066328, -0.0727081597, 0.656672001, 0.325063378, 0.824656844, 0.462898403, -0.575185537, 0.560940862, -0.595404863)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28247368, 0.240984201, -0.78234309, -0.923395991, 0.362733185, -0.125556469, 0.0969439745, 0.536876798, 0.83807224, 0.371405005, 0.76170063, -0.530914664)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391204, -0.0332832932, 0.688289583, -0.168665767, 0.705556035, 0.266719609, 0.963310003, -0.0299095958, -0.674624443, 0.208772093, 0.708022654)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--123, 15.25
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.150213242, -0.0264282227, 161.744263, -0.909944475, 0.310573161, -0.274855405, -0.413414866, -0.731997728, 0.541541994, -0.0330050737, 0.606402397, 0.794472814)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969297588, -0.934624851, 0.00798296928, 0.325955868, 0.187856689, -0.926532567, -0.562442362, 0.826279759, -0.0303380489, 0.759875894, 0.531010091, 0.374989271)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652148724, -0.616209567, -0.517121077, -0.559008777, 0.648147345, 0.237338975, 0.633910418, 0.736089528, -0.822347879, 0.534478068, -0.195133895)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997675, -1.69277191e-05, -0.75066328, -0.0655861199, 0.657421529, 0.325063348, 0.829625845, 0.453932583, -0.575185537, 0.554454148, -0.601450086)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.27556229, 0.243384719, -0.785403609, -0.921589911, 0.367298305, -0.125556171, 0.0995996594, 0.536390424, 0.838072479, 0.375169575, 0.759853601, -0.530914843)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289583, -0.16181995, 0.707157552, 0.26671958, 0.962974846, -0.0392440669, -0.674624443, 0.215624049, 0.705966055)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--124, 15.266666412353516
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.149030685, -0.0217971802, 161.766724, -0.909944475, 0.309503496, -0.27605933, -0.413414836, -0.729889333, 0.544380307, -0.0330050737, 0.609482825, 0.792112052)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.96929729, -0.934625089, 0.00798386335, 0.32592696, 0.189333767, -0.926242113, -0.567995429, 0.822418928, -0.0317555517, 0.755746603, 0.536451221, 0.375589192)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209447, -0.517121136, -0.547662854, 0.657762289, 0.237339005, 0.6466043, 0.724964261, -0.822347879, 0.531006932, -0.204391018)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.69575214e-05, -0.75066328, -0.0579962432, 0.65813458, 0.325063378, 0.83480823, 0.444329917, -0.575185537, 0.547477603, -0.607807517)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.26820433, 0.24593991, -0.788660407, -0.91964215, 0.372147918, -0.125556111, 0.102423996, 0.535858333, 0.8380723, 0.37916714, 0.757866621, -0.530914843)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332833529, 0.688289583, -0.154515952, 0.708789349, 0.26671958, 0.962518752, -0.0491764992, -0.674624503, 0.222895682, 0.703704059)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--125, 15.283333778381348
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.147773743, -0.0168685913, 161.790604, -0.909944415, 0.308361888, -0.277333856, -0.413414776, -0.727637053, 0.547387064, -0.0330050439, 0.612745702, 0.789590716)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969297111, -0.934625268, 0.00798463821, 0.325884819, 0.190903112, -0.925934672, -0.5738644, 0.818274379, -0.03326644, 0.751317978, 0.542202055, 0.376215696)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517121136, -0.535426855, 0.667760313, 0.237338975, 0.6598773, 0.712904096, -0.82234782, 0.5271433, -0.214158878)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997675, -1.69575214e-05, -0.750663221, -0.0499236882, 0.658796132, 0.325063407, 0.840192676, 0.434062421, -0.575185657, 0.53998518, -0.614473462)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.26038718, 0.248654604, -0.792121172, -0.917544782, 0.377289295, -0.125556111, 0.105421603, 0.535276651, 0.8380723, 0.383402944, 0.755732536, -0.530914724)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332833529, 0.688289583, -0.14673762, 0.710440397, 0.26671958, 0.96192193, -0.0597237535, -0.674624443, 0.230595618, 0.701218665)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--126, 15.300000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.146446228, -0.0116424561, 161.815948, -0.909944415, 0.307145447, -0.278680474, -0.413414806, -0.725234926, 0.55056566, -0.033005029, 0.616194785, 0.78690201)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969296813, -0.934625506, 0.00798547268, 0.325827211, 0.192567438, -0.925610304, -0.580053806, 0.81383127, -0.0348742306, 0.746574938, 0.548266768, 0.376867861)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538838, -0.0652148128, -0.616209507, -0.517121196, -0.522250235, 0.678115368, 0.237339005, 0.673708737, 0.699847758, -0.822347879, 0.522849262, -0.224438742)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999997675, -1.69277191e-05, -0.75066334, -0.0413539708, 0.659389436, 0.325063348, 0.845765173, 0.423101842, -0.575185537, 0.531950355, -0.621442258)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25209641, 0.251534164, -0.795791805, -0.915289164, 0.382729262, -0.125555873, 0.108597249, 0.534641385, 0.838072419, 0.387882084, 0.75344348, -0.530914903)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832932, 0.688289464, -0.138468713, 0.7120983, 0.26671952, 0.961162627, -0.0709021538, -0.674624562, 0.238731727, 0.698490441)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--127, 15.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.14503479, -0.0061340332, 161.842743, -0.909944475, 0.305851012, -0.280100495, -0.413414806, -0.722676396, 0.553919792, -0.0330050588, 0.619833887, 0.784038663)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969296634, -0.934625745, 0.00798630714, 0.32575196, 0.1943295, -0.925268471, -0.586567461, 0.809073806, -0.0365824327, 0.741501391, 0.554649174, 0.377544701)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652146339, -0.616209328, -0.517121136, -0.508080542, 0.688795984, 0.23733896, 0.688071847, 0.685731232, -0.82234782, 0.518084228, -0.235229209)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, 0.999997675, -1.69575214e-05, -0.75066334, -0.0322726071, 0.659896314, 0.325063407, 0.85150969, 0.411418557, -0.575185537, 0.523344934, -0.628706455)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24331772, 0.254582733, -0.799677968, -0.912865639, 0.388474345, -0.125555813, 0.111955464, 0.533948302, 0.838072419, 0.392609864, 0.750990689, -0.530914903)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391181, -0.0332833529, 0.688289642, -0.129693225, 0.713748574, 0.26671955, 0.960217059, -0.0827275068, -0.674624383, 0.247311205, 0.695499182)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--128, 15.333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.14355278, -0.000289916992, 161.871155, -0.909944415, 0.304475576, -0.281595111, -0.413414836, -0.719954967, 0.5574525, -0.0330050588, 0.623666346, 0.7809937)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969296336, -0.934626043, 0.00798738003, 0.325656116, 0.196191728, -0.924909115, -0.59340781, 0.803985715, -0.0383946523, 0.736081004, 0.561351717, 0.378244579)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209447, -0.517121136, -0.492864192, 0.699764729, 0.237338975, 0.702933848, 0.67048806, -0.82234782, 0.512804985, -0.246526122)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 0.999997675, -1.69575214e-05, -0.75066328, -0.0226657689, 0.660296082, 0.325063407, 0.857406735, 0.398983061, -0.575185537, 0.514140069, -0.63625598)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.23403788, 0.257805645, -0.803786218, -0.910264492, 0.394530922, -0.125555515, 0.115500808, 0.533192575, 0.838072419, 0.397590667, 0.748365641, -0.530914903)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391181, -0.0332834125, 0.688289642, -0.120395079, 0.715375781, 0.26671958, 0.959059358, -0.0952147096, -0.674624443, 0.256340027, 0.692222357)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--129, 15.350000381469727
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.141975403, 0.00586700439, 161.901062, -0.909944415, 0.303015739, -0.283165395, -0.413414836, -0.717063427, 0.561166942, -0.0330050588, 0.627695501, 0.777759075)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969296038, -0.934626341, 0.0079882741, 0.325537175, 0.198156863, -0.924531996, -0.600577295, 0.798549712, -0.0403145924, 0.730296135, 0.568376839, 0.378966123)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517121136, -0.4765459, 0.710978031, 0.23733899, 0.718254983, 0.65404892, -0.82234782, 0.50696528, -0.258322001)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.69873238e-05, -0.75066328, -0.0125202537, 0.66056639, 0.325063467, 0.863434434, 0.385765314, -0.575185597, 0.50430584, -0.644078732)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22424257, 0.261207342, -0.808122635, -0.907475173, 0.400905043, -0.125555456, 0.119237483, 0.532369494, 0.838072419, 0.40282923, 0.745558858, -0.530914962)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832336, 0.688289583, -0.110558361, 0.716961861, 0.26671955, 0.957661152, -0.108377934, -0.674624443, 0.265823156, 0.688636243)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--130, 15.366666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.140312195, 0.0123672485, 161.932617, -0.909944475, 0.301468194, -0.284812272, -0.413414776, -0.713994861, 0.565066099, -0.033005029, 0.631924331, 0.77432704)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.9692958, -0.934626639, 0.00798940659, 0.32539174, 0.200227365, -0.924136996, -0.60807693, 0.792747855, -0.0423458964, 0.724128842, 0.575725436, 0.379707247)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538802, -0.0652147532, -0.616209328, -0.517121077, -0.459069937, 0.722385287, 0.23733896, 0.733987749, 0.636342764, -0.822347879, 0.500516474, -0.270605385)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 0.999997675, -1.68979168e-05, -0.75066328, -0.00182339549, 0.660682559, 0.325063437, 0.869567156, 0.371734828, -0.575185657, 0.493811369, -0.652159333)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.21391773, 0.264793098, -0.812693655, -0.904486775, 0.407602251, -0.125555396, 0.123169571, 0.531473517, 0.83807236, 0.408329487, 0.742560744, -0.530915022)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289523, -0.10016755, 0.718487263, 0.26671958, 0.955991864, -0.122230344, -0.674624443, 0.275764465, 0.684715867)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--131, 15.383333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.138561249, 0.019203186, 161.965805, -0.909944475, 0.299829602, -0.286536723, -0.413414747, -0.710741937, 0.569152117, -0.0330050439, 0.63635534, 0.770689666)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969295502, -0.934627175, 0.00799036026, 0.325216651, 0.202405691, -0.923723996, -0.615907073, 0.786561489, -0.0444923788, 0.717560172, 0.583397865, 0.380465984)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2553885, -0.0652150512, -0.616209626, -0.517121196, -0.440379858, 0.73392874, 0.237338975, 0.75007689, 0.617296576, -0.82234782, 0.493407011, -0.283361375)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 0.999997735, -1.69575214e-05, -0.750663221, 0.00943690538, 0.66061765, 0.325063407, 0.87577647, 0.356860757, -0.575185657, 0.482624859, -0.660480797)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.20304942, 0.268567383, -0.817504644, -0.901287794, 0.41462779, -0.125555128, 0.127301514, 0.530498922, 0.8380723, 0.414094985, 0.739360988, -0.530915022)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332833529, 0.688289523, -0.0892073065, 0.719930291, 0.26671955, 0.954018295, -0.136783913, -0.674624503, 0.2861664, 0.680434108)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--132, 15.399999618530273
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.136737823, 0.0264053345, 162.000748, -0.909944475, 0.298096418, -0.288339466, -0.413414806, -0.707297266, 0.57342732, -0.0330050588, 0.640990794, 0.766838729)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969295144, -0.934627414, 0.00799167156, 0.325008065, 0.204694211, -0.923293054, -0.624066651, 0.779970884, -0.0467578173, 0.710570574, 0.591393054, 0.381239623)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2553885, -0.0652146935, -0.616209507, -0.517121196, -0.420418829, 0.745542645, 0.23733899, 0.766457915, 0.596835494, -0.822347879, 0.48558256, -0.296569884)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, 0.999997675, -1.68979168e-05, -0.75066328, 0.0212714374, 0.660342515, 0.325063407, 0.882029474, 0.341112584, -0.575185537, 0.470713854, -0.669021666)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19162416, 0.272535235, -0.822562635, -0.897866011, 0.42198655, -0.125554919, 0.131636947, 0.529439747, 0.8380723, 0.420129031, 0.73594892, -0.530915022)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332834125, 0.688289583, -0.0776628554, 0.721266925, 0.26671955, 0.951704621, -0.152049378, -0.674624503, 0.297030002, 0.675762594)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--133, 15.416666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134813309, 0.0339355469, 162.037399, -0.909944475, 0.296264917, -0.290221065, -0.413414866, -0.70365262, 0.577893913, -0.0330050588, 0.645833015, 0.76276505)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969294786, -0.934627771, 0.00799268484, 0.324762136, 0.207095176, -0.922844052, -0.632553756, 0.772955656, -0.0491460264, 0.703139663, 0.599709213, 0.38202557)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652146935, -0.616209328, -0.517121136, -0.399130762, 0.757152855, 0.23733899, 0.783057094, 0.574884176, -0.822347879, 0.476986617, -0.310206115)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, 0.999997735, -1.70171261e-05, -0.75066328, 0.0336902142, 0.659825504, 0.325063407, 0.888290584, 0.324459195, -0.575185597, 0.458044648, -0.677758634)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1796279, 0.276701272, -0.827873409, -0.894208431, 0.429682732, -0.125554979, 0.136179507, 0.528289676, 0.8380723, 0.426434606, 0.732313275, -0.530915022)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391181, -0.0332832932, 0.688289642, -0.0655198991, 0.722471118, 0.26671955, 0.949012458, -0.168035895, -0.674624443, 0.308354527, 0.670670867)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--134, 15.433333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.132795334, 0.0418624878, 162.075851, -0.909944415, 0.294331312, -0.292181909, -0.413414836, -0.699799776, 0.582553387, -0.0330050737, 0.650883555, 0.758459806)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969294429, -0.934628189, 0.00799387693, 0.324474722, 0.20961079, -0.92237711, -0.641365051, 0.765494645, -0.0516608655, 0.695246041, 0.608343124, 0.382820696)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538838, -0.0652149916, -0.616209567, -0.517121196, -0.376460671, 0.768676162, 0.23733902, 0.799790442, 0.551366925, -0.82234782, 0.467560351, -0.32423982)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 0.999997675, -1.68681145e-05, -0.75066328, 0.0467017889, 0.659032345, 0.325063378, 0.894519091, 0.306870341, -0.575185597, 0.444583535, -0.686663628)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.16704667, 0.281071007, -0.833443522, -0.890301883, 0.437720239, -0.125554442, 0.140932977, 0.527041376, 0.838072479, 0.433013529, 0.72844255, -0.530915201)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198135, -1.05391192, -0.0332832932, 0.688289642, -0.0527648479, 0.723514557, 0.26671952, 0.945900559, -0.184750929, -0.674624443, 0.32013762, 0.66512692)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--135, 15.449999809265137
		tween1 = ts:Create(part1, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.130691528, 0.0501556396, 162.11615, -0.909944475, 0.292291701, -0.294222265, -0.413414866, -0.695730627, 0.587407231, -0.0330050737, 0.656143725, 0.753913939)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969294071, -0.934628487, 0.00799536705, 0.324141115, 0.21224305, -0.921892285, -0.650496125, 0.757565618, -0.0543062091, 0.686867833, 0.617290258, 0.383621424)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2553885, -0.0652147532, -0.616209686, -0.517121196, -0.352355242, 0.780020237, 0.23733902, 0.816562951, 0.526208401, -0.82234782, 0.457242727, -0.338634402)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.96046448e-08, 0.999997675, -1.68979168e-05, -0.75066328, 0.060313195, 0.657926321, 0.325063437, 0.900670528, 0.288316339, -0.575185537, 0.430296302, -0.695705891)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15386605, 0.285648316, -0.83927846, -0.886131465, 0.446102262, -0.125554472, 0.145900339, 0.525688052, 0.8380723, 0.439868391, 0.72432375, -0.530915201)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832932, 0.688289583, -0.0393850058, 0.724366069, 0.26671955, 0.942324698, -0.20220001, -0.674624383, 0.332374781, 0.659097016)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--136, 15.466666221618652
		tween1 = ts:Create(part1, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.12845993, 0.0588378906, 162.158264, -0.909944177, 0.29014197, -0.296342283, -0.413414538, -0.691435874, 0.592456579, -0.0330049992, 0.661614716, 0.749117076)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293654, -0.934628963, 0.00799679756, 0.323756844, 0.214993224, -0.921391726, -0.659941673, 0.749146283, -0.0570850596, 0.677984118, 0.626545668, 0.384424508)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517120957, -0.326763541, 0.791082144, 0.237339184, 0.833268046, 0.499333799, -0.822347343, 0.445970505, -0.353346586)}) tween2:Play() tablesorting(part2, tween2)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.68979168e-05, -0.75066328, 0.0745292157, 0.65646708, 0.325063616, 0.906695843, 0.26876694, -0.575184584, 0.415146291, -0.70484966)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14007258, 0.290438563, -0.845384717, -0.881682813, 0.454831451, -0.125554398, 0.151084736, 0.524221659, 0.8380723, 0.446999937, 0.719944477, -0.53091526)}) tween3:Play() tablesorting(part3, tween3)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666736602783203, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832932, 0.688288748, -0.0253706574, 0.724990964, 0.266719699, 0.938237309, -0.220388249, -0.67462188, 0.345058292, 0.652544618)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--137, 15.483333587646484
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.128700256, 2.67776871, 171.418121, -0.909944177, 0.389635116, 0.142076135, -0.413414538, -0.824909925, -0.385502309, -0.0330049992, -0.409521967, 0.911702991)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969293594, -0.934629023, 0.00799682736, 0.388375938, 0.0143079013, -0.921391726, -0.171666414, 0.983500719, -0.0570850596, 0.905372143, 0.18034187, 0.384424508)}) tween5:Play() tablesorting(part5, tween5)
		part2.C0 = CFrame.new(1.25538826, -0.0652147532, -0.616209388, -0.517120957, -0.326763541, 0.791082144, 0.237339184, 0.833268046, 0.499333799, -0.822347343, 0.445970505, -0.353346586)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.68681145e-05, -0.75066328, 0.226279333, 0.620726466, 0.325063616, 0.94443059, 0.0488248318, -0.575184584, 0.238425955, -0.782504082)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.14007258, 0.290438533, -0.845384777, -0.983985782, -0.12652421, -0.125554398, -0.173446417, 0.517253637, 0.8380723, -0.0410929322, 0.846428037, -0.53091526)}) tween3:Play() tablesorting(part3, tween3)
		part4.C0 = CFrame.new(1.03198147, -1.05391192, -0.0332832932, 0.688288748, -0.0253706574, 0.724990964, 0.266719699, 0.938237309, -0.220388249, -0.67462188, 0.345058292, 0.652544618)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--138, 15.550000190734863
		part1.C0 = CFrame.new(-0.128700256, 2.67776871, 171.418121, -0.909944177, 0.389635116, 0.142076135, -0.413414538, -0.824909925, -0.385502309, -0.0330049992, -0.409521967, 0.911702991)
		part5.C0 = CFrame.new(-0.969293594, -0.934629023, 0.00799682736, 0.388375938, 0.0143079013, -0.921391726, -0.171666414, 0.983500719, -0.0570850596, 0.905372143, 0.18034187, 0.384424508)
		part6.C0 = CFrame.new(2.98023224e-08, 0.999997675, -1.68681145e-05, -0.75066328, 0.226279333, 0.620726466, 0.325063616, 0.94443059, 0.0488248318, -0.575184584, 0.238425955, -0.782504082)
		part3.C0 = CFrame.new(-1.14007258, 0.290438533, -0.845384777, -0.983985782, -0.12652421, -0.125554398, -0.173446417, 0.517253637, 0.8380723, -0.0410929322, 0.846428037, -0.53091526)

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
