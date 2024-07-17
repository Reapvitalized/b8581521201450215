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
	local animvalue = anims:FindFirstChild("startup")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "startup"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.17815351e-07, -0.530005276, 0.131821781, -0.97100842, -0.238533676, -0.0156308692, -0.0457846001, 0.121402144, 0.991547108, -0.234619692, 0.963516176, -0.12880367)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666666865348816, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.47034836e-08, 1, -2.98023224e-08, -0.92861706, 0.339879811, -0.148836792, 0.0141350934, 0.43324849, 0.901163757, 0.370770633, 0.834732056, -0.407126039)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.28333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33275473, -0.531394243, -0.364243656, 0.452080488, -0.203865409, -0.868367493, 0.404208988, 0.91465652, -0.00429749489, 0.795134187, -0.349059284, 0.495902479)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.13333334028720856, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.880447805, 0.480741054, 0.0762737989, 0.437950611, -0.310047328, 0.843842328, 0.0298155099, 0.943139493, 0.33105737, -0.898504436, -0.119827136, 0.422292739)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.28333333134651184, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10168493, -0.234229684, -0.403711736, -0.00737706572, 0.137595937, 0.990460992, 0.5699296, 0.814445257, -0.108898759, -0.821660459, 0.563689768, -0.0844282284)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666666716337204, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1, 0.49999997, -5.96046448e-08, -0.328390777, 0.181830719, -0.926874876, -0.524143159, 0.781264484, 0.338968784, 0.785769403, 0.597129345, -0.161254749)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166666716337204)

		if afterframe() then
			return
		end

		--2, 0.11666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.10000000149011612, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.86036253e-07, -0.976143718, 0.131822109, -0.84748584, -0.530451834, 0.019714294, -0.21566996, 0.378029615, 0.900322437, -0.485030174, 0.758758664, -0.43477729)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.1666666641831398, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.09763789, 0.168518424, -0.350916922, -0.667875528, 0.248593599, -0.701529503, -0.347575039, 0.729298592, 0.589334786, 0.658129454, 0.63743639, -0.400675505)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--3, 0.13333334028720856
		tween2 = ts:Create(part2, TweenInfo.new(0.2666666656732559, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.794370234, 0.466874421, 0.131191045, 0.610682607, -0.519062638, 0.598030865, 0.202819005, 0.832542181, 0.515497625, -0.765461564, -0.193513423, 0.613694727)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.0683333283662796)

		if afterframe() then
			return
		end

		--4, 0.21666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.88595867e-07, -1.12154794, 0.131821886, -0.780085862, -0.622125149, 0.0665316284, -0.304477513, 0.470364511, 0.828281939, -0.546588957, 0.625873566, -0.556347847)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.1666666567325592, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.23517418e-08, 1.00000012, 8.19563866e-08, -0.808067024, 0.57951194, 0.105801627, -0.049990803, -0.246411934, 0.967875123, 0.586965919, 0.776818752, 0.228087649)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--5, 0.28333333134651184
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.15483999e-06, -1.1257093, 0.147088572, -0.758181155, -0.645676136, 0.0909056887, -0.338702172, 0.509120345, 0.791250706, -0.557173491, 0.569121361, -0.604697406)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.40486884, -0.54385227, -0.396115124, 0.660759211, -0.236950457, -0.71221602, 0.405657411, 0.9110865, 0.0732354745, 0.631537318, -0.337306798, 0.698129475)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.12750268, -0.301617265, -0.344493389, -0.00143007189, 0.160408139, 0.987049639, 0.678363502, 0.725367188, -0.116898574, -0.734724998, 0.669411302, -0.109852359)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.18333333730697632, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.21547675, 0.240060896, -0.377094597, -0.825715542, 0.376475781, -0.420071244, -0.0710027069, 0.669403017, 0.739498734, 0.559600949, 0.640441775, -0.526005566)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--6, 0.38333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.87754631e-06, -1.05994177, 0.172532827, -0.758181155, -0.64385277, 0.10303019, -0.348888189, 0.534071505, 0.770094097, -0.550852537, 0.547924638, -0.629555643)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(4.47034836e-08, 1.00000024, 1.15483999e-07, -0.778200388, 0.627956271, 0.0086672157, -0.145041972, -0.193138063, 0.970392048, 0.61103785, 0.753902376, 0.24138023)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.46496391, -0.554233372, -0.422674686, 0.667590857, -0.274868727, -0.691931903, 0.426831543, 0.902765393, 0.0531942472, 0.61003077, -0.330850393, 0.720000446)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.0833333432674408, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13402736, -0.42776823, -0.355347574, 0.00210314989, 0.178911924, 0.983862817, 0.743181825, 0.658012331, -0.121245839, -0.669086218, 0.731443882, -0.131580204)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--7, 0.4000000059604645
		tween2 = ts:Create(part2, TweenInfo.new(0.29999998211860657, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.74595201, 0.459074676, 0.162082076, 0.501083255, -0.706186831, 0.50021565, 0.423151255, 0.70414263, 0.570198417, -0.754889727, -0.0740500018, 0.651657999)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--8, 0.46666666865348816
		tween1 = ts:Create(part1, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.36183405e-06, -1.00313902, 0.18779929, -0.749150813, -0.651998281, 0.116925053, -0.341952503, 0.531841695, 0.774734259, -0.56731087, 0.540409803, -0.621382058)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.5370779, -0.566691041, -0.454545856, 0.674644053, -0.311788529, -0.669061363, 0.45194903, 0.891126335, 0.0404474139, 0.583607197, -0.329669297, 0.742105603)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999999403953552, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14754701, -0.561996102, -0.346584439, -2.23517418e-08, 0.200988159, 0.979593694, 0.785717964, 0.6059618, -0.124328248, -0.618584871, 0.769684374, -0.157920033)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.18333330750465393, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.2578578, 0.133612603, -0.447313845, -0.825715482, 0.308917761, -0.471978366, -0.0710026845, 0.773138762, 0.630250335, 0.559600949, 0.553919077, -0.616458416)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499999403953552)

		if afterframe() then
			return
		end

		--9, 0.5666666626930237
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.52574682e-06, -0.974234223, 0.18779923, -0.733436167, -0.667760193, 0.127152041, -0.319082499, 0.503368676, 0.802998424, -0.600214601, 0.548376143, -0.582259536)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.52107179, -0.608748257, -0.435277045, 0.666290998, -0.341957241, -0.662662387, 0.476843745, 0.878601551, 0.0260653943, 0.573302984, -0.333353579, 0.748464286)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.14868748, -0.560831904, -0.34597981, -0.00206333399, 0.210721061, 0.97754395, 0.77987951, 0.6122123, -0.130323425, -0.625926435, 0.762097538, -0.165600181)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--10, 0.6499999761581421
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.00845711678, -1.04859734, 0.187799007, -0.713774145, -0.689685762, 0.121902421, -0.333533168, 0.487774491, 0.806741595, -0.615858853, 0.535172701, -0.578193903)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.03333336114883423, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.49011612e-08, 1.00000012, 7.4505806e-09, -0.771902442, 0.635516167, -0.0169101059, -0.153281093, -0.160230175, 0.975105882, 0.616986036, 0.755278468, 0.221094713)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.51524031, -0.624070704, -0.428257406, 0.6608935, -0.344856352, -0.666553736, 0.49161467, 0.87001282, 0.0373194814, 0.567040503, -0.352351874, 0.744522154)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.16284668, -0.521129727, -0.296940923, -0.00330030173, 0.222370595, 0.974956632, 0.776681781, 0.614686847, -0.137570247, -0.629884481, 0.756776989, -0.174739808)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33582532, 0.0848229229, -0.352052391, -0.843834221, 0.255303651, -0.471978635, -0.120461076, 0.766990304, 0.630250037, 0.522908151, 0.588681638, -0.616458416)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.01833336114883423)

		if afterframe() then
			return
		end

		--11, 0.6833333373069763
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-08, 1, 6.70552254e-08, -0.717523217, 0.663303852, -0.212575808, -0.204896897, 0.090686202, 0.974573374, 0.665715933, 0.742835104, 0.0708394945)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--12, 0.699999988079071
		tween5 = ts:Create(part5, TweenInfo.new(0.050000011920928955, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.50940907, -0.639393389, -0.421237111, 0.655626893, -0.348383963, -0.669911802, 0.506208777, 0.861095965, 0.0476064086, 0.56027317, -0.370327324, 0.740912616)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.74595201, 0.459074855, 0.162081882, 0.201865986, -0.772225261, 0.602427065, 0.567630708, 0.593498588, 0.570574045, -0.798151076, 0.226776689, 0.558146)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.035000011920928956)

		if afterframe() then
			return
		end

		--13, 0.75
		tween1 = ts:Create(part1, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0206099004, -1.16633391, 0.187799662, -0.564321399, -0.818049908, 0.111067519, -0.435750425, 0.409425318, 0.801556528, -0.701186955, 0.403937697, -0.587513089)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.55913281, -0.633871794, -0.346009076, 0.643970132, -0.473296016, -0.60107708, 0.635371327, 0.768498659, 0.0755854547, 0.426152587, -0.430581897, 0.795608878)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1494118, -0.538886309, -0.320919156, 0.0126075223, 0.325115919, 0.945590138, 0.804474294, 0.558333278, -0.202694029, -0.593853593, 0.763258457, -0.254508257)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000002384185791, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.43433809, 0.255426258, -0.0167584121, -0.768244565, 0.432477176, -0.471978545, 0.0489924736, 0.774844944, 0.630250156, 0.638279021, 0.461062789, -0.616458416)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--14, 0.8500000238418579
		tween1 = ts:Create(part1, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0338210687, -1.33748448, 0.187799007, -0.535773993, -0.838649869, 0.0980447084, -0.471559227, 0.393516421, 0.789162338, -0.700412869, 0.376578748, -0.606308997)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.66056263, -0.554014921, -0.341706216, 0.616372764, -0.565134823, -0.54836762, 0.726697505, 0.676451504, 0.119682908, 0.303307295, -0.472266674, 0.827628374)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.1708076, -0.513154626, -0.280056059, 0.0311935768, 0.40717864, 0.91281575, 0.824068069, 0.506343186, -0.254024774, -0.56563127, 0.760146141, -0.319748282)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333331346511841, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.34844136, 0.386883944, 0.123081416, -0.78720212, 0.396924406, -0.471978635, 0.0135391504, 0.776274383, 0.630250454, 0.616547167, 0.489744395, -0.616458595)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833331346511841)

		if afterframe() then
			return
		end

		--15, 0.9333333373069763
		tween1 = ts:Create(part1, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0465018228, -1.26334262, 0.213183865, -0.493283242, -0.861362338, 0.121353313, -0.555874944, 0.419448256, 0.717681408, -0.669084907, 0.286562979, -0.685716629)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.21666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(8.94069672e-08, 1, 1.1920929e-07, -0.935512483, 0.273442745, -0.223708332, -0.105406456, 0.388340116, 0.915467978, 0.337202966, 0.880011976, -0.334474266)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.70155263, -0.426278889, -0.403717548, 0.691798329, -0.451117665, -0.563833356, 0.590584815, 0.802764118, 0.0823371857, 0.415481389, -0.389952302, 0.821773946)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666663885116577, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.745951653, 0.459074944, 0.162081689, 0.656854928, -0.385253757, 0.648167491, 0.629815161, 0.752968669, -0.190711707, -0.414577276, 0.533495784, 0.737229884)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10178638, -0.590195179, -0.476437092, 0.0408444032, 0.50703609, 0.86095649, 0.857106507, 0.425074875, -0.290997684, -0.51351738, 0.749817133, -0.417221963)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999996423721313, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.44546759, 0.387961805, 0.198469192, -0.789626718, 0.458102256, -0.408205509, 0.00876776129, 0.673632681, 0.739014864, 0.61352545, 0.579966962, -0.535934746)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499996423721314)

		if afterframe() then
			return
		end

		--16, 1.0333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0465024784, -0.820311069, 0.280875593, -0.797285676, -0.556426346, 0.233934283, -0.318864226, 0.717334509, 0.619481266, -0.512504935, 0.419310331, -0.749345124)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.60056925, -0.629270434, -0.283318162, 0.778515041, -0.477788955, -0.406979084, 0.397043407, 0.877119243, -0.270219266, 0.486077011, 0.0487814471, 0.872553349)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.08334827, -0.650208116, -0.572764456, 0.0638345554, 0.213429376, 0.974870801, 0.915865779, 0.375469148, -0.142172694, -0.396377593, 0.901926398, -0.171504736)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.11666667461395264, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.855355859, 0.270797729, -0.412562221, -0.128366932, 0.414824724, -0.900800765, -0.797370732, 0.496912211, 0.342459857, 0.589679897, 0.762233019, 0.266982526)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.10166667461395264)

		if afterframe() then
			return
		end

		--17, 1.149999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0464988053, 6.13996792, 0.28087461, -0.995963931, 0.0818908513, 0.0367366336, 0.0875536203, 0.796379328, 0.598426521, 0.0197491832, 0.599227726, -0.800335228)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.26431608e-08, 1.00000024, 5.96046448e-08, -0.919279933, -0.372707486, -0.126544997, -0.141683504, 0.0133882761, 0.989821553, -0.367219657, 0.927852273, -0.0651140213)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.848747492, -1.19106722, -0.158438444, 0.436400145, -0.205208778, -0.876038194, -0.746638656, 0.460722178, -0.47986117, 0.502083421, 0.863495052, 0.0478415415)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.23333334922790527, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.329141617, 0.200788379, -0.559615076, -0.6353513, -0.0585742034, 0.769997954, 0.660139322, 0.476174176, 0.580926061, -0.400681138, 0.877397597, -0.263870835)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.10443556, -0.086266458, -0.965180397, -0.195159465, 0.107423194, 0.974870682, -0.173806325, 0.974463165, -0.142172739, -0.965248466, -0.197185099, -0.171504512)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666672229766846, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.17897296, 0.326567411, 0.739581585, 0.680216968, -0.14428629, -0.718669474, -0.6357342, 0.37193799, -0.676391244, 0.364895225, 0.916975796, 0.161270902)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166672229766846)

		if afterframe() then
			return
		end

		--18, 1.2166666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0464893021, 22.2365799, 0.280873358, -0.987019837, 0.154866502, -0.042523317, 0.129617855, 0.924517572, 0.358422399, 0.0948210061, 0.348258287, -0.932590961)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.0844686, -0.84061867, -0.460239172, 0.457853496, -0.25750038, -0.850917935, -0.796486437, 0.306392193, -0.52128315, 0.394947708, 0.916414797, -0.0648138225)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.32843137, -0.0585887432, -0.706368804, 0.608437002, 0.107423179, 0.786297917, -0.22129114, 0.974463105, 0.0381046496, -0.762125015, -0.197185099, 0.616671801)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.547111154, 0.193378061, -0.813629687, -0.814531147, -0.223307982, -0.535414875, -0.55731076, 0.044971291, 0.829087615, -0.161063462, 0.973710656, -0.16108638)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.1516666269302368)

		if afterframe() then
			return
		end

		--19, 1.3833333253860474
		tween1 = ts:Create(part1, TweenInfo.new(0.2666666507720947, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.0464774072, 47.5173111, 0.235452056, -0.987019777, 0.134402961, -0.0879074112, 0.12961784, 0.989862144, 0.0580712706, 0.0948209912, 0.0459231436, -0.994434834)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.9499999284744263, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-7.4505806e-08, 1.00000024, 1.49011612e-08, -0.995905459, 0.0873246416, -0.0233822539, -0.0236956794, -0.00255486369, 0.999716103, 0.0872401297, 0.99617666, 0.00461372733)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.783333420753479, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.893541992, -1.03659749, -0.288808614, 0.0148600116, -0.41086635, -0.911574423, -0.0278324783, 0.911151886, -0.411129534, 0.999502182, 0.0314807594, 0.00210429728)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.783333420753479, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.13924193, 0.349660426, -0.296467394, -0.475906014, -0.840341568, 0.259499103, 0.19504413, 0.186865151, 0.962828875, -0.857596278, 0.508829713, 0.0749733672)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.783333420753479, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.32781494, -0.0450770855, -0.70945698, 0.511283457, 0.346879065, 0.786297858, -0.600492239, 0.798722029, 0.0381047577, -0.614815772, -0.491648078, 0.616671503)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.02714646, 0.389518768, -0.553532779, -0.700698495, 0.692223072, -0.172767967, -0.293947488, -0.0594503507, 0.95397085, 0.650089681, 0.719230652, 0.245134056)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.2516666507720947)

		if afterframe() then
			return
		end

		--20, 1.649999976158142
		tween1 = ts:Create(part1, TweenInfo.new(0.30000007152557373, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.86924863, 70.6515579, -1.03769457, -0.987019837, 0.140536696, -0.0777255893, 0.129617825, 0.982855618, 0.131126672, 0.0948211104, 0.119350009, -0.988314211)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.1850000476837158)

		if afterframe() then
			return
		end

		--21, 1.850000023841858
		tween3 = ts:Create(part3, TweenInfo.new(0.16666662693023682, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33121634, -0.0783638954, -0.374924898, -0.392003328, 0.914767146, 0.0976449698, -0.456227839, -0.285472631, 0.842830122, 0.798868716, 0.285843819, 0.529248595)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500002384185791)

		if afterframe() then
			return
		end

		--22, 1.9500000476837158
		tween1 = ts:Create(part1, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.73402095, 82.2148895, -1.40551627, -0.996371031, 0.0833415389, -0.0172905959, 0.0665320754, 0.889285386, 0.452487707, 0.0530872867, 0.449695319, -0.891603172)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--23, 2.0166666507720947
		tween3 = ts:Create(part3, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.828529716, -0.176682711, -0.646237254, 0.456383646, 0.687254071, -0.565150857, -0.57441318, 0.712636173, 0.402741373, 0.679532588, 0.140825644, 0.720002532)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--24, 2.1666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.94603324, 88.7197113, -1.48806214, -0.990656972, 0.00952886418, -0.136044189, -0.0548829511, 0.885356009, 0.461663425, 0.124846645, 0.464816511, -0.876561105)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.1653471, -0.651316643, -0.481730223, 0.242151469, 0.141676724, -0.959838569, -0.942734659, 0.268237233, -0.19824326, 0.229378149, 0.952878356, 0.198517576)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.11673355, 0.337236047, -0.380600721, -0.583897114, -0.759496748, 0.286755621, 0.266237736, 0.154542774, 0.95143795, -0.766929984, 0.631887019, 0.11196956)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.32464111, 0.0244101286, -0.725347638, 0.534537196, 0.309847772, 0.786297858, -0.542495608, 0.83919394, 0.0381048024, -0.648049831, -0.446931571, 0.616671443)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.15166650772094725)

		if afterframe() then
			return
		end

		--25, 2.3333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.63251686, 94.0683594, -1.33490372, -0.967838466, -0.103708245, -0.229200944, -0.139754444, 0.979203582, 0.147068292, 0.209182039, 0.174370244, -0.962205172)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.41666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.11758709e-07, 1.00000012, 2.98023224e-08, -0.986127973, -0.0563022494, 0.156146571, 0.0975480229, 0.56454891, 0.819615364, -0.134298563, 0.823477268, -0.551225066)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.646407604, 0.214938819, -0.865809679, -0.738120437, 0.102057643, 0.666905165, 0.668576598, -0.0218948722, 0.743320942, 0.0904633403, 0.994537413, -0.0520723164)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.572284102, -0.0417585373, -0.825692892, -0.166947424, 0.0292346142, -0.985532224, -0.93171674, 0.322310567, 0.167392105, 0.322541177, 0.946182549, -0.026570566)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.11833344459533691)

		if afterframe() then
			return
		end

		--26, 2.4666666984558105
		tween3 = ts:Create(part3, TweenInfo.new(0.03333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.488611877, 0.0022971034, -0.884291172, -0.319120407, -0.00684624957, -0.947689414, -0.892770529, 0.337705851, 0.298187613, 0.317998827, 0.9412269, -0.113880984)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--27, 2.5
		tween2 = ts:Create(part2, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.615978897, 0.318033844, -0.855396092, -0.40658313, 0.423172235, 0.809700906, 0.87398082, -0.0780492276, 0.47965163, 0.266171813, 0.902681172, -0.338110924)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.502962649, 0.203229487, -0.60031569, 0.118600994, -0.469842613, -0.87474668, -0.97678864, 0.103052564, -0.187787682, 0.178375512, 0.876714528, -0.446714759)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--28, 2.549999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.63247848, 94.4817047, -1.33489227, -0.967754781, -0.103708394, -0.229554355, -0.139808089, 0.97920388, 0.147016823, 0.209533557, 0.174369782, -0.96212852)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--29, 2.6666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.63249516, 96.9575653, -1.33490241, -0.992509902, -0.103708394, -0.0645666122, -0.11326769, 0.97920382, 0.168317229, 0.0457679518, 0.174369782, -0.983616173)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.39999985694885254, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.22357106, -0.54504019, -0.286239624, -0.0284391344, 0.143772557, -0.989201963, -0.98182112, 0.181772351, 0.0546461865, 0.187665984, 0.972773552, 0.135989368)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.853362858, 0.623978555, -0.518532336, 0.054707665, 0.593874037, 0.80269587, 0.997772932, -0.00178924203, -0.0666794255, -0.0381629467, 0.804555953, -0.59264946)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.5666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.32040811, 0.117061257, -0.746535718, 0.610456765, 0.095276393, 0.786297739, -0.201827794, 0.978680134, 0.0381044522, -0.765903115, -0.18195805, 0.61667186)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.776168823, 0.314198494, -0.0741854906, 0.447061449, -0.514291108, -0.731874943, -0.889655769, -0.340709567, -0.304022968, -0.0930003971, 0.787033677, -0.609860182)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--30, 2.75
		tween6 = ts:Create(part6, TweenInfo.new(0.41666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-8.94069672e-08, 1.00000024, 1.49011612e-07, -0.957060814, 0.229787052, 0.176727146, 0.250229299, 0.347065151, 0.903842688, 0.146355554, 0.909254551, -0.38966167)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.910901666, 0.666308522, -0.380051494, 0.211780056, 0.533073664, 0.819134712, 0.972006857, -0.0276309252, -0.233322278, -0.10174451, 0.845617533, -0.52400291)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.794359803, 0.353066266, 0.0842998028, 0.641521454, -0.11212261, -0.758866787, -0.751366496, -0.291206509, -0.59215492, -0.15459305, 0.950067163, -0.271060258)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--31, 2.799999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.63248944, 101.608849, -1.33490109, -0.954534054, -0.29243511, 0.057848502, -0.278047681, 0.943368554, 0.180957004, -0.107490614, 0.15664497, -0.981788456)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08500014305114746)

		if afterframe() then
			return
		end

		--32, 2.9000000953674316
		tween2 = ts:Create(part2, TweenInfo.new(0.11666655540466309, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.94830966, 0.679681301, -0.264759302, 0.334740222, 0.440292209, 0.833121657, 0.934925556, -0.0447079539, -0.352016568, -0.117742948, 0.896740735, -0.426606029)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.433333158493042, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.920547128, 0.453505456, -0.578561604, -0.957843006, 0.0493114404, -0.283028483, -0.287076443, -0.20241423, 0.936278164, -0.01111985, 0.978057981, 0.208037198)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--33, 2.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.63250971, 106.485115, -1.33490264, -0.935427606, -0.348753363, 0.0578485057, -0.333726645, 0.925138593, 0.18095699, -0.116627209, 0.149966523, -0.981788397)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.06833325386047363)

		if afterframe() then
			return
		end

		--34, 3.0166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.35562372, 111.650658, -1.33489978, -0.860576749, -0.506024837, 0.0578484908, -0.489438564, 0.853056073, 0.18095693, -0.14091669, 0.127414018, -0.981788397)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.971511006, 0.682602227, -0.183659494, 0.416586161, 0.359576523, 0.834961593, 0.902135074, -0.0500688404, -0.428538799, -0.112286925, 0.931771338, -0.345244616)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--35, 3.066666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.12372994, -0.427274823, -0.44433105, -0.11166165, 0.142862618, -0.983421922, -0.968935192, 0.204110324, 0.139669448, 0.220681846, 0.968467951, 0.115630634)}) tween5:Play() tablesorting(part5, tween5)
		task.wait()

		if afterframe() then
			return
		end

		--36, 3.0833332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.66347146, 119.688324, -1.33492076, -0.739387095, -0.634455681, 0.225328296, -0.653019905, 0.757266939, -0.0105718076, -0.163926318, -0.154960573, -0.97422576)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.01530612, 0.679452896, -0.0151032209, 0.569711566, 0.166450039, 0.804812431, 0.819352567, -0.038830325, -0.571973443, -0.0639537945, 0.985284984, -0.158503368)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--37, 3.1666667461395264
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.99915993, 125.43737, -1.26557887, -0.963063836, -0.245678931, 0.110226177, -0.228793859, 0.962442517, 0.146143526, -0.141990721, 0.115526453, -0.983103693)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.49011612e-07, 1.00000024, 1.1920929e-07, -0.992783248, -0.090235889, 0.0789874643, 0.0312343296, 0.441356719, 0.896788239, -0.115784131, 0.892783165, -0.435352921)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--38, 3.200000047683716
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.00417328, 0.505732536, 0.253674179, 0.597775578, -0.458744138, 0.657430172, 0.74785322, 0.0237204358, -0.663444698, 0.288756907, 0.888250768, 0.357254833)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--39, 3.2333333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.19933069, 0.0143198967, -0.718797207, 0.221552774, 0.00720790587, -0.975121677, -0.396876216, 0.914073884, -0.083415702, 0.89073205, 0.405483603, 0.205376238)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666674613952637, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.15367889, -0.550651908, -0.192756176, 0.606478095, -0.126489758, 0.784974277, 0.148379639, 0.987926126, 0.0445537679, -0.78113246, 0.0894533247, 0.617924154)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--40, 3.2666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.03315616, 129.18132, -1.05746198, -0.986113608, -0.127612412, 0.106277943, -0.136685356, 0.987134933, -0.0829574093, -0.0943244696, -0.0963321179, -0.990870297)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--41, 3.3333332538604736
		tween1 = ts:Create(part1, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.87071121, 132.595764, -0.876483023, -0.818392336, 0.5136621, -0.257653266, 0.2876454, 0.754310369, 0.590149224, 0.497487843, 0.408860803, -0.76507467)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.45286322e-07, 1.00000036, 8.94069672e-08, -0.982302785, -0.16983059, 0.0789874569, -0.00438207062, 0.442438811, 0.89678818, -0.187249184, 0.880571127, -0.435352921)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.22841012, 0.170220613, -0.445957422, -0.522802711, -0.763416529, 0.379305005, 0.430576146, 0.147536859, 0.89041394, -0.73571831, 0.628830433, 0.251576424)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666684150695801, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.58294487, 0.496660054, 0.0652108341, -0.407159686, 0.905335486, 0.120784938, -0.00727272034, -0.135452256, 0.990757287, 0.913328052, 0.402518004, 0.061734885)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166684150695801)

		if afterframe() then
			return
		end

		--42, 3.4000000953674316
		tween1 = ts:Create(part1, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.80276501, 133.619766, -0.826067805, -0.600596488, 0.755321264, -0.262248069, 0.338000447, 0.537093818, 0.772843003, 0.724596322, 0.375526726, -0.577875555)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.25497389, 0.264590263, -0.915965497, 0.296393991, -0.210214391, -0.931643963, 0.231091291, 0.962275505, -0.143606454, 0.926686227, -0.172730759, 0.333791375)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05364048, -0.951279402, 0.13951081, 0.57970947, -0.223661274, 0.783525705, 0.302445918, 0.951958597, 0.0479697995, -0.756613135, 0.209165603, 0.619504869)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.04999995231628418, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.63609946, 0.600283384, 0.229949206, -0.154274911, 0.963042796, 0.220789149, 0.0642163828, -0.21321854, 0.974891961, 0.985938907, 0.164579645, -0.0289488584)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--43, 3.450000047683716
		tween6 = ts:Create(part6, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.00582838e-07, 1.00000024, -5.96046448e-08, -0.950228751, -0.311079919, 0.0171654522, -0.13640289, 0.464928329, 0.874777675, -0.280106485, 0.828897417, -0.484220475)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23958874, 0.80317235, 0.575397432, 0.178252578, 0.919695854, 0.349836737, 0.0828245282, -0.368292719, 0.926013291, 0.98049283, -0.136089176, -0.141822472)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--44, 3.4833333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.74657404, 134.356857, -0.79811883, -0.56718868, 0.79718256, -0.206874862, 0.363485694, 0.467699587, 0.805689454, 0.739036798, 0.381781816, -0.555038393)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--45, 3.5333333015441895
		tween6 = ts:Create(part6, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.78813934e-07, 1.00000024, 0, -0.922696412, -0.385459512, 0.00723975897, -0.191814467, 0.475284934, 0.858668566, -0.334422857, 0.790901542, -0.512480378)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333325386047363, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.45362139, 0.832402647, 0.706646383, 0.306652546, 0.879614055, 0.363653541, 0.066072017, -0.400810897, 0.913775325, 0.949525535, -0.25618422, -0.181027532)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--46, 3.549999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.71985972, 134.693893, -0.786475539, -0.554832816, 0.810633302, -0.187174886, 0.371530116, 0.44272089, 0.816066027, 0.744396448, 0.38323915, -0.546810865)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24695063, 0.1427719, -0.525965571, -0.5796628, -0.776037931, 0.248507842, 0.23330991, 0.1341407, 0.963105798, -0.780741632, 0.616255939, 0.103300899)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03499995231628418)

		if afterframe() then
			return
		end

		--47, 3.5999999046325684
		tween5 = ts:Create(part5, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.26664567, 0.302873492, -0.956406593, 0.291002333, -0.252775848, -0.92272526, 0.346383989, 0.926870346, -0.144671321, 0.89181602, -0.277517647, 0.357278883)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03696764, -1.01805055, 0.194888577, 0.576681256, -0.232280523, 0.783252478, 0.315797746, 0.947585821, 0.0485043451, -0.753465652, 0.219377846, 0.619808674)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--48, 3.616666555404663
		tween1 = ts:Create(part1, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.6973846, 134.961456, -0.778548539, -0.549177527, 0.816287816, -0.179104149, 0.374593079, 0.432020724, 0.820389211, 0.747050285, 0.383448094, -0.543031812)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5333335399627686, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.86264515e-07, 1.00000048, 0, -0.860228062, -0.504387736, 0.074839294, -0.228106454, 0.511918008, 0.828195453, -0.456043243, 0.695365548, -0.55542016)}) tween6:Play() tablesorting(part6, tween6)
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24328327, 0.148828566, -0.557791352, -0.618396819, -0.754366517, 0.220264822, 0.145551637, 0.165490136, 0.975411654, -0.772269368, 0.635251403, 0.00746063888)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.316666841506958, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.40041971, 0.629368842, 0.714035332, 0.337673098, 0.902541399, 0.267200887, 0.0266112685, -0.292915136, 0.955768049, 0.940887272, -0.315626591, -0.122927293)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.16833339691162108)

		if afterframe() then
			return
		end

		--49, 3.799999952316284
		tween1 = ts:Create(part1, TweenInfo.new(0.13333344459533691, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.66814601, 135.289871, -0.770829558, -0.548403382, 0.816536129, -0.18034029, 0.373878688, 0.432332098, 0.820551038, 0.747976422, 0.382567465, -0.542377949)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.35000014305114746, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.19681263, 0.220114827, -0.547932923, -0.703165591, -0.629469633, 0.330637813, 0.159044892, 0.313990593, 0.936012864, -0.693010807, 0.710755527, -0.120673798)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--50, 3.816666603088379
		tween5 = ts:Create(part5, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.27624786, 0.289168119, -0.986728787, 0.276911497, -0.268139035, -0.922723174, 0.395986348, 0.906790435, -0.144671112, 0.875508666, -0.325327307, 0.357278198)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03696907, -1.01805401, 0.194888696, 0.587457299, -0.203491956, 0.783252239, 0.268573493, 0.962037802, 0.0485041328, -0.763388216, 0.181866288, 0.61980921)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.10166679382324219)

		if afterframe() then
			return
		end

		--51, 3.933333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63777804, 135.643951, -0.76210469, -0.559361458, 0.804797232, -0.198535442, 0.353977412, 0.448486507, 0.820707083, 0.749543071, 0.38879478, -0.535746038)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.29500437, 0.58445102, 0.659429073, 0.363628715, 0.884321332, 0.292832017, -0.0424666256, -0.298287839, 0.953531027, 0.93057549, -0.359166831, -0.0709118247)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.20166669845581053)

		if afterframe() then
			return
		end

		--52, 4.150000095367432
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1.00000012, 5.96046448e-08, -0.842338383, -0.486624449, 0.231652156, -0.107341655, 0.57268995, 0.81271404, -0.528151393, 0.659714282, -0.534633756)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30386329, 0.223504543, -0.941089392, 0.34521386, -0.223174393, -0.911603332, 0.406815886, 0.910904586, -0.0689467639, 0.845770717, -0.347053349, 0.405247748)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.5833330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.27739763, 0.188334316, -0.438911021, -0.785210848, -0.523562968, 0.330637991, 0.201901898, 0.28830713, 0.936013043, -0.585389197, 0.801721513, -0.120673813)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.4333333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03696764, -1.01805079, 0.194888532, 0.621237695, -0.139031664, 0.771189928, 0.266969293, 0.962811768, -0.0414814763, -0.73674351, 0.231653869, 0.635252118)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.16833339691162108)

		if afterframe() then
			return
		end

		--53, 4.333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.39999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63504493, 135.69928, -0.760158777, -0.578781366, 0.782874823, -0.228296727, 0.319722891, 0.475385785, 0.819625556, 0.750193059, 0.401392251, -0.525447369)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-08, 1, 2.98023224e-08, -0.790984631, -0.49882549, 0.354283333, -0.0252984762, 0.605219185, 0.795656919, -0.611312926, 0.620389521, -0.491338521)}) tween6:Play() tablesorting(part6, tween6)
		tween3 = ts:Create(part3, TweenInfo.new(0.39999961853027344, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23533416, 0.559087515, 0.639129996, 0.419107974, 0.85157454, 0.314912498, -0.113826156, -0.294826716, 0.948747218, 0.900773108, -0.433472782, -0.026632756)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.235)

		if afterframe() then
			return
		end

		--54, 4.583333492279053
		tween5 = ts:Create(part5, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31677628, 0.18545568, -0.903369546, 0.395501524, -0.178667769, -0.900919676, 0.371055663, 0.928368151, -0.0212187916, 0.840176344, -0.325899333, 0.433466613)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03696764, -1.01805055, 0.194888204, 0.654897869, -0.157565296, 0.73910892, 0.32234773, 0.942831099, -0.0846253633, -0.683520854, 0.293671072, 0.668248892)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13499961853027342)

		if afterframe() then
			return
		end

		--55, 4.733333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.3166670799255371, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63526857, 135.727173, -0.75823462, -0.579874098, 0.778146744, -0.241316497, 0.316546381, 0.488123, 0.813347757, 0.750696003, 0.395251513, -0.529369533)}) tween1:Play() tablesorting(part1, tween1)
		tween2 = ts:Create(part2, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.2535665, 0.198261499, -0.469874501, -0.637459099, -0.650613427, 0.412727356, 0.264123529, 0.318693191, 0.910318196, -0.72380048, 0.689298809, -0.0313115343)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.3166670799255371, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.23718905, 0.558478057, 0.597855449, 0.399941891, 0.863068283, 0.308480233, -0.14911896, -0.270812452, 0.951012373, 0.904328525, -0.426349938, 0.0203906447)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500038146972656)

		if afterframe() then
			return
		end

		--56, 4.833333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(2.98023224e-07, 1, 4.47034836e-07, -0.820272982, -0.409329176, 0.399502784, 0.0962332934, 0.589742661, 0.801837385, -0.563818932, 0.696170747, -0.444358468)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--57, 4.900000095367432
		tween5 = ts:Create(part5, TweenInfo.new(0.2666664123535156, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30720615, 0.192031145, -0.88313961, 0.410631478, -0.14044942, -0.90091747, 0.281559855, 0.959311068, -0.0212184079, 0.867240965, -0.244951591, 0.433466196)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.2666664123535156, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.03696823, -1.01805472, 0.194888771, 0.672759593, -0.284296066, 0.683058858, 0.439260364, 0.896384299, -0.0595535971, -0.595352173, 0.340105534, 0.727931559)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--58, 5.050000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.1833329200744629, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.63955688, 135.742935, -0.754713655, -0.591053963, 0.768121183, -0.246262625, 0.32606554, 0.506757736, 0.79804647, 0.737791777, 0.391390651, -0.549979031)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.1833329200744629, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.12206173, 0.525495589, 0.541485548, 0.423943639, 0.878077865, 0.221927017, -0.0442835391, -0.224646986, 0.973433614, 0.904605329, -0.422508627, -0.0563531965)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--59, 5.133333206176758
		tween2 = ts:Create(part2, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.35309279, 0.148124218, -0.331197888, -0.520146847, -0.747729421, 0.412727416, 0.207332626, 0.358245432, 0.910318315, -0.828530908, 0.559067965, -0.0313115641)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--60, 5.150000095367432
		tween6 = ts:Create(part6, TweenInfo.new(0.46666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(7.4505806e-08, 0.99999994, 4.76837158e-07, -0.796298325, -0.508874178, 0.327041984, -0.0220320076, 0.564690769, 0.825008631, -0.604502976, 0.649747372, -0.460873544)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--61, 5.166666507720947
		tween5 = ts:Create(part5, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.30762196, -0.0200302601, -0.812213242, 0.404352784, -0.157616809, -0.900917411, 0.321707219, 0.946603537, -0.0212184004, 0.856156647, -0.281254351, 0.433466256)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.33333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0369674, -1.01805329, 0.19488883, 0.597494364, -0.420036167, 0.683058858, 0.618754983, 0.783324063, -0.059553571, -0.510041595, 0.458228588, 0.727931619)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--62, 5.233333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.68898284, 135.743057, -0.754579961, -0.578307569, 0.748860478, -0.323679745, 0.271129459, 0.550623178, 0.789495587, 0.769447386, 0.368812025, -0.521467745)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81142855, 0.41110599, 0.404230416, 0.152139038, 0.928391039, 0.33903411, 0.0244235247, -0.346453905, 0.937749088, 0.988057315, -0.134387881, -0.0753837749)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.15166698455810546)

		if afterframe() then
			return
		end

		--63, 5.400000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.73716021, 135.744431, -0.748923719, -0.567710936, 0.760945916, -0.314111292, 0.289817184, 0.541875064, 0.788909137, 0.770526111, 0.356837422, -0.528163671)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.84215081, 0.387634993, 0.448083997, -0.118323959, 0.934808195, 0.334863067, 0.0912374407, -0.325570226, 0.941105545, 0.988774776, 0.14190729, -0.0467668027)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--64, 5.449999809265137
		tween2 = ts:Create(part2, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.24348652, 0.214949846, -0.621037006, -0.642113268, -0.64602077, 0.412727654, 0.26640445, 0.316788882, 0.910318434, -0.718833804, 0.694477201, -0.0313115492)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--65, 5.5
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.05759335, -0.709419549, -0.318603873, 0.430963546, -0.0511285141, -0.900919616, 0.0739287958, 0.997037768, -0.0212188046, 0.899335861, -0.0574593954, 0.433466852)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.07269514, -0.539631009, -0.0635531247, 0.634887338, -0.201680273, 0.745817065, 0.254207075, 0.966109037, 0.0448532626, -0.72958678, 0.161115229, 0.664638937)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--66, 5.5333333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.77517951, 135.745941, -0.742784917, -0.559461594, 0.779468775, -0.281835526, 0.32528311, 0.519227445, 0.790312648, 0.762360632, 0.350473195, -0.544035912)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.92720485, 0.406000435, 0.434341609, -0.0593563244, 0.961091876, 0.26977694, 0.0500407964, -0.267048895, 0.962382972, 0.996981919, 0.0706233829, -0.0322428346)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--67, 5.599999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.81850731, 135.747787, -0.734976411, -0.547810674, 0.803858995, -0.231763378, 0.37587741, 0.483987153, 0.790236056, 0.747408688, 0.345785052, -0.567285776)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.92618823, 0.426314592, 0.344633132, -0.0503355898, 0.951744616, 0.30273509, 0.0285849273, -0.301622242, 0.952998877, 0.998323202, 0.0566234067, -0.0120232105)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--68, 5.616666793823242
		tween6 = ts:Create(part6, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-5.21540642e-08, 0.999999881, 4.76837158e-07, -0.962934136, -0.269719988, -0.0030707866, -0.169368863, 0.595729709, 0.78512454, -0.209934294, 0.75654304, -0.619330287)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--69, 5.650000095367432
		tween2 = ts:Create(part2, TweenInfo.new(0.48333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.21565437, 0.184330642, -0.478695929, -0.829025686, -0.041082263, 0.557697356, 0.557092667, 0.026048772, 0.83004564, -0.0486304983, 0.998817205, 0.0012921337)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--70, 5.666666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84015751, 135.748657, -0.731026649, -0.450320184, 0.868071795, -0.208957672, 0.443276763, 0.420510709, 0.791629136, 0.77505976, 0.263860434, -0.574160516)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.85383308, 0.415928304, 0.359434664, -0.0965502262, 0.960962355, 0.259286463, 0.020579502, -0.258520484, 0.965786517, 0.995115399, 0.0985829085, 0.00518408418)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--71, 5.699999809265137
		tween5 = ts:Create(part5, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.926142454, -1.0155139, -0.0526676401, 0.427454621, -0.0750084221, -0.900919616, 0.129243761, 0.991385818, -0.0212187879, 0.894750595, -0.107368186, 0.433466852)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.05202901, -0.301737189, -0.219136298, 0.556144714, -0.160743669, 0.815392315, 0.119843483, 0.986374021, 0.112710275, -0.822399318, 0.0350362435, 0.567830741)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--72, 5.733333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84020102, 135.748688, -0.731027067, -0.345772058, 0.914329171, -0.21081765, 0.483881384, 0.366249263, 0.794808507, 0.803928375, 0.172811761, -0.56906569)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.81233907, 0.412096918, 0.373136699, -0.0518142059, 0.979712725, 0.193594694, -0.00576747954, -0.194145426, 0.980956018, 0.99864006, 0.0497109145, 0.0157099515)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166707992553711)

		if afterframe() then
			return
		end

		--73, 5.800000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84009993, 135.73703, -0.731033921, -0.213298976, 0.953723848, -0.211929917, 0.521313071, 0.294564605, 0.800914884, 0.826278508, 0.0603525043, -0.560019076)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.74111319, 0.36202684, 0.384256333, 0.0345913246, 0.984525144, 0.171796173, -0.0308052003, -0.170766965, 0.984829843, 0.998926699, -0.0393587649, 0.0244214088)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--74, 5.866666793823242
		tween6 = ts:Create(part6, TweenInfo.new(0.2999997138977051, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.06170774e-07, 0.99999994, 5.06639481e-07, -0.857026041, -0.500821829, -0.121178627, -0.416501731, 0.534856081, 0.735156834, -0.303369373, 0.680519462, -0.666978359)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--75, 5.900000095367432
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.8401376, 135.717499, -0.731025577, -0.12715067, 0.969075382, -0.211485088, 0.536703408, 0.246524692, 0.806954384, 0.834135771, -0.0108999023, -0.551451683)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.914334297, -0.944750547, -0.0175925642, 0.379150748, -0.211159647, -0.900919676, 0.447494149, 0.894035101, -0.0212187916, 0.809934437, -0.395111114, 0.433466762)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.942861438, -0.305466771, -0.293830574, 0.349172622, -0.326981187, 0.878157854, 0.304950774, 0.925781846, 0.223458931, -0.88604939, 0.189768866, 0.422971278)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.674281, 0.283368468, 0.385661662, 0.119896814, 0.96869123, 0.217400163, -0.0459394902, -0.21333167, 0.975899339, 0.991722941, -0.12699452, 0.0189233422)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.06833301544189453)

		if afterframe() then
			return
		end

		--76, 5.983333110809326
		tween1 = ts:Create(part1, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.8401233, 135.685364, -0.73101145, -0.0377290249, 0.977069676, -0.209550649, 0.545006752, 0.195885807, 0.815227926, 0.837582409, -0.0834487826, -0.539900184)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.10000038146972656, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.58976674, 0.164998919, 0.392300189, 0.236941695, 0.968674004, 0.0743603557, -0.0572378933, -0.0624885522, 0.996403158, 0.969836175, -0.240345553, 0.0406387001)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08500038146972656)

		if afterframe() then
			return
		end

		--77, 6.083333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84014642, 135.648956, -0.730994761, 0.028516775, 0.978001714, -0.206638783, 0.545017242, 0.158079192, 0.823387742, 0.837939858, -0.136102036, -0.528519809)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.907893717, -0.906152666, 0.00153923407, 0.427718699, -0.0734862834, -0.900919795, 0.125713855, 0.991839588, -0.0212187879, 0.895127118, -0.104182482, 0.433466613)}) tween5:Play() tablesorting(part5, tween5)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3880744, 0.0156804919, 0.37661165, 0.163784623, 0.986322582, -0.0185029283, -0.30564636, 0.0685696155, 0.94967258, 0.937952578, -0.149886429, 0.312696517)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--78, 6.133333206176758
		tween2 = ts:Create(part2, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.849529862, 0.0334782898, 0.273660809, -0.651181638, -0.265404671, 0.711001277, 0.70669055, 0.129494548, 0.695571661, -0.276678681, 0.955401242, 0.103234403)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--79, 6.166666507720947
		tween6 = ts:Create(part6, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-8.0242753e-06, 1.00003672, -3.87430191e-07, -0.862454116, -0.50504297, 0.0332373232, -0.261354148, 0.500622451, 0.825270474, -0.433436424, 0.703071177, -0.56375885)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--80, 6.183333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84020603, 135.630737, -0.730939806, 0.187660471, 0.960259795, -0.206604198, 0.562525332, 0.0673616901, 0.824031591, 0.80520153, -0.270858198, -0.52752918)}) tween1:Play() tablesorting(part1, tween1)
		tween5 = ts:Create(part5, TweenInfo.new(0.40000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.3661226, -0.386138082, -0.723157167, 0.139015764, -0.102092788, -0.985013485, 0.647455573, 0.762002349, 0.0123973712, 0.74931699, -0.639475882, 0.172030866)}) tween5:Play() tablesorting(part5, tween5)
		tween2 = ts:Create(part2, TweenInfo.new(0.34999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.314932406, 0.410403818, 0.682865739, 0.588831544, -0.750953376, 0.298909009, 0.779096663, 0.428909928, -0.457214206, 0.215141356, 0.502101183, 0.837620914)}) tween2:Play() tablesorting(part2, tween2)
		tween4 = ts:Create(part4, TweenInfo.new(0.11666679382324219, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04750466, -0.631375372, -0.338199317, -0.0412546545, -0.470542997, 0.881411612, 0.367060214, 0.813338697, 0.45138374, -0.929281354, 0.342151046, 0.139167383)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18955183, -0.0483253002, 0.459622741, -0.149333775, 0.964127421, -0.219451129, -0.446123332, 0.132369995, 0.885128379, 0.882425189, 0.230081797, 0.410352468)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--81, 6.2833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84018111, 135.6306, -0.730826497, 0.389434367, 0.896533847, -0.211109996, 0.571934462, -0.0557229258, 0.818404496, 0.721964359, -0.439455867, -0.534459174)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.675044715, -0.0994852781, 0.555547297, -0.574483335, 0.455576539, -0.680015922, -0.79821074, -0.127910644, 0.588640094, 0.181188196, 0.880958915, 0.437127233)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--82, 6.300000190734863
		tween4 = ts:Create(part4, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0232234, -0.960317075, 0.179148763, 0.446321547, -0.199449584, 0.872362316, -0.397494555, 0.829208612, 0.392952383, -0.801742554, -0.522142589, 0.290817231)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--83, 6.349999904632568
		tween6 = ts:Create(part6, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28746033e-05, 1.00005996, -5.66244125e-07, -0.804577172, -0.561385274, 0.193655461, -0.143923298, 0.500715971, 0.853562951, -0.57614398, 0.658885598, -0.483661056)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--84, 6.366666793823242
		tween1 = ts:Create(part1, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.8402046, 135.630554, -0.730802357, -0.315248162, 0.948970675, 0.00855321065, 0.555864096, 0.177338377, 0.812136769, 0.769177556, 0.2607795, -0.583404362)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.15000009536743164, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.908797979, 0.00320923328, 0.564011335, -0.637698174, 0.500863314, -0.58521533, -0.757838786, -0.271920532, 0.593076408, 0.137918174, 0.8217026, 0.552976847)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.13500009536743163)

		if afterframe() then
			return
		end

		--85, 6.516666889190674
		tween1 = ts:Create(part1, TweenInfo.new(0.08333301544189453, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84018075, 135.630692, -0.730957568, -0.301285446, 0.945889175, 0.120502472, 0.533353746, 0.0624148548, 0.843586683, 0.790418327, 0.318430781, -0.523298204)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.18033028, 0.116018862, 0.450130284, -0.695369363, 0.0953026265, -0.712305367, -0.714823067, 0.0104650781, 0.699227214, 0.0740925148, 0.995393395, 0.0608473495)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--86, 6.5333333015441895
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.314932764, 0.410404384, 0.682865143, 0.682099998, -0.677901864, 0.274205267, 0.71677494, 0.545543611, -0.434299231, 0.144821346, 0.492779046, 0.858018398)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--87, 6.583333492279053
		tween6 = ts:Create(part6, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.93715096e-06, 1.00005794, -8.2552433e-06, -0.72915262, -0.631418109, 0.263918698, -0.132871896, 0.508920848, 0.850494385, -0.671326637, 0.58507514, -0.454981744)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.37751627, -0.281088471, -0.795964718, 0.144372106, -0.0943664387, -0.985013485, 0.604973733, 0.796148896, 0.0123973563, 0.783047557, -0.597697258, 0.172030866)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.04599047, -0.955631137, 0.18950814, 0.446323752, -0.0744324997, 0.891770601, -0.397494435, 0.876337171, 0.272086918, -0.801743925, -0.47591266, 0.361543596)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--88, 6.599999904632568
		tween1 = ts:Create(part1, TweenInfo.new(0.08333349227905273, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84015501, 135.630432, -0.730981588, -0.09264566, 0.971098423, 0.219964743, 0.433120191, -0.15961501, 0.887090623, 0.896562338, 0.177456737, -0.405814946)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.06833349227905273)

		if afterframe() then
			return
		end

		--89, 6.683333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.84016156, 135.611038, -0.701913655, -0.0442692675, 0.974604785, 0.219513327, 0.347151488, -0.19102855, 0.918147147, 0.936763763, 0.116850026, -0.329878747)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(0.16666650772094727, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.36083651, 0.225912631, 0.540880799, -0.721863985, -0.139762491, -0.677774847, -0.690671206, 0.0840426385, 0.718268931, -0.0434250757, 0.986612201, -0.157197341)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--90, 6.7166666984558105
		tween2 = ts:Create(part2, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.314932704, 0.410404146, 0.682866096, 0.717308819, -0.644561172, 0.264591962, 0.686658084, 0.589542866, -0.425370276, 0.118188851, 0.486806005, 0.865477622)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--91, 6.75
		tween6 = ts:Create(part6, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28448009e-05, 1.00005996, -4.76837158e-07, -0.732774675, -0.628545702, 0.260713935, -0.096664913, 0.475403219, 0.874441385, -0.673570573, 0.615566492, -0.409121692)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.37345409, -0.223726034, -0.838174284, 0.21788688, -0.0916431099, -0.971661747, 0.597505152, 0.799723983, 0.0585587695, 0.771694779, -0.593332231, 0.229006603)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06193066, -0.952351689, 0.196756005, 0.467048198, -0.00929494947, 0.88418299, -0.415712237, 0.880235195, 0.228843361, -0.780416131, -0.474446565, 0.407248259)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--92, 6.7833333015441895
		tween1 = ts:Create(part1, TweenInfo.new(0.1333332061767578, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.83079863, 135.610138, -0.677058399, 0.0155770183, 0.978080213, 0.207645684, 0.29498744, -0.202922806, 0.933705032, 0.9553743, 0.0467085242, -0.291682303)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--93, 6.849999904632568
		tween2 = ts:Create(part2, TweenInfo.new(0.1833333969116211, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.314932525, 0.410404295, 0.6828655, 0.725802422, -0.636380017, 0.261211038, 0.678233206, 0.598557234, -0.426296622, 0.114936903, 0.486569196, 0.866048515)}) tween2:Play() tablesorting(part2, tween2)
		tween3 = ts:Create(part3, TweenInfo.new(0.21666669845581055, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.40013885, 0.295417994, 0.456737578, -0.70217073, -0.203938246, -0.682177007, -0.686956823, -0.0578700118, 0.724390626, -0.187208533, 0.977272153, -0.0994622186)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--94, 6.916666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.82377625, 135.619247, -0.672997892, 0.0361657143, 0.979727626, 0.197042942, 0.300724983, -0.198702157, 0.932781994, 0.953024864, 0.0255209804, -0.301814765)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--95, 6.949999809265137
		tween6 = ts:Create(part6, TweenInfo.new(0.23333358764648438, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.28149986e-05, 1.00006008, -3.87430191e-07, -0.729400337, -0.649296165, 0.215382829, -0.115198389, 0.42693305, 0.896915674, -0.674317896, 0.629398763, -0.386202872)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--96, 6.9666666984558105
		tween1 = ts:Create(part1, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.80067611, 135.66716, -0.685644686, 0.041828759, 0.986979485, 0.155312821, 0.334119111, -0.160317168, 0.928796649, 0.941602409, 0.0130425058, -0.336474568)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--97, 6.983333110809326
		tween5 = ts:Create(part5, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.36657548, -0.232967257, -0.833171129, 0.257336676, -0.0942976773, -0.961709738, 0.609005094, 0.788529217, 0.0856421217, 0.750260413, -0.607725143, 0.260345221)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.06666707992553711, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06193066, -0.952351809, 0.196756154, 0.479041785, -0.0222317204, 0.877510607, -0.425426811, 0.8685444, 0.254249215, -0.767809272, -0.495112419, 0.406611085)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--98, 7.0333333015441895
		tween2 = ts:Create(part2, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.314932227, 0.410403907, 0.682866454, 0.709640384, -0.649035096, 0.274160683, 0.69105953, 0.565360546, -0.450337946, 0.137285441, 0.509039402, 0.84972465)}) tween2:Play() tablesorting(part2, tween2)
		task.wait()

		if afterframe() then
			return
		end

		--99, 7.050000190734863
		tween5 = ts:Create(part5, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.33917379, -0.256422341, -0.835716724, 0.308670461, -0.100714877, -0.945821822, 0.628058672, 0.768359482, 0.123149946, 0.714328229, -0.632044375, 0.300424755)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.23333311080932617, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06193078, -0.952351272, 0.196756214, 0.497792095, -0.066351302, 0.864754617, -0.402952909, 0.86522758, 0.298345566, -0.768005133, -0.496969372, 0.403967083)}) tween4:Play() tablesorting(part4, tween4)
		task.wait()

		if afterframe() then
			return
		end

		--100, 7.066666603088379
		tween3 = ts:Create(part3, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.39175963, 0.292818218, 0.41322282, -0.690280497, -0.238241985, -0.683193743, -0.682190716, -0.100338943, 0.724256873, -0.241099298, 0.966008842, -0.0932644084)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--101, 7.166666507720947
		tween1 = ts:Create(part1, TweenInfo.new(0.16666698455810547, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.79104543, 135.687164, -0.690951943, 0.0440753102, 0.987985671, 0.14812763, 0.344113171, -0.154212117, 0.92617768, 0.937893093, 0.0101510882, -0.34677586)}) tween1:Play() tablesorting(part1, tween1)
		task.wait()

		if afterframe() then
			return
		end

		--102, 7.183333396911621
		tween6 = ts:Create(part6, TweenInfo.new(0.28333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.42888927e-06, 1.00005794, -5.75184822e-06, -0.711869657, -0.687053382, 0.145618677, -0.199279234, 0.396414727, 0.896180511, -0.67344439, 0.608947754, -0.419113636)}) tween6:Play() tablesorting(part6, tween6)
		task.wait(0.03499971389770508)

		if afterframe() then
			return
		end

		--103, 7.233333110809326
		tween2 = ts:Create(part2, TweenInfo.new(0.20000028610229492, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.314932346, 0.410403579, 0.682866216, 0.66676867, -0.679655015, 0.30575937, 0.721313834, 0.485352874, -0.494104385, 0.187419146, 0.5500018, 0.813862622)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333778381347657)

		if afterframe() then
			return
		end

		--104, 7.266666889190674
		tween3 = ts:Create(part3, TweenInfo.new(0.3166666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32556403, 0.210361242, 0.380834877, -0.690284312, -0.213261485, -0.691396654, -0.682188332, -0.126589745, 0.720132709, -0.241095901, 0.968761325, -0.0580995493)}) tween3:Play() tablesorting(part3, tween3)
		task.wait()

		if afterframe() then
			return
		end

		--105, 7.2833333015441895
		tween5 = ts:Create(part5, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31283605, -0.268906891, -0.855090737, 0.28031534, -0.100714885, -0.954609632, 0.631453216, 0.768359423, 0.1043576, 0.722973108, -0.632044315, 0.278979719)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(0.19999980926513672, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06193376, -0.952353001, 0.196750224, 0.492546767, -0.0979542062, 0.864755332, -0.346967995, 0.889158785, 0.298345566, -0.798126936, -0.446991414, 0.403968871)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--106, 7.333333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.79101121, 135.686737, -0.690863907, 0.0530451089, 0.983532429, 0.172772318, 0.37533924, -0.17996645, 0.909248114, 0.925368726, 0.0166174211, -0.378704756)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--107, 7.433333396911621
		tween2 = ts:Create(part2, TweenInfo.new(2.8333330154418945, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(0.314932346, 0.410403579, 0.682866216, 0.66676867, -0.679655015, 0.30575937, 0.721313834, 0.485352874, -0.494104385, 0.187419146, 0.5500018, 0.813862622)}) tween2:Play() tablesorting(part2, tween2)
		task.wait(0.018333301544189454)

		if afterframe() then
			return
		end

		--108, 7.4666666984558105
		tween6 = ts:Create(part6, TweenInfo.new(2.799999713897705, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-2.42888927e-06, 1.00005794, -5.75184822e-06, -0.711869657, -0.687053382, 0.145618677, -0.199279234, 0.396414727, 0.896180511, -0.67344439, 0.608947754, -0.419113636)}) tween6:Play() tablesorting(part6, tween6)
		task.wait()

		if afterframe() then
			return
		end

		--109, 7.483333110809326
		tween5 = ts:Create(part5, TweenInfo.new(2.7833333015441895, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31283605, -0.268906891, -0.855090737, 0.28031534, -0.100714885, -0.954609632, 0.631453216, 0.768359423, 0.1043576, 0.722973108, -0.632044315, 0.278979719)}) tween5:Play() tablesorting(part5, tween5)
		tween4 = ts:Create(part4, TweenInfo.new(2.7833333015441895, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.06193376, -0.952353001, 0.196750224, 0.492546767, -0.0979542062, 0.864755332, -0.346967995, 0.889158785, 0.298345566, -0.798126936, -0.446991414, 0.403968871)}) tween4:Play() tablesorting(part4, tween4)
		task.wait(0.08500038146972656)

		if afterframe() then
			return
		end

		--110, 7.583333492279053
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.16851568, 135.68692, -0.690851152, 0.053045284, 0.983532548, 0.172772318, 0.37533927, -0.179966494, 0.909248412, 0.925368547, 0.0166168772, -0.378704786)}) tween1:Play() tablesorting(part1, tween1)
		tween3 = ts:Create(part3, TweenInfo.new(2.683332920074463, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32556403, 0.210361242, 0.380834877, -0.690284312, -0.213261485, -0.691396654, -0.682188332, -0.126589745, 0.720132709, -0.241095901, 0.968761325, -0.0580995493)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--111, 7.683333396911621
		tween1 = ts:Create(part1, TweenInfo.new(0.0666666030883789, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-4.18834925, 135.68689, -0.690810978, 0.0530454628, 0.983532548, 0.172772303, 0.375339299, -0.179966509, 0.909248412, 0.925368547, 0.0166167002, -0.378704756)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166660308837891)

		if afterframe() then
			return
		end

		--112, 7.75
		tween1 = ts:Create(part1, TweenInfo.new(0.05000019073486328, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(12.2889242, 135.68689, -0.690793097, 0.0530456379, 0.983532608, 0.172772288, 0.375339329, -0.179966569, 0.909248412, 0.925368547, 0.0166165214, -0.378704816)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03500019073486328)

		if afterframe() then
			return
		end

		--113, 7.800000190734863
		tween1 = ts:Create(part1, TweenInfo.new(0.09999990463256836, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-26.0399246, 135.686905, -0.690774739, 0.0530458093, 0.983532608, 0.172772259, 0.375339329, -0.179966599, 0.909248412, 0.925368547, 0.0166163426, -0.378704876)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.08499990463256836)

		if afterframe() then
			return
		end

		--114, 7.900000095367432
		tween1 = ts:Create(part1, TweenInfo.new(2.366666316986084, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-26.0399246, 135.686905, -0.690774739, 0.0530458093, 0.983532608, 0.172772259, 0.375339329, -0.179966599, 0.909248412, 0.925368547, 0.0166163426, -0.378704876)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(2.351666316986084)

		if afterframe() then
			return
		end

		--115, 10.266666412353516
		part1.C0 = CFrame.new(-26.0399246, 135.686905, -0.690774739, 0.0530458093, 0.983532608, 0.172772259, 0.375339329, -0.179966599, 0.909248412, 0.925368547, 0.0166163426, -0.378704876)
		part6.C0 = CFrame.new(-2.42888927e-06, 1.00005794, -5.75184822e-06, -0.711869657, -0.687053382, 0.145618677, -0.199279234, 0.396414727, 0.896180511, -0.67344439, 0.608947754, -0.419113636)
		part5.C0 = CFrame.new(-1.31283605, -0.268906891, -0.855090737, 0.28031534, -0.100714885, -0.954609632, 0.631453216, 0.768359423, 0.1043576, 0.722973108, -0.632044315, 0.278979719)
		part2.C0 = CFrame.new(0.314932346, 0.410403579, 0.682866216, 0.66676867, -0.679655015, 0.30575937, 0.721313834, 0.485352874, -0.494104385, 0.187419146, 0.5500018, 0.813862622)
		part4.C0 = CFrame.new(1.06193376, -0.952353001, 0.196750224, 0.492546767, -0.0979542062, 0.864755332, -0.346967995, 0.889158785, 0.298345566, -0.798126936, -0.446991414, 0.403968871)
		part3.C0 = CFrame.new(-1.32556403, 0.210361242, 0.380834877, -0.690284312, -0.213261485, -0.691396654, -0.682188332, -0.126589745, 0.720132709, -0.241095901, 0.968761325, -0.0580995493)

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
