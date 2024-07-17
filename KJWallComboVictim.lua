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
	local animvalue = anims:FindFirstChild("victim")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "victim"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-8.23289156e-07, -3.20374966e-07, 0.952303648, -0.985786557, -0.168002993, 0, 0.0283314697, -0.166239828, 0.985678911, -0.165596887, 0.971668363, 0.168636829)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0, 0.999999881, 2.98023224e-08, -0.994817734, 0.0973905474, -0.0292144027, 0.0158657506, 0.432488859, 0.901499808, 0.10043247, 0.896364272, -0.431792438)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.978212655, -0.968961477, 0.0770328939, 0.253752977, -0.0133323595, -0.967176914, 0.361496747, 0.928756893, 0.0820411295, 0.89717859, -0.370449573, 0.240494341)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.99999994, 0.5, 8.94069672e-08, -0.247204155, -0.478757739, 0.842425704, 0.328873634, 0.776344597, 0.537709117, -0.911445081, 0.409975469, -0.0344648361)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12018168, -0.988598228, -0.394251287, -0.0877358466, 0.0231399126, 0.995875299, 0.0605682135, 0.998004019, -0.017853355, -0.994300663, 0.0587519482, -0.0889622867)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.943353951, 0.301198006, 0.332401365, -0.190650657, 0.570004523, -0.799216509, -0.078893289, 0.802619755, 0.591250956, 0.978482664, 0.175775319, -0.108050473)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833334028720856)

		if afterframe() then
			return
		end

		--2, 0.13333334028720856
		tween1 = ts:Create(part1, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118113078, 0.403001428, 2.03548813, -0.999998868, -0.000970318913, -0.00119391526, -0.00120071939, 0.00704542547, 0.999975085, -0.000961886719, 0.999974668, -0.00704659522)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.77744436e-06, 1.00000072, -1.04308128e-06, -0.994781017, 0.102034017, -0.000697927549, 0.0629945397, 0.619517565, 0.782451391, 0.0802690014, 0.778323293, -0.622711658)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06664729, -0.846344113, -0.238252252, 0.252907068, 0.164812148, -0.953349173, -0.350684285, 0.933990061, 0.0684349015, 0.901697397, 0.317017108, 0.294009566)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00000155, 0.499998689, 3.75509262e-06, -0.547163367, -0.0928049833, 0.831864774, 0.6782372, 0.533252239, 0.505605221, -0.490516424, 0.840849996, -0.228832424)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20094609, -0.967094839, 0.0796362162, 0.235653028, -0.315883696, 0.919067502, 0.530919909, 0.833950877, 0.150498927, -0.813997388, 0.452485621, 0.364231974)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.01666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.944002092, 0.30591926, -0.337839186, -0.191863418, 0.570052028, -0.798892438, -0.781693399, 0.403432339, 0.475602865, 0.593417048, 0.715740025, 0.368201733)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--3, 0.15000000596046448
		tween1 = ts:Create(part1, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118121199, 0.491922319, 2.06975079, -0.999998748, -0.000848101452, -0.00128361862, -0.0012007202, -0.0914055705, 0.995813787, -0.000961884856, 0.99581337, 0.0914045051)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.78023833e-06, 1.00000072, -1.23679638e-06, -0.994781077, 0.0837438926, 0.058295697, 0.0629945472, 0.0546067953, 0.996519029, 0.0802690014, 0.99499011, -0.059597373)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06664717, -0.846344233, -0.238252535, 0.294268101, 0.332132727, -0.896155119, -0.00650246767, 0.938346803, 0.34563452, 0.955700696, -0.0958818346, 0.278285086)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.4378469, 0.644314408, -0.516195416, 0.158418357, -0.98015064, 0.119193859, 0.96659708, 0.129317373, -0.221288621, 0.201481968, 0.150268555, 0.967896342)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06777143, -0.539415658, -0.193192989, 0.247088462, -0.36456266, 0.897797942, 0.254164815, 0.918470383, 0.303007007, -0.935065389, 0.153318718, 0.319602072)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.50867701, 0.557392478, -0.496233732, -0.0193733573, 0.978239119, -0.206573769, -0.999138653, -0.0265295841, -0.0319287032, -0.0367143005, 0.205777332, 0.977909446)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.01833333134651184)

		if afterframe() then
			return
		end

		--4, 0.18333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118420593, 0.738899052, 1.9854579, -0.999998748, -0.00101480819, -0.00115633372, -0.00120072195, 0.0448869094, 0.998992145, -0.000961884856, 0.998991668, -0.0448881015)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.78815457e-06, 1.00000107, -1.34110451e-06, -0.994781017, 0.090711236, 0.0467215255, 0.0629945397, 0.185776234, 0.980570912, 0.080268994, 0.978396058, -0.190521061)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06664729, -0.84634459, -0.23825261, 0.266417325, 0.450611055, -0.852039516, -0.116096154, 0.892555475, 0.435737073, 0.956840277, -0.0171692073, 0.290106297)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.43784654, 0.644315064, -0.516195655, -0.137207821, -0.990528643, 0.00506677851, 0.99002552, -0.137299776, -0.0316192359, 0.0320151895, 0.000677982345, 0.999486685)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06777143, -0.539415896, -0.193193272, 0.296516031, -0.397807837, 0.868232071, 0.0394904204, 0.913447022, 0.405038089, -0.954210877, -0.0858135521, 0.286560893)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.50867748, 0.557392836, -0.496233881, -0.238173366, 0.968997717, -0.0657008588, -0.96993053, -0.240800828, -0.0353695303, -0.0500938892, 0.0553012639, 0.997211933)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--5, 0.25
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118408903, 0.746189952, 1.78571415, -0.999998868, -0.00083222799, -0.00129396701, -0.00120072369, -0.103664957, 0.994612157, -0.000961884856, 0.994611919, 0.103663921)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.78955156e-06, 1.00000072, -1.01327896e-06, -0.994781077, 0.090197444, 0.047705818, 0.0629945323, 0.175095499, 0.982534289, 0.0802690014, 0.98041147, -0.179863304)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.98463726, -0.849161267, 0.0163409114, 0.390985787, 0.181814253, -0.902260244, 0.310623527, 0.896714866, 0.315302402, 0.866396725, -0.403542042, 0.294126868)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.4379375, 0.715896785, -0.504462838, -0.23731719, -0.969761193, 0.0569542795, 0.971251786, -0.23573482, 0.033154279, -0.0187255144, 0.0631850809, 0.997826219)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06777167, -0.539414704, -0.193193853, 0.259641767, -0.319236726, 0.911413193, 0.170530349, 0.944105148, 0.282107294, -0.950529099, 0.0821767449, 0.299568713)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.50858545, 0.634361267, -0.483621806, -0.324486047, 0.943284988, -0.0701644868, -0.945440412, -0.321149975, 0.0548229069, 0.0291801393, 0.0841258168, 0.996027708)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--6, 0.3499999940395355
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118403822, 0.653835535, 1.59884501, -0.999998868, -0.000784426928, -0.00132348982, -0.00120072067, -0.139912829, 0.990163803, -0.000961882994, 0.990163624, 0.13991183)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.77465039e-06, 1.0000006, -1.05798244e-06, -0.994781017, 0.0713925362, 0.0729008168, 0.0629945397, -0.132336378, 0.989201128, 0.080268994, 0.988630772, 0.127148464)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.1666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.01386011, -0.76117754, -0.0504273772, 0.295151711, 0.299777806, -0.907203674, 0.444664955, 0.797308683, 0.408132076, 0.845670462, -0.52386266, 0.102026314)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.3333333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.43083954, 0.367732316, -0.549518466, 0.207006812, -0.963805497, 0.168008626, 0.785675704, 0.266101718, 0.55848527, -0.582977414, 0.0163902119, 0.812323213)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06777167, -0.539414346, -0.193193913, -0.00454223156, -0.132302389, 0.991198957, 0.50526768, 0.855069637, 0.116447657, -0.862950683, 0.501349688, 0.0629642308)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.3333333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.03649414, 0.744679272, -0.771139085, -0.934419513, -0.30431968, 0.185065031, 0.344032407, -0.636659622, 0.690152466, -0.0922029316, 0.708558857, 0.699602664)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--7, 0.44999998807907104
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118405536, 0.429834902, 1.39584899, -0.999998868, -0.000898119062, -0.00124913245, -0.00120072276, -0.0520217158, 0.998645842, -0.000961886719, 0.998645604, 0.052020628)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--8, 0.5166666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00563514, -0.52844429, -0.0674416721, 0.144490913, 0.332240611, -0.932061255, 0.0490467586, 0.938383579, 0.342097491, 0.988289833, -0.0951445997, 0.119292513)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--9, 0.5666666626930237
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.11840941, 0.0298345387, 0.895846486, -0.988547742, -0.150906831, -0.000622230116, -0.0701010823, 0.455553234, 0.887445033, -0.133637935, 0.8773247, -0.460914999)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.19999998807907104, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.76068056e-06, 1.00000048, -1.03935599e-06, -0.972301126, 0.20171155, 0.118081793, 0.0233391002, -0.418888688, 0.907737732, 0.23256433, 0.885350466, 0.402578145)}) tween6:Play() tablesorting(part6, tween6)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999998807907104, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.982572794, 0.263840914, -0.0306871831, 0.0034840107, -0.0686458647, 0.997635067, 0.401477307, 0.913803458, 0.0614755452, -0.915862381, 0.400313973, 0.0307435542)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--10, 0.6166666746139526
		tween5 = ts:Create(part5, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.982979476, -0.253326476, -0.0634198785, 0.0120529085, 0.234714672, -0.971989453, -0.551542819, 0.812375546, 0.189331979, 0.834059477, 0.533811808, 0.139246583)}) tween5:Play() tablesorting(part5, tween5)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--11, 0.6833333373069763
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118412234, -0.720161915, 0.575849891, -0.957935333, -0.286984444, -1.99759379e-05, -0.221642405, 0.739783704, 0.635291815, -0.18230398, 0.608572483, -0.772273064)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.07350683, -0.222191453, -0.132804036, 0.127944797, -0.120546788, -0.984427989, -0.919408083, 0.357798517, -0.163307846, 0.371913284, 0.925985575, -0.0650530979)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02674294, 0.60584414, -0.802920699, -0.434095383, -0.300123841, 0.849404216, 0.797144532, 0.31127128, 0.517371178, -0.419669926, 0.901684999, 0.104121216)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15628958, 0.549609065, -0.448878765, -0.692426503, -0.161469519, -0.703187764, -0.705663204, 0.354580551, 0.613443434, 0.15028429, 0.920978189, -0.35946393)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--12, 0.7666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118411742, -0.935361683, 0.467852116, -0.99865365, -0.0518738367, 0.000179821742, -0.0439032651, 0.84704411, 0.529706895, -0.0276302397, 0.5289855, -0.848181546)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.19999998807907104, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.80724669e-06, 1.0000006, -1.16229057e-06, -0.931177557, -0.200210422, -0.304671466, -0.350952417, 0.718530357, 0.60045588, 0.098698169, 0.666056037, -0.739343226)}) tween6:Play() tablesorting(part6, tween6)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999998807907104, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06603742, -0.159988701, 0.0325000286, 0.289969832, -0.200076967, 0.935888231, 0.738287926, 0.669016004, -0.0857221335, -0.608973265, 0.71581167, 0.341709435)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--13, 0.8666666746139526
		tween1 = ts:Create(part1, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118412882, -0.782483935, 0.315041304, -0.934081435, 0.339111924, -0.111781918, 0.249630183, 0.844052732, 0.474615574, 0.255297452, 0.415425211, -0.873067081)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.929187059, -0.342789054, -0.478588939, 0.115848631, -0.354131401, -0.927992344, -0.916523755, 0.321989417, -0.237291232, 0.382835954, 0.878016949, -0.287267745)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.08499873, 0.361193419, -0.0214084387, 0.0516862124, 0.466138661, -0.883200526, -0.40206632, 0.81925422, 0.408858985, 0.914150655, 0.333972991, 0.229762599)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499996423721314)

		if afterframe() then
			return
		end

		--14, 0.9666666388511658
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118411154, -0.552887619, 0.214031994, -0.897945225, 0.414349109, -0.148355871, 0.300565153, 0.823584437, 0.481009066, 0.321489096, 0.387328863, -0.864073098)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.74764204e-06, 1.0000006, -1.1920929e-06, -0.942180872, -0.334291428, -0.023342669, -0.28799811, 0.772154331, 0.566423416, -0.171326399, 0.540395975, -0.823783875)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.828279972, -0.426796675, -0.709900558, 0.0689037591, -0.435083866, -0.897749662, -0.87144649, 0.411801577, -0.266459614, 0.485627204, 0.800700903, -0.350777477)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.723936141, 0.803032517, -1.02888775, -0.124047071, 0.104786962, 0.986728787, 0.982681274, -0.124995336, 0.136813059, 0.137673467, 0.986608863, -0.087466374)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16182411, -0.714423656, -0.387416899, 0.33435446, -0.097847715, 0.937354386, 0.521724343, 0.847509384, -0.0976298451, -0.784863591, 0.521683395, 0.334418535)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.01833336114883423)

		if afterframe() then
			return
		end

		--15, 1
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02006173, 0.348554134, 0.0632981062, 0.401828587, 0.447956443, -0.798666894, -0.122631207, 0.890646935, 0.437847137, 0.907466471, -0.0779980198, 0.412820578)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--16, 1.0499999523162842
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118412144, -0.335614592, 0.152211443, -0.907488942, 0.389953613, -0.156205326, 0.238252491, 0.784045875, 0.573156476, 0.345976353, 0.482916474, -0.80442071)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.87057662e-06, 0.999999881, -1.13248825e-06, -0.99785912, -0.0413489416, -0.0506742559, -0.056020841, 0.140503883, 0.988493919, -0.0337532498, 0.989216805, -0.142519265)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.812462509, -0.366051316, -0.754535317, 0.00130756199, -0.350885272, -0.936417341, -0.752746105, 0.616108179, -0.231913105, 0.65830946, 0.705187976, -0.263321966)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.816277742, 0.337863475, -0.660795033, -0.128079966, 0.0998173282, 0.986728549, 0.986843228, -0.0861738771, 0.13681297, 0.0986880362, 0.991267562, -0.0874661803)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--17, 1.100000023841858
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.956390977, 0.445247591, -0.0626928806, 0.354101896, 0.420234501, -0.835472643, -0.0290153995, 0.89786303, 0.43931815, 0.934756637, -0.131321877, 0.330128074)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--18, 1.149999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118411988, -0.295613229, 0.0622118339, -0.917114317, 0.385433555, -0.101697765, 0.245431453, 0.747009933, 0.617851138, 0.314109564, 0.541679919, -0.779691339)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.930224895, 0.326834768, -0.501334131, 0.0664158762, -0.132669494, 0.988932669, 0.927894652, 0.372638702, -0.0123255402, -0.366879404, 0.91844368, 0.147852451)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1728251, -0.808936, -0.428434789, 0.35179317, -0.0987168923, 0.930857956, 0.406161577, 0.912035406, -0.0567772314, -0.843370736, 0.398052543, 0.36094296)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--19, 1.1833332777023315
		tween5 = ts:Create(part5, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.793224871, -0.440096855, -0.766483784, 0.0112943798, -0.372248352, -0.928064227, -0.773773849, 0.584621191, -0.24390915, 0.633361042, 0.720866859, -0.281433195)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.934427321, 0.468363434, -0.125413537, 0.24594155, 0.42659539, -0.870361328, -0.110965304, 0.904430568, 0.411937594, 0.962911963, -0.00473263301, 0.269774139)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--20, 1.2333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118414529, -0.391615242, 0.038211517, -0.957728028, 0.287584603, -0.007206982, 0.224232972, 0.761976898, 0.607545376, 0.18021217, 0.580247045, -0.794253111)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.778023601, -0.552039385, -0.844772518, 0.0623808205, -0.388355553, -0.919396043, -0.849105716, 0.463481307, -0.253387272, 0.524527013, 0.796471059, -0.300842524)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16647744, -0.741769493, -0.398843825, 0.356488675, -0.155114084, 0.921333671, 0.411229968, 0.911514103, -0.0056547001, -0.838931322, 0.380895644, 0.388732433)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.912463486, 0.491479456, -0.188134164, 0.135818332, 0.418510079, -0.897999108, -0.194677159, 0.900001228, 0.389998794, 0.971418619, 0.121851042, 0.203710824)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--21, 1.2833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.1499999761581421, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85334715e-06, 1.00000036, -1.10268593e-06, -0.997772336, 0.0557635725, 0.0366225243, 0.0434570052, 0.126748055, 0.990982652, 0.0506189354, 0.990366578, -0.128888696)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.05000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.778023958, -0.552039266, -0.84477222, 0.0623808205, -0.350693941, -0.934410453, -0.849105716, 0.473390192, -0.234353974, 0.524527013, 0.808032453, -0.268245757)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.901012957, 0.467910796, -0.287827224, -0.218971431, 0.284295887, -0.933395386, -0.601333857, 0.714029789, 0.358551681, 0.768406868, 0.639795125, 0.0146045834)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333420753479004)

		if afterframe() then
			return
		end

		--22, 1.3166667222976685
		tween2 = ts:Create(part2, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.967903793, 0.385120928, -0.230934799, 0.0776269287, -0.131690592, 0.988246799, 0.675314605, 0.736152589, 0.0450512767, -0.733433247, 0.663880169, 0.146077842)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--23, 1.3333333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118413709, -0.572282851, 0.0388783477, -0.993790925, 0.106631055, 0.0317738391, 0.104841843, 0.801811874, 0.588308334, 0.0372552946, 0.58798635, -0.808013082)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.815766335, -0.340250611, -0.556126177, 0.0621729344, -0.166413292, -0.984094262, -0.848825097, 0.509844065, -0.139842853, 0.525005937, 0.844018936, -0.109557122)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.15014911, -0.648560345, -0.377988636, 0.338139445, -0.0829050988, 0.937437117, 0.497525334, 0.861277699, -0.103290774, -0.798830628, 0.501325309, 0.332479417)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--24, 1.3833333253860474
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.776256502, 0.0995871723, -0.807714224, -0.432483852, 0.482152849, -0.761896491, -0.789394557, 0.205832973, 0.578350663, 0.435676873, 0.851564646, 0.29158935)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--25, 1.4333332777023315
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118411772, -0.63894999, 0.0755424649, -0.994327962, -0.0496706925, 0.0940461755, 0.0122518074, 0.824868619, 0.565192223, -0.105649173, 0.563138247, -0.819581926)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.90224159e-06, 1.00000072, -1.37090683e-06, -0.972235143, 0.205981717, 0.111044377, 0.188369483, 0.407347888, 0.893635988, 0.138839021, 0.88974154, -0.434838235)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.814005852, -0.208151162, -0.413847506, 0.0617598742, 0.0154992901, -0.997971058, -0.856166482, 0.514738679, -0.0449897647, 0.512996554, 0.857208312, 0.0450603589)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12737453, -0.564679265, -0.388761103, 0.319518626, -0.0245675333, 0.947261393, 0.575732708, 0.799022794, -0.17347616, -0.752621889, 0.60079807, 0.269447058)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--26, 1.4833333492279053
		tween2 = ts:Create(part2, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.957861006, 0.395219773, -0.103425205, 0.00813509524, -0.125406995, 0.992071986, 0.430212975, 0.896032274, 0.109738953, -0.902690709, 0.42590946, 0.0612410456)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.18333327770233154, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.622155905, 0.341951251, -0.459113777, -0.573187351, -0.12549679, -0.809757113, -0.795011759, 0.324586958, 0.512444973, 0.198526412, 0.937493801, -0.285820395)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--27, 1.5833333730697632
		tween1 = ts:Create(part1, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118413761, -0.551800311, 0.0798223615, -0.989330351, -0.118860319, 0.0842484608, -0.0462630689, 0.80464536, 0.591951191, -0.138149545, 0.581737399, -0.801559448)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.799816251, -0.196392536, -0.410939574, 0.0637050271, 0.0598220676, -0.996174514, -0.817702532, 0.575368464, -0.017739743, 0.572105825, 0.815705001, 0.0855706856)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10388041, -0.384470999, -0.318900704, 0.293556571, -0.0976476595, 0.950941563, 0.713235259, 0.684715867, -0.149865955, -0.636490524, 0.722238898, 0.270649046)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--28, 1.649999976158142
		tween6 = ts:Create(part6, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.87057662e-06, 1.00000048, -1.07288361e-06, -0.968483806, 0.247793764, 0.0252600089, 0.185610771, 0.650357068, 0.736603618, 0.16609779, 0.718077064, -0.675853014)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--29, 1.6666666269302368
		tween3 = ts:Create(part3, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.83970511, 0.294241399, -0.394252896, -0.570124269, -0.469940156, -0.67388016, -0.818388462, 0.396845192, 0.415636986, 0.072101742, 0.78846091, -0.610844374)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500007152557373)

		if afterframe() then
			return
		end

		--30, 1.7166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118413858, -0.474950641, 0.085710831, -0.985603154, -0.13926056, 0.0958806127, -0.0489347912, 0.777771235, 0.626640141, -0.161839351, 0.612926185, -0.773388863)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.807345271, -0.237859309, -0.466832042, 0.0659493953, 0.107553132, -0.992009938, -0.805592299, 0.592375159, 0.010668844, 0.588789165, 0.798452437, 0.125710934)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10597181, -0.422798157, -0.36501658, 0.286325872, -0.0348614529, 0.957498014, 0.743208766, 0.638783813, -0.19898814, -0.604696929, 0.768596053, 0.208810166)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--31, 1.7333333492279053
		tween2 = ts:Create(part2, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.925955415, 0.384541094, -0.168578714, -0.0740038604, -0.140800461, 0.987268269, 0.356922448, 0.920665205, 0.15805608, -0.931198061, 0.364074767, -0.0178779066)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--32, 1.7666666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.000949654728, 0.987814665, -0.0158320069, -0.969146192, 0.246375784, 0.00745892525, 0.175147206, 0.667037725, 0.72414434, 0.173436299, 0.703107834, -0.689608335)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--33, 1.7999999523162842
		tween6 = ts:Create(part6, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.86685133e-06, 1.0000006, -1.22189522e-06, -0.969510317, 0.236725882, -0.0633348078, 0.134666502, 0.730615318, 0.669378042, 0.204732463, 0.64043951, -0.740217566)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333420753479004)

		if afterframe() then
			return
		end

		--34, 1.8333333730697632
		tween3 = ts:Create(part3, TweenInfo.new(0.13333332538604736, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.813707054, 0.263616741, -0.385901034, -0.53351891, -0.328844339, -0.779242575, -0.843041122, 0.280956864, 0.458634019, 0.0681143627, 0.901623726, -0.427124828)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--35, 1.8833333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.08333337306976318, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118412957, -0.459284097, 0.0879602879, -0.986259699, -0.123782367, 0.109407634, -0.0255989339, 0.768769622, 0.639013886, -0.163207784, 0.627432346, -0.761375546)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.31666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.796773672, -0.410467744, -0.542085111, 0.0950587988, -0.0134805106, -0.995380223, -0.715965271, 0.693790793, -0.0777707249, 0.691634059, 0.720050633, 0.056299299)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.31666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10597217, -0.422798276, -0.365016699, 0.28843832, -0.121779166, 0.949722826, 0.663291991, 0.740749121, -0.106463417, -0.690541267, 0.660651445, 0.294436038)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--36, 1.899999976158142
		tween2 = ts:Create(part2, TweenInfo.new(0.533333420753479, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.845990539, 0.345205843, -0.470024347, -0.238150284, -0.167643398, 0.956649542, 0.397379607, 0.881955087, 0.253478348, -0.886214375, 0.440520376, -0.1434187)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--37, 1.9333332777023315
		tween6 = ts:Create(part6, TweenInfo.new(0.2666667699813843, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85195017e-06, 1.00000048, -1.16229057e-06, -0.974142253, 0.188075095, -0.125201032, -0.00128721772, 0.549512744, 0.835484624, 0.225933477, 0.814041853, -0.535061121)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333420753479004)

		if afterframe() then
			return
		end

		--38, 1.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118412033, -0.402126104, 0.108366996, -0.990792513, -0.0783520937, 0.11041382, 0.0281105563, 0.678704917, 0.733873487, -0.132438824, 0.730219662, -0.670253634)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.893364668, 0.184986472, -0.310213983, -0.348090738, -0.135137171, -0.927669466, -0.910438597, 0.284609288, 0.300165117, 0.223459855, 0.949071229, -0.222103775)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.21833334922790526)

		if afterframe() then
			return
		end

		--39, 2.200000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118411958, -0.344038427, 0.133787304, -0.994556069, -0.0338437259, 0.0985528603, 0.0638891608, 0.549102187, 0.833310187, -0.0823178813, 0.835069835, -0.543951035)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.7000000476837158, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(3.87430191e-06, 1.00000036, -1.04308128e-06, -0.96595031, -0.0195915475, -0.257986009, -0.252938151, -0.138275295, 0.957550168, -0.0544329397, 0.99020046, 0.128611773)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.788981318, -0.537655711, -0.597542584, 0.109305203, -0.0334764533, -0.993444622, -0.579053044, 0.810194552, -0.0910124034, 0.807930171, 0.585205793, 0.069173947)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10597229, -0.422798574, -0.36501652, 0.308119506, -0.187441334, 0.932699502, 0.484756947, 0.874509633, 0.0156067833, -0.818579972, 0.44732374, 0.360317409)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.872216284, 0.116264284, -0.232524574, -0.0581752062, 0.137995169, -0.988722742, -0.928134501, 0.357285202, 0.104476385, 0.367672592, 0.923745871, 0.107292958)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.21833334922790526)

		if afterframe() then
			return
		end

		--40, 2.433333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(-0.118410848, -0.225615829, 0.252205342, -0.988172233, 0.151839644, 0.0214604698, 0.0712581277, 0.33074683, 0.941025913, 0.13578698, 0.93142426, -0.33765462)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(-0.779074788, -0.694695234, -0.661890149, 0.0983495563, -0.0582723878, -0.993444622, -0.372002512, 0.923759639, -0.0910124183, 0.923007607, 0.378515482, 0.0691739917)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(0.793134749, 0.403878331, -0.134374142, -0.479291677, -0.156644195, 0.863562763, 0.358825803, 0.862978637, 0.355692387, -0.800952077, 0.480350912, -0.357408941)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(1.12040484, -0.620185852, -0.393826097, 0.353361636, -0.13076514, 0.926302493, 0.160355791, 0.983993292, 0.0777377486, -0.921640575, 0.121068403, 0.368674934)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(-0.882478654, 0.265686929, -0.186823189, -0.0687782168, 0.226885617, -0.971490026, -0.492485106, 0.839146495, 0.230844155, 0.867596328, 0.494323611, 0.0540229529)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.45166669845581053)

		if afterframe() then
			return
		end

		--41, 2.9000000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118410841, -0.225615978, 0.252205461, -0.998812258, 0.044727914, -0.0193301514, 0.00971321575, 0.571515799, 0.82053417, 0.0477482677, 0.819371283, -0.571271539)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83239239e-06, 1.00000048, -8.34465027e-07, -0.987890542, 0.126773834, 0.0894495696, -0.0138164368, -0.64610976, 0.7631194, 0.154537901, 0.752642751, 0.640037239)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.46666646003723145, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(-0.768238306, -0.720089793, -0.539671838, 0.107041791, 0.0401292518, -0.993444562, -0.953006685, 0.288956314, -0.0910124183, 0.283409446, 0.95650208, 0.0691739917)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.803362668, 0.555023491, -0.4240852, -0.0910386443, -0.538473427, 0.837710142, 0.961627722, 0.17108725, 0.214478925, -0.258812666, 0.825091004, 0.502235472)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.46666646003723145, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(1.11870527, -0.648344755, -0.383619547, 0.0566320419, -0.372500658, 0.926302493, 0.938643277, 0.336014807, 0.0777377635, -0.34020859, 0.865064561, 0.368674934)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.941383123, 0.258044243, -0.474611878, -0.220981941, 0.835519612, -0.503064632, -0.70315969, 0.220943257, 0.675833225, 0.675820589, 0.503081977, 0.538678825)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--42, 2.933333396911621
		tween2 = ts:Create(part2, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.832204163, 0.787048936, -0.841306508, -0.0221935362, -0.667504787, 0.744273961, 0.979059994, -0.165203914, -0.118969455, 0.202372715, 0.726047218, 0.657193363)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.85941714, 0.29798466, -0.687739372, -0.345393151, 0.823581576, -0.449909031, -0.740909696, 0.0549328849, 0.669350803, 0.5759781, 0.564532101, 0.591227949)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--43, 2.9833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.118405432, 0.161052808, 0.532204449, -0.998812199, 0.0382901542, -0.0301348418, 0.00971322134, 0.762501836, 0.646913648, 0.0477482602, 0.645852089, -0.761968493)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83146107e-06, 1.00000072, -1.01327896e-06, -0.996590197, 0.0471904948, 0.0676869228, 0.0820218846, 0.655972958, 0.750314951, -0.00899305195, 0.753308296, -0.657606363)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.653194427, 0.749868035, -0.914613664, -0.0221934915, -0.200519577, 0.979438365, 0.979057074, -0.20266889, -0.0193074048, 0.202373266, 0.958497405, 0.200818092)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.672000408, 0.237171382, -0.765337825, -0.524033487, 0.368390888, -0.767904222, -0.753562212, 0.219620168, 0.619605541, 0.39690426, 0.903358161, 0.162517011)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--44, 3.049999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.120415032, 0.377072662, 0.69923377, -0.998812318, 0.0335723087, -0.0353149138, 0.0097132232, 0.847400069, 0.530866504, 0.0477482453, 0.529892564, -0.846720099)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82959843e-06, 1.00000048, -1.07288361e-06, -0.989591599, -0.0141361393, -0.143210366, -0.0914592892, 0.830109, 0.550049782, 0.11110463, 0.55742228, -0.822761357)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.648738861, 0.735532701, -0.935786486, -0.191716492, 0.149820551, 0.969947815, 0.962863564, -0.16271317, 0.215449348, 0.190102071, 0.975232422, -0.113061994)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.175245941, 0.192488372, -0.790612817, -0.427845806, -0.335762709, -0.839173138, -0.903598964, 0.180858135, 0.388329327, 0.0213848352, 0.924420953, -0.380773932)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--45, 3.1500000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.121326968, 0.411018729, 0.732239664, -0.998812199, 0.0331604928, -0.0357018895, 0.00971322507, 0.853499711, 0.521003306, 0.047748249, 0.520037234, -0.852808416)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.80352139e-06, 1.00000048, -1.4603138e-06, -0.997920275, 0.0156472474, -0.0625377148, -0.0340437889, 0.695878863, 0.717352152, 0.0547432527, 0.717989087, -0.693898559)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.653507769, 0.731342316, -0.920590878, -0.242507532, 0.214172989, 0.946213365, 0.951952517, -0.135485634, 0.274645269, 0.187020034, 0.967353761, -0.17102626)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.36693728, 0.0605188012, -0.717020214, -0.545141637, -0.351933688, -0.760896266, -0.838307917, 0.220414996, 0.498655319, -0.00778065622, 0.909703672, -0.415186018)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--46, 3.183333396911621
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.84263694e-06, 1.00000083, -1.51991844e-06, -0.998992801, -0.0140820118, 0.0426120646, 0.0266750213, 0.57725215, 0.816130519, -0.0360906646, 0.816444874, -0.57629472)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.721262217, 0.76885879, -0.916509926, -0.291982889, 0.213110089, 0.932378709, 0.933210611, -0.14999336, 0.32652685, 0.209436879, 0.965445817, -0.155081123)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.52639693, -0.00637030602, -0.661197126, -0.59930706, -0.381574869, -0.703726649, -0.796922207, 0.20114015, 0.569611788, -0.0758020654, 0.90218842, -0.424629897)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--47, 3.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.123209879, 0.439147711, 0.759526134, -0.998812318, 0.032923989, -0.0359201171, 0.00971322693, 0.856921971, 0.515355289, 0.0477482527, 0.514393747, -0.856224358)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.84449959e-06, 1.00000083, -1.4603138e-06, -0.996044457, -0.0734955668, 0.0499444529, -0.00291384803, 0.588772357, 0.808293939, -0.0888119265, 0.804951072, -0.586657166)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.7245543, 0.721054733, -0.912244141, -0.346189618, 0.257311642, 0.902188122, 0.92241466, -0.0821139738, 0.377370656, 0.171184152, 0.962833226, -0.208921075)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.633934617, -0.028482914, -0.674723923, -0.691004872, -0.264146239, -0.672858715, -0.721479356, 0.194729939, 0.664490759, -0.0444969647, 0.944620371, -0.325135171)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--48, 3.25
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82959843e-06, 1.00000072, -1.43051147e-06, -0.995396495, -0.0616827011, 0.0733606741, 0.0246332791, 0.575050294, 0.817747414, -0.0926269293, 0.815789819, -0.570883274)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.781202435, 0.739546955, -0.905599177, -0.424472272, 0.240421966, 0.872937858, 0.887198091, -0.0821161494, 0.454022646, 0.180839345, 0.967188537, -0.178445891)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.653479934, -0.07661587, -0.614113331, -0.715066791, -0.22650069, -0.661344767, -0.699013114, 0.24218373, 0.67285043, 0.00776591152, 0.9434219, -0.331504315)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--49, 3.2833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.77744436e-06, 1.0000006, -9.53674316e-07, -0.992744327, -0.0476615429, 0.110398233, 0.0664832518, 0.547453046, 0.83419162, -0.100196697, 0.835478365, -0.540311694)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.808412194, 0.722294807, -0.899542511, -0.48100695, 0.254847229, 0.838859379, 0.861234426, -0.0416703597, 0.506496549, 0.164034992, 0.966082871, -0.199439541)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.750500739, -0.0806757212, -0.633960545, -0.778655291, -0.113455623, -0.617109418, -0.626336694, 0.199171543, 0.75368011, 0.0374011546, 0.973375618, -0.226147026)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--50, 3.316666603088379
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.126632497, 0.448120862, 0.751429677, -0.998812199, 0.0337166712, -0.0351771414, 0.00971323065, 0.845218956, 0.534332514, 0.0477482527, 0.533355832, -0.844542921)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.84822488e-06, 1.00000083, -1.25169754e-06, -0.993831396, -0.0412749611, 0.102937907, 0.0576565415, 0.600592732, 0.797473907, -0.094739452, 0.798489511, -0.594507694)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.816022456, 0.714206278, -0.877967536, -0.512800455, 0.259281904, 0.818418384, 0.843831778, -0.0232901499, 0.536102414, 0.158062845, 0.96552074, -0.206847191)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.716329217, -0.0278649926, -0.67056793, -0.719576359, -0.0578258075, -0.692001462, -0.689071536, 0.182829902, 0.701251507, 0.0859681368, 0.981442869, -0.17140615)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--51, 3.3499999046325684
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85195017e-06, 1.00000083, -1.28149986e-06, -0.994875908, -0.0384348631, 0.093517907, 0.0455223881, 0.655606389, 0.75372988, -0.0902804136, 0.754124403, -0.65049684)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.800982773, 0.664943457, -0.860719264, -0.538209498, 0.288475245, 0.79190439, 0.83318913, 0.0405403152, 0.55150032, 0.126990244, 0.956628621, -0.262173712)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.692959487, -0.0136130452, -0.681920052, -0.724279106, -0.0412501097, -0.688271761, -0.681884646, 0.190866888, 0.706118405, 0.102240846, 0.980749249, -0.166368663)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--52, 3.366666555404663
		tween5 = ts:Create(part5, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.763381481, -0.709683061, -0.532004774, 0.0939549059, 0.0410696045, -0.994728804, -0.957995176, 0.275658518, -0.0791040659, 0.270956755, 0.960377812, 0.0652439073)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13066268, -0.642706096, -0.374412775, 0.0715085119, -0.399669349, 0.913865924, 0.939557135, 0.334563375, 0.0727989525, -0.334841669, 0.853423357, 0.399436414)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--53, 3.383333444595337
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.84636223e-06, 1.00000095, -1.34110451e-06, -0.996790409, -0.0345761366, 0.0722080246, 0.0295693614, 0.67915839, 0.733396411, -0.0743986815, 0.733177423, -0.675955713)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.83035332, 0.657583475, -0.844372213, -0.545080841, 0.274034202, 0.792333364, 0.83148551, 0.0557151027, 0.552745938, 0.107326329, 0.960104644, -0.258224726)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.598745465, 0.0231024027, -0.675160706, -0.651680231, -0.0657509789, -0.75563848, -0.748947799, 0.213338837, 0.627346635, 0.119958356, 0.974763513, -0.18827264)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--54, 3.4000000953674316
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.750995398, -0.738497913, -0.541216135, 0.0804134607, 0.0250387434, -0.996446848, -0.940084696, 0.334198952, -0.0674672127, 0.331322283, 0.942169845, 0.0504126176)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12045717, -0.645484626, -0.380428672, 0.0825436115, -0.345834345, 0.934657753, 0.933790684, 0.354490399, 0.0486986786, -0.34816885, 0.868754923, 0.352197796)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--55, 3.4166667461395264
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85008752e-06, 1.00000072, -1.51991844e-06, -0.996153355, 0.033473663, 0.0809854344, 0.0796214789, 0.731727481, 0.676931262, -0.0365998857, 0.680775404, -0.731577575)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.816874325, 0.639726281, -0.821144402, -0.537508428, 0.310346156, 0.784072578, 0.836725593, 0.0807719752, 0.541633129, 0.104762763, 0.947185755, -0.303090215)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.59442991, 0.0445197225, -0.707398295, -0.600784421, 0.00923847221, -0.799357176, -0.775468588, 0.236157849, 0.585559309, 0.194183916, 0.971672177, -0.134715766)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--56, 3.433333396911621
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.746941686, -0.7184515, -0.529144049, 0.0873824507, 0.00734046288, -0.996147633, -0.945437491, 0.315674543, -0.0806078911, 0.313866794, 0.948839188, 0.0345243402)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11921382, -0.651469588, -0.386303306, 0.0872551799, -0.338656753, 0.936855376, 0.923784018, 0.379483402, 0.0511387885, -0.372839659, 0.860989749, 0.345957696)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--57, 3.450000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.128859907, 0.445574462, 0.737398982, -0.998812199, 0.0340329856, -0.0348711871, 0.00971322507, 0.840358555, 0.541944206, 0.0477482602, 0.540961385, -0.839691401)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82587314e-06, 1.00000072, -1.07288361e-06, -0.997635067, -0.0175793264, 0.0664511174, 0.0331913456, 0.723366499, 0.68966651, -0.0601923801, 0.690240979, -0.721071839)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.862468004, 0.634643316, -0.814305902, -0.586315691, 0.257849276, 0.767950237, 0.806382895, 0.0952740982, 0.583669007, 0.0773329586, 0.961476028, -0.263786048)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.580889165, 0.078466773, -0.715036571, -0.612123013, -0.00926159602, -0.790708303, -0.7752285, 0.204253882, 0.597746849, 0.155969113, 0.978874624, -0.132208288)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--58, 3.4666666984558105
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.77840054, -0.727546334, -0.547690272, 0.138167039, 0.0274884775, -0.990027249, -0.925120473, 0.3605102, -0.119098932, 0.353641063, 0.932350278, 0.0752407238)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11109078, -0.647563934, -0.385179877, 0.0687612891, -0.349064857, 0.934572399, 0.922111988, 0.379779994, 0.074004136, -0.380764186, 0.856691599, 0.347991049)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--59, 3.4833333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.79933044e-06, 1.00000072, -1.34110451e-06, -0.998546064, 0.025646301, 0.0474195145, 0.0506913997, 0.746061206, 0.663945615, -0.0183501076, 0.665383875, -0.746275902)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.839793026, 0.61383301, -0.797061384, -0.577890456, 0.30001533, 0.758968592, 0.812346756, 0.122206092, 0.570226431, 0.0783261657, 0.946073949, -0.314338297)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.591831565, 0.107622892, -0.732716084, -0.60395813, 0.0119510973, -0.79692626, -0.781374872, 0.188240111, 0.594995022, 0.157124311, 0.982050538, -0.104350775)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--60, 3.5
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.762003958, -0.721357048, -0.537603498, 0.10974285, 0.0177922938, -0.993800581, -0.931369722, 0.351035267, -0.0965639949, 0.347141027, 0.936193228, 0.0550947785)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11947048, -0.63833642, -0.373956084, 0.0652655363, -0.400681555, 0.913889647, 0.925371706, 0.367008865, 0.0948242396, -0.373400122, 0.839498937, 0.394732475)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--61, 3.5166666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7974678e-06, 1.00000036, -1.4603138e-06, -0.99676311, 0.0542193353, 0.0593646392, 0.0798188075, 0.755853593, 0.649857521, -0.00963612739, 0.652492404, -0.757734239)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.827318907, 0.574993134, -0.783118665, -0.602375507, 0.320215344, 0.731167495, 0.796121001, 0.174744666, 0.579358101, 0.0577517897, 0.931088805, -0.36019215)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.61677134, 0.0767510831, -0.724419594, -0.619844973, 0.0414035097, -0.783631027, -0.756284475, 0.234887794, 0.610624373, 0.209347516, 0.971140206, -0.114281222)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--62, 3.5333333015441895
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.756068289, -0.726556599, -0.537613153, 0.0943900794, 0.0193078872, -0.995347738, -0.927667737, 0.364537835, -0.0809004456, 0.361280024, 0.930988431, 0.0523200184)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10323489, -0.634359241, -0.374921203, 0.0557391196, -0.358707637, 0.931784153, 0.925064385, 0.369713724, 0.086991109, -0.375697911, 0.857111514, 0.352435261)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--63, 3.549999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.130983591, 0.432275355, 0.712662578, -0.998812318, 0.0340855271, -0.0348198451, 0.0097132232, 0.839540482, 0.543210804, 0.0477482639, 0.54222697, -0.838874876)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.86685133e-06, 1.00000036, -1.01327896e-06, -0.992998898, 0.0107780509, 0.117633626, 0.0823585019, 0.777049184, 0.6240291, -0.08468128, 0.629348159, -0.772496104)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.845064878, 0.586857617, -0.778403938, -0.602377236, 0.305839896, 0.737294793, 0.796034932, 0.162007377, 0.583165586, 0.0589081794, 0.938197851, -0.341048837)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.614584327, 0.112217128, -0.740237415, -0.610285759, 0.0454863273, -0.790874243, -0.768647969, 0.207533643, 0.605070353, 0.191655472, 0.97717011, -0.0916917771)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--64, 3.566666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.773934126, -0.735353231, -0.549690008, 0.0994136631, 0.0571331978, -0.993404448, -0.919756174, 0.386228681, -0.0698303282, 0.379691631, 0.920632064, 0.0909449384)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11986744, -0.653483868, -0.387911916, 0.0748943835, -0.400979161, 0.913020432, 0.899755359, 0.421912938, 0.11148905, -0.429920077, 0.813145101, 0.392382175)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--65, 3.5833332538604736
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85940075e-06, 1.00000048, -1.28149986e-06, -0.993264735, 0.0328389108, 0.111119054, 0.10024181, 0.724529147, 0.681916118, -0.0581156127, 0.68846184, -0.722940683)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.870810866, 0.555028081, -0.778921366, -0.603700519, 0.281062484, 0.746022522, 0.797157288, 0.201940715, 0.56899935, 0.00927215815, 0.938202262, -0.345962793)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.635936141, 0.0914262533, -0.737252712, -0.625520527, 0.0692153126, -0.777131259, -0.746940851, 0.234627455, 0.622116923, 0.225396365, 0.96961844, -0.0950645059)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--66, 3.5999999046325684
		tween5 = ts:Create(part5, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.775078475, -0.712545514, -0.538593173, 0.112313643, 0.0445772409, -0.992672205, -0.926618278, 0.365456998, -0.0884287059, 0.358837187, 0.929760337, 0.0823518485)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11435044, -0.638639212, -0.375844002, 0.0791766047, -0.375493407, 0.923436821, 0.911492646, 0.40234223, 0.0854503289, -0.40362373, 0.834940076, 0.374115646)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--67, 3.616666555404663
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.87057662e-06, 1.00000048, -1.22189522e-06, -0.993558407, 0.0110060312, 0.112788491, 0.0833972469, 0.744882882, 0.661962986, -0.0767286122, 0.667105019, -0.741002023)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.877400756, 0.550517857, -0.773341477, -0.625610232, 0.27178371, 0.731262863, 0.78012234, 0.212421805, 0.588460922, 0.0045979172, 0.938621521, -0.344917834)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.623362064, 0.115591079, -0.741349816, -0.626838386, 0.0563102812, -0.777111769, -0.751982749, 0.217352971, 0.622318089, 0.203950405, 0.974467874, -0.0939007252)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--68, 3.633333444595337
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.766764641, -0.723778129, -0.540929496, 0.0935752392, 0.0450731292, -0.994591177, -0.91917181, 0.387782723, -0.068905741, 0.382579446, 0.920648277, 0.0777167454)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10162508, -0.640793502, -0.381522179, 0.0625695437, -0.363430351, 0.929517865, 0.903507471, 0.416272014, 0.101938739, -0.423979998, 0.833447933, 0.354408085)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--69, 3.6500000953674316
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82587314e-06, 1.0000006, -1.01327896e-06, -0.995736659, -0.00939014554, 0.0917650834, 0.0553201213, 0.735269904, 0.675513387, -0.0738152787, 0.677709699, -0.731615186)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.875519037, 0.550240278, -0.766193092, -0.631932795, 0.277998209, 0.723448634, 0.774965763, 0.215295404, 0.594201982, 0.0094320327, 0.936143577, -0.351491451)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.630784512, 0.103999227, -0.736453652, -0.687850893, 0.046032846, -0.724390626, -0.703350127, 0.204295427, 0.680853844, 0.179331392, 0.977826715, -0.108147465)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--70, 3.6666667461395264
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.792114258, -0.702841282, -0.540169477, 0.145666942, 0.0456183441, -0.988281131, -0.916216552, 0.383110583, -0.117360845, 0.373267293, 0.922575474, 0.0976027995)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13418949, -0.644215941, -0.374603152, 0.133446932, -0.360779285, 0.923054814, 0.896510601, 0.440956026, 0.0427399054, -0.422446311, 0.82182467, 0.382286638)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--71, 3.683333396911621
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.80724669e-06, 1.00000048, -1.25169754e-06, -0.995561123, 0.0094493106, 0.0936457068, 0.0728793889, 0.706997156, 0.703451574, -0.0595601164, 0.707153678, -0.704546988)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.847172558, 0.523516119, -0.756794155, -0.630577683, 0.322240144, 0.706068814, 0.776068091, 0.250646055, 0.578701258, 0.00950749218, 0.912873328, -0.408132195)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.629239082, 0.0973750949, -0.729335189, -0.712506592, 0.040082112, -0.700519443, -0.67873615, 0.213767022, 0.702581584, 0.177908927, 0.976062357, -0.125105083)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--72, 3.700000047683716
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.132406041, 0.430106759, 0.693407655, -0.998812318, 0.0344567932, -0.0344524756, 0.0097132232, 0.833669603, 0.552178502, 0.0477482527, 0.551187634, -0.833014548)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.772321045, -0.733937025, -0.548337579, 0.0939951986, 0.0580414385, -0.993879139, -0.903660297, 0.4239254, -0.0607060343, 0.417807132, 0.903835416, 0.0922966003)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1059761, -0.652673781, -0.391216397, 0.0898364186, -0.336980939, 0.937215626, 0.880318463, 0.466973037, 0.0835201666, -0.465799272, 0.817544818, 0.338601768)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--73, 3.7166666984558105
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.78675759e-06, 1.00000048, -1.16229057e-06, -0.997247815, 0.0104667749, 0.0734018683, 0.05860788, 0.717664838, 0.693918467, -0.0454148389, 0.696310401, -0.716302574)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.88479197, 0.523980081, -0.759229004, -0.607427955, 0.297590017, 0.736526668, 0.794137836, 0.250139147, 0.55387342, -0.0194068849, 0.921341598, -0.388269007)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.66308105, 0.111966372, -0.750457108, -0.706284523, 0.0919622779, -0.70192951, -0.67447269, 0.213795468, 0.706667066, 0.215055987, 0.972540617, -0.088974297)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--74, 3.7333333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.773445845, -0.731146097, -0.547441721, 0.127085641, 0.0179925207, -0.991728365, -0.887152195, 0.449247956, -0.105534047, 0.443633199, 0.893225968, 0.0730550215)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12399948, -0.637082338, -0.371257186, 0.115628242, -0.373796016, 0.920275271, 0.893207192, 0.4444291, 0.0682902932, -0.43452394, 0.814100087, 0.385265827)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--75, 3.75
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.7997961e-06, 1.00000048, -1.25169754e-06, -0.995465219, 0.0111671872, 0.094471544, 0.0751764253, 0.700888336, 0.70929873, -0.0582931191, 0.713184059, -0.698548913)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.859789193, 0.521562696, -0.750931144, -0.629003167, 0.332840264, 0.702546835, 0.777375221, 0.261708975, 0.572010577, 0.0065253377, 0.905938983, -0.423357695)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.651506543, 0.0748758316, -0.721792042, -0.71404016, 0.0832021013, -0.695143163, -0.652595162, 0.280435055, 0.703900456, 0.253508538, 0.956260622, -0.145944551)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--76, 3.7666666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.754667103, -0.716585219, -0.531779766, 0.10371086, -0.00351849012, -0.994601011, -0.89736867, 0.43091327, -0.0950963795, 0.428921402, 0.902386487, 0.0415330008)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10555637, -0.658441961, -0.396374702, 0.0931648314, -0.345686674, 0.933713436, 0.861134648, 0.498701572, 0.0987102762, -0.499767303, 0.794856787, 0.344144285)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--77, 3.7833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.86685133e-06, 1.00000048, -9.83476639e-07, -0.989826739, 0.0081919618, 0.142044112, 0.11345768, 0.647863805, 0.753259778, -0.0858545452, 0.761712551, -0.642201781)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.889755785, 0.532616436, -0.752697825, -0.634200037, 0.310382903, 0.70813328, 0.773168683, 0.255453169, 0.580477417, -0.000724568963, 0.915645063, -0.401986837)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.618979096, 0.0735633373, -0.701452076, -0.766443789, 0.0344952457, -0.641384363, -0.60920769, 0.277395278, 0.742911816, 0.203543872, 0.960136831, -0.191593021)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--78, 3.799999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.134311482, 0.436145514, 0.664049387, -0.998812199, 0.0353825241, -0.0335010327, 0.00971321203, 0.818318307, 0.574683785, 0.0477482602, 0.573675513, -0.817690253)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.778308153, -0.725133777, -0.546446264, 0.136573702, 0.015781004, -0.990504026, -0.878578305, 0.463854641, -0.113750681, 0.457654774, 0.885770857, 0.0772151202)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13514519, -0.639760315, -0.369973242, 0.144098639, -0.378456026, 0.914333999, 0.879187047, 0.473026901, 0.057233274, -0.454164982, 0.795623064, 0.400896192)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--79, 3.816666603088379
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82587314e-06, 1.00000048, -1.25169754e-06, -0.995370567, -0.0125598293, 0.0952914208, 0.0630310923, 0.663177907, 0.745803356, -0.0725623146, 0.748356819, -0.659315646)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.887936115, 0.525910735, -0.751199603, -0.597307265, 0.345412612, 0.723819137, 0.802002788, 0.261658162, 0.536960244, -0.00392024219, 0.901235044, -0.433312297)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.64456594, 0.0789807737, -0.715320587, -0.811691761, 0.0618137643, -0.580805838, -0.549155593, 0.257957071, 0.794912815, 0.198959544, 0.96417743, -0.175436169)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--80, 3.8333332538604736
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.759686232, -0.740682364, -0.546173334, 0.0951675177, 0.0202560686, -0.995254934, -0.871941149, 0.484058857, -0.0735241473, 0.48027274, 0.87480092, 0.0637287423)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09643936, -0.633798718, -0.376182199, 0.0810332, -0.350779235, 0.93294549, 0.879466116, 0.465619385, 0.0986806899, -0.469012707, 0.812497556, 0.346229196)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--81, 3.8499999046325684
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.8407743e-06, 1.00000072, -1.22189522e-06, -0.993985713, 0.00955310091, 0.109096073, 0.0918938145, 0.61464709, 0.78343159, -0.0595713779, 0.788744688, -0.61182785)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.895234704, 0.535693288, -0.750444233, -0.591808558, 0.357735187, 0.722349167, 0.806049764, 0.255037665, 0.53407836, 0.00683245063, 0.89832139, -0.439285904)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.628873348, 0.0313875377, -0.674309194, -0.84257251, 0.0444771722, -0.536743522, -0.494883895, 0.329295456, 0.804148316, 0.212513417, 0.943179309, -0.255444229)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--82, 3.866666555404663
		tween5 = ts:Create(part5, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.754420459, -0.707062125, -0.526479006, 0.103916705, -0.00861437991, -0.9945485, -0.888938129, 0.447690338, -0.0967594981, 0.446083367, 0.894147277, 0.0388648137)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12082851, -0.635962129, -0.371205747, 0.121769533, -0.385207891, 0.91476053, 0.871445835, 0.482669264, 0.0872497112, -0.47513628, 0.786539793, 0.394462317)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--83, 3.883333444595337
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.88175249e-06, 1.00000036, -1.01327896e-06, -0.99013257, -0.0113606527, 0.139675245, 0.102317601, 0.622455418, 0.77593869, -0.0957567766, 0.782573223, -0.615150511)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.92146039, 0.547643542, -0.751653433, -0.629550874, 0.330598354, 0.703114748, 0.776920676, 0.258823454, 0.573938012, 0.00776042044, 0.907587469, -0.419791311)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.675168335, 0.0520043671, -0.709295809, -0.857638836, 0.109977216, -0.502355278, -0.452916622, 0.301129282, 0.839159012, 0.243562236, 0.947220743, -0.208449572)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--84, 3.9000000953674316
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.781054735, -0.717925191, -0.543884039, 0.13152802, 0.0271559972, -0.99094075, -0.871667147, 0.479247332, -0.102563187, 0.472120225, 0.877261102, 0.0867055431)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1148541, -0.65037787, -0.386638284, 0.131913304, -0.328278005, 0.935324848, 0.847421646, 0.526876569, 0.065406166, -0.514271975, 0.783986151, 0.34769246)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--85, 3.9166667461395264
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83332372e-06, 1.00000048, -1.16229057e-06, -0.992282689, 0.00269397721, 0.123969518, 0.101877347, 0.587643206, 0.802681208, -0.0706874281, 0.809116125, -0.583382189)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.888384223, 0.520921707, -0.745761514, -0.627601385, 0.376619995, 0.681376457, 0.77850759, 0.296267837, 0.5533095, 0.00651748478, 0.877714396, -0.479139715)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.660622716, 0.0229969621, -0.682241023, -0.872272432, 0.0985915065, -0.478978455, -0.421729356, 0.344178647, 0.838859558, 0.247558609, 0.933713794, -0.258638591)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--86, 3.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(1.9499998092651367, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {C0 = CFrame.new(-0.134312466, 0.436146885, 1.26405346, -0.998812199, 0.0353825241, -0.0335010327, -0.00480769016, 0.6126194, 0.790364087, 0.0484884493, 0.789585948, -0.611721754)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.780344248, -0.74157232, -0.555220008, 0.115147471, 0.0502898023, -0.99207443, -0.850722253, 0.520612299, -0.0723503828, 0.512847722, 0.852310956, 0.102729797)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12181222, -0.635056019, -0.369992256, 0.12990886, -0.379373491, 0.91607821, 0.863274336, 0.497745216, 0.0837094337, -0.487730682, 0.779952109, 0.392164916)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--87, 3.950000047683716
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.79607081e-06, 1.00000036, -1.25169754e-06, -0.992189705, 0.0348296128, 0.119779848, 0.117079921, 0.591347992, 0.797872305, -0.0430420004, 0.805664241, -0.590806961)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.916188657, 0.550146341, -0.743505657, -0.622265279, 0.339140415, 0.705528021, 0.782793522, 0.264406145, 0.563314915, 0.00449693203, 0.902813852, -0.430007726)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.650500536, 0.0232561827, -0.677294195, -0.888007998, 0.0865704492, -0.451605141, -0.401872933, 0.331189424, 0.853704512, 0.223472446, 0.939584792, -0.259308338)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--88, 3.9666666984558105
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.750059605, -0.736737549, -0.53993094, 0.0890734196, -0.000150401145, -0.996024787, -0.845470011, 0.528631926, -0.0756892115, 0.526541948, 0.848851204, 0.046959877)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11758673, -0.647708118, -0.383380234, 0.141831696, -0.31130448, 0.93966651, 0.843822956, 0.534319639, 0.0496508777, -0.517538965, 0.785869956, 0.338469446)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--89, 3.9833333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.78862023e-06, 1.0000006, -1.10268593e-06, -0.996779621, -0.00875180401, 0.0797135159, 0.0613860264, 0.556340814, 0.828683853, -0.0516003706, 0.830908358, -0.554011643)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.933944166, 0.542910099, -0.741328835, -0.645573139, 0.300613731, 0.702044547, 0.763264656, 0.284946859, 0.579855382, -0.0257328749, 0.910184681, -0.413401991)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333539962768555, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.680331349, 0.0199966431, -0.689616561, -0.879655421, 0.134697229, -0.456139356, -0.393547475, 0.332401484, 0.857105494, 0.267071038, 0.933470249, -0.239388898)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--90, 4
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.774580002, -0.732875586, -0.548755705, 0.118348196, 0.0295976792, -0.992530823, -0.837483943, 0.540004969, -0.0837573707, 0.533492506, 0.841141343, 0.0886961296)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11374497, -0.644755185, -0.381811857, 0.1176489, -0.368713081, 0.92206794, 0.842571259, 0.528483152, 0.103822276, -0.52557826, 0.764693379, 0.37284261)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--91, 4.016666889190674
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.76813114e-06, 1.0000006, -1.16229057e-06, -0.996227026, 0.0124330353, 0.0858930275, 0.0770509541, 0.582179189, 0.809401631, -0.0399418175, 0.812965751, -0.580940247)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.932664633, 0.553181171, -0.736204863, -0.626555979, 0.303863168, 0.717701197, 0.779031038, 0.271591961, 0.565109432, -0.0232058167, 0.913183868, -0.406886488)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.657543361, 0.0130723715, -0.673637271, -0.875425041, 0.119196154, -0.468426555, -0.403361231, 0.353830785, 0.843862236, 0.266328812, 0.927683532, -0.261673123)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--92, 4.0333333015441895
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.784969449, -0.709621131, -0.541058362, 0.143838719, 0.0197838712, -0.989403188, -0.842100561, 0.527589798, -0.111874342, 0.519785643, 0.849268973, 0.092547819)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10699952, -0.656729996, -0.394503951, 0.112487227, -0.340525448, 0.93348223, 0.822368741, 0.559201837, 0.104893818, -0.557724178, 0.755867183, 0.342940629)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--93, 4.050000190734863
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.77744436e-06, 1.00000048, -1.22189522e-06, -0.997174978, 0.0103983283, 0.0743946955, 0.066766426, 0.576530337, 0.814343393, -0.0344229899, 0.817009747, -0.575595617)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.968076229, 0.520568848, -0.735969663, -0.663266957, 0.235019833, 0.710522711, 0.742259026, 0.327793479, 0.584468067, -0.0955431014, 0.915050209, -0.391860276)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.660127878, 0.00743567944, -0.670843303, -0.87859261, 0.129030094, -0.459811151, -0.391600728, 0.356457323, 0.84828496, 0.273357213, 0.925359607, -0.262652367)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--94, 4.066666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.792217493, -0.697433352, -0.537197948, 0.153475985, 0.0263415352, -0.987801015, -0.843679309, 0.523917675, -0.117112279, 0.514441609, 0.851361513, 0.102632545)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12063718, -0.64302516, -0.378063798, 0.141839728, -0.329612732, 0.933400691, 0.838621855, 0.54098779, 0.0636024997, -0.525922596, 0.773748934, 0.353154063)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--95, 4.083333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83332372e-06, 1.00000048, -1.13248825e-06, -0.994390368, -0.0179546457, 0.10424149, 0.0731807426, 0.594794273, 0.800540328, -0.0763756558, 0.803677678, -0.590143442)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.974590659, 0.556190252, -0.730188191, -0.68600738, 0.208059996, 0.697212219, 0.723751068, 0.293496788, 0.624535203, -0.0746886507, 0.933043718, -0.351924777)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.627576947, 0.0304083526, -0.670035839, -0.880177021, 0.098391749, -0.464335442, -0.410071194, 0.335001975, 0.848301411, 0.239019141, 0.937066436, -0.254513294)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--96, 4.099999904632568
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.758839786, -0.723374486, -0.537235796, 0.104101852, 0.00352871045, -0.994560122, -0.819191396, 0.567374825, -0.0837326497, 0.563992977, 0.823452234, 0.0619553849)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11676502, -0.657043576, -0.391999483, 0.126385033, -0.359373242, 0.924596012, 0.813672543, 0.570705235, 0.110599943, -0.567418575, 0.73834008, 0.364540815)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--97, 4.116666793823242
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85195017e-06, 1.00000048, -1.13248825e-06, -0.992657721, -0.0270857811, 0.117888495, 0.0794918761, 0.588522673, 0.804563642, -0.0911722779, 0.808027327, -0.582048059)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.982065916, 0.529515505, -0.727886558, -0.653595448, 0.20713219, 0.727948666, 0.747879148, 0.324359417, 0.579195976, -0.116146892, 0.922977269, -0.366909832)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.643744588, 0.0156963468, -0.668352246, -0.892244041, 0.11908444, -0.435567796, -0.376834035, 0.335092753, 0.863544405, 0.248790354, 0.9346295, -0.254109353)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--98, 4.133333206176758
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.770735621, -0.721887887, -0.541658521, 0.101885185, 0.0496880338, -0.993554354, -0.821252167, 0.567828357, -0.0558188558, 0.561394811, 0.821646035, 0.0986596495)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09836125, -0.655319571, -0.395521641, 0.0960183293, -0.338849694, 0.935928047, 0.811470449, 0.571184516, 0.12354558, -0.576451242, 0.747615278, 0.329810858)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--99, 4.150000095367432
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.8407743e-06, 1.00000072, -1.28149986e-06, -0.994112074, -0.00873935968, 0.108006969, 0.0836396441, 0.571825862, 0.816100419, -0.068893373, 0.820328772, -0.567727745)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.950046182, 0.540533543, -0.721842229, -0.687600613, 0.226197213, 0.689956725, 0.721271157, 0.322072327, 0.613218963, -0.0835074931, 0.91929543, -0.384606838)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.652391851, 0.0275796354, -0.68128556, -0.886809766, 0.14082247, -0.440156281, -0.380026668, 0.319734275, 0.867957354, 0.262960821, 0.93698442, -0.230027109)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--100, 4.166666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.768637717, -0.714197874, -0.536740065, 0.102931738, 0.0416482314, -0.993815899, -0.818249464, 0.571639597, -0.0607919395, 0.565572739, 0.819447041, 0.0929184183)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12333655, -0.65703392, -0.389973164, 0.14491187, -0.33615759, 0.93059051, 0.806458592, 0.585039318, 0.0857520625, -0.5732584, 0.738056004, 0.355876356)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--101, 4.183333396911621
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83332372e-06, 1.0000006, -1.16229057e-06, -0.993834555, 0.0140582882, 0.109980837, 0.0983744934, 0.569369555, 0.816174865, -0.0511456951, 0.821961939, -0.567241728)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.969991386, 0.523679733, -0.719766796, -0.696881115, 0.187678799, 0.692194581, 0.705807805, 0.350716233, 0.615494609, -0.127248511, 0.917482615, -0.376872778)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.622905612, 0.0370567441, -0.672045529, -0.864207566, 0.126987204, -0.486846507, -0.422368109, 0.342706352, 0.839140952, 0.273405582, 0.930820584, -0.242534012)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--102, 4.199999809265137
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.784930706, -0.725049853, -0.549044967, 0.128062859, 0.0517100915, -0.990416944, -0.792032599, 0.606364846, -0.0707527548, 0.596895516, 0.793503463, 0.118608825)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13079441, -0.642849803, -0.374503553, 0.159348488, -0.33547169, 0.928475559, 0.823499203, 0.563874841, 0.0624041632, -0.544478893, 0.754654586, 0.366113305)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--103, 4.2166666984558105
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.79607081e-06, 1.00000048, -1.16229057e-06, -0.994429588, 0.0159466676, 0.104192413, 0.0954022482, 0.556481361, 0.825365067, -0.044819314, 0.830707431, -0.554902434)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.984665692, 0.57334125, -0.713017523, -0.709299088, 0.153655052, 0.687957108, 0.69756496, 0.293501258, 0.653651595, -0.101479277, 0.94352895, -0.315364659)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.638385415, 0.0584437847, -0.694569051, -0.859027982, 0.156093568, -0.487550676, -0.425615489, 0.311452806, 0.849616587, 0.284468681, 0.937353969, -0.201110631)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--104, 4.233333110809326
		tween5 = ts:Create(part5, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.770870805, -0.725963414, -0.543789029, 0.123718977, 0.0077794008, -0.992286682, -0.77224189, 0.628726482, -0.0913544521, 0.623166263, 0.777587712, 0.0837929323)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11974001, -0.649466455, -0.384324193, 0.141183034, -0.32104513, 0.936481357, 0.809502423, 0.581982136, 0.0774757862, -0.56988883, 0.747145414, 0.342052817)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--105, 4.25
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.84822488e-06, 1.00000048, -9.23871994e-07, -0.992705584, -0.0135785211, 0.11979989, 0.0900308639, 0.577412128, 0.811474085, -0.0801925138, 0.816340327, -0.571977198)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.972180605, 0.572650909, -0.70893383, -0.72513932, 0.15531002, 0.67085886, 0.681544781, 0.300998122, 0.667006016, -0.0983345136, 0.940892398, -0.324116468)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.677249432, 0.0266906023, -0.692801476, -0.874902248, 0.200095251, -0.441030502, -0.367893219, 0.317647338, 0.873930693, 0.314961493, 0.926856339, -0.204296634)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--106, 4.266666889190674
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.772892356, -0.725725532, -0.544516325, 0.123027787, 0.0173556861, -0.992251337, -0.764763117, 0.638858676, -0.0836473927, 0.63245672, 0.769128203, 0.0918703452)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1270113, -0.656754494, -0.388545692, 0.153863803, -0.32598725, 0.93276906, 0.794620752, 0.601907372, 0.0792810172, -0.58728534, 0.728998959, 0.351648033)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--107, 4.2833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82587314e-06, 1.00000048, -9.83476639e-07, -0.991347313, 0.0133717097, 0.130584314, 0.113979526, 0.581141472, 0.805781424, -0.0651132911, 0.813692927, -0.577636838)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01982236, 0.567480564, -0.706027567, -0.704520226, 0.0920736119, 0.70368576, 0.691884816, 0.309787154, 0.652171254, -0.157945007, 0.946337283, -0.281955779)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.675379515, 0.0139147639, -0.683012128, -0.873013377, 0.207147643, -0.441517115, -0.360428751, 0.335825562, 0.870236874, 0.328540236, 0.918864191, -0.218518049)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--108, 4.300000190734863
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.754873991, -0.718060255, -0.53265965, 0.0813793689, 0.0397059396, -0.995891809, -0.780920863, 0.623413682, -0.0389576405, 0.619306028, 0.780883253, 0.0817401931)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12454271, -0.638597727, -0.372551143, 0.139546409, -0.369939327, 0.918515921, 0.816122293, 0.56828028, 0.104889154, -0.560777187, 0.734984338, 0.381217241)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--109, 4.316666603088379
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.77558172e-06, 1.0000006, -1.25169754e-06, -0.996514618, 0.0167123787, 0.0817318037, 0.076255478, 0.579790533, 0.811189532, -0.0338304266, 0.814594388, -0.579043746)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.991009772, 0.571758509, -0.702225685, -0.739638805, 0.10611847, 0.664584994, 0.659282088, 0.312637419, 0.683816373, -0.135208577, 0.943925977, -0.301200867)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.641409159, 0.0402649045, -0.684265912, -0.867402673, 0.180504411, -0.463714063, -0.393380284, 0.321952045, 0.861161351, 0.304737121, 0.929389954, -0.208255112)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--110, 4.333333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.775254965, -0.705912352, -0.53507477, 0.124969631, 0.0228766128, -0.99189657, -0.768033743, 0.635122776, -0.082116805, 0.628097713, 0.772072375, 0.0969410092)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12263763, -0.640532136, -0.37504679, 0.140363783, -0.348784238, 0.926632345, 0.809667528, 0.579095364, 0.0953252092, -0.569856644, 0.736883879, 0.363683283)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--111, 4.349999904632568
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81469727e-06, 1.0000006, -1.13248825e-06, -0.994544625, 0.0174159203, 0.102850914, 0.0942045078, 0.573401928, 0.813840449, -0.0448011234, 0.819089413, -0.571914077)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00951803, 0.550864339, -0.70053947, -0.741137683, 0.0709564537, 0.667592764, 0.646173954, 0.345174432, 0.680671573, -0.182137892, 0.935852349, -0.301672071)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.636507988, 0.02649647, -0.672185063, -0.87573278, 0.178825319, -0.448457062, -0.375272572, 0.332268566, 0.865313947, 0.303748012, 0.926077724, -0.223870203)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--112, 4.366666793823242
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.757053733, -0.730573058, -0.540082216, 0.0998220444, 0.00530239008, -0.994990945, -0.73037219, 0.679488838, -0.0696531534, 0.675716043, 0.733666718, 0.0717006028)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0997436, -0.646202505, -0.387033939, 0.0989305675, -0.336027682, 0.936641872, 0.795456529, 0.592240274, 0.128452718, -0.5978809, 0.732349873, 0.32588613)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--113, 4.383333206176758
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83332372e-06, 1.00000083, -1.16229057e-06, -0.994131744, -0.0230632611, 0.105692305, 0.0748346969, 0.558906376, 0.825847507, -0.0781188309, 0.828910291, -0.553900301)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01200223, 0.548924208, -0.697228909, -0.712792397, 0.0787543207, 0.696939528, 0.674820662, 0.347840428, 0.650864244, -0.191165373, 0.934240162, -0.301083148)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65439105, 0.0490220189, -0.696661413, -0.865268946, 0.212402314, -0.454086751, -0.383615762, 0.302576393, 0.872517347, 0.322720617, 0.929157376, -0.180328906)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--114, 4.400000095367432
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.765948236, -0.724293709, -0.540840745, 0.0955120325, 0.0585992336, -0.993701875, -0.742502689, 0.669082582, -0.0319111645, 0.662998557, 0.74087435, 0.107415468)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10720265, -0.644000292, -0.382999897, 0.108206406, -0.362234265, 0.925784826, 0.793960989, 0.591912389, 0.138800561, -0.598262072, 0.720017791, 0.351648629)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--115, 4.416666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82214785e-06, 1.00000072, -1.22189522e-06, -0.996298194, -0.0157791674, 0.0845071301, 0.0583503656, 0.59777391, 0.799538732, -0.0631322041, 0.801509798, -0.594640017)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00759983, 0.541480422, -0.69445312, -0.753345728, 0.052471824, 0.65552783, 0.625161052, 0.366463721, 0.689113975, -0.20406808, 0.928951323, -0.308877259)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65111661, 0.0185830891, -0.674301803, -0.853221774, 0.222663417, -0.471628845, -0.378920734, 0.356717706, 0.853915572, 0.358374029, 0.907289624, -0.219987407)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--116, 4.433333396911621
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.770555913, -0.738197446, -0.549652159, 0.111021578, 0.0400470495, -0.993010581, -0.704525948, 0.707899094, -0.0502192751, 0.700940311, 0.705177426, 0.106806174)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.106457, -0.658085823, -0.395825982, 0.112549961, -0.331099451, 0.936859369, 0.768649697, 0.626511574, 0.129076168, -0.629690409, 0.705588996, 0.32501334)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--117, 4.449999809265137
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85195017e-06, 1.0000006, -9.23871994e-07, -0.992460787, -0.0213530418, 0.120690361, 0.085794732, 0.582193971, 0.808511019, -0.0875293538, 0.812769771, -0.575972259)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04382241, 0.587401032, -0.685575843, -0.718708098, 0.0128056183, 0.695193946, 0.664953589, 0.30486989, 0.681829154, -0.20321247, 0.952307761, -0.22762762)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.657490909, 0.0146697164, -0.674764514, -0.88207972, 0.222545683, -0.415221512, -0.3350977, 0.323113978, 0.885046303, 0.331126988, 0.91982156, -0.21043776)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--118, 4.4666666984558105
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.781958461, -0.718049765, -0.544302285, 0.135357723, 0.0266222116, -0.990438938, -0.707872808, 0.702034473, -0.0778707713, 0.693249285, 0.711645246, 0.113870829)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12219357, -0.635031819, -0.369843245, 0.137754574, -0.358770311, 0.923204958, 0.800789893, 0.58887732, 0.10935735, -0.582888782, 0.72422868, 0.368420154)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--119, 4.483333110809326
		tween6 = ts:Create(part6, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82959843e-06, 1.00000048, -1.31130219e-06, -0.991289914, 0.0327279978, 0.127568617, 0.122866809, 0.578581572, 0.806317329, -0.0474196933, 0.81496799, -0.577562988)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.02940726, 0.562409818, -0.685926199, -0.746922493, 0.00990840793, 0.664837301, 0.6265558, 0.345178485, 0.698770106, -0.222563773, 0.938484609, -0.264029801)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.654762268, 0.0136846602, -0.672660947, -0.858547091, 0.240129083, -0.453028738, -0.358266771, 0.351125807, 0.865075588, 0.366799802, 0.905013502, -0.215427771)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--120, 4.5
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.757303596, -0.710890651, -0.52992171, 0.0899900943, 0.036847271, -0.995260596, -0.722049236, 0.690700889, -0.0397150218, 0.685963869, 0.722201347, 0.0887617245)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11910164, -0.651900053, -0.386726677, 0.135989234, -0.334201813, 0.932639241, 0.770281374, 0.627682924, 0.112608202, -0.623035669, 0.703080952, 0.342787653)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--121, 4.516666889190674
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.86312604e-06, 1.00000048, -1.1920929e-06, -0.99151957, 0.0076193586, 0.129736736, 0.11103528, 0.568423748, 0.81520921, -0.0675340518, 0.822701097, -0.564448833)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06948638, 0.577760696, -0.678387403, -0.744520605, -0.0605442449, 0.664848506, 0.61420089, 0.328151822, 0.717686474, -0.261622995, 0.942682624, -0.207129598)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.642105103, 0.0167912841, -0.668270707, -0.879313231, 0.22332637, -0.420634776, -0.33862704, 0.327862799, 0.881951094, 0.334873378, 0.917949915, -0.212669671)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--122, 4.5333333015441895
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.763779759, -0.708897352, -0.53175348, 0.104978651, 0.0252498183, -0.994153738, -0.705502987, 0.706446707, -0.0565556958, 0.700888574, 0.707315683, 0.091975607)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12534714, -0.644770026, -0.378175199, 0.149021208, -0.326664507, 0.933318198, 0.778074205, 0.621220648, 0.0931956843, -0.610240281, 0.712302506, 0.346744239)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--123, 4.550000190734863
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85940075e-06, 1.00000036, -1.07288361e-06, -0.988681138, 0.00768205523, 0.149836972, 0.127085194, 0.573705435, 0.809142768, -0.0797463953, 0.819025993, -0.568187594)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03809345, 0.568319798, -0.678928256, -0.743182838, -0.0139253363, 0.668943405, 0.624702692, 0.343635619, 0.701185644, -0.239636973, 0.938999593, -0.246684954)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.660268188, 0.00810110569, -0.67140305, -0.870455801, 0.255492806, -0.420749307, -0.328024089, 0.336244911, 0.882802069, 0.367024392, 0.906456411, -0.208878428)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--124, 4.566666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.765726686, -0.717218637, -0.53707844, 0.114981934, 0.000890729949, -0.993367016, -0.672105134, 0.73642695, -0.0771356076, 0.731473565, 0.676516533, 0.0852743834)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12287402, -0.640705645, -0.375134945, 0.145996436, -0.314292997, 0.938032508, 0.780499816, 0.619213283, 0.0859930143, -0.607869387, 0.719579279, 0.335708559)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--125, 4.583333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83332372e-06, 1.00000048, -1.25169754e-06, -0.993868768, 0.0127075836, 0.10983666, 0.0981446281, 0.558895051, 0.823410273, -0.0509235971, 0.829141498, -0.556715012)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06492567, 0.564681292, -0.674382269, -0.758749008, -0.0770402849, 0.646811068, 0.585987747, 0.352908731, 0.729433715, -0.284461081, 0.932480395, -0.2226246)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.66271615, 0.0317700803, -0.689323127, -0.859503269, 0.271536767, -0.433037817, -0.346485555, 0.313322693, 0.88418138, 0.375768363, 0.909998596, -0.175218195)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--126, 4.599999904632568
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.76608634, -0.711052537, -0.533944786, 0.112310246, 0.012789188, -0.993590713, -0.673039138, 0.736602664, -0.0665954277, 0.731029928, 0.67620492, 0.0913355947)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11065567, -0.642570376, -0.380678415, 0.114322066, -0.371148974, 0.921509027, 0.769148171, 0.620150089, 0.154352784, -0.628761768, 0.691130877, 0.356365502)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--127, 4.616666793823242
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.87430191e-06, 1.00000072, -1.13248825e-06, -0.993063211, -0.0365523919, 0.111759052, 0.0684400424, 0.593186438, 0.802151024, -0.0956144631, 0.80423528, -0.586569428)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06911278, 0.567193627, -0.670953393, -0.737611532, -0.0740970671, 0.671147346, 0.610393047, 0.351812094, 0.709681988, -0.288703084, 0.933133185, -0.214272439)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.647926748, 0.0547227859, -0.697092175, -0.863084078, 0.261871845, -0.431866735, -0.358217776, 0.28539139, 0.888949692, 0.356041908, 0.921941161, -0.152509481)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--128, 4.633333206176758
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.781291187, -0.710252225, -0.539921999, 0.136339903, 0.0180891007, -0.990496814, -0.656723261, 0.75022161, -0.0766955167, 0.741704941, 0.660939038, 0.114164546)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12384558, -0.643063664, -0.377061427, 0.144348741, -0.336336136, 0.930613399, 0.766705871, 0.632558167, 0.109690331, -0.625560164, 0.697672963, 0.349180043)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--129, 4.650000095367432
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.80352139e-06, 1.00000083, -1.1920929e-06, -0.997161031, -0.00126844645, 0.0752919614, 0.060401246, 0.583614707, 0.809781611, -0.0449686386, 0.812030077, -0.581880808)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07785583, 0.588275075, -0.6648646, -0.759095728, -0.112725526, 0.641144812, 0.5814358, 0.325518072, 0.745634258, -0.292756259, 0.938792169, -0.18155691)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65320605, 0.0199469924, -0.676349521, -0.855689228, 0.278864235, -0.435925126, -0.339057386, 0.334268153, 0.879377604, 0.390942723, 0.900277853, -0.191478655)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--130, 4.666666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.753196001, -0.700342119, -0.522107065, 0.0917348415, 0.0063195657, -0.995763242, -0.667593777, 0.742356658, -0.056790784, 0.73885262, 0.669975162, 0.0723188221)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11245358, -0.657004595, -0.393223822, 0.122171372, -0.339264274, 0.93272382, 0.737452149, 0.659986019, 0.143466026, -0.664257705, 0.67031163, 0.330822647)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--131, 4.683333396911621
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83332372e-06, 1.0000006, -1.1920929e-06, -0.994615972, 0.000947315246, 0.103628479, 0.0834445432, 0.600307465, 0.795404613, -0.0614554286, 0.799769044, -0.597154021)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07491684, 0.579942822, -0.663681328, -0.748118877, -0.10463208, 0.655263603, 0.592294276, 0.339925617, 0.730505466, -0.299175113, 0.934613526, -0.192331955)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.653591633, 0.0184704065, -0.675497234, -0.847836554, 0.290692747, -0.443476021, -0.340607703, 0.342429221, 0.875630379, 0.406398475, 0.893443227, -0.191311836)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--132, 4.699999809265137
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.763738036, -0.726037443, -0.54076612, 0.103601396, 0.0339207947, -0.994040132, -0.62435472, 0.780194104, -0.0384483561, 0.774240136, 0.624617159, 0.102007732)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11294913, -0.655937552, -0.392148912, 0.118609995, -0.377020299, 0.918578923, 0.732247353, 0.658029556, 0.175530568, -0.670630813, 0.651807308, 0.354121029)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--133, 4.7166666984558105
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85195017e-06, 1.0000006, -1.16229057e-06, -0.990819454, 0.00283744559, 0.135163993, 0.11359901, 0.559526086, 0.820991099, -0.0732982755, 0.828808308, -0.554711342)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08294463, 0.575970292, -0.660719573, -0.759741902, -0.13479656, 0.6360991, 0.564834356, 0.347802758, 0.748328447, -0.322109103, 0.927826822, -0.188102633)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.643060803, 0.0557878315, -0.695295155, -0.848599732, 0.286972463, -0.444438368, -0.362316877, 0.296896875, 0.883503735, 0.385493517, 0.910768747, -0.14797163)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--134, 4.733333110809326
		tween5 = ts:Create(part5, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.778995514, -0.715502799, -0.541776419, 0.133372903, 0.0111464038, -0.991003096, -0.610444367, 0.788661599, -0.0732853189, 0.780749202, 0.614726543, 0.111990243)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12505949, -0.640593827, -0.374304473, 0.144253463, -0.35586518, 0.923336744, 0.756035089, 0.641655445, 0.129186034, -0.638436913, 0.679439366, 0.361607671)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--135, 4.75
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.77744436e-06, 1.0000006, -1.28149986e-06, -0.994921029, 0.0224670954, 0.0981231853, 0.0913825333, 0.610387385, 0.786814511, -0.0422157347, 0.791784644, -0.609339952)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09609199, 0.598834515, -0.653512597, -0.759170711, -0.164641246, 0.629724741, 0.563685358, 0.317447037, 0.76255244, -0.325451791, 0.933873892, -0.148190737)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.653512001, 0.0191776454, -0.675959945, -0.856883287, 0.301278204, -0.418309182, -0.320497036, 0.324223161, 0.890034199, 0.403773427, 0.896722555, -0.181262612)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--136, 4.766666889190674
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.772356391, -0.737626851, -0.550128758, 0.113631114, 0.0594164133, -0.991744637, -0.588103235, 0.808564007, -0.0189412013, 0.800763667, 0.585400641, 0.126820952)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.120327, -0.659527838, -0.393086731, 0.137232438, -0.337299228, 0.931341171, 0.719193935, 0.680462122, 0.140466973, -0.681122065, 0.650538325, 0.335965097)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--137, 4.7833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.76813114e-06, 1.00000072, -1.07288361e-06, -0.997381806, 0.0104234163, 0.0715658516, 0.065221861, 0.557200491, 0.827812791, -0.0312478952, 0.830312788, -0.556420982)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08828878, 0.563354731, -0.656732917, -0.756496966, -0.153559536, 0.635713577, 0.552473545, 0.370124638, 0.746847093, -0.349978775, 0.916202426, -0.195160612)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.645865619, 0.0276193023, -0.677946746, -0.870420396, 0.293521047, -0.395238847, -0.309648067, 0.297733068, 0.903035462, 0.38273555, 0.908405781, -0.168264627)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--138, 4.800000190734863
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.758401036, -0.727272689, -0.539029658, 0.0980064869, 0.0165512692, -0.995047867, -0.578605056, 0.814450085, -0.0434419736, 0.809697926, 0.579997599, 0.0893980116)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12840569, -0.659798265, -0.390758395, 0.154501662, -0.317268461, 0.935665369, 0.715605199, 0.688901186, 0.11543075, -0.681203783, 0.651732802, 0.333475411)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--139, 4.816666603088379
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.79607081e-06, 1.00000072, -1.28149986e-06, -0.996265709, 0.00582441129, 0.0861463547, 0.0742093921, 0.567779899, 0.819828987, -0.0441371389, 0.823160231, -0.566091418)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12073421, 0.567845821, -0.648925304, -0.750474513, -0.216009796, 0.624602199, 0.531268477, 0.364979327, 0.764554858, -0.393118203, 0.905610085, -0.159148544)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.640725017, 0.026453346, -0.674419284, -0.864174843, 0.299239159, -0.404546261, -0.313833803, 0.307917863, 0.898161948, 0.393332303, 0.903129637, -0.172183454)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--140, 4.833333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.75952065, -0.738653541, -0.545134187, 0.0971462727, 0.0351331457, -0.994649589, -0.555186868, 0.831353903, -0.0248592347, 0.826032698, 0.55463165, 0.100268349)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11767697, -0.644268513, -0.380163431, 0.131328136, -0.345722437, 0.92910099, 0.735130429, 0.662737191, 0.142696917, -0.665083528, 0.664270222, 0.341187149)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--141, 4.849999904632568
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82214785e-06, 1.0000006, -1.22189522e-06, -0.994958282, 0.00234667771, 0.100266151, 0.082880877, 0.58219409, 0.808814883, -0.0564763136, 0.813046873, -0.579452813)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11154366, 0.576853573, -0.647503138, -0.755002975, -0.208083555, 0.621829629, 0.534380078, 0.3543244, 0.767393053, -0.380011261, 0.911677122, -0.156320184)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.656799078, 0.0494555235, -0.698132575, -0.847387016, 0.331528097, -0.414758414, -0.329767615, 0.283622831, 0.900450647, 0.41615957, 0.899804354, -0.131011069)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--142, 4.866666793823242
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.772682071, -0.714435041, -0.538592756, 0.12250191, 0.00621126406, -0.992448628, -0.560624182, 0.825590849, -0.0640330762, 0.818958819, 0.564235032, 0.104618564)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14109492, -0.659338117, -0.385951221, 0.176587999, -0.33789131, 0.924470782, 0.70635426, 0.697604537, 0.120048054, -0.68547827, 0.631804526, 0.36185962)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--143, 4.883333206176758
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.78116965e-06, 1.00000036, -1.25169754e-06, -0.992227495, 0.04903014, 0.114372782, 0.122028589, 0.563403487, 0.817120552, -0.0243745036, 0.824725986, -0.56500721)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1291672, 0.6046139, -0.638323426, -0.748895526, -0.243074015, 0.61649853, 0.539728403, 0.316060811, 0.780255616, -0.384510845, 0.917071581, -0.10550265)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.646755993, 0.0259099603, -0.67721808, -0.871004879, 0.315835923, -0.37629512, -0.290348917, 0.286925852, 0.912891388, 0.396292806, 0.904390335, -0.158211052)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--144, 4.900000095367432
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.76768589, -0.712550581, -0.535450161, 0.114286631, 0.00275225006, -0.993443847, -0.550771654, 0.832419932, -0.0610550493, 0.826794565, 0.554138541, 0.0966502428)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10662282, -0.636585355, -0.376135826, 0.110032827, -0.350001603, 0.930264235, 0.737493098, 0.656210542, 0.159660429, -0.666330814, 0.668495417, 0.330328435)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--145, 4.916666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81469727e-06, 1.00000072, -1.01327896e-06, -0.995669127, -0.0184565522, 0.0911209062, 0.0637314543, 0.578091502, 0.813479543, -0.0676902458, 0.815763474, -0.574411213)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14744568, 0.605572522, -0.632316828, -0.752200425, -0.290225476, 0.591577351, 0.509155691, 0.313891679, 0.801394105, -0.418276131, 0.904013753, -0.0883394778)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.658107102, 0.0370923281, -0.69064641, -0.85293442, 0.344332248, -0.392349422, -0.30398792, 0.283389479, 0.909550309, 0.424375176, 0.895056665, -0.137039751)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--146, 4.933333396911621
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.760140538, -0.733872175, -0.54309082, 0.0954786986, 0.066032365, -0.993238747, -0.533856988, 0.845560789, 0.00489552319, 0.840167046, 0.52978009, 0.115984797)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11726499, -0.643373728, -0.379451215, 0.128724292, -0.375088036, 0.918008029, 0.720015645, 0.671900868, 0.173569947, -0.681914568, 0.638637424, 0.356559247)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--147, 4.949999809265137
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.79234552e-06, 1.00000048, -1.43051147e-06, -0.9945485, 0.0349405631, 0.0982501432, 0.0990192667, 0.611871958, 0.784734547, -0.0326974541, 0.790185094, -0.611995757)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13890064, 0.579763532, -0.636262417, -0.755628943, -0.281486571, 0.591430604, 0.492028356, 0.352089465, 0.79620415, -0.432357252, 0.892635345, -0.127549648)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.632514715, 0.0300940275, -0.672539532, -0.853331923, 0.32611829, -0.406781971, -0.310313672, 0.309282243, 0.898916066, 0.418963283, 0.89330405, -0.162721455)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--148, 4.9666666984558105
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.779765248, -0.715665519, -0.542175651, 0.130755559, 0.0369662791, -0.990724981, -0.527937412, 0.848431826, -0.0380199552, 0.839157462, 0.528012216, 0.130452976)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.09870267, -0.634181499, -0.375967264, 0.0950331986, -0.351328343, 0.931416571, 0.731033862, 0.659715176, 0.174255297, -0.67569077, 0.664336979, 0.319527805)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--149, 4.983333110809326
		tween6 = ts:Create(part6, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81097198e-06, 1.00000048, -1.10268593e-06, -0.99484849, 0.00407139584, 0.101295024, 0.0834445134, 0.600307405, 0.795404553, -0.0575697422, 0.799759269, -0.597554088)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13919342, 0.589375257, -0.633283913, -0.755821526, -0.287859201, 0.588107944, 0.493639618, 0.339581937, 0.800627232, -0.430178732, 0.895444512, -0.114564762)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.638475895, 0.0353588164, -0.679394126, -0.8481341, 0.341961175, -0.404637218, -0.30937624, 0.300325543, 0.9022699, 0.430063993, 0.890431285, -0.148921609)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--150, 5
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.762777686, -0.733740449, -0.544182897, 0.103402108, 0.0322736725, -0.99411571, -0.490362048, 0.871222615, -0.0227205828, 0.865362883, 0.489826113, 0.10591194)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1110301, -0.645555496, -0.38335222, 0.117646545, -0.369169474, 0.921885669, 0.705623865, 0.684286654, 0.183974683, -0.698752046, 0.628860414, 0.340998739)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--151, 5.016666889190674
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82587314e-06, 1.00000048, -9.53674316e-07, -0.994372785, -0.0145090669, 0.10494294, 0.0776359364, 0.574212611, 0.815017164, -0.0720846877, 0.818578005, -0.569854319)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16344869, 0.580689192, -0.627103984, -0.744420826, -0.33404994, 0.578141987, 0.470854759, 0.351291597, 0.809252977, -0.473427236, 0.874645352, -0.104219832)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.6474334, 0.052734226, -0.695569992, -0.845493436, 0.359156787, -0.395154893, -0.311406195, 0.269509971, 0.911257625, 0.433782548, 0.893516302, -0.116025172)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--152, 5.0333333015441895
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.767026007, -0.712972581, -0.53538996, 0.108481213, 0.0688836649, -0.991708934, -0.523097217, 0.852270663, 0.00197772682, 0.845340848, 0.518545747, 0.128488109)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1175518, -0.645843267, -0.381669939, 0.131490171, -0.33862403, 0.931688726, 0.702699304, 0.694766104, 0.153341502, -0.699231088, 0.634534061, 0.329305887)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--153, 5.050000190734863
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.77930701e-06, 1.00000072, -1.25169754e-06, -0.997099876, 0.00640655495, 0.075836204, 0.0653834566, 0.582089543, 0.81049192, -0.0389509983, 0.813099742, -0.580820024)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17648053, 0.590870142, -0.620730877, -0.735117614, -0.35864675, 0.575303912, 0.472471267, 0.337545276, 0.81414628, -0.486182034, 0.870307684, -0.0786852092)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.630686462, 0.0451140404, -0.681801736, -0.866511524, 0.338204741, -0.367117733, -0.289054513, 0.259624571, 0.921434939, 0.40694645, 0.904551446, -0.127208009)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--154, 5.066666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.761744618, -0.740990043, -0.547222257, 0.100612834, 0.0649622008, -0.992802382, -0.464563549, 0.885473251, 0.0108594038, 0.879805624, 0.460127294, 0.119268924)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11212015, -0.661673963, -0.397343218, 0.121673256, -0.323217124, 0.938470185, 0.668793917, 0.725336015, 0.163102433, -0.733423769, 0.607797801, 0.304419726)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--155, 5.083333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.79420817e-06, 1.00000072, -1.25169754e-06, -0.997567892, 0.00829227082, 0.0692120567, 0.0605985485, 0.593883038, 0.8022663, -0.0344512537, 0.804508924, -0.592940748)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17441809, 0.61523658, -0.615940094, -0.737225354, -0.361734986, 0.57065475, 0.485676914, 0.303429812, 0.819785595, -0.469698727, 0.881520271, -0.0480097607)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.619235516, 0.0411809981, -0.67280817, -0.850425482, 0.343215287, -0.398722768, -0.30594188, 0.29392615, 0.905542374, 0.427990943, 0.892082632, -0.144958317)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--156, 5.099999904632568
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.760110736, -0.701711178, -0.526099622, 0.0990411639, 0.0370450318, -0.994393349, -0.502349019, 0.864481091, -0.0178284273, 0.858974099, 0.501298308, 0.104228675)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11361682, -0.643794835, -0.380954444, 0.12313363, -0.371391296, 0.920275271, 0.693485439, 0.695535183, 0.187905177, -0.709870458, 0.615059972, 0.343198359)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--157, 5.116666793823242
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83704901e-06, 1.00000048, -1.1920929e-06, -0.992825091, 0.011160627, 0.119056553, 0.102906473, 0.586842179, 0.803135753, -0.0609039068, 0.809624732, -0.583779812)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.17635584, 0.607816279, -0.615533829, -0.741856933, -0.377160072, 0.554435253, 0.461622775, 0.312460631, 0.830224633, -0.486366749, 0.871847689, -0.0576954521)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.655273974, 0.00260359049, -0.6647771, -0.852197468, 0.383290321, -0.356157303, -0.247905791, 0.303654969, 0.919965386, 0.460762799, 0.872285962, -0.163754061)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--158, 5.133333206176758
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.760993898, -0.74200511, -0.547374725, 0.100522146, 0.0585385822, -0.993211091, -0.430974901, 0.902313232, 0.0095625408, 0.89674741, 0.427087873, 0.115931064)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11403883, -0.637052834, -0.374409139, 0.124952614, -0.327054501, 0.936708033, 0.703969002, 0.694514036, 0.148585558, -0.699152827, 0.640847266, 0.317017674)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--159, 5.150000095367432
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.86685133e-06, 1.00000048, -9.83476639e-07, -0.990836143, -0.0127472039, 0.134468496, 0.102935158, 0.57333231, 0.812831461, -0.087456435, 0.819224179, -0.566765666)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20498443, 0.585763574, -0.60902071, -0.718071997, -0.422711313, 0.55289042, 0.437740654, 0.343292326, 0.830983639, -0.54106909, 0.838728309, -0.0614707395)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.640092254, 0.0160485506, -0.666652441, -0.864194036, 0.368749768, -0.342333645, -0.2488776, 0.278041661, 0.927767515, 0.437297076, 0.886970758, -0.14850831)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--160, 5.166666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.77617085, -0.732892752, -0.549415946, 0.125683814, 0.0532487482, -0.990640044, -0.423568368, 0.905850172, -0.00504754484, 0.897102654, 0.420238316, 0.136405095)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10652471, -0.652475893, -0.390892148, 0.110525459, -0.329774499, 0.937567472, 0.668788075, 0.722493827, 0.175285518, -0.735191524, 0.607660353, 0.300403208)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--161, 5.183333396911621
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.80724669e-06, 1.0000006, -1.07288361e-06, -0.995340824, -0.0241888911, 0.0933400691, 0.0596235916, 0.60637331, 0.792942047, -0.0757793114, 0.7948125, -0.602105379)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.18286598, 0.597988725, -0.61323911, -0.75221324, -0.417459905, 0.509806275, 0.403692096, 0.319520891, 0.857285976, -0.520776272, 0.850666523, -0.0718227401)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.648817182, 0.0436147451, -0.690326393, -0.855929255, 0.388345927, -0.341427207, -0.263565451, 0.240424916, 0.934199691, 0.444880128, 0.889597595, -0.103432164)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--162, 5.199999809265137
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.777252913, -0.704013407, -0.534864187, 0.126876131, 0.0271462034, -0.991546869, -0.444651157, 0.895117939, -0.0323903412, 0.886672258, 0.445002109, 0.125639662)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10009003, -0.650708616, -0.391016781, 0.0981514752, -0.348051935, 0.932322919, 0.664710581, 0.72014755, 0.198865056, -0.740625501, 0.600205839, 0.302037358)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--163, 5.2166666984558105
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83704901e-06, 1.00000048, -9.83476639e-07, -0.989120364, 0.0112155452, 0.146682143, 0.124639869, 0.593532741, 0.795100212, -0.0781431645, 0.804732025, -0.588472784)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22698808, 0.620628238, -0.593297541, -0.706433594, -0.475145102, 0.524584413, 0.436681718, 0.290693074, 0.851355851, -0.557010531, 0.83050257, 0.00213167816)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.671293736, 0.0169298649, -0.683200419, -0.834803522, 0.426805258, -0.34776485, -0.245258927, 0.277226686, 0.928974271, 0.492900789, 0.860803723, -0.126751974)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--164, 5.233333110809326
		tween5 = ts:Create(part5, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.758874118, -0.713915706, -0.53227663, 0.0959764421, 0.0157288164, -0.995259106, -0.414803147, 0.90955025, -0.0256266557, 0.904835224, 0.415296286, 0.0938197225)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12095392, -0.636915386, -0.372098446, 0.137855858, -0.343265712, 0.92906642, 0.688392043, 0.707628429, 0.15930602, -0.712118268, 0.617600501, 0.333852082)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--165, 5.25
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82959843e-06, 1.0000006, -1.07288361e-06, -0.992787123, -0.0208798144, 0.118061326, 0.0836749896, 0.584573865, 0.807014465, -0.0858658925, 0.811072052, -0.578609943)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.20788383, 0.617357314, -0.600175202, -0.741470456, -0.480367243, 0.468474835, 0.373730361, 0.284196228, 0.882925987, -0.557267487, 0.829746783, -0.0311953798)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.678047895, 0.0355609059, -0.699150324, -0.835059226, 0.438590765, -0.332136095, -0.246910945, 0.240722597, 0.938662648, 0.491641253, 0.86584723, -0.0927247256)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--166, 5.266666889190674
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.758939862, -0.729434311, -0.54035908, 0.0984389633, 0.0541834161, -0.993666649, -0.39072904, 0.920434117, 0.0114820115, 0.915226996, 0.3871243, 0.111777544)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1331706, -0.662548542, -0.391547441, 0.16101554, -0.328134507, 0.930806994, 0.63628459, 0.755464256, 0.156253949, -0.754463971, 0.567098916, 0.330428541)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--167, 5.2833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81097198e-06, 1.0000006, -1.07288361e-06, -0.995151758, -0.0219937526, 0.0958645567, 0.0661420077, 0.571724772, 0.817775369, -0.0727940872, 0.820150971, -0.56749773)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23967755, 0.625399888, -0.585917711, -0.696256399, -0.506091774, 0.509016812, 0.424437165, 0.281606436, 0.860552728, -0.578860939, 0.815210819, 0.0187337585)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.660501838, 0.0123544633, -0.674619675, -0.845839977, 0.423621267, -0.324191332, -0.225791186, 0.26629436, 0.937072873, 0.483294129, 0.865813494, -0.129592374)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--168, 5.300000190734863
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.747919321, -0.730235338, -0.535711408, 0.0803943425, 0.0538029373, -0.99530983, -0.37750715, 0.925800204, 0.0195530318, 0.922510207, 0.374164701, 0.0947400182)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13598824, -0.651853263, -0.381075203, 0.166278943, -0.325688899, 0.930740595, 0.651961744, 0.744447649, 0.144026071, -0.739795446, 0.582858562, 0.336122751)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--169, 5.316666603088379
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.78675759e-06, 1.0000006, -1.34110451e-06, -0.996611774, -0.00371184573, 0.0821683407, 0.066025801, 0.559640646, 0.826101303, -0.0490511172, 0.828727365, -0.55749917)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23518503, 0.623160064, -0.587715745, -0.703880966, -0.509698808, 0.494730771, 0.406719506, 0.281811386, 0.869000196, -0.5823493, 0.812889338, 0.00894284993)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.667072535, 0.0466864705, -0.701309323, -0.823856592, 0.448037773, -0.347163677, -0.261701643, 0.242616162, 0.934157073, 0.502765059, 0.860465229, -0.0826287493)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--170, 5.333333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.782672703, -0.727090299, -0.549175382, 0.137004808, 0.0449746028, -0.989548683, -0.352990389, 0.935605347, -0.00634926185, 0.925541759, 0.350171149, 0.144057989)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12826967, -0.642962039, -0.375483453, 0.151600838, -0.332124978, 0.930972636, 0.662431717, 0.733186305, 0.153693438, -0.733622015, 0.593405604, 0.331161916)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--171, 5.349999904632568
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.8407743e-06, 1.00000036, -1.01327896e-06, -0.992202401, -0.0103595294, 0.124208681, 0.0930918455, 0.601057947, 0.793765604, -0.0828796402, 0.799138665, -0.595406234)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24121201, 0.616985261, -0.586167336, -0.712515354, -0.549134552, 0.436775684, 0.338164896, 0.276673347, 0.899497688, -0.614789605, 0.788608015, -0.011435926)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.646462679, 0.000773668289, -0.658751249, -0.84785676, 0.422838151, -0.319917142, -0.212899029, 0.281100094, 0.935765386, 0.485605925, 0.86150527, -0.14831081)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--172, 5.366666793823242
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.789913237, -0.723870993, -0.550382555, 0.148864523, 0.0445492417, -0.987853467, -0.341095269, 0.939985633, -0.00901078433, 0.928166687, 0.338293582, 0.155125916)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10775065, -0.644002438, -0.382848799, 0.113009408, -0.349248439, 0.930190563, 0.651193619, 0.733126044, 0.196144953, -0.750450373, 0.583567917, 0.310278565)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--173, 5.383333206176758
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82587314e-06, 1.0000006, -9.83476639e-07, -0.994401217, -0.00967560709, 0.105230182, 0.0800251663, 0.58139497, 0.809676647, -0.0690144002, 0.813564181, -0.57736516)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.23515773, 0.61607933, -0.588564932, -0.710392177, -0.529996753, 0.463083267, 0.365827918, 0.284039319, 0.886279523, -0.601259232, 0.799014688, -0.00789164007)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.638134241, 0.0552961528, -0.692431092, -0.829951942, 0.432503074, -0.352308214, -0.269798577, 0.241560638, 0.932125211, 0.488250613, 0.868671477, -0.0837950036)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--174, 5.400000095367432
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.783563375, -0.734185755, -0.552993715, 0.142117456, 0.0722998828, -0.987205625, -0.322960883, 0.946137547, 0.0227989536, 0.935680926, 0.315588713, 0.157812655)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11823201, -0.658962131, -0.393232286, 0.131270587, -0.306273401, 0.942849159, 0.620861232, 0.76685822, 0.162663877, -0.772851408, 0.564025402, 0.290819287)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--175, 5.416666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.85195017e-06, 1.00000072, -1.16229057e-06, -0.993499994, -0.0273803566, 0.110492982, 0.0744285882, 0.578188062, 0.812502027, -0.0861323029, 0.815444291, -0.57239157)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25622988, 0.638108134, -0.574740052, -0.685655296, -0.558365822, 0.467016459, 0.394083858, 0.254685819, 0.883081615, -0.612025082, 0.789532959, 0.0454163477)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.677140355, 0.00856912136, -0.680019498, -0.816100895, 0.478635013, -0.323863983, -0.213880748, 0.270464629, 0.93867135, 0.536874712, 0.835319102, -0.11835555)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--176, 5.433333396911621
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.768904805, -0.701222777, -0.529746652, 0.114114732, 0.0400007665, -0.992661774, -0.353739947, 0.935339212, -0.00297446549, 0.928356588, 0.351483613, 0.120885745)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13289225, -0.653115809, -0.383311868, 0.160927922, -0.343755811, 0.925166905, 0.625442266, 0.76065886, 0.173838794, -0.76349467, 0.550662935, 0.337410688)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--177, 5.449999809265137
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82959843e-06, 1.0000006, -1.13248825e-06, -0.993585825, -0.00403456017, 0.113011405, 0.0905530006, 0.570214152, 0.816490352, -0.0677348822, 0.821486592, -0.566190958)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.25801337, 0.643529475, -0.572628379, -0.69614023, -0.590833366, 0.407804847, 0.337357223, 0.232195497, 0.912291288, -0.633702576, 0.772658288, 0.037681222)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.643550575, 0.0433135629, -0.68742311, -0.832106113, 0.448268414, -0.326580793, -0.242855743, 0.234891713, 0.941194415, 0.498618722, 0.862485826, -0.0865902305)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--178, 5.4666666984558105
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.77118063, -0.732223153, -0.547029853, 0.116024569, 0.0289855264, -0.992823124, -0.278361648, 0.960465848, -0.00448941439, 0.953442693, 0.276884824, 0.119506046)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12769961, -0.660559595, -0.39165014, 0.149766833, -0.322021842, 0.934810996, 0.60610795, 0.776889205, 0.170516253, -0.781154752, 0.541058779, 0.311532378)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--179, 5.483333110809326
		tween6 = ts:Create(part6, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81469727e-06, 1.00000048, -1.13248825e-06, -0.991190374, 0.0136293918, 0.131744415, 0.113571204, 0.599246264, 0.792468369, -0.0681464896, 0.800449133, -0.595514417)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24955475, 0.655283511, -0.573457539, -0.705831409, -0.585204661, 0.399170846, 0.34106487, 0.213138714, 0.9155581, -0.620867729, 0.782372713, 0.0491528362)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.641645253, 0.0350281, -0.680847049, -0.82703042, 0.455663502, -0.329229295, -0.236781225, 0.248813123, 0.93916285, 0.509858489, 0.854671836, -0.0978835672)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--180, 5.5
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.776589155, -0.722936392, -0.544635057, 0.134436801, 0.0843945071, -0.987321615, -0.303756058, 0.951909423, 0.0400071368, 0.943217218, 0.294526577, 0.153606951)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13376582, -0.649245739, -0.37946713, 0.162086457, -0.334060669, 0.928510308, 0.622805417, 0.764491856, 0.166329265, -0.765402734, 0.551321507, 0.331968606)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--181, 5.516666889190674
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82214785e-06, 1.00000036, -1.13248825e-06, -0.991416991, 0.0275947675, 0.127794072, 0.120832711, 0.566644311, 0.815054536, -0.0499225482, 0.823500574, -0.565114856)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.27781141, 0.6382972, -0.565030932, -0.670392334, -0.618913233, 0.409292907, 0.336029708, 0.238564, 0.91113764, -0.661557555, 0.748353779, 0.0480416566)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.67947495, 0.01022771, -0.682317138, -0.808748841, 0.501732647, -0.306904435, -0.200464129, 0.255418271, 0.945820212, 0.552937567, 0.826454401, -0.105989896)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--182, 5.5333333015441895
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.757248163, -0.714951217, -0.532093048, 0.0959461629, 0.0469483286, -0.99427855, -0.289396584, 0.957053542, 0.0172643512, 0.952388465, 0.286084354, 0.105412215)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11593235, -0.640898585, -0.377522111, 0.12964426, -0.357533813, 0.924857676, 0.629900813, 0.750040174, 0.201654539, -0.765778899, 0.556425095, 0.322449267)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--183, 5.550000190734863
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83332372e-06, 1.00000036, -1.13248825e-06, -0.992006779, 0.00339119136, 0.126141295, 0.102484964, 0.604865074, 0.789705813, -0.0736204386, 0.796321034, -0.60037744)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.27925289, 0.612765193, -0.570381761, -0.665198028, -0.61678195, 0.420822442, 0.319467962, 0.274306655, 0.907026052, -0.674871743, 0.737790942, 0.0145738125)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.664194047, 0.0303249955, -0.689064682, -0.815699458, 0.491757959, -0.30464527, -0.214729398, 0.23161228, 0.948813558, 0.537145972, 0.839363396, -0.0833312422)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--184, 5.566666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.78177309, -0.71888119, -0.544659376, 0.139422566, 0.0587512776, -0.988488376, -0.266480446, 0.963639259, 0.019688284, 0.953703046, 0.26066792, 0.150009036)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10160112, -0.63403821, -0.3750543, 0.100456432, -0.334350318, 0.937079608, 0.6383726, 0.744076908, 0.197052449, -0.763144016, 0.578410625, 0.288187444)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--185, 5.583333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.8407743e-06, 1.0000006, -1.13248825e-06, -0.993703723, -0.0236488413, 0.109519631, 0.0743934661, 0.59165591, 0.802751005, -0.0837820694, 0.805843949, -0.586170971)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.29247022, 0.61523664, -0.563768387, -0.650985479, -0.641803265, 0.405347228, 0.306968391, 0.265804082, 0.913848341, -0.694253683, 0.719330668, 0.0239786953)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.665566027, 0.0236401558, -0.685131907, -0.805968642, 0.503957748, -0.310550034, -0.21091944, 0.245702147, 0.946120262, 0.553107202, 0.828044593, -0.0917338654)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--186, 5.599999904632568
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.782217383, -0.727337122, -0.549117804, 0.14433977, 0.0763149112, -0.986580849, -0.244448349, 0.968870342, 0.0391813926, 0.958859205, 0.235512659, 0.158501476)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13791347, -0.658714771, -0.386550665, 0.16935195, -0.325898468, 0.930112898, 0.587503433, 0.791114926, 0.170224905, -0.791302502, 0.51761651, 0.325443327)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--187, 5.616666793823242
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82959843e-06, 1.00000048, -9.23871994e-07, -0.994662762, -0.0229705274, 0.100594155, 0.0675877258, 0.591604173, 0.803390741, -0.077966243, 0.805901527, -0.586893618)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.30338669, 0.660902441, -0.547254801, -0.645290554, -0.685989141, 0.336182594, 0.291466802, 0.185698777, 0.938383341, -0.706149518, 0.703515828, 0.0801134184)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.671823204, 0.00335109234, -0.673654437, -0.797331095, 0.518963039, -0.308124334, -0.190556347, 0.267950386, 0.944399714, 0.572670519, 0.81171459, -0.11475344)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--188, 5.633333206176758
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.776906013, -0.738203406, -0.552264929, 0.13469699, 0.0700790063, -0.988405347, -0.207715958, 0.977329969, 0.0409868285, 0.968870878, 0.199786812, 0.146199897)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12207162, -0.660385907, -0.393290758, 0.138767719, -0.325630784, 0.935258269, 0.576333404, 0.794550121, 0.191127583, -0.805346727, 0.512498081, 0.297929823)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--189, 5.650000095367432
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.80724669e-06, 1.0000006, -1.10268593e-06, -0.99491173, 0.00184614956, 0.100736812, 0.0846654326, 0.55731833, 0.825971186, -0.0546176061, 0.830297172, -0.554638386)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.28712893, 0.651216149, -0.5594908, -0.664694726, -0.664924741, 0.340669841, 0.283236802, 0.197673514, 0.938457251, -0.691344976, 0.720277667, 0.0569386519)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.675095439, 0.00398972631, -0.675707579, -0.803128779, 0.523449183, -0.284579039, -0.177012175, 0.2464412, 0.952855349, 0.568903327, 0.815639853, -0.105267189)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--190, 5.666666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.786694109, -0.720550895, -0.547460794, 0.145574197, 0.0467447117, -0.988242149, -0.209919244, 0.977598786, 0.0153188445, 0.966820478, 0.205221057, 0.152125672)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12714517, -0.640437424, -0.373451769, 0.151791707, -0.356865078, 0.921741009, 0.609524488, 0.767917037, 0.196933955, -0.778099716, 0.531930685, 0.334081531)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--191, 5.683333396911621
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81097198e-06, 1.00000048, -1.1920929e-06, -0.992808104, 0.0409223661, 0.112508282, 0.11558982, 0.572353244, 0.811819732, -0.0311728902, 0.81898576, -0.572966754)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.30192649, 0.625484586, -0.559017479, -0.643784642, -0.678891182, 0.35305512, 0.26695022, 0.233141676, 0.935084164, -0.71713239, 0.696240783, 0.0311371461)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.625881732, 0.0543333888, -0.685264349, -0.810118198, 0.487746, -0.325288534, -0.240540311, 0.22946766, 0.94312495, 0.534648597, 0.842287898, -0.0685733035)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--192, 5.699999809265137
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.767949343, -0.711846769, -0.535187006, 0.118153125, 0.0612520054, -0.991104305, -0.220294386, 0.974841237, 0.033984825, 0.96825105, 0.214319319, 0.128673911)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10991406, -0.640612364, -0.379046977, 0.117597893, -0.346561551, 0.930626571, 0.602151275, 0.77008146, 0.21068497, -0.789673686, 0.535601735, 0.299242467)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--193, 5.7166666984558105
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.83704901e-06, 1.00000072, -1.10268593e-06, -0.993198872, -0.0118858851, 0.115824588, 0.0847728997, 0.608087361, 0.789331317, -0.0798133388, 0.793781459, -0.602943659)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.33564854, 0.622954607, -0.541154385, -0.597410738, -0.718986273, 0.355188936, 0.270494223, 0.236293823, 0.933273017, -0.754939198, 0.6536237, 0.0533171147)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.654829741, 0.0136942267, -0.672707438, -0.816352069, 0.511307478, -0.268577814, -0.175034121, 0.224130377, 0.958711922, 0.550392926, 0.829657078, -0.0934729651)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--194, 5.733333110809326
		tween5 = ts:Create(part5, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.750290215, -0.710349858, -0.526358068, 0.089887917, 0.0674369633, -0.993665934, -0.213604257, 0.97579366, 0.0469011664, 0.972776115, 0.208035469, 0.102116808)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.033333778381347656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1266638, -0.635802269, -0.369098008, 0.150428176, -0.350392818, 0.924443722, 0.608250499, 0.769958079, 0.192861825, -0.779360473, 0.533281326, 0.328950047)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--195, 5.75
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.86312604e-06, 1.00000036, -1.13248825e-06, -0.989599109, 0.00600355864, 0.143729523, 0.117675006, 0.608483851, 0.784793139, -0.0827455595, 0.793543935, -0.602861166)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.30723131, 0.643205106, -0.554159164, -0.640059829, -0.710166514, 0.293235093, 0.228722438, 0.188235447, 0.955119491, -0.733491361, 0.678402781, 0.0419491306)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.641179323, 0.0306085646, -0.677561998, -0.810384154, 0.510534465, -0.287458658, -0.197917908, 0.223251432, 0.954456508, 0.55145824, 0.830369949, -0.0798754916)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--196, 5.766666889190674
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.763213158, -0.708243906, -0.531145096, 0.110493794, 0.0610938407, -0.991997123, -0.195732474, 0.979899466, 0.0385470763, 0.97441256, 0.189906865, 0.120230705)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11558306, -0.659205258, -0.394228876, 0.127823338, -0.340155572, 0.931641161, 0.552784622, 0.804348469, 0.217835888, -0.823462367, 0.487152308, 0.290847272)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--197, 5.7833333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81842256e-06, 1.00000072, -9.83476639e-07, -0.995768607, -0.0226704478, 0.0890595466, 0.0610480309, 0.561196804, 0.825428247, -0.0686927736, 0.827372074, -0.557437778)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.34521103, 0.668116987, -0.525430202, -0.586826682, -0.755419195, 0.291507006, 0.269245654, 0.157479361, 0.950109005, -0.763636887, 0.636036158, 0.110980183)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.65815413, 0.0140035748, -0.674625933, -0.803408146, 0.531986654, -0.267442644, -0.171298802, 0.223665744, 0.95949477, 0.570256114, 0.816679001, -0.0885662511)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--198, 5.800000190734863
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.771258414, -0.745225847, -0.553238034, 0.134516895, 0.0921084508, -0.986621082, -0.127623498, 0.9889884, 0.0749291033, 0.982658267, 0.115836799, 0.144790784)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11902285, -0.650525749, -0.385510623, 0.13783282, -0.363963723, 0.921158195, 0.563194513, 0.79384625, 0.229390144, -0.81474781, 0.487173736, 0.314400494)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--199, 5.816666603088379
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.82214785e-06, 1.00000048, -1.13248825e-06, -0.993627548, 0.0129940286, 0.111964539, 0.099915348, 0.561306894, 0.821554482, -0.052171167, 0.827506006, -0.55902791)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.34399271, 0.659795225, -0.530386209, -0.588231444, -0.753493369, 0.293651938, 0.261436164, 0.166435868, 0.950762928, -0.765267968, 0.636039495, 0.0990877002)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.644673944, 0.0263274014, -0.676423669, -0.800735474, 0.529339492, -0.280397385, -0.187370077, 0.223275006, 0.956577659, 0.568959832, 0.818503976, -0.079601869)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--200, 5.833333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.779008925, -0.733692288, -0.550952256, 0.144272745, 0.078933768, -0.986384571, -0.124514975, 0.990338445, 0.0610380545, 0.981672704, 0.11401353, 0.152707219)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13905907, -0.652218938, -0.380300045, 0.171166152, -0.324595213, 0.930236459, 0.559812188, 0.808992147, 0.179281369, -0.810748041, 0.49007082, 0.32018441)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--201, 5.849999904632568
		tween6 = ts:Create(part6, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.81097198e-06, 1.00000048, -1.25169754e-06, -0.99387306, 0.00485616922, 0.110422432, 0.0924136564, 0.584553838, 0.806075096, -0.0606334619, 0.811340928, -0.581420779)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.34744859, 0.657242119, -0.530619502, -0.583391666, -0.764249623, 0.274922132, 0.239968449, 0.161189973, 0.95730418, -0.775931597, 0.624456525, 0.0893595889)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.648730278, 0.0287120938, -0.680204809, -0.790050924, 0.543570518, -0.283465683, -0.189022452, 0.22386378, 0.956110716, 0.583172619, 0.808961511, -0.0741134062)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--202, 5.866666793823242
		tween5 = ts:Create(part5, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.76823926, -0.720096827, -0.539673626, 0.119752228, 0.0611225292, -0.990920961, -0.133066535, 0.990086794, 0.0449901968, 0.983846247, 0.126471505, 0.126698375)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.016666412353515625, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11870742, -0.648346245, -0.383623004, 0.132989883, -0.333659202, 0.933266222, 0.56161809, 0.801232517, 0.20642516, -0.816638827, 0.496687114, 0.293945432)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--203, 5.883333206176758
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.31655192, 0.716147602, 0.0240494944, -0.137118846, 0.989827931, 0.0379380435, 0.954369843, 0.121755719, 0.272679567, 0.265286505, 0.0735963434, -0.961357236)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.97115946e-06, 0.999999285, 0, -0.991475701, 0.0362500139, -0.12515299, 0.0159925278, 0.987114251, 0.159217522, 0.129312098, 0.155859053, -0.979278743)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.768235087, -0.720086634, -0.539678633, 0.0465687811, -0.0520855561, -0.997556865, -0.980294526, 0.189538419, -0.0556592792, 0.191974699, 0.980492294, -0.0422321856)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.910357356, 0.528318226, -0.750768721, -0.579439163, 0.567695618, 0.58478415, 0.790503025, 0.216821373, 0.572794199, 0.198381394, 0.794175565, -0.574398398)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11870313, -0.648342609, -0.383622527, 0.156541169, -0.369794309, 0.915831864, 0.895002425, 0.445254773, 0.0268042833, -0.417690516, 0.815475464, 0.400668055)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.114772677, -0.189419925, -0.777606666, -0.884766459, -0.171909943, -0.433170378, -0.433062911, -0.0401213542, 0.900469542, -0.172178954, 0.984295905, -0.0389494486)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--204, 5.9666666984558105
		part1.C0 = CFrame.new(2.31655192, 0.716147602, 0.0240494944, -0.137118846, 0.989827931, 0.0379380435, 0.954369843, 0.121755719, 0.272679567, 0.265286505, 0.0735963434, -0.961357236)
		part6.C0 = CFrame.new(3.97115946e-06, 0.999999285, 0, -0.991475701, 0.0362500139, -0.12515299, 0.0159925278, 0.987114251, 0.159217522, 0.129312098, 0.155859053, -0.979278743)
		part5.C0 = CFrame.new(-0.768235087, -0.720086634, -0.539678633, 0.0465687811, -0.0520855561, -0.997556865, -0.980294526, 0.189538419, -0.0556592792, 0.191974699, 0.980492294, -0.0422321856)
		part2.C0 = CFrame.new(0.910357356, 0.528318226, -0.750768721, -0.579439163, 0.567695618, 0.58478415, 0.790503025, 0.216821373, 0.572794199, 0.198381394, 0.794175565, -0.574398398)
		part4.C0 = CFrame.new(1.11870313, -0.648342609, -0.383622527, 0.156541169, -0.369794309, 0.915831864, 0.895002425, 0.445254773, 0.0268042833, -0.417690516, 0.815475464, 0.400668055)
		part3.C0 = CFrame.new(0.114772677, -0.189419925, -0.777606666, -0.884766459, -0.171909943, -0.433170378, -0.433062911, -0.0401213542, 0.900469542, -0.172178954, 0.984295905, -0.0389494486)

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
