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
	local animvalue = anims:FindFirstChild("StartSeperate")
	if not animvalue then
		animvalue = Instance.new("BoolValue", anims)
		animvalue.Value = true
		animvalue.Name = "StartSeperate"
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
		tween1 = ts:Create(part1, TweenInfo.new(0.05000000074505806, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-0.616762698, 0.530982196, 0.213123247, 0.0530451089, 0.983532429, 0.172772318, 0.37533924, -0.17996645, 0.909248114, 0.925368726, 0.0166174211, -0.378704756)}) tween1:Play() tablesorting(part1, tween1)
		tween6 = ts:Create(part6, TweenInfo.new(0.3166666626930237, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-3.5315752e-06, 1.00005686, -5.27501106e-06, -0.711869001, -0.687050581, 0.145616949, -0.199277505, 0.396417409, 0.896181941, -0.673447251, 0.608945847, -0.419110954)}) tween6:Play() tablesorting(part6, tween6)
		tween5 = ts:Create(part5, TweenInfo.new(0.3166666626930237, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.31283605, -0.268906832, -0.855090797, 0.280315369, -0.100714892, -0.954609692, 0.631453156, 0.768359482, 0.104357615, 0.722973108, -0.632044435, 0.278979719)}) tween5:Play() tablesorting(part5, tween5)
		part2.C0 = CFrame.new(0.314932168, 0.410403371, 0.682866752, 0.66676867, -0.679655015, 0.305759251, 0.721313894, 0.485352635, -0.494104475, 0.187419474, 0.5500018, 0.813862562)
		tween4 = ts:Create(part4, TweenInfo.new(0.3166666626930237, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(1.0619334, -0.952353239, 0.196749985, 0.492548794, -0.0979544073, 0.864754677, -0.346967876, 0.889158726, 0.298345476, -0.798128426, -0.446991771, 0.403967053)}) tween4:Play() tablesorting(part4, tween4)
		tween3 = ts:Create(part3, TweenInfo.new(0.3166666626930237, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-1.32556462, 0.210357517, 0.380839616, -0.690284312, -0.213261485, -0.691396654, -0.682188332, -0.126589745, 0.720132709, -0.241095901, 0.968761325, -0.0580995493)}) tween3:Play() tablesorting(part3, tween3)
		task.wait(0.03500000074505806)

		if afterframe() then
			return
		end

		--2, 0.05000000074505806
		tween1 = ts:Create(part1, TweenInfo.new(0.05000000074505806, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(3.41691089, 0.530971646, 0.213121951, 0.0530451089, 0.983532429, 0.172772318, 0.37533924, -0.17996645, 0.909248114, 0.925368726, 0.0166174211, -0.378704756)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.03500000074505806)

		if afterframe() then
			return
		end

		--3, 0.10000000149011612
		tween1 = ts:Create(part1, TweenInfo.new(0.06666667014360428, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-6.79568672, 0.53098017, 0.213122725, 0.0530451089, 0.983532429, 0.172772318, 0.37533924, -0.17996645, 0.909248114, 0.925368726, 0.0166174211, -0.378704756)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166667014360428)

		if afterframe() then
			return
		end

		--4, 0.1666666716337204
		tween1 = ts:Create(part1, TweenInfo.new(0.0833333283662796, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(15.0396814, 0.530978739, 0.213144079, 0.0530451089, 0.983532429, 0.172772318, 0.37533924, -0.17996645, 0.909248114, 0.925368726, 0.0166174211, -0.378704756)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.0683333283662796)

		if afterframe() then
			return
		end

		--5, 0.25
		tween1 = ts:Create(part1, TweenInfo.new(0.06666666269302368, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {C0 = CFrame.new(-22.6287193, 0.530974925, 0.213102996, 0.0530451089, 0.983532429, 0.172772318, 0.37533924, -0.17996645, 0.909248114, 0.925368726, 0.0166174211, -0.378704756)}) tween1:Play() tablesorting(part1, tween1)
		task.wait(0.05166666269302368)

		if afterframe() then
			return
		end

		--6, 0.3166666626930237
		part1.C0 = CFrame.new(-22.6287193, 0.530974925, 0.213102996, 0.0530451089, 0.983532429, 0.172772318, 0.37533924, -0.17996645, 0.909248114, 0.925368726, 0.0166174211, -0.378704756)
		part6.C0 = CFrame.new(-3.5315752e-06, 1.00005686, -5.27501106e-06, -0.711869001, -0.687050581, 0.145616949, -0.199277505, 0.396417409, 0.896181941, -0.673447251, 0.608945847, -0.419110954)
		part5.C0 = CFrame.new(-1.31283605, -0.268906832, -0.855090797, 0.280315369, -0.100714892, -0.954609692, 0.631453156, 0.768359482, 0.104357615, 0.722973108, -0.632044435, 0.278979719)
		part4.C0 = CFrame.new(1.0619334, -0.952353239, 0.196749985, 0.492548794, -0.0979544073, 0.864754677, -0.346967876, 0.889158726, 0.298345476, -0.798128426, -0.446991771, 0.403967053)
		part3.C0 = CFrame.new(-1.32556462, 0.210357517, 0.380839616, -0.690284312, -0.213261485, -0.691396654, -0.682188332, -0.126589745, 0.720132709, -0.241095901, 0.968761325, -0.0580995493)

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
