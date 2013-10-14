

unreal.items_and_blocks({
	tab = 'tabUMCA'
    , { type = 'items'
	  , {id = 721, name='umca_item_engagement_ring', icon='unreal:EngagementRing', max_stack=1}
	  , {722, name='umca_item_wedding_ring', icon="unreal:WeddingRing", max_stack=1}
	  , {723, name='umca_item_arrangers_ring', icon="unreal:ArrangerRing", max_stack=1}
	  , {724, name='umca_baby_boy', icon="unreal:BabyBoy"}
	  , {725, name='umca_baby_girl', icon="unreal:BabyGirl"}
	  , {726, name='umca_tombstone', icon="unreal:Tombstone", max_stack=1}
	  , {727, name='umca_egg_male', icon="unreal:EggMale"}
	  , {728, name='umca_egg_female', icon="unreal:EggFemale"}
	  , {729, name='umca_whistle', icon="unreal:Whistle", max_stack=1}
	  , {732, name='umca_villager_editor', icon="unreal:VillagerEditor", max_stack=1}
	  , {733, name='umca_lost_relative_document', icon="unreal:LostRelativeDocument", max_stack=64}
	  , {734, name='umca_crown', icon="unreal:Crown", max_stack=1, armor={material='gold', render_index=0, type=0, texture='unreal:textures/armor/crown_layer_1.png'}}
	  , {735, name='umca_heir_crown', icon="unreal:HeirCrown", max_stack=1, armor={material='gold', type=0, texture='unreal:textures/armor/heircrown_layer_1.png'}}
	  , {736, name='umca_kings_coat', icon="unreal:KingCoat", max_stack=1, armor={material='gold', type=1, texture="unreal:textures/armor/crown_layer_1.png"}}
	  , {737, name='umca_kings_pants', icon="unreal:KingPants", max_stack=1, armor={material='gold', type=2, texture="unreal:textures/armor/crown_layer_2.png"}}
	  , {738, name='umca_kings_boots', icon="unreal:KingBoots", max_stack=1}
    }
    , { type = 'blocks'
      , {id=205, name="umca_block_tombstone", icon="unreal:Tombstone", dropped="umca_tombstone"}
    }
})

unreal.achievement_page(
	{
	name = 'Unreal MCA'
	,	{id=1534, name='umca_charmer', col=0, row=13, texture='Block.plantYellow'}
	,	{id=1535, name='umca_get_married', col=0, row=12,  texture='item.umca_item_wedding_ring',parent='umca_charmer'}
	,	{1536, 'umca_havebabyboy', -1, 11, 'item.umca_baby_boy','umca_get_married'}
	,	{1537, 'umca_havebabygirl', 1, 11, 'item.umca_baby_girl','umca_get_married'}
	,	{1538, 'umca_cookbaby', 3, 12, 'Block.furnaceBurning'}
	,	{1539, 'umca_babygrowup', 0, 10, 'Block.cake','umca_get_married'}
	,	{1540, 'umca_childfarm', -1, 9, 'Item.wheat','umca_babygrowup'}
	,	{1541, 'umca_childfish', -1, 8, 'Item.fishRaw','umca_babygrowup'}
	,	{1543, 'umca_childwoodcut', -1, 7, 'Block.wood','umca_babygrowup'}
	,	{1553, 'umca_childmine', -1, 6, 'Item.diamond','umca_babygrowup'}
	,	{1554, 'umca_childhuntkill', -2, 5, 'Item.beefRaw','umca_babygrowup'}
	,	{1555, 'umca_childhunttame', -1, 5, 'Item.carrotOnAStick','umca_babygrowup'}
	,	{1544, 'umca_childgrowup', 0, 4, 'Item.plateChain','umca_babygrowup'}
	,	{1545, 'umca_adultfullyequipped', 1, 3, 'Item.helmetDiamond','umca_childgrowup'}
	,	{1546, 'umca_adultkills', 1, 2, 'Item.swordDiamond','umca_adultfullyequipped'}
	,	{1547, 'umca_adultmarried', 0, 1, 'item.umca_item_arrangers_ring','umca_childgrowup'}
	,	{1548, 'umca_havegrandchild', -1, 0, 'item.umca_baby_boy','umca_adultmarried'}
	,	{1549, 'umca_havegreatgrandchild', -1, -1, 'item.umca_baby_boy','umca_havegrandchild'}
	,	{1550, 'umca_havegreatx2grandchild', -1, -2, 'item.umca_baby_boy','umca_havegreatgrandchild'}
	,	{1551, 'umca_havegreatx10grandchild', -1, -3, 'item.umca_baby_boy','umca_havegreatx2grandchild', special = true}
	,	{1556, 'umca_hardcoresecret', 0, -4, 'item.umca_tombstone','umca_adultmarried', special=true}
	,	{1557, 'umca_craftcrown', 7, 12, 'item.umca_crown',special=true}
	,	{1558, 'umca_executevillager', 4, 10, 'Item.skull','umca_craftcrown'}
	,	{1559, 'umca_makeknight', 6, 10, 'Item.swordIron','umca_craftcrown'}
	,	{1560, 'umca_knightarmy', 6, 8, 'Item.swordDiamond','umca_makeknight', special = true}
	,	{1561, 'umca_makepeasant', 8, 10, 'Item.hoeIron','umca_craftcrown'}
	,	{1562, 'umca_peasantarmy', 8, 8, 'Item.hoeDiamond','umca_makepeasant', special = true}
	,	{1563, 'umca_nameheir', 10, 10, 'item.umca_heir_crown','umca_craftcrown'}
    ,   {1564, 'umca_monarchsecret', 7, 5, 'Item.writableBook','umca_craftcrown', special = true}
	})
