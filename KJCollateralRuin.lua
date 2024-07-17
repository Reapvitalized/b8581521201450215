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
		tween1 = ts:Create(part1, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.91264868e-05, -0.333538353, 0.063705951, -0.622389853, -0.747459412, 0.232239887, 0.0657132119, 0.245765626, 0.96709919, -0.779944062, 0.617174029, -0.103844076)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, 1.00000024, 0, -0.936708927, 0.25872311, -0.235878661, -0.14736186, 0.319791466, 0.935958326, 0.317586035, 0.91148001, -0.261425585)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.741773009, -0.468284547, -0.603019238, -0.293278366, 0.186245203, -0.937710583, -0.431947112, 0.849205554, 0.303762436, 0.852883101, 0.494128138, -0.168605596)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.960901976, 0.124313176, -0.944803417, -0.917665958, -0.38191542, 0.109679028, 0.168972939, -0.125250489, 0.977630138, -0.359634161, 0.915670633, 0.179471403)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.37018692, -0.903706789, 0.14835611, 0.612002969, -0.281008452, 0.739247382, 0.0576332286, 0.948105633, 0.312688351, -0.788752735, -0.148760974, 0.596439004)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.996722579, 0.0105424225, -0.741013527, -0.716243267, 0.627700984, -0.304936826, -0.31227541, 0.102487624, 0.94444716, 0.624083221, 0.771678209, 0.122609317)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166667014360428)

		if afterframe() then
			return
		end

		--2, 0.06666667014360428
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.8995018e-05, -0.651640058, -0.416961163, -0.82059592, -0.492507517, 0.289928824, 0.0735106319, 0.412130892, 0.908154309, -0.566761494, 0.766540468, -0.301988363)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.710812926, -0.197104752, -0.730371535, -0.375095874, -0.093434386, -0.922265232, -0.514069617, 0.848872125, 0.123079069, 0.771385491, 0.520274937, -0.366440266)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0833333358168602, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.47907269, -0.975703716, 0.229138017, 0.756082594, -0.158501029, 0.634993315, -0.156267211, 0.898449183, 0.410328716, -0.635546803, -0.409471035, 0.654533267)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.0683333358168602)

		if afterframe() then
			return
		end

		--3, 0.15000000596046448
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.19616699e-05, -0.807973623, -0.296204478, -0.835689843, -0.445239574, 0.321534187, 0.101252191, 0.450516731, 0.887007713, -0.539787412, 0.773819327, -0.331410795)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.784282744, 0.00243020058, -0.769918978, -0.405608714, -0.173434436, -0.897441924, -0.608524323, 0.783858955, 0.123545215, 0.682040989, 0.596226156, -0.42347905)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.46691191, -0.80350852, 0.136897787, 0.810638964, -0.116937272, 0.573750973, -0.147520572, 0.907463431, 0.393380046, -0.566658795, -0.403529286, 0.718374491)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--4, 0.21666666865348816
		--5, 0.21666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(5.39422035e-05, -0.806161225, -0.247822374, -0.814582586, -0.474214286, 0.334029794, 0.0941583663, 0.460124463, 0.882847488, -0.572354198, 0.750603974, -0.330158114)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.15000000596046448, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 1, 0, -0.784413278, 0.468492866, -0.406460583, -0.260958612, 0.345214486, 0.901514053, 0.562668979, 0.813229024, -0.148533568)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.843203068, -0.0160241127, -0.806928635, -0.365884066, -0.157146662, -0.917297006, -0.608406067, 0.786245704, 0.107980512, 0.704252005, 0.59759742, -0.383283734)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000000596046448, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.595975757, 0.0888452828, -0.632564962, -0.286699682, 0.897654057, 0.3346937, 0.563742518, -0.124393702, 0.816529632, 0.774594903, 0.422779232, -0.470382154)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.45435786, -0.784879863, 0.11408554, 0.791930616, -0.122733429, 0.59814924, -0.119890876, 0.929268956, 0.349407226, -0.598725617, -0.348418891, 0.721201897)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.15000000596046448, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.41572547, -0.180909157, -0.639577389, -0.679930687, 0.666863382, -0.304936528, -0.306039423, 0.11983154, 0.944447041, 0.666359007, 0.735480726, 0.122609332)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--6, 0.2666666805744171
		tween1 = ts:Create(part1, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.00472906232, -0.752110243, -0.153708458, -0.66193372, -0.651769996, 0.370188773, 0.019974418, 0.478359938, 0.877936721, -0.749296248, 0.588530242, -0.303623855)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.849382401, -0.0532732606, -0.767071009, -0.37300545, 0.0348319411, -0.927175105, -0.552310228, 0.7946226, 0.252048403, 0.745533526, 0.606103718, -0.277160555)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.39254618, -0.690123141, 0.0493959785, 0.709686816, -0.296385646, 0.639140248, 0.184822321, 0.953752875, 0.23705709, -0.679842234, -0.0501088798, 0.731644511)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499998211860657)

		if afterframe() then
			return
		end

		--7, 0.3166666626930237
		tween1 = ts:Create(part1, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0119179487, -0.67284584, -0.0609209538, -0.531177282, -0.742258787, 0.40853706, -0.00544393063, 0.485165775, 0.874405205, -0.84724313, 0.46224007, -0.261749804)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.8765499, -0.0816494823, -0.702372015, -0.330946982, 0.143462986, -0.93268019, -0.57974267, 0.748941362, 0.320913166, 0.744561911, 0.646919727, -0.1646882)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.36757112, -0.744213939, -0.0154972076, 0.683396161, -0.296202838, 0.667258322, 0.30321908, 0.946591377, 0.109649137, -0.664099336, 0.127391651, 0.736711323)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--8, 0.36666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0298255682, -0.500788569, 0.110675082, -0.20904845, -0.857550323, 0.470006883, -0.0523071736, 0.489743769, 0.870296001, -0.976505458, 0.157349288, -0.147236243)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-07, 1, -1.78813934e-07, -0.743806303, 0.401765943, -0.534168899, -0.431900024, 0.321025521, 0.842855275, 0.510112345, 0.857628584, -0.0652581155)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.923261642, -0.33407104, -0.625976443, -0.164976507, 0.402273685, -0.900532424, -0.499011248, 0.753516674, 0.428019077, 0.850747049, 0.519988894, 0.0764265209)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.893150091, 0.0261223912, 0.000546097755, -0.602388024, -0.433696806, 0.670101225, 0.544139862, 0.391085207, 0.742269576, -0.58398664, 0.811763167, 0.000406682491)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.26563716, -0.725129187, -0.158547401, 0.647141159, -0.251260698, 0.7197752, 0.471421599, 0.873870134, -0.118796974, -0.599141061, 0.416195989, 0.683967113)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.54087919, 0.110736907, -1.21652126, -0.987457633, -0.124357074, -0.09727633, -0.101967424, 0.031916894, 0.99427557, -0.12054041, 0.991724014, -0.0441969335)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499998211860657)

		if afterframe() then
			return
		end

		--9, 0.4166666567325592
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0657278895, -0.474342376, 0.337634504, 0.270185828, -0.835419655, 0.478616387, -0.0458877981, 0.485366285, 0.873105884, -0.961714029, -0.257863522, 0.0928035378)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.933600307, -0.559770048, -0.289518833, 0.145802975, 0.55591464, -0.818352222, -0.465934128, 0.768294096, 0.438895822, 0.872723818, 0.317305952, 0.371039152)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09189987, -0.731667042, -0.389899373, 0.659997523, -0.185140863, 0.728097558, 0.589999199, 0.727708101, -0.349773943, -0.465085059, 0.660426974, 0.589518547)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--10, 0.4833333194255829
		tween1 = ts:Create(part1, TweenInfo.new(0.06666669249534607, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0896562636, -0.445729494, 0.554571271, 0.657277167, -0.612818003, 0.438680708, -0.0513884574, 0.544278562, 0.837329149, -0.751894832, -0.572900474, 0.326250106)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666669249534607, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.962986946, -0.740746796, -0.0691513419, 0.363129795, 0.605800271, -0.707914352, -0.426370859, 0.783601165, 0.451859504, 0.828459144, 0.137750432, 0.542844534)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666669249534607, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.975342989, -0.751427352, -0.552651703, 0.711277664, 0.0525295734, 0.700945675, 0.507635951, 0.651371777, -0.563933074, -0.48619929, 0.756938279, 0.436640263)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166669249534607)

		if afterframe() then
			return
		end

		--11, 0.550000011920929
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.089645952, -0.426511079, 0.669425189, 0.797298312, -0.413949043, 0.439273596, -0.0903079063, 0.637770116, 0.764914334, -0.596791148, -0.649534881, 0.471110195)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.34110451e-07, 0.999999583, -5.96046448e-08, -0.790534794, 0.3591111, -0.496078581, -0.404619545, 0.301788807, 0.863253415, 0.45971486, 0.883154988, -0.0932711884)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0023526, -0.794166207, -0.0760426223, 0.387907386, 0.590241134, -0.707914293, -0.393552065, 0.80058831, 0.451860011, 0.83345145, 0.103322528, 0.542844176)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05466211, 0.114379972, 0.257444412, -0.0574797094, -0.966183782, 0.251369029, 0.429412901, 0.203377113, 0.879910648, -0.901277959, 0.158518046, 0.403201252)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.935366511, -0.841266394, -0.681960404, 0.731869996, 0.284230739, 0.619336665, 0.461694002, 0.461645961, -0.757445872, -0.501202166, 0.840295315, 0.206635624)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.177170992, 0.31158796, -1.2240355, -0.697012424, -0.715750098, -0.0433009863, 0.136096835, -0.191340834, 0.972042739, -0.704024911, 0.671633124, 0.230778649)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--12, 0.6166666746139526
		--13, 0.6666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0896271467, -0.471562803, 0.454101622, 0.845275939, -0.365932882, 0.389361054, -0.128152519, 0.568583906, 0.812581897, -0.518734872, -0.736753523, 0.433715016)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1920929e-07, 1.00000024, -1.2665987e-07, -0.680493176, 0.625567079, -0.381568968, -0.374070823, 0.151191279, 0.914993048, 0.630079389, 0.765380323, 0.13112174)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.993036628, -0.735170066, -0.0347642004, 0.467786729, 0.489747196, -0.735746682, -0.275887251, 0.871759713, 0.404874861, 0.83967793, 0.0135894716, 0.542912066)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.931322038, -0.8253268, -0.733574986, 0.714935124, 0.302709013, 0.630265415, 0.436835051, 0.510454655, -0.740684807, -0.545932353, 0.804862976, 0.232706517)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.816748142, 0.38545832, -1.21863842, -0.434911668, -0.887685299, -0.151226655, 0.0962065756, -0.212785959, 0.972351372, -0.895320654, 0.40833801, 0.177943215)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166667461395264)

		if afterframe() then
			return
		end

		--14, 0.7833333611488342
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0896401256, -0.50798744, 0.165259823, 0.763551533, -0.524252117, 0.377027154, -0.180620551, 0.387168527, 0.904144228, -0.619972527, -0.758459568, 0.200932309)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.899875402, -0.583639026, -0.0362501889, 0.613803208, 0.573039234, -0.543020904, -0.316398561, 0.808743834, 0.495810181, 0.723280847, -0.132517174, 0.677717566)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02672935, 0.243959606, 0.109833926, -0.0441941917, -0.973779917, 0.22316429, 0.591042876, 0.154609501, 0.791684449, -0.805430055, 0.166887283, 0.568712175)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.93448323, -0.713586688, -0.677434921, 0.455566347, 0.110536203, 0.883312643, 0.559944808, 0.735801816, -0.380867481, -0.692040801, 0.668116689, 0.273311377)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17848253, 0.157165408, -0.814357042, 0.254229814, -0.960047722, 0.116955206, -0.312812924, 0.0328041464, 0.949248254, -0.915159762, -0.277912408, -0.291975975)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833332538604736)

		if afterframe() then
			return
		end

		--15, 0.9166666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0896226838, -0.530615926, -0.0833211914, 0.553856552, -0.783145845, 0.28271085, -0.248147979, 0.168854058, 0.953892589, -0.794773877, -0.598473787, -0.100815117)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63912773e-07, 0.999999404, -2.5331974e-07, -0.462629646, 0.857437432, -0.225332737, -0.409266204, 0.0189100206, 0.912218988, 0.786431789, 0.514240623, 0.342171818)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.956792593, -0.323332429, 0.063283965, 0.720443547, 0.543735504, -0.430479884, -0.293226749, 0.801337004, 0.521421373, 0.628471851, -0.249424845, 0.736754417)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.30000001192092896, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.963854074, 0.535428643, -0.222325504, 0.699176311, -0.687884986, -0.194863543, 0.645093203, 0.489470124, 0.586749732, -0.308237433, -0.535946608, 0.785974562)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.742208362, -0.997677624, -0.474502087, 0.539713442, -0.17173025, 0.824146152, 0.516410232, 0.840685129, -0.163008079, -0.664852023, 0.513575673, 0.542411149)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20503449, 0.117200702, -0.691649497, 0.58427918, -0.602143228, 0.544097424, -0.629684389, 0.086586237, 0.772010863, -0.511972666, -0.793679178, -0.328569472)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499996423721314)

		if afterframe() then
			return
		end

		--16, 1.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0772527009, -0.5774073, -0.210582301, 0.329138458, -0.914059937, 0.236986667, -0.273922831, 0.147756159, 0.950333893, -0.903678358, -0.377707481, -0.201749653)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.36441803e-07, 1.00000155, 1.93715096e-07, -0.780267775, 0.559992731, -0.278550923, -0.331518352, 0.00735267997, 0.943420291, 0.530356526, 0.828465223, 0.179910749)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.93729794, -0.287807941, 0.0660219938, 0.710253179, 0.516134202, -0.478691846, -0.364249051, 0.8513605, 0.377502233, 0.60238117, -0.0937590748, 0.792682946)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.799389005, -0.988657176, -0.352513433, 0.568089724, -0.240147799, 0.787148714, 0.438916802, 0.897500396, -0.0429542288, -0.696150899, 0.369894624, 0.615265608)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.20000004768371582, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24639177, 0.0550847352, -0.500812709, 0.446852177, -0.684339166, 0.57619822, -0.765576422, 0.0406997204, 0.642056644, -0.462835401, -0.728027821, -0.505728126)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--17, 1.0666667222976685
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0681284666, -0.55039233, -0.500442326, -0.423656762, -0.884794295, 0.194046289, -0.353195459, 0.358621448, 0.864085376, -0.834127009, 0.297539353, -0.464437753)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.969186187, -0.425239086, -0.0752190351, 0.635920763, 0.348784268, -0.688443542, -0.539511085, 0.838772595, -0.0734054595, 0.551844835, 0.418103009, 0.721565843)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.985871911, -1.00872517, -0.106221795, 0.657042921, -0.141474783, 0.740458965, 0.117759719, 0.98943603, 0.084551692, -0.744598746, 0.0316421539, 0.666761935)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--18, 1.1166666746139526
		--19, 1.1666666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0713732541, -0.476586163, -0.663044095, -0.81985718, -0.559687257, 0.120766103, -0.275741041, 0.570799768, 0.773404539, -0.501797915, 0.600781083, -0.622303069)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0205611, -0.598209739, -0.219182014, 0.585242271, 0.159688056, -0.794979155, -0.643286109, 0.688296378, -0.335309863, 0.493633598, 0.707636833, 0.505543768)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11517167, -1.03780437, 0.0180600733, 0.671611965, 0.0256451666, 0.74045825, -0.130937338, 0.987779856, 0.0845520943, -0.729240358, -0.153737903, 0.666761696)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--20, 1.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.104230255, -0.349185944, -0.814982057, -0.921556115, 0.102275141, -0.374531448, -0.256865978, 0.562748969, 0.785706043, 0.291125357, 0.820276678, -0.49233368)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.33333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.84984708e-07, 1.00000095, 2.30967999e-07, -0.865306497, -0.500527322, -0.0267804116, 0.0492328405, -0.138039738, 0.98920238, -0.498819739, 0.854644775, 0.144089058)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.724836588, -0.718433678, -0.186351538, 0.135164738, 0.350300044, -0.92683363, -0.725329041, 0.672240615, 0.148298174, 0.675001025, 0.652215421, 0.344946295)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22803903, 0.320424229, -0.84175694, -0.53038764, -0.803495944, 0.270345271, 0.511248112, -0.048774451, 0.858049512, -0.676253796, 0.593313336, 0.436655104)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.42221177, -0.608761311, -0.627665877, 0.179249138, 0.340219229, 0.923103034, -0.674651921, 0.725432992, -0.136361256, -0.716042042, -0.598328352, 0.35956198)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.19999992847442627, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.313765764, 0.764759958, -1.33827174, -0.58577919, -0.748979747, -0.309670627, -0.356185675, -0.105305292, 0.928465962, -0.728009999, 0.654171586, -0.205087841)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--21, 1.25
		--22, 1.2666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.10420958, -0.396033466, -0.81485939, 0.426883578, 0.681257904, -0.594691396, 0.192434609, 0.574125528, 0.795832455, 0.883594692, -0.454166919, 0.113987237)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.724836409, -0.718434036, -0.186351061, 0.135164738, 0.196430445, -0.971156955, -0.725329041, 0.687349975, 0.0380765051, 0.675001025, 0.6992625, 0.235382318)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.970766127, 0.516189396, -1.07284689, -0.887268245, -0.373727649, 0.270345181, 0.39810425, -0.324448138, 0.85804987, -0.232963473, 0.868946314, 0.436655432)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11463106, -0.952674747, 0.0554342046, 0.325584233, 0.204632029, 0.923103571, -0.220417678, 0.965828776, -0.13636145, -0.919461966, -0.159067929, 0.359562069)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--23, 1.3333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.104083538, -0.38778013, -0.814840674, 0.647488058, -0.581439674, 0.492632985, -0.18504855, 0.507131517, 0.84176904, -0.739267528, -0.636196136, 0.220766693)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--24, 1.4166666269302368
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.104119435, -1.05539131, -0.187667578, -0.978953302, -0.0581706166, 0.195619211, 0.0648318529, 0.820227981, 0.568351328, -0.193513498, 0.569071412, -0.799193561)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.809873581, -0.475048602, -0.657923222, 0.10012345, 0.23599565, -0.966582239, -0.973203242, 0.225340873, -0.0457912311, 0.20700404, 0.94526577, 0.252233684)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.720377743, 0.558476686, -1.39297366, -0.566459298, 0.778486133, 0.270345181, -0.224969983, -0.461673319, 0.85804987, 0.792791784, 0.42523092, 0.436655343)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.35198557, -0.634309411, -0.149276078, 0.433128536, -0.289311945, 0.853638291, 0.641614616, 0.764132798, -0.0665725321, -0.633032739, 0.576541245, 0.51659447)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.40783095, 0.105603933, -0.13041541, -0.189083934, 0.931855202, -0.309668005, 0.151252538, 0.339232564, 0.928464532, 0.970242739, 0.128718436, -0.205087304)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--25, 1.5
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0262457132, -0.701864481, -0.146322668, -0.883400679, 0.323644042, -0.338906646, 0.215779752, 0.922903836, 0.318884969, 0.415983409, 0.208574101, -0.88512975)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.24723649, 0.0429006815, 0.660863638, 0.613190114, 0.789919853, 0.00514382124, 0.0639750808, -0.0561510324, 0.996373773, 0.787342608, -0.610633731, -0.0849651545)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--26, 1.5333333015441895
		--27, 1.5499999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.0910723805, -0.552260458, -0.0146587808, -0.576259494, 0.720617533, -0.385532439, 0.650322199, 0.690026402, 0.317718118, 0.494980752, -0.0676322132, -0.86626786)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.42726707e-07, 1, -4.61935997e-07, -0.644192338, -0.629749715, 0.434087068, 0.00650728494, 0.563002348, 0.826429725, -0.764836133, 0.53520447, -0.358583838)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.764270067, -0.578919113, -0.905729651, 0.215844229, -0.354171693, -0.909930348, -0.965482712, 0.0617260188, -0.253047764, 0.145788461, 0.93314141, -0.328623176)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.934969306, 0.443257689, -1.43621409, -0.453381419, 0.849330366, 0.27034542, -0.28664279, -0.426133454, 0.858050287, 0.843972504, 0.311531603, 0.436655641)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333420753479004, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.67797804, -0.378621161, 0.061011374, 0.543593645, -0.390270829, 0.743097425, 0.497679234, 0.862777114, 0.0890624523, -0.675887346, 0.321412057, 0.663228929)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.933846474, 0.17802459, 0.988827169, 0.828359008, 0.560176432, 0.00484213233, 0.125931203, -0.194627702, 0.972759962, 0.545859933, -0.805185318, -0.231765658)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333420753479004)

		if afterframe() then
			return
		end

		--28, 1.5833333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.121730581, -0.648346066, 0.0496422574, -0.408883333, 0.846675992, -0.34052071, 0.780853629, 0.517712474, 0.349630564, 0.472315669, -0.122938693, -0.872814)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.668006897, -0.559297264, -1.00706446, 0.172464222, -0.586779356, -0.791167736, -0.962129712, 0.0717838556, -0.26297152, 0.211099312, 0.806559086, -0.552177668)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.55159914, -0.196653783, 0.0530851483, 0.815653861, -0.438914001, 0.376912951, 0.346406013, 0.892310143, 0.289458126, -0.463370532, -0.105532691, 0.879858613)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--29, 1.600000023841858
		tween6 = ts:Create(part6, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.5331974e-07, 1, -2.5331974e-07, -0.713872254, -0.654879332, 0.248031482, 0.00636505894, 0.34810847, 0.937432706, -0.700247347, 0.670786023, -0.244336605)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.932236075, 0.167574584, 0.769061029, 0.680550694, 0.730544508, 0.0561721325, 0.0272549689, -0.101852089, 0.994426012, 0.732193828, -0.67522645, -0.0892265812)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--30, 1.6333333253860474
		--31, 1.6333333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.142204314, -0.746010661, 0.0635621399, -0.596487463, 0.736302018, -0.319471419, 0.629455924, 0.676100075, 0.382980376, 0.497983873, 0.0273498371, -0.866754889)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.753293395, -0.462264419, -0.901490986, 0.149547145, -0.336001396, -0.929913282, -0.974395037, 0.109621286, -0.196309611, 0.167898625, 0.935460448, -0.311004519)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17334664, 0.353657663, -1.17065048, -0.66749835, 0.693800807, 0.270344734, -0.159790277, -0.488077402, 0.858048677, 0.727264166, 0.529547513, 0.436653495)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.5358603, -0.223282933, 0.0323845148, 0.845098376, -0.291828066, 0.447934538, 0.286105067, 0.954667509, 0.0821814537, -0.451611459, 0.0587049536, 0.890281439)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.599722326, -0.0293489695, 0.814993024, 0.271011263, 0.961504579, 0.0454065502, -0.0348102376, -0.0373511314, 0.998695731, 0.961946368, -0.272238612, 0.0233475957)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--32, 1.6833332777023315
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.44075191, -0.100280523, 0.895689607, -0.234155118, 0.971682072, 0.0317071676, -0.0512183011, -0.0448986888, 0.997677445, 0.970848858, 0.231987208, 0.0602811873)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--33, 1.7000000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.142282039, -0.928181767, 0.0056655407, -0.745406091, 0.583273768, -0.322740614, 0.477027982, 0.804912686, 0.352930367, 0.465632975, 0.109120131, -0.878224671)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.93715096e-07, 1.00000095, -9.68575478e-08, -0.802777946, -0.562691212, 0.197297856, 0.0746410415, 0.233449802, 0.969499946, -0.591588378, 0.793019712, -0.145408437)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.890928924, -0.330839932, -0.683144152, 0.115113668, -0.0194430463, -0.993161976, -0.988548279, 0.0959698334, -0.116457678, 0.0975779146, 0.995194435, -0.00817292091)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.51922119, -0.269939065, 0.0177306533, 0.850296259, -0.228371918, 0.474175751, 0.296217382, 0.952364683, -0.0725029856, -0.43503058, 0.20210813, 0.877439916)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--34, 1.7666666507720947
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.773736596, 0.0628558695, 0.831787646, -0.574927032, 0.818038821, 0.0164706707, -0.0579196215, -0.0607689321, 0.996470332, 0.816152453, 0.571943283, 0.0823183209)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--35, 1.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.146478772, -1.02596688, -0.0362360105, -0.774457216, 0.5368402, -0.334691674, 0.432728559, 0.835458994, 0.338754058, 0.461478025, 0.117519885, -0.879333436)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01574922, -0.209586382, -0.558532357, 0.0810185224, 0.0176042318, -0.996557117, -0.99167639, 0.101807289, -0.0788232908, 0.100069106, 0.994648457, 0.0257059913)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.50225735, -0.261949778, -0.0482324958, 0.863692284, -0.164967209, 0.476257503, 0.237716019, 0.966549635, -0.0963002145, -0.444440365, 0.196387932, 0.874016523)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--36, 1.8666666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.151809692, -0.984908104, -0.0681710169, -0.760285199, 0.53913784, -0.362348974, 0.432814538, 0.836393297, 0.336329937, 0.484394431, 0.0988767892, -0.869244158)}) tween1:Play() tablesorting(part1, tween1)
		part6.C0 = CFrame.new(-1.93715096e-07, 1.00000095, -9.68575478e-08, -0.802777946, -0.562691212, 0.197297856, 0.0746410415, 0.233449802, 0.969499946, -0.591588378, 0.793019712, -0.145408437)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02439225, -0.181233644, -0.549274266, 0.0613745078, 0.00658625364, -0.998093069, -0.985530555, 0.15869087, -0.0595548451, 0.157996058, 0.987306416, 0.0162305292)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.2666667699813843, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25814652, 0.309377819, -0.960366249, -0.781272888, 0.562606394, 0.270344943, -0.0695138872, -0.50884223, 0.858048856, 0.620306671, 0.651578009, 0.436653614)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.535272, -0.364071608, -0.0618160963, 0.869459987, -0.103645287, 0.483008206, 0.196810409, 0.969473124, -0.146244824, -0.453105867, 0.222215071, 0.863316536)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.86986351, 0.117514074, 0.855305016, -0.511488557, 0.859284282, 0.00319933891, -0.0820580274, -0.0525505319, 0.995241284, 0.855363011, 0.508791983, 0.0973900855)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833337306976318)

		if afterframe() then
			return
		end

		--37, 1.9500000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.158203572, -0.941557944, -0.102454558, -0.732691348, 0.553600848, -0.395840317, 0.444907933, 0.829769611, 0.336956203, 0.514995515, 0.0707724094, -0.854266405)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03513098, -0.14933753, -0.558916926, 0.0370845571, -0.0162883811, -0.999179363, -0.981320202, 0.188284636, -0.0394910872, 0.188773394, 0.98197943, -0.00900166295)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.55695915, -0.472860575, -0.0434336662, 0.872193396, -0.0558988824, 0.485956788, 0.166791707, 0.967899084, -0.188021123, -0.459846944, 0.245044351, 0.853518665)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.891256332, 0.132809103, 0.901941419, -0.425399601, 0.904996097, -0.00420074351, -0.0985043794, -0.0416875407, 0.994263232, 0.899628878, 0.423372924, 0.106879845)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--38, 2.049999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.163531423, -0.910363078, -0.127657086, -0.700143635, 0.574694872, -0.423703671, 0.464479744, 0.817291498, 0.341017842, 0.542270601, 0.041959729, -0.839155614)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.04438663, -0.12452805, -0.584251523, 0.0168957263, -0.0444142781, -0.998870254, -0.983119667, 0.181289956, -0.0246902704, 0.182181746, 0.982426286, -0.0406015292)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.56008816, -0.552091002, 0.000786960125, 0.872926354, -0.0380217433, 0.48636803, 0.157725662, 0.965413988, -0.207613245, -0.46165067, 0.257945865, 0.848729491)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.830776989, 0.103658289, 0.956185281, -0.345462143, 0.938424289, -0.00420188904, -0.101742692, -0.0330012217, 0.994267404, 0.93290323, 0.343909144, 0.106879599)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--39, 2.133333444595337
		part1.C0 = CFrame.new(0.163531423, -0.910363078, -0.127657086, -0.700143635, 0.574694872, -0.423703671, 0.464479744, 0.817291498, 0.341017842, 0.542270601, 0.041959729, -0.839155614)
		part5.C0 = CFrame.new(-1.04438663, -0.12452805, -0.584251523, 0.0168957263, -0.0444142781, -0.998870254, -0.983119667, 0.181289956, -0.0246902704, 0.182181746, 0.982426286, -0.0406015292)
		part2.C0 = CFrame.new(1.25814652, 0.309377819, -0.960366249, -0.781272888, 0.562606394, 0.270344943, -0.0695138872, -0.50884223, 0.858048856, 0.620306671, 0.651578009, 0.436653614)
		part4.C0 = CFrame.new(1.56008816, -0.552091002, 0.000786960125, 0.872926354, -0.0380217433, 0.48636803, 0.157725662, 0.965413988, -0.207613245, -0.46165067, 0.257945865, 0.848729491)
		part3.C0 = CFrame.new(-0.830776989, 0.103658289, 0.956185281, -0.345462143, 0.938424289, -0.00420188904, -0.101742692, -0.0330012217, 0.994267404, 0.93290323, 0.343909144, 0.106879599)

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
