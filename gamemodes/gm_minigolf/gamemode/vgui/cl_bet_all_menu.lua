
-- local BAR_HEIGHT = Minigolf.PADDING * 4
-- local scrW, scrH = ScrW(), ScrH()
-- local PANEL = {}

-- function PANEL:Init()
-- 	local width = math.max(450, scrW * .3)
-- 	self:SetWide(width)

-- 	self.startTime = UnPredictedCurTime()

-- 	local actionButton = vgui.Create("MinigolfActionButton", self)
-- 	actionButton:SetText("Make new bet")
-- 	actionButton:SizeToContents()
-- 	actionButton:SetSize(actionButton:GetWide() + (Minigolf.PADDING * 2), actionButton:GetTall() + (Minigolf.PADDING))
-- 	actionButton:SetPos(Minigolf.PADDING, Minigolf.PADDING)
-- 	actionButton.DoClick = function(btn)
-- 		self:Remove()
-- 		if(IsValid(Minigolf.Menus.Betting))then
-- 			Minigolf.Menus.Betting:Remove()
-- 		end
	
-- 		Minigolf.Menus.Betting = vgui.Create("Minigolf.BetMenu", GetHUDPanel())
-- 		Minigolf.Menus.Betting:MakePopup()
-- 	end
-- 	self.actionButton = actionButton
	
-- 	local closeButton = vgui.Create("MinigolfCloseButton", self)
-- 	closeButton.DoClick = function(btn)
-- 		self:Remove()
-- 	end
-- 	closeButton:SetPos(width - Minigolf.PADDING - closeButton:GetWide(), Minigolf.PADDING)
-- 	self.closeButton = closeButton

-- 	local bettingList = vgui.Create("DListView", self)
-- 	bettingList:SetPos(Minigolf.PADDING, BAR_HEIGHT + Minigolf.PADDING)
-- 	bettingList:SetWide(width - Minigolf.PADDING * 2)
-- 	bettingList:SetTall(200)
-- 	bettingList:SetMultiSelect(false)
-- 	bettingList:AddColumn("Bets on Player")
-- 	bettingList:AddColumn("On Hole")
-- 	bettingList:AddColumn("Prize Pool")

-- 	for betIndex, bet in pairs(Minigolf.Bets.All or {}) do
-- 		bettingList:AddLine(bet.PlayerName, bet.HoleName, bet.BetSum)
-- 		bettingList._Index = betIndex
-- 	end
	
-- 	self:SetTall(Minigolf.PADDING + bettingList:GetTall() + Minigolf.PADDING + BAR_HEIGHT)
-- 	self:Center()
-- end

-- function PANEL:Paint(w, h)
-- 	Derma_DrawBackgroundBlur(self, self.startTime)

-- 	draw.RoundedBox(16, 0, 0, w, h, Color(255,255,255,255))

-- 	draw.SimpleText("Overview of bets on upcoming players", "MinigolfMainBold", w * .5, Minigolf.PADDING * 2, Minigolf.COLOR_PRIMARY, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
-- end


-- function PANEL:OnKeyCodeReleased(key)
-- 	if(key == KEY_ESCAPE or (self:HasFocus() and key == KEY_B and CurTime() - self.startTime > 1))then
-- 		self:Remove()
--     gui.HideGameUI()
-- 	end
-- end
-- vgui.Register("Minigolf.BetOverviewMenu", PANEL, "EditablePanel")