----------------------------------------------------------------------------
--	Ranked Matchmaking AI v1.6b
--	Author: adamqqq		Email:adamqqq@163.com
----------------------------------------------------------------------------
local ItemPurchaseSystem = dofile(GetScriptDirectory() .. "/util/ItemPurchaseSystem")

local ItemsToBuy = 
{ 
	"item_tango",
	"item_tango",
	"item_enchanted_mango",
	"item_enchanted_mango",
	"item_quelling_blade",
	"item_phase_boots",		--相位
	
	
	"item_magic_wand",		--大魔棒7.14
	"item_bracer",
	"item_bracer",			--护腕
	"item_blink",					--跳刀
	"item_robe",
	"item_chainmail",
	"item_broadsword",				--刃甲

	"item_black_king_bar",  --BKB
	

	
	"item_heart",					--龙心7.20
	
	"item_lotus_orb",			--清莲宝珠

}

local Transfered = ItemPurchaseSystem.Transfer(ItemsToBuy)
ItemPurchaseSystem.checkItemBuild(Transfered)

function ItemPurchaseThink()
	ItemPurchaseSystem.ItemPurchase(Transfered)
end