///
module earthbound.bank15;

import earthbound.commondefs;
import earthbound.bank02;

/// $D55000
immutable Item[254] ItemData = [
  Item(EBString!25("Null"), 0xFF, 2,  0x00, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem000+/),
  Item(EBString!25("Franklin badge"), 0x00, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem001+/),
  Item(EBString!25("Teddy bear"), 0x04, 178,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x10, 0x01, 0x02, 0x00, null/+TextItem002+/),
  Item(EBString!25("Super plush bear"), 0x04, 1198,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x11, 0x01, 0x01, 0x00, null/+TextItem003+/),
  Item(EBString!25("Broken machine"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x01, 0x83, 0x00, null/+TextItem004+/),
  Item(EBString!25("Broken gadget"), 0x08, 109,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x22, 0xD7, 0x00, null/+TextItem005+/),
  Item(EBString!25("Broken air gun"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x0C, 0x27, 0x00, null/+TextItem006+/),
  Item(EBString!25("Broken spray can"), 0x08, 189,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x01, 0xA1, 0x00, null/+TextItem007+/),
  Item(EBString!25("Broken laser"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x18, 0x29, 0x00, null/+TextItem008+/),
  Item(EBString!25("Broken iron"), 0x08, 149,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x0A, 0x8A, 0x00, null/+TextItem009+/),
  Item(EBString!25("Broken pipe"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x1E, 0x84, 0x00, null/+TextItem010+/),
  Item(EBString!25("Broken cannon"), 0x08, 218,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x20, 0x2C, 0x00, null/+TextItem011+/),
  Item(EBString!25("Broken tube"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x24, 0x88, 0x00, null/+TextItem012+/),
  Item(EBString!25("Broken bazooka"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x2D, 0x86, 0x00, null/+TextItem013+/),
  Item(EBString!25("Broken trumpet"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x28, 0x9D, 0x00, null/+TextItem014+/),
  Item(EBString!25("Broken harmonica"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x37, 0x2E, 0x00, null/+TextItem015+/),
  Item(EBString!25("Broken antenna"), 0x08, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x41, 0x30, 0x00, null/+TextItem016+/),
  Item(EBString!25("Cracked bat"), 0x10, 18,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 4, 0, 0x00, 0x01, null/+TextItem000+/),
  Item(EBString!25("Tee ball bat"), 0x10, 48,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 8, 0, 0x00, 0x01, null/+TextItem018+/),
  Item(EBString!25("Sand lot bat"), 0x10, 98,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 15, 0, 0x00, 0x01, null/+TextItem019+/),
  Item(EBString!25("Minor league bat"), 0x10, 399,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 26, 0, 0x00, 0x01, null/+TextItem020+/),
  Item(EBString!25("Mr. Baseball bat"), 0x10, 498,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 38, 0, 0x00, 0x01, null/+TextItem021+/),
  Item(EBString!25("Big league bat"), 0x10, 3080,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 54, 0, 0x00, 0x01, null/+TextItem022+/),
  Item(EBString!25("Hall of fame bat"), 0x10, 1880,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 62, 0, 0x00, 0x01, null/+TextItem023+/),
  Item(EBString!25("Magicant bat"), 0x10, 0,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 80, 0, 0x00, 0x01, null/+TextItem024+/),
  Item(EBString!25("Legendary bat"), 0x10, 0,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 110, 0, 0x00, 0x01, null/+TextItem025+/),
  Item(EBString!25("Gutsy bat"), 0x10, 2980,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 100, 0, 0x7F, 0x01, null/+TextItem026+/),
  Item(EBString!25("Casey bat"), 0x10, 38,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 125, 0, 0x00, 0x0C, null/+TextItem027+/),
  Item(EBString!25("Fry pan"), 0x10, 56,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 10, 0, 0x00, 0x01, null/+TextItem028+/),
  Item(EBString!25("Thick fry pan"), 0x10, 198,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 20, 0, 0x00, 0x01, null/+TextItem029+/),
  Item(EBString!25("Deluxe fry pan"), 0x10, 598,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 30, 0, 0x00, 0x01, null/+TextItem030+/),
  Item(EBString!25("Chef's fry pan"), 0x10, 1198,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 40, 0, 0x00, 0x01, null/+TextItem031+/),
  Item(EBString!25("French fry pan"), 0x10, 1790,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 60, 0, 0x00, 0x01, null/+TextItem032+/),
  Item(EBString!25("Magic fry pan"), 0x10, 4790,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 50, 0, 0x64, 0x04, null/+TextItem033+/),
  Item(EBString!25("Holy fry pan"), 0x10, 3480,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 80, 0, 0x0A, 0x01, null/+TextItem034+/),
  Item(EBString!25("Sword of kings"), 0x10, 0,  ItemFlags.PooCanUse, BattleActions.EquipAndAttack, 10, 30, 0x00, 0x00, null/+TextItem035+/),
  Item(EBString!25("Pop gun"), 0x11, 110,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 16, 0, 0x00, 0x00, null/+TextItem036+/),
  Item(EBString!25("Stun gun"), 0x11, 150,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 24, 0, 0x00, 0x00, null/+TextItem037+/),
  Item(EBString!25("Toy air gun"), 0x11, 215,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 32, 0, 0x00, 0x00, null/+TextItem038+/),
  Item(EBString!25("Magnum air gun"), 0x11, 0,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 36, 0, 0x00, 0x00, null/+TextItem039+/),
  Item(EBString!25("Zip gun"), 0x11, 425,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 40, 0, 0x00, 0x00, null/+TextItem040+/),
  Item(EBString!25("Laser gun"), 0x11, 0,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 48, 0, 0x00, 0x00, null/+TextItem041+/),
  Item(EBString!25("Hyper beam"), 0x11, 850,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 58, 0, 0x00, 0x00, null/+TextItem042+/),
  Item(EBString!25("Crusher beam"), 0x11, 1150,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 72, 0, 0x00, 0x00, null/+TextItem043+/),
  Item(EBString!25("Spectrum beam"), 0x11, 1650,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 78, 0, 0x00, 0x00, null/+TextItem044+/),
  Item(EBString!25("Death ray"), 0x11, 2300,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 90, 0, 0x00, 0x00, null/+TextItem045+/),
  Item(EBString!25("Baddest beam"), 0x11, 0,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 98, 0, 0x00, 0x00, null/+TextItem046+/),
  Item(EBString!25("Moon beam gun"), 0x11, 4450,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 110, 0, 0x00, 0x00, null/+TextItem047+/),
  Item(EBString!25("Gaia beam"), 0x11, 0,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 125, 0, 0x00, 0x00, null/+TextItem048+/),
  Item(EBString!25("Yo-yo"), 0x11, 29,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipAndAttack, 6, -6, 0x00, 0x03, null/+TextItem049+/),
  Item(EBString!25("Slingshot"), 0x11, 89,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipAndAttack, 12, -12, 0x00, 0x03, null/+TextItem050+/),
  Item(EBString!25("Bionic slingshot"), 0x11, 449,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipAndAttack, 32, -32, 0x00, 0x03, null/+TextItem051+/),
  Item(EBString!25("Trick yo-yo"), 0x11, 998,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipAndAttack, 46, -46, 0x00, 0x03, null/+TextItem052+/),
  Item(EBString!25("Combat yo-yo"), 0x11, 1148,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipAndAttack, 54, -54, 0x00, 0x03, null/+TextItem053+/),
  Item(EBString!25("Travel charm"), 0x14, 60,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 0, -40, 0x00, 0x40, null/+TextItem054+/),
  Item(EBString!25("Great charm"), 0x14, 400,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 1, -40, 0x05, 0x80, null/+TextItem055+/),
  Item(EBString!25("Crystal charm"), 0x14, 600,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 2, -40, 0x0F, 0xC0, null/+TextItem056+/),
  Item(EBString!25("Rabbit's foot"), 0x14, 1800,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 3, -40, 0x28, 0xC0, null/+TextItem057+/),
  Item(EBString!25("Flame pendant"), 0x14, 3000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 15, -40, 0x00, 0x03, null/+TextItem058+/),
  Item(EBString!25("Rain pendant"), 0x14, 3000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 15, -40, 0x00, 0x0C, null/+TextItem059+/),
  Item(EBString!25("Night pendant"), 0x14, 3000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 15, -40, 0x00, 0x30, null/+TextItem060+/),
  Item(EBString!25("Sea pendant"), 0x14, 5000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 20, -40, 0x00, 0x3F, null/+TextItem061+/),
  Item(EBString!25("Star pendant"), 0x14, 7000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 30, -40, 0x00, 0xFF, null/+TextItem062+/),
  Item(EBString!25("Cloak of kings"), 0x14, 0,  ItemFlags.PooCanUse, BattleActions.EquipArmour, -80, 20, 0x28, 0x00, null/+TextItem063+/),
  Item(EBString!25("Cheap bracelet"), 0x18, 98,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 5, -40, 0x00, 0x00, null/+TextItem064+/),
  Item(EBString!25("Copper bracelet"), 0x18, 349,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 10, -40, 0x00, 0x00, null/+TextItem065+/),
  Item(EBString!25("Silver bracelet"), 0x18, 599,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 15, -40, 0x00, 0x00, null/+TextItem066+/),
  Item(EBString!25("Gold bracelet"), 0x18, 2799,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 30, -40, 0x00, 0x00, null/+TextItem067+/),
  Item(EBString!25("Platinum band"), 0x18, 6899,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 40, -40, 0x00, 0x00, null/+TextItem068+/),
  Item(EBString!25("Diamond band"), 0x18, 9998,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 50, -40, 0x00, 0x00, null/+TextItem069+/),
  Item(EBString!25("Pixie's bracelet"), 0x18, 1590,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 60, -40, 0x0A, 0x01, null/+TextItem070+/),
  Item(EBString!25("Cherub's band"), 0x18, 1790,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 70, -40, 0x14, 0x02, null/+TextItem071+/),
  Item(EBString!25("Goddess band"), 0x18, 1980,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 80, -40, 0x1E, 0x02, null/+TextItem072+/),
  Item(EBString!25("Bracer of kings"), 0x18, 0,  ItemFlags.PooCanUse, BattleActions.EquipArmour, -40, 30, 0x23, 0x02, null/+TextItem073+/),
  Item(EBString!25("Baseball cap"), 0x1C, 19,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 5, -40, 0x00, 0x00, null/+TextItem074+/),
  Item(EBString!25("Holmes hat"), 0x1C, 59,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 10, -40, 0x00, 0x00, null/+TextItem075+/),
  Item(EBString!25("Mr. Baseball cap"), 0x1C, 199,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 6, -40, 0x00, 0x00, null/+TextItem076+/),
  Item(EBString!25("Hard hat"), 0x1C, 298,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 15, -40, 0x00, 0x00, null/+TextItem077+/),
  Item(EBString!25("Ribbon"), 0x1C, 89,  ItemFlags.PaulaCanUse, BattleActions.EquipArmour, 20, -40, 0x00, 0x00, null/+TextItem078+/),
  Item(EBString!25("Red ribbon"), 0x1C, 179,  ItemFlags.PaulaCanUse, BattleActions.EquipArmour, 25, -40, 0x00, 0x00, null/+TextItem079+/),
  Item(EBString!25("Goddess ribbon"), 0x1C, 6980,  ItemFlags.PaulaCanUse, BattleActions.EquipArmour, 110, -40, 0x00, 0x00, null/+TextItem080+/),
  Item(EBString!25("Coin of slumber"), 0x1C, 1500,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 30, -40, 0x0A, 0x00, null/+TextItem081+/),
  Item(EBString!25("Coin of defense"), 0x1C, 2000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 40, -40, 0x0D, 0x00, null/+TextItem082+/),
  Item(EBString!25("Lucky coin"), 0x1C, 6000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 50, -40, 0x14, 0x00, null/+TextItem083+/),
  Item(EBString!25("Talisman coin"), 0x1C, 3500,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 60, -40, 0x19, 0x00, null/+TextItem084+/),
  Item(EBString!25("Shiny coin"), 0x1C, 4000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 70, -40, 0x1E, 0x00, null/+TextItem085+/),
  Item(EBString!25("Souvenir coin"), 0x1C, 6000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 80, -40, 0x23, 0x00, null/+TextItem086+/),
  Item(EBString!25("Diadem of kings"), 0x1C, 0,  ItemFlags.PooCanUse, BattleActions.EquipArmour, -40, 20, 0x1E, 0x55, null/+TextItem087+/),
  Item(EBString!25("Cookie"), 0x20, 7,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem088+/),
  Item(EBString!25("Bag of fries"), 0x20, 8,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x04, 0x01, 0x00, null/+TextItem089+/),
  Item(EBString!25("Hamburger"), 0x20, 14,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x08, 0x01, 0x00, null/+TextItem090+/),
  Item(EBString!25("Boiled egg"), 0x20, 9,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x07, 0x01, 0x00, null/+TextItem091+/),
  Item(EBString!25("Fresh Egg"), 0x20, 12,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.Transform | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0E, 0x01, 0x00, null/+TextItem092+/),
  Item(EBString!25("Picnic lunch"), 0x20, 24,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0E, 0x01, 0x00, null/+TextItem093+/),
  Item(EBString!25("Pasta di Summers"), 0x20, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x12, 0x01, 0x00, null/+TextItem094+/),
  Item(EBString!25("Pizza"), 0x20, 48,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x14, 0x01, 0x00, null/+TextItem095+/),
  Item(EBString!25("Chef's special"), 0x20, 298,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x24, 0x01, 0x00, null/+TextItem096+/),
  Item(EBString!25("Large pizza"), 0x2C, 238,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFoodParty, 0x00, 0x28, 0x01, 0x00, null/+TextItem097+/),
  Item(EBString!25("PSI caramel"), 0x20, 100,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x14, 0x14, 0x00, null/+TextItem098+/),
  Item(EBString!25("Magic truffle"), 0x20, 298,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x50, 0x50, 0x00, null/+TextItem099+/),
  Item(EBString!25("Brain food lunch"), 0x20, 800,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x02, 0x32, 0x00, 0x00, null/+TextItem100+/),
  Item(EBString!25("Rock candy"), 0x20, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x03, 0x01, 0x01, 0x00, null/+TextItem101+/),
  Item(EBString!25("Croissant"), 0x20, 18,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0A, 0x01, 0x00, null/+TextItem102+/),
  Item(EBString!25("Bread roll"), 0x20, 12,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x05, 0x01, 0x00, null/+TextItem103+/),
  Item(EBString!25("Pak of bubble gum"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.BUBBLE_GUM, 0x00, 0x00, 0x00, 0x00, null/+TextItem104+/),
  Item(EBString!25("Jar of Fly Honey"), 0x35, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.FLY_HONEY, 0x00, 0x00, 0x00, 0x00, null/+TextItem105+/),
  Item(EBString!25("Can of fruit juice"), 0x24, 4,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem106+/),
  Item(EBString!25("Royal iced tea"), 0x24, 78,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0A, 0x01, 0x00, null/+TextItem107+/),
  Item(EBString!25("Protein drink"), 0x24, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0E, 0x01, 0x00, null/+TextItem108+/),
  Item(EBString!25("Kraken soup"), 0x24, 648,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x00, 0x01, 0x00, null/+TextItem109+/),
  Item(EBString!25("Bottle of water"), 0x24, 4,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x01, 0x0A, 0x00, null/+TextItem110+/),
  Item(EBString!25("Cold remedy"), 0x24, 22,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x09, 0x00, 0x00, 0x00, null/+TextItem111+/),
  Item(EBString!25("Vial of serum"), 0x24, 58,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x0A, 0x00, 0x00, 0x00, null/+TextItem112+/),
  Item(EBString!25("IQ capsule"), 0x24, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x04, 0x01, 0x01, 0x00, null/+TextItem113+/),
  Item(EBString!25("Guts capsule"), 0x24, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x05, 0x01, 0x01, 0x00, null/+TextItem114+/),
  Item(EBString!25("Speed capsule"), 0x24, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x06, 0x01, 0x01, 0x00, null/+TextItem115+/),
  Item(EBString!25("Vital capsule"), 0x24, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x07, 0x01, 0x01, 0x00, null/+TextItem116+/),
  Item(EBString!25("Luck capsule"), 0x24, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x08, 0x01, 0x01, 0x00, null/+TextItem117+/),
  Item(EBString!25("Ketchup packet"), 0x28, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem118+/),
  Item(EBString!25("Sugar packet"), 0x28, 3,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem119+/),
  Item(EBString!25("Tin of Cocoa"), 0x28, 4,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem120+/),
  Item(EBString!25("Carton of cream"), 0x28, 4,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem121+/),
  Item(EBString!25("Sprig of parsley"), 0x28, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem122+/),
  Item(EBString!25("Jar of hot sauce"), 0x28, 3,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem123+/),
  Item(EBString!25("Salt packet"), 0x28, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem124+/),
  Item(EBString!25("Backstage pass"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem125+/),
  Item(EBString!25("Jar of delisauce"), 0x28, 300,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x00, null/+TextItem126+/),
  Item(EBString!25("Wet towel"), 0x30, 24,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.WetTowel, 0x00, 0x00, 0x00, 0x00, null/+TextItem127+/),
  Item(EBString!25("Refreshing herb"), 0x30, 80,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.RefreshingHerb, 0x00, 0x00, 0x00, 0x00, null/+TextItem128+/),
  Item(EBString!25("Secret herb"), 0x30, 380,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.SecretHerb, 0x00, 0x00, 0x00, 0x00, null/+TextItem129+/),
  Item(EBString!25("Horn of life"), 0x30, 1780,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.FullStatusHeal, 0x00, 0x00, 0x00, 0x00, null/+TextItem130+/),
  Item(EBString!25("Counter-PSI unit"), 0x34, 0,  ItemFlags.JeffCanUse, BattleActions.COUNTER_PSI_UNIT, 0x00, 0x00, 0x00, 0x00, null/+TextItem131+/),
  Item(EBString!25("Shield killer"), 0x34, 0,  ItemFlags.JeffCanUse, BattleActions.SHIELD_KILLER, 0x00, 0x00, 0x00, 0x00, null/+TextItem132+/),
  Item(EBString!25("Bazooka"), 0x34, 950,  ItemFlags.JeffCanUse, BattleActions.BAZOOKA, 0x00, 0x00, 0x00, 0x00, null/+TextItem133+/),
  Item(EBString!25("Heavy bazooka"), 0x34, 0,  ItemFlags.JeffCanUse, BattleActions.HEAVY_BAZOOKA, 0x00, 0x00, 0x00, 0x00, null/+TextItem134+/),
  Item(EBString!25("HP-sucker"), 0x34, 800,  ItemFlags.JeffCanUse, BattleActions.HP_SUCKER, 0x00, 0x00, 0x00, 0x00, null/+TextItem135+/),
  Item(EBString!25("Hungry HP-sucker"), 0x34, 0,  ItemFlags.JeffCanUse, BattleActions.HUNGRY_HP_SUCKER, 0x00, 0x00, 0x00, 0x00, null/+TextItem136+/),
  Item(EBString!25("Xterminator spray"), 0x34, 630,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.XTERMINATOR_SPRAY, 0x00, 0x00, 0x00, 0x00, null/+TextItem137+/),
  Item(EBString!25("Slime generator"), 0x34, 420,  ItemFlags.JeffCanUse, BattleActions.SLIME_GENERATOR, 0x00, 0x00, 0x00, 0x00, null/+TextItem138+/),
  Item(EBString!25("Yogurt dispenser"), 0x34, 0,  ItemFlags.JeffCanUse, BattleActions.YOGURT_DISPENSER, 0x00, 0x00, 0x00, 0x00, null/+TextItem139+/),
  Item(EBString!25("Ruler"), 0x30, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.RULER, 0x00, 0x00, 0x00, 0x00, null/+TextItem140+/),
  Item(EBString!25("Snake bag"), 0x34, 98,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.SNAKE_BAG, 0x00, 0x00, 0x00, 0x00, null/+TextItem141+/),
  Item(EBString!25("Mummy wrap"), 0x34, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.MUMMY_WRAP, 0x00, 0x00, 0x00, 0x00, null/+TextItem142+/),
  Item(EBString!25("Protractor"), 0x30, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.PROTRACTOR, 0x00, 0x00, 0x00, 0x00, null/+TextItem143+/),
  Item(EBString!25("Bottle rocket"), 0x34, 29,  ItemFlags.JeffCanUse | ItemFlags.ConsumedOnUse, BattleActions.BOTTLE_ROCKET, 0x00, 0x00, 0x00, 0x00, null/+TextItem144+/),
  Item(EBString!25("Big bottle rocket"), 0x34, 139,  ItemFlags.JeffCanUse | ItemFlags.ConsumedOnUse, BattleActions.BIG_BOTTLE_ROCKET, 0x00, 0x00, 0x00, 0x00, null/+TextItem145+/),
  Item(EBString!25("Multi_bottle rocket"), 0x34, 2139,  ItemFlags.JeffCanUse | ItemFlags.ConsumedOnUse, BattleActions.MULTI_BOTTLE_ROCKET, 0x00, 0x00, 0x00, 0x00, null/+TextItem146+/),
  Item(EBString!25("Bomb"), 0x34, 149,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.BOMB, 0x00, 0x00, 0x00, 0x00, null/+TextItem147+/),
  Item(EBString!25("Super bomb"), 0x34, 399,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.SUPER_BOMB, 0x00, 0x00, 0x00, 0x00, null/+TextItem148+/),
  Item(EBString!25("Insecticide spray"), 0x34, 19,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.Insecticide, 0x00, 0x00, 0x00, 0x00, null/+TextItem149+/),
  Item(EBString!25("Rust promoter"), 0x34, 89,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.RUST_PROMOTER, 0x00, 0x00, 0x00, 0x00, null/+TextItem150+/),
  Item(EBString!25("Rust promoter DX"), 0x34, 289,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.RUST_PROMOTER_DX, 0x00, 0x00, 0x00, 0x00, null/+TextItem151+/),
  Item(EBString!25("Pair_of dirty socks"), 0x34, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.DIRTY_SOCKS, 0x00, 0x00, 0x00, 0x00, null/+TextItem152+/),
  Item(EBString!25("Stag beetle"), 0x34, 8,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.STAG_BEETLE, 0x00, 0x00, 0x00, 0x00, null/+TextItem153+/),
  Item(EBString!25("Toothbrush"), 0x34, 3,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.TOOTHBRUSH, 0x00, 0x00, 0x00, 0x00, null/+TextItem154+/),
  Item(EBString!25("Handbag strap"), 0x34, 39,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.HANDBAG_STRAP, 0x00, 0x00, 0x00, 0x00, null/+TextItem155+/),
  Item(EBString!25("Pharaoh's curse"), 0x34, 290,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.PHAROAHS_CURSE, 0x00, 0x00, 0x00, 0x00, null/+TextItem156+/),
  Item(EBString!25("Defense shower"), 0x35, 0,  ItemFlags.JeffCanUse, BattleActions.DEFENSE_SHOWER, 0x00, 0x00, 0x00, 0x00, null/+TextItem157+/),
  Item(EBString!25("Letter from mom"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.LETTER_FROM_MOM, 0x00, 0x00, 0x00, 0x00, null/+TextItem158+/),
  Item(EBString!25("Sudden guts pill"), 0x35, 500,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.SUDDEN_GUTS_PILL, 0x00, 0x00, 0x00, 0x00, null/+TextItem159+/),
  Item(EBString!25("Bag of Dragonite"), 0x35, 1000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.BAG_OF_DRAGONITE, 0x00, 0x00, 0x00, 0x00, null/+TextItem160+/),
  Item(EBString!25("Defense spray"), 0x35, 500,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.DEFENSE_SPRAY, 0x00, 0x00, 0x00, 0x00, null/+TextItem161+/),
  Item(EBString!25("Piggy nose"), 0x38, 300,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.PiggyNose, 0x00, 0x00, 0x00, 0x00, null/+TextItem162+/),
  Item(EBString!25("For Sale sign"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.ForSaleSign, 0x00, 0x00, 0x00, 0x00, null/+TextItem163+/),
  Item(EBString!25("Shyness book"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.ShynessBook, 0x00, 0x00, 0x00, 0x00, null/+TextItem164+/),
  Item(EBString!25("Picture postcard"), 0x38, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.PicturePostcard, 0x00, 0x00, 0x00, 0x00, null/+TextItem165+/),
  Item(EBString!25("King banana"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.KingBanana, 0x00, 0x00, 0x00, 0x00, null/+TextItem166+/),
  Item(EBString!25("Letter from Tony"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.LetterFromTony, 0x00, 0x00, 0x00, 0x00, null/+TextItem167+/),
  Item(EBString!25("Chick"), 0x38, 25,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.Transform | ItemFlags.ConsumedOnUse, BattleActions.Chick, 0x00, 0x00, 0x00, 0x00, null/+TextItem168+/),
  Item(EBString!25("Chicken"), 0x38, 220,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.Transform | ItemFlags.ConsumedOnUse, BattleActions.Chicken, 0x00, 0x00, 0x00, 0x00, null/+TextItem169+/),
  Item(EBString!25("Key to the shack"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem170+/),
  Item(EBString!25("Key to the cabin"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem171+/),
  Item(EBString!25("Bad key machine"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem172+/),
  Item(EBString!25("Temporary goods"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem173+/),
  Item(EBString!25("Zombie paper"), 0x3A, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.ZOMBIE_PAPER, 0x00, 0x00, 0x00, 0x00, null/+TextItem174+/),
  Item(EBString!25("Hawk eye"), 0x3A, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.HAWK_EYE, 0x00, 0x00, 0x00, 0x00, null/+TextItem175+/),
  Item(EBString!25("Bicycle"), 0x3A, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.BICYCLE, 0x00, 0x00, 0x00, 0x00, null/+TextItem176+/),
  Item(EBString!25("ATM card"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.CannotGive | ItemFlags.Unknown, BattleActions.ATM_CARD, 0x00, 0x00, 0x00, 0x00, null/+TextItem177+/),
  Item(EBString!25("Show ticket"), 0x3B, 12,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem178+/),
  Item(EBString!25("Letter from kids"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.LETTER_FROM_KIDS, 0x00, 0x00, 0x00, 0x00, null/+TextItem179+/),
  Item(EBString!25("Wad of bills"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem180+/),
  Item(EBString!25("Receiver phone"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.CannotGive | ItemFlags.Unknown, BattleActions.RECEIVER_PHONE, 0x00, 0x00, 0x00, 0x00, null/+TextItem181+/),
  Item(EBString!25("Diamond"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem182+/),
  Item(EBString!25("Signed banana"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem183+/),
  Item(EBString!25("Pencil eraser"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem184+/),
  Item(EBString!25("Hieroglyph copy"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.HIEROGLYPH_COPY, 0x00, 0x00, 0x00, 0x00, null/+TextItem185+/),
  Item(EBString!25("Meteotite"), 0x38, 4000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem186+/),
  Item(EBString!25("Contact lens"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem187+/),
  Item(EBString!25("Hand-Aid"), 0x30, 19,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.HandAid, 0x00, 0x00, 0x00, 0x00, null/+TextItem188+/),
  Item(EBString!25("Trout yogurt"), 0x20, 48,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x05, 0x01, 0x00, null/+TextItem189+/),
  Item(EBString!25("Banana"), 0x20, 5,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x04, 0x01, 0x00, null/+TextItem190+/),
  Item(EBString!25("Calorie stick"), 0x20, 18,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0A, 0x01, 0x00, null/+TextItem191+/),
  Item(EBString!25("Key to the tower"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem192+/),
  Item(EBString!25("Meteorite piece"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem193+/),
  Item(EBString!25("Earth pendant"), 0x14, 4000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 0x10, -40, 0x00, 0x2A, null/+TextItem194+/),
  Item(EBString!25("Neutralizer"), 0x34, 0,  ItemFlags.JeffCanUse, BattleActions.Neutralizer, 0x00, 0x00, 0x00, 0x00, null/+TextItem195+/),
  Item(EBString!25("Sound Stone"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.CannotGive | ItemFlags.Unknown, BattleActions.SOUND_STONE, 0x00, 0x00, 0x00, 0x00, null/+TextItem196+/),
  Item(EBString!25("Exit mouse"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EXIT_MOUSE, 0x00, 0x00, 0x00, 0x00, null/+TextItem197+/),
  Item(EBString!25("Gelato de resort"), 0x20, 49,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x05, 0x01, 0x00, null/+TextItem198+/),
  Item(EBString!25("Snake"), 0x34, 220,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.SNAKE, 0x00, 0x00, 0x00, 0x00, null/+TextItem199+/),
  Item(EBString!25("Viper"), 0x34, 550,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.VIPER, 0x00, 0x00, 0x00, 0x00, null/+TextItem200+/),
  Item(EBString!25("Brain stone"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem201+/),
  Item(EBString!25("Town map"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.TOWN_MAP, 0x00, 0x00, 0x00, 0x00, null/+TextItem202+/),
  Item(EBString!25("Video relaxant"), 0x38, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.VIDEO_RELAXANT, 0x00, 0x00, 0x00, 0x00, null/+TextItem203+/),
  Item(EBString!25("Suporma"), 0x38, 50,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.SUPORMA, 0x00, 0x00, 0x00, 0x00, null/+TextItem204+/),
  Item(EBString!25("Key to the locker"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem205+/),
  Item(EBString!25("Insignificant item"), 0x3B, 2,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.INSIGNIFICANT_ITEM, 0x00, 0x00, 0x00, 0x00, null/+TextItem206+/),
  Item(EBString!25("Magic tart"), 0x20, 480,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x14, 0x14, 0x00, null/+TextItem207+/),
  Item(EBString!25("Tiny ruby"), 0x3B, 0,  ItemFlags.PooCanUse | ItemFlags.CannotGive | ItemFlags.Unknown, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem208+/),
  Item(EBString!25("Monkey's love"), 0x34, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.MONKEYS_LOVE, 0x00, 0x00, 0x00, 0x00, null/+TextItem209+/),
  Item(EBString!25("Eraser eraser"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem210+/),
  Item(EBString!25("Tendakraut"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.Unknown, BattleActions.TENDAKRAUT, 0x00, 0x00, 0x00, 0x00, null/+TextItem211+/),
  Item(EBString!25("T-rex's bat"), 0x10, 698,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 0x30, 0x00, 0x00, 0x01, null/+TextItem212+/),
  Item(EBString!25("Big league bat"), 0x10, 1380,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 0x36, 0x00, 0x00, 0x01, null/+TextItem213+/),
  Item(EBString!25("Ultimate bat"), 0x10, 2298,  ItemFlags.NessCanUse, BattleActions.EquipAndAttack, 0x44, 0x00, 0x00, 0x01, null/+TextItem214+/),
  Item(EBString!25("Double beam"), 0x11, 1000,  ItemFlags.JeffCanUse, BattleActions.EquipAndAttack, 0x42, 0x00, 0x00, 0x00, null/+TextItem215+/),
  Item(EBString!25("Platinum band"), 0x18, 3899,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 0x28, -40, 0x00, 0x00, null/+TextItem216+/),
  Item(EBString!25("Diamond band"), 0x18, 5198,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 0x32, -40, 0x00, 0x00, null/+TextItem069+/),
  Item(EBString!25("Defense ribbon"), 0x1C, 389,  ItemFlags.PaulaCanUse, BattleActions.EquipArmour, 0x28, -40, 0x0F, 0x00, null/+TextItem218+/),
  Item(EBString!25("Talisman ribbon"), 0x1C, 3500,  ItemFlags.PaulaCanUse, BattleActions.EquipArmour, 0x3C, -40, 0x19, 0x00, null/+TextItem219+/),
  Item(EBString!25("Saturn ribbon"), 0x1C, 3980,  ItemFlags.PaulaCanUse, BattleActions.EquipArmour, 0x5A, -40, 0x28, 0x00, null/+TextItem220+/),
  Item(EBString!25("Coin of silence"), 0x1C, 2500,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 0x2D, -40, 0x10, 0x00, null/+TextItem221+/),
  Item(EBString!25("Charm coin"), 0x1C, 3000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 0x32, -40, 0x14, 0x00, null/+TextItem222+/),
  Item(EBString!25("Cup of noodles"), 0x20, 98,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x07, 0x01, 0x00, null/+TextItem223+/),
  Item(EBString!25("Skip sandwich"), 0x20, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0x64, null/+TextItem224+/),
  Item(EBString!25("Skip sandwich DX"), 0x20, 98,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x01, 0x01, 0xC8, null/+TextItem225+/),
  Item(EBString!25("Lucky sandwich"), 0x20, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0A, 0x01, 0x00, null/+TextItem226+/),
  Item(EBString!25("Lucky sandwich"), 0x20, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x28, 0x01, 0x00, null/+TextItem227+/),
  Item(EBString!25("Lucky sandwich"), 0x20, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x00, 0x01, 0x00, null/+TextItem228+/),
  Item(EBString!25("Lucky sandwich"), 0x20, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x05, 0x01, 0x00, null/+TextItem229+/),
  Item(EBString!25("Lucky sandwich"), 0x20, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x14, 0x01, 0x00, null/+TextItem230+/),
  Item(EBString!25("Lucky sandwich"), 0x20, 128,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x02, 0x00, 0x01, 0x00, null/+TextItem231+/),
  Item(EBString!25("Cup of coffee"), 0x24, 6,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x02, 0x01, 0x00, null/+TextItem232+/),
  Item(EBString!25("Double burger"), 0x20, 24,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x10, 0x01, 0x00, null/+TextItem233+/),
  Item(EBString!25("Peanut cheese_bar"), 0x20, 22,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x12, 0x01, 0x00, null/+TextItem234+/),
  Item(EBString!25("Piggy jelly"), 0x20, 222,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x32, 0x01, 0x00, null/+TextItem235+/),
  Item(EBString!25("Bowl of rice gruel"), 0x20, 88,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x24, 0x01, 0x00, null/+TextItem236+/),
  Item(EBString!25("Bean croquette"), 0x20, 12,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x07, 0x01, 0x00, null/+TextItem237+/),
  Item(EBString!25("Molokheiya soup"), 0x24, 20,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0E, 0x01, 0x00, null/+TextItem238+/),
  Item(EBString!25("Plain roll"), 0x20, 38,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x0E, 0x01, 0x00, null/+TextItem239+/),
  Item(EBString!25("Kabob"), 0x20, 54,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x15, 0x01, 0x00, null/+TextItem240+/),
  Item(EBString!25("Plain yogurt"), 0x20, 78,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x1C, 0x01, 0x00, null/+TextItem241+/),
  Item(EBString!25("Beef jerky"), 0x20, 70,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x19, 0x01, 0x00, null/+TextItem242+/),
  Item(EBString!25("Mammoth burger"), 0x20, 98,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x22, 0x01, 0x00, null/+TextItem243+/),
  Item(EBString!25("Spicy jerky"), 0x20, 140,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x2A, 0x01, 0x00, null/+TextItem244+/),
  Item(EBString!25("Luxury jerky"), 0x20, 210,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x32, 0x01, 0x00, null/+TextItem245+/),
  Item(EBString!25("Bottle of DXwater"), 0x24, 198,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x01, 0x28, 0x00, null/+TextItem246+/),
  Item(EBString!25("Magic pudding"), 0x20, 680,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x01, 0x28, 0x28, 0x00, null/+TextItem247+/),
  Item(EBString!25("Non-stick frypan"), 0x10, 1490,  ItemFlags.PaulaCanUse, BattleActions.EquipAndAttack, 0x32, 0x00, 0x00, 0x01, null/+TextItem248+/),
  Item(EBString!25("Mr. Saturn coin"), 0x1C, 1000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.EquipArmour, 0x2F, -40, 0x12, 0x00, null/+TextItem249+/),
  Item(EBString!25("Meteornium"), 0x38, 2000,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem250+/),
  Item(EBString!25("Popsicle"), 0x20, 7,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.GenericFood, 0x00, 0x03, 0x01, 0x00, null/+TextItem251+/),
  Item(EBString!25("Cup of Lifenoodles"), 0x30, 178,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse | ItemFlags.ConsumedOnUse, BattleActions.FullStatusHeal, 0x00, 0x00, 0x00, 0x00, null/+TextItem252+/),
  Item(EBString!25("Carrot key"), 0x3B, 0,  ItemFlags.NessCanUse | ItemFlags.PaulaCanUse | ItemFlags.JeffCanUse | ItemFlags.PooCanUse, BattleActions.UseNoEffect, 0x00, 0x00, 0x00, 0x00, null/+TextItem253+/),
];

/// $D57880
immutable PSITeleportDestination[17] PSITeleportDestinationTable = [
	PSITeleportDestination(EBString!25(""), EventFlag.None, 0x0000, 0x0000),
	PSITeleportDestination(EBString!25("Onett"), EventFlag.ONETT_REACHED, 0x00FD, 0x00BA),
	PSITeleportDestination(EBString!25("Twoson"), EventFlag.TWOSON_REACHED, 0x00B0, 0x0334),
	PSITeleportDestination(EBString!25("Threed"), EventFlag.THREED_REACHED, 0x02B4, 0x0466),
	PSITeleportDestination(EBString!25("Saturn Valley"), EventFlag.SATURN_VALLEY_REACHED, 0x0022, 0x03CC),
	PSITeleportDestination(EBString!25("Fourside"), EventFlag.FOURSIDE_REACHED, 0x017C, 0x01F9),
	PSITeleportDestination(EBString!25("Winters"), EventFlag.WINTERS_REACHED, 0x003E, 0x0121),
	PSITeleportDestination(EBString!25("Summers"), EventFlag.SUMMERS_REACHED, 0x022A, 0x0161),
	PSITeleportDestination(EBString!25("Scaraba"), EventFlag.SCARABA_REACHED, 0x0098, 0x020E),
	PSITeleportDestination(EBString!25("Dalaam"), EventFlag.DALAAM_REACHED, 0x023A, 0x01C1),
	PSITeleportDestination(EBString!25("Deep Darkness"), EventFlag.DEEP_DARKNESS_REACHED, 0x02C0, 0x0380),
	PSITeleportDestination(EBString!25("Tenda Village"), EventFlag.TENDA_VILLAGE_REACHED, 0x0234, 0x0379),
	PSITeleportDestination(EBString!25("Underworld"), EventFlag.UNDERWORLD_REACHED, 0x0145, 0x015F),
	PSITeleportDestination(EBString!25(""), EventFlag.UNKNOWN_092, 0x01B1, 0x0203),
	PSITeleportDestination(EBString!25("Dusty Dunes"), EventFlag.UNKNOWN_254, 0x00A0, 0x04E3),
	PSITeleportDestination(EBString!25(""), EventFlag.UNKNOWN_092, 0x02EE, 0x02EB),
	PSITeleportDestination(EBString!25(""), EventFlag.None, 0x0000, 0x0000),
];

/// $D57B68
immutable BattleAction[318] BattleActionTable = [
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Nothing, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionNull4), //NO_EFFECT
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_001+/, &BattleActionNull4), //USE_NO_EFFECT
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_002+/, &BattleActionNull4), //ACTION_002
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_TRIED_BUT_COULD_NOT_USE_VERY_WELL+/, &BattleActionNull4), //ACTION_003
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_004+/, &BattleActionBash), //BASH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_005+/, &BattleActionShoot), //SHOOT
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_006+/, &BattleActionSpy), //SPY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_007+/, &BattleActionPray), //PRAY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_008+/, &BattleActionNull), //GUARD
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionNull5), //ACTION_009
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x0A, null /+ TEXT_ACTION_010+/, &BattleActionPSIRockinAlpha), //PSI_ROCKIN_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x0E, null /+ TEXT_ACTION_010+/, &BattleActionPSIRockinBeta), //PSI_ROCKIN_BETA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x28, null /+ TEXT_ACTION_010+/, &BattleActionPSIRockinGamma), //PSI_ROCKIN_GAMMA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x62, null /+ TEXT_ACTION_010+/, &BattleActionPSIRockinOmega), //PSI_ROCKIN_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.Row, ActionType.PSI, 0x06, null /+ TEXT_ACTION_010+/, &BattleActionPSIFireAlpha), //PSI_FIRE_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.Row, ActionType.PSI, 0x0C, null /+ TEXT_ACTION_010+/, &BattleActionPSIFireBeta), //PSI_FIRE_BETA
	BattleAction(ActionDirection.Party, ActionTarget.Row, ActionType.PSI, 0x14, null /+ TEXT_ACTION_010+/, &BattleActionPSIFireGamma), //PSI_FIRE_GAMMA
	BattleAction(ActionDirection.Party, ActionTarget.Row, ActionType.PSI, 0x2A, null /+ TEXT_ACTION_010+/, &BattleActionPSIFireOmega), //PSI_FIRE_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x04, null /+ TEXT_ACTION_010+/, &BattleActionPSIFreezeAlpha), //PSI_FREEZE_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x09, null /+ TEXT_ACTION_010+/, &BattleActionPSIFreezeBeta), //PSI_FREEZE_BETA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x12, null /+ TEXT_ACTION_010+/, &BattleActionPSIFreezeGamma), //PSI_FREEZE_GAMMA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x1C, null /+ TEXT_ACTION_010+/, &BattleActionPSIFreezeOmega), //PSI_FREEZE_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x03, null /+ TEXT_ACTION_010+/, &BattleActionPSIThunderAlpha), //PSI_THUNDER_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x07, null /+ TEXT_ACTION_010+/, &BattleActionPSIThunderBeta), //PSI_THUNDER_BETA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x10, null /+ TEXT_ACTION_010+/, &BattleActionPSIThunderGamma), //PSI_THUNDER_GAMMA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x14, null /+ TEXT_ACTION_010+/, &BattleActionPSIThunderOmega), //PSI_THUNDER_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x08, null /+ TEXT_ACTION_010+/, &BattleActionPSIFlashAlpha), //PSI_FLASH_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x10, null /+ TEXT_ACTION_010+/, &BattleActionPSIFlashBeta), //PSI_FLASH_BETA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x18, null /+ TEXT_ACTION_010+/, &BattleActionPSIFlashGamma), //PSI_FLASH_GAMMA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x20, null /+ TEXT_ACTION_010+/, &BattleActionPSIFlashOmega), //PSI_FLASH_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x18, null /+ TEXT_ACTION_010+/, &BattleActionPSIStarstormAlpha), //PSI_STARSTORM_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x2A, null /+ TEXT_ACTION_010+/, &BattleActionPSIStarstormOmega), //PSI_STARSTORM_BETA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x05, null /+ TEXT_ACTION_010+/, &BattleActionLifeupAlpha), //PSI_LIFEUP_ALPHA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x08, null /+ TEXT_ACTION_010+/, &BattleActionLifeupBeta), //PSI_LIFEUP_BETA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x0D, null /+ TEXT_ACTION_010+/, &BattleActionLifeupGamma), //PSI_LIFEUP_GAMMA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x18, null /+ TEXT_ACTION_010+/, &BattleActionLifeupOmega), //PSI_LIFEUP_OMEGA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x05, null /+ TEXT_ACTION_010+/, &BattleActionHealingAlpha), //PSI_HEALING_ALPHA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x08, null /+ TEXT_ACTION_010+/, &BattleActionHealingBeta), //PSI_HEALING_BETA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x14, null /+ TEXT_ACTION_010+/, &BattleActionHealingGamma), //PSI_HEALING_GAMMA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x26, null /+ TEXT_ACTION_010+/, &BattleActionHealingOmega), //PSI_HEALING_OMEGA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x06, null /+ TEXT_ACTION_010+/, &BattleActionShieldAlpha), //PSI_SHIELD_ALPHA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x0A, null /+ TEXT_ACTION_010+/, &BattleActionShieldBeta), //PSI_SHIELD_BETA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x12, null /+ TEXT_ACTION_010+/, &BattleActionShieldSigma), //PSI_SHIELD_SIGMA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x1E, null /+ TEXT_ACTION_010+/, &BattleActionShieldOmega), //PSI_SHIELD_OMEGA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x08, null /+ TEXT_ACTION_010+/, &BattleActionPSIShieldAlpha), //PSI_PSI_SHIELD_ALPHA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x0E, null /+ TEXT_ACTION_010+/, &BattleActionPSIShieldBeta), //PSI_PSI_SHIELD_BETA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x18, null /+ TEXT_ACTION_010+/, &BattleActionPSIShieldSigma), //PSI_PSI_SHIELD_SIGMA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x2A, null /+ TEXT_ACTION_010+/, &BattleActionPSIShieldOmega), //PSI_PSI_SHIELD_OMEGA
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.PSI, 0x0A, null /+ TEXT_ACTION_010+/, &BattleActionOffenseUpAlpha), //PSI_OFFENSE_UP_ALPHA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x1E, null /+ TEXT_ACTION_010+/, &BattleActionOffenseUpOmega), //PSI_OFFENSE_UP_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x06, null /+ TEXT_ACTION_010+/, &BattleActionDefenseDownAlpha), //PSI_DEFENSE_DOWN_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x12, null /+ TEXT_ACTION_010+/, &BattleActionDefenseDownOmega), //PSI_DEFENSE_DOWN_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x06, null /+ TEXT_ACTION_010+/, &BattleActionHypnosisAlpha), //PSI_HYPNOSIS_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x12, null /+ TEXT_ACTION_010+/, &BattleActionHypnosisAlpha), //PSI_HYPNOSIS_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x00, null /+ TEXT_ACTION_010+/, &BattleActionPSIMagnetAlpha), //PSI_MAGNET_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x00, null /+ TEXT_ACTION_010+/, &BattleActionPSIMagnetOmega), //PSI_MAGNET_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x08, null /+ TEXT_ACTION_010+/, &BattleActionParalysisAlpha), //PSI_PARALYSIS_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x18, null /+ TEXT_ACTION_010+/, &BattleActionParalysisOmega), //PSI_PARALYSIS_OMEGA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PSI, 0x0A, null /+ TEXT_ACTION_010+/, &BattleActionBrainshockAlpha), //PSI_BRAINSHOCK_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PSI, 0x1E, null /+ TEXT_ACTION_010+/, &BattleActionBrainshockOmega), //PSI_BRAINSHOCK_OMEGA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x02, null /+ TEXT_ACTION_010+/, &BattleActionNull4), //PSI_TELEPORT_ALPHA
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.PSI, 0x08, null /+ TEXT_ACTION_010+/, &BattleActionNull4), //PSI_TELEPORT_OMEGA
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_062+/, &BattleActionCallForHelp), //CALL_FOR_HELP
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_063+/, &BattleActionSowSeeds), //SOW_SEEDS
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_064+/, &BattleActionSuperBomb), //EXPLODE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_065+/, &BattleActionSuperBomb), //BURST_INTO_FLAMES
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_066+/, &BattleActionSteal), //Steal
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_067+/, &BattleActionFreezeTime), //FREEZE_IN_TIME
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_068+/, &BattleActionDiamondize), //EERIE_GLARE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_069+/, &BattleActionParalyze), //ELECTRIC_FIELD
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_070+/, &BattleActionSolidify), //CLUMSY_BEAM
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_071+/, &BattleActionNauseate), //NAUSEATING_BURP
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_072+/, &BattleActionPoison), //POISON_STING
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_073+/, &BattleActionPoison), //KISS_OF_DEATH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_074+/, &BattleActionCold), //COLD_BREATH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_075+/, &BattleActionMushroomize), //SCATTER_SPORES
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_076+/, &BattleActionPossess), //POSSESS
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_077+/, &BattleActionHypnosisAlphaCopy), //WONDERFUL_POWDER
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_078+/, &BattleActionCrying), //MOLD_SPORES
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_079+/, &BattleActionImmobilize), //BINDING_ATTACK
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_080+/, &BattleActionImmobilize), //STICKY_MUCUS
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_081+/, &BattleActionImmobilize), //SPEW_FLY_HONEY
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_082+/, &BattleActionImmobilize), //SPIDER_SILK
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_083+/, &BattleActionSolidify), //SCARY_WORDS
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_084+/, &BattleActionBrainshockAlphaCopy), //SOMETHING_MYSTERIOUS
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_085+/, &BattleActionDistract), //DISRUPT_SENSES
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_086+/, &BattleActionFeelStrange), //SIZE_UP_SITUATION
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_087+/, &BattleActionCrying2), //STINKY_BREATH
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_088+/, &BattleActionPSIFlashGamma), //SUMMON_STORM
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_089+/, &BattleActionPSIFireAlpha), //HOT_ESPRESSO
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_090+/, &BattleActionHypnosisAlpha), //HAUNTING_MELODY
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_091+/, &BattleActionPSIFireGamma), //EXTINGUISHING_BLAST
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_092+/, &BattleActionPSIThunderBeta), //CRASHING_BOOM_BANG
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_093+/, &BattleActionPSIFireOmega), //FIRE_SPRAY
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_094+/, &BattleActionPSIFireGamma), //FIRE_BREATH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_095+/, &BattleActionReducePP), //SPIN_SOMETHING
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_096+/, &BattleActionOffenseUpAlpha), //LOSE_TEMPER
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_097+/, &BattleActionCutGuts), //SAY_SOMETHING_NASTY
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_098+/, &BattleActionReduceOffenseDefense), //VACUUM_ATTACK
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_099+/, &BattleActionLifeupGamma), //REPLENISH_FUEL
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_100+/, &BattleActionLevel2AttackPoison), //POISONOUS_BITE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_101+/, &BattleActionSuperBomb), //FIRE_MISSILE_DIZZILY
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_102+/, &BattleActionDoubleBash), //CONTINUOUS_ATTACK
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_103+/, &BattleActionNull), //ON_GUARD
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_104+/, &BattleAction350FireDamage), //SPEW_FIREBALL
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_105+/, &BattleActionLevel4Attack), //INTERTWINE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_106+/, &BattleActionLevel3Attack), //CRUSHING_CHOP
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_107+/, &BattleActionLevel3Attack), //SUBMISSION_HOLD
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_108+/, &BattleActionLevel3Attack), //REV_AND_ACCELERATE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_109+/, &BattleActionLevel3Attack), //BRANDISH_KNIFE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_110+/, &BattleActionLevel3Attack), //TEAR_INTO
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_111+/, &BattleActionLevel3Attack), //BITE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_112+/, &BattleActionLevel3Attack), //CLAW
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_113+/, &BattleActionLevel3Attack), //SWING_TAIL
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_114+/, &BattleActionLevel3Attack), //LUNGE_FORWARD
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_115+/, &BattleActionLevel3Attack), //WIELD_SHOPPING_BAG
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_116+/, &BattleActionLevel3Attack), //SWING_CLUB
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_117+/, &BattleActionLevel3AttackCopy), //GENERATE_TORNADO
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_118+/, &BattleActionLevel3AttackCopy), //SPRAY_WATER_BLAST
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_119+/, &BattleActionNull2), //FLASH_SMILE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_120+/, &BattleActionNull2), //LAUGH_HYSTERICALLY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_121+/, &BattleActionNull2), //EDGE_CLOSER
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_122+/, &BattleActionNull2), //WHISPER_3
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_123+/, &BattleActionNull2), //MURMUR_2
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_124+/, &BattleActionNull2), //MUTTER_1
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_125+/, &BattleActionNull2), //FALL_DOWN
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_126+/, &BattleActionNull2), //BE_ABSENTMINDED
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_127+/, &BattleActionNull2), //GENERATE_STEAM
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_128+/, &BattleActionNull2), //WOBBLE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_129+/, &BattleActionNull2), //REEL
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_130+/, &BattleActionNull2), //GRIN
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_131+/, &BattleActionNull2), //TAKE_DEEP_BREATH
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_132+/, &BattleActionNull2), //GREET
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_133+/, &BattleActionNull2), //HOWL
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_134+/, &BattleActionNull2), //TICK_TOCK
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionHPRecovery1d4), //ACTION_135
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionHPRecovery50), //ACTION_136
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionHPRecovery200), //ACTION_137
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionLifeupAlpha), //ACTION_138
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionLifeupBeta), //ACTION_139
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionLifeupGamma), //HAND_AID
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionLifeupOmega), //ACTION_141
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionPPRecovery20), //ACTION_142
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionPPRecovery80), //ACTION_143
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionHPRecovery300), //ACTION_144
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionRandomStatUp1d4), //ACTION_145
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionHPRecovery10), //ACTION_146
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionHPRecovery100), //ACTION_147
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionHPRecovery10000), //ACTION_148
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionHealingAlpha), //WET_TOWEL
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionHealingBeta), //REFRESHING_HERB
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionHealingGamma), //SECRET_HERB
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionHealingOmega), //FULL_STATUS_HEAL
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &HealPoison), //ACTION_153
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionIQUp1d4), //ACTION_154
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionGutsUp1d4), //ACTION_155
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionSpeedUp1d4), //ACTION_156
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionVitalityUp1d4), //ACTION_157
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &BattleActionLuckUp1d4), //ACTION_158
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_159+/, &BattleActionCounterPSI), //COUNTER_PSI_UNIT
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_160+/, &BattleActionShieldKiller), //SHIELD_KILLER
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_161+/, &BattleActionHPSucker), //HP_SUCKER
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_162+/, &BattleActionMummyWrap), //MUMMY_WRAP
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_163+/, &BattleActionBottleRocket), //BOTTLE_ROCKET
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_164+/, &BattleActionBigBottleRocket), //BIG_BOTTLE_ROCKET
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_165+/, &BattleActionMultiBottleRocket), //MULTI_BOTTLE_ROCKET
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_162+/, &BattleActionHandbagStrap), //HANDBAG_STRAP
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_167+/, &BattleActionBomb), //BOMB
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_167+/, &BattleActionSuperBomb), //SUPER_BOMB
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_169+/, &BattleActionSolidify), //SLIME_GENERATOR
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_170+/, &BattleActionYogurtDispenser), //YOGURT_DISPENSER
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_171+/, &BattleActionSnake), //SNAKE_BAG
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_167+/, &BattleActionSolidify), //DIRTY_SOCKS
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_167+/, &BattleActionSolidify), //STAG_BEETLE
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_174+/, &BattleActionSolidify), //TOOTHBRUSH
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_175+/, &BattleActionPoison), //PHAROAHS_CURSE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_176+/, &BattleActionHungryHPSucker), //HUNGRY_HP_SUCKER
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_177+/, &BattleActionBagOfDragonite), //BAG_OF_DRAGONITE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_178+/, &BattleActionInsecticideSpray), //INSECTICIDE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_178+/, &BattleActionXterminatorSpray), //XTERMINATOR_SPRAY
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_178+/, &BattleActionRustPromoter), //RUST_PROMOTER
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_178+/, &BattleActionRustPromoterDX), //RUST_PROMOTER_DX
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionSuddenGutsPill), //SUDDEN_GUTS_PILL
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionDefenseSpray), //DEFENSE_SPRAY
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionDefenseShower), //DEFENSE_SHOWER
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_140+/, &BattleActionTeleportBox), //ACTION_185
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_186+/, &BattleActionNull2), //RULER
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_187+/, &BattleActionNull2), //PROTRACTOR
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_188+/, &BattleActionNull2), //BUBBLE_GUM
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionFlyHoney), //FLY_HONEY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_190+/, &BattleActionNull4), //PIGGY_NOSE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_191+/, &BattleActionNull4), //FOR_SALE_SIGN
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_192+/, &BattleActionNull4), //SHYNESS_BOOK
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_193+/, &BattleActionNull4), //PICTURE_POSTCARD
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_194+/, &BattleActionNull4), //ACTION_194
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_195+/, &BattleActionNull4), //CHICK
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_196+/, &BattleActionNull4), //CHICKEN
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_197+/, &BattleActionNull4), //ATM_CARD
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_198+/, &BattleActionNull4), //ZOMBIE_PAPER
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_199+/, &BattleActionNull4), //HAWK_EYE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_200+/, &BattleActionNull4), //BICYCLE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_201+/, &BattleActionPSIFlashGamma), //GLORIOUS_LIGHT
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_202+/, &BattleActionPSIThunderBeta), //ELECTRIC_SHOCK
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_203+/, &BattleActionParalyze), //SCATTER_POLLEN
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_204+/, &BattleActionSolidify), //REACH_WITH_ICY_HAND
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_205+/, &BattleActionPoison), //PLAY_POISON_FLUTE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_206+/, &BattleActionCrying), //SPEW_EXHAUST
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_207+/, &BattleActionBrainshockAlphaCopy), //LAUGH_MANIACALLY
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_208+/, &BattleActionHypnosisAlphaCopy), //BREATHE_THROUGH_FLUTE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_209+/, &BattleActionSolidify), //LEAP_FORWARD_AND_SPREAD_WINGS
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_210+/, &BattleActionSolidify), //BECOME_FRIENDLY
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_211+/, &BattleActionSolidify), //LOUD_RUMBLE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_212+/, &BattleActionImmobilize), //HUG
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_213+/, &BattleActionCold), //COUGH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_214+/, &BattleActionLevel1Attack), //MISERY_ATTACK
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_215+/, &BattleActionShoot), //PAINT_ATTACK
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_216+/, &BattleActionBash), //COME_OUT_SWINGING
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_217+/, &BattleActionBash), //SCRATCH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_218+/, &BattleActionBash), //PECK
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_219+/, &BattleActionBash), //TRAMPLE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_220+/, &BattleActionBash), //PUNCH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_221+/, &BattleActionShoot), //SPIT_SEEDS
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_222+/, &BattleActionShoot), //FIRE_BEAM
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_223+/, &BattleActionBash), //SPEAR_JAB
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_224+/, &BattleActionBash), //STOMP
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_ACTION_225+/, &BattleActionLevel3Attack), //SWING_HULA_HOOP
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_226+/, &BattleActionLevel3Attack), //CHARGE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_227+/, &BattleActionLevel3Attack), //SHRED_ON_SKATEBOARD
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_228+/, &BattleActionLevel2AttackDiamondize), //DIAMONDIZING_BITE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_229+/, &BattleActionCutGuts), //GRUMBLE_ABOUT_YOUTH
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_230+/, &BattleActionCutGuts), //LECTURE
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_231+/, &BattleActionCutGuts), //SCOWL
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_232+/, &BattleActionReduceOffense), //VENT_ODOR
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_233+/, &BattleActionReduceOffenseDefense), //SHOUT
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_234+/, &BattleActionReduceOffenseDefense), //WAR_CRY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_235+/, &BattleActionNull2), //KNIT_BROW
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_236+/, &BattleActionNull2), //BE_CLUMSY
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_075+/, &BattleActionPoison), //SCATTER_SPORES_2
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_ACTION_111+/, &BattleActionBash), //BITING_ATTACK
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Physical, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionSwitchWeapons), //EQUIP_AND_ATTACK
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionSwitchArmor), //EQUIP_ARMOUR
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_241+/, &BattleActionCold), //NIGHT_TIME_STUFFINESS_BEAM
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_242+/, &BattleActionImmobilize), //COIL_AROUND
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_243+/, &BattleActionClumsyRobotDeath), //RUNAWAY_FIVE_EVENT
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_244+/, &BattleActionMasterBarfDeath), //MASTER_BARF_DEFEAT
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionEnemyExtend), //ENEMY_EXTENDER
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.PiercingPhysical, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionSwitchWeapons), //ACTION_246
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_140+/, &UnknownC290C6), //NEUTRALIZER
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_248+/, &UnknownC290C6), //EMIT_PALE_GREEN_LIGHT
	BattleAction(ActionDirection.Enemy, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_135+/, &EatFood), //GENERIC_FOOD
	BattleAction(ActionDirection.Enemy, ActionTarget.All, ActionType.Item, 0x00, null /+ TEXT_ACTION_250+/, &EatFood), //GENERIC_FOOD_PARTY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_251+/, &BattleActionNull11), //ACTION_251
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_252+/, &BattleActionNull7), //ACTION_252
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_253+/, &BattleActionNull10), //ACTION_253
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_254+/, &BattleActionNull6), //ACTION_254
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_BATTLE_ABLE_TO_MOVE+/, &BattleActionNull8), //ACTION_255
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_256+/, &BattleActionNull9), //ACTION_256
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_257+/, &BattleActionNull2), //WOLFED_DOWN_FLY_HONEY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_258+/, &BattleActionNull4), //SOUND_STONE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_259+/, &BattleActionNull4), //EXIT_MOUSE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_260+/, &BattleActionNull2), //BE_POKEY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_261+/, &BattleActionNull2), //ACTION_261
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_262+/, &BattleActionNull2), //ACTION_262
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_263+/, &BattleActionNull2), //ACTION_263
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_264+/, &BattleActionNull2), //BARK
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_265+/, &BattleActionNull2), //CHANT_SPELL
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_266+/, &BattleActionNull2), //NO_EFFECT_TONY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_267+/, &BattleActionNull2), //SCRATCH_HEAD
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_268+/, &BattleActionSnake), //SNAKE
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_268+/, &BattleActionPoison), //VIPER
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_270+/, &BattleActionNull4), //HIEROGLYPH_COPY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_271+/, &BattleActionNull4), //TOWN_MAP
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionNull4), //VIDEO_RELAXANT
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_273+/, &BattleActionReduceOffense), //DISCHARGE_STINKY_GAS
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_274+/, &BattleActionPSIThunderBeta), //INCOMPREHENSIBLE_ATTACK_THUNDER_BETA
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_275+/, &BattleActionPokeySpeech), //POKEY_SPEECH_1
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionNull4), //POKEY_ATTACK
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionNull12), //GIYGAS_ATTACK
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_NO_MESSAGE+/, &BattleActionPokeySpeech2), //POKEY_SPEECH_2
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_BATTLE_RUN_SUCCESS+/, &BattleActionNull4), //RUN_AWAY
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Other, 0x00, null /+ TEXT_ACTION_280+/, &BattleActionMirror), //MIRROR
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_281+/, &BattleActionNull4), //SUPORMA
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_282+/, &BattleActionNull4), //INSIGNIFICANT_ITEM
	BattleAction(ActionDirection.Party, ActionTarget.Random, ActionType.Item, 0x00, null /+ TEXT_ACTION_283+/, &BattleActionSolidify), //MONKEYS_LOVE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_284+/, &BattleActionNull4), //TENDAKRAUT
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_285+/, &BattleActionNull4), //KING_BANANA
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_286+/, &BattleActionNull4), //RECEIVER_PHONE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_287+/, &BattleActionNull4), //LETTER_FROM_MOM
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_288+/, &BattleActionNull4), //LETTER_FROM_TONY
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Item, 0x00, null /+ TEXT_ACTION_289+/, &BattleActionNull4), //LETTER_FROM_KIDS
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_290+/, &BattleActionRainbowOfColours), //GIVE_OFF_RAINBOW
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_291+/, &BattleActionGiygasPrayer1), //FINAL_PRAYER_1
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_292+/, &BattleActionGiygasPrayer2), //FINAL_PRAYER_2
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_293+/, &BattleActionGiygasPrayer3), //FINAL_PRAYER_3
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_294+/, &BattleActionGiygasPrayer4), //FINAL_PRAYER_4
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_295+/, &BattleActionGiygasPrayer5), //FINAL_PRAYER_5
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_296+/, &BattleActionGiygasPrayer6), //FINAL_PRAYER_6
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_297+/, &BattleActionGiygasPrayer7), //FINAL_PRAYER_7
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_298+/, &BattleActionGiygasPrayer8), //FINAL_PRAYER_8
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_299+/, &BattleActionGiygasPrayer9), //FINAL_PRAYER_9
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_274+/, &BattleActionPSIFreezeAlpha), //INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_274+/, &BattleActionPSIFlashGamma), //INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_302+/, &BattleActionPSIThunderBeta), //INCOMPREHENSIBLE_ATTACK_THUNDER_BETA_VULNERABLE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_302+/, &BattleActionPSIFreezeAlpha), //INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA_VULNERABLE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_302+/, &BattleActionPSIFlashGamma), //INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA_VULNERABLE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_305+/, &BattleActionPSIThunderBeta), //INCOMPREHENSIBLE_ATTACK_THUNDER_BETA_UNSTABLE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_305+/, &BattleActionPSIFreezeAlpha), //INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA_UNSTABLE
	BattleAction(ActionDirection.Party, ActionTarget.All, ActionType.Other, 0x00, null /+ TEXT_ACTION_305+/, &BattleActionPSIFlashGamma), //INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA_UNSTABLE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_308+/, &BattleActionNull4), //RANDOM_GIYGAS_QUOTE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_309+/, &BattleActionNull4), //RANDOM_GIYGAS_QUOTE_TIMES_3
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_310+/, &BattleActionBomb), //BAZOOKA
	BattleAction(ActionDirection.Party, ActionTarget.One, ActionType.Item, 0x00, null /+ TEXT_ACTION_310+/, &BattleActionSuperBomb), //HEAVY_BAZOOKA
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_312+/, &BattleActionNull4), //SAY_PLAYER_NAME
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_313+/, &BattleActionNull4), //EAT_BOLOGNA_SANDWICH
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_314+/, &BattleActionNull4), //LOSE_GEAR_AND_BOLTS
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_315+/, &BattleActionNull4), //REAPPLY_BANDAGE
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_316+/, &BattleActionNull4), //CLEAN_AREA
	BattleAction(ActionDirection.Enemy, ActionTarget.None, ActionType.Other, 0x00, null /+ TEXT_ACTION_317+/, &BattleActionNull4), //WANT_BATTERY
];

/// $D58F23
immutable NPCAI[19] NPCAITable = [
	NPCAI(0, 0),
	NPCAI(0, 0),
	NPCAI(0, 0),
	NPCAI(0, 0),
	NPCAI(0, 0),
	NPCAI(NPCTargettability.Untargettable, EnemyID.Pokey),
	NPCAI(NPCTargettability.Untargettable, EnemyID.Picky),
	NPCAI(NPCTargettability.Untargettable, EnemyID.MyPet),
	NPCAI(NPCTargettability.Untargettable, EnemyID.Tony),
	NPCAI(NPCTargettability.Untargettable, EnemyID.BubbleMonkey),
	NPCAI(NPCTargettability.Untargettable, EnemyID.DungeonMan),
	NPCAI(NPCTargettability.Normal, EnemyID.FlyingMan),
	NPCAI(NPCTargettability.Normal, EnemyID.FlyingMan),
	NPCAI(NPCTargettability.Normal, EnemyID.FlyingMan),
	NPCAI(NPCTargettability.Normal, EnemyID.FlyingMan),
	NPCAI(NPCTargettability.Normal, EnemyID.FlyingMan),
	NPCAI(NPCTargettability.Forced, EnemyID.TeddyBear),
	NPCAI(NPCTargettability.Forced, EnemyID.SuperPlushBear),
	NPCAI(0, 0),
];

/// $D58F59
immutable uint[100][4] EXPTable =[
	[
		0,
		0,
		4,
		17,
		44,
		109,
		236,
		449,
		772,
		1229,
		1844,
		2641,
		3644,
		4877,
		6364,
		8129,
		10703,
		13241,
		16214,
		19673,
		23669,
		28253,
		33476,
		39389,
		46043,
		53489,
		61778,
		70961,
		81089,
		92213,
		104384,
		117653,
		132071,
		147689,
		164558,
		182729,
		202270,
		223249,
		245734,
		269793,
		295494,
		322905,
		352094,
		383129,
		416078,
		451009,
		487990,
		527089,
		568374,
		611913,
		657774,
		706025,
		756734,
		809969,
		865798,
		924289,
		985510,
		1049529,
		1116414,
		1186233,
		1259054,
		1335030,
		1414314,
		1497059,
		1583418,
		1673544,
		1767590,
		1865709,
		1968054,
		2074778,
		2186034,
		2301975,
		2422754,
		2548524,
		2679438,
		2815649,
		2957310,
		3104574,
		3257594,
		3416523,
		3581514,
		3752720,
		3930294,
		4114389,
		4305158,
		4502754,
		4707330,
		4919039,
		5138034,
		5364468,
		5598494,
		5840265,
		6089934,
		6347654,
		6613578,
		6887859,
		7170650,
		7462104,
		7762374,
		8071613,
	], [
		0,
		0,
		8,
		32,
		80,
		178,
		352,
		628,
		1032,
		1590,
		2328,
		3272,
		4448,
		5882,
		7600,
		9628,
		12023,
		14842,
		18142,
		21980,
		26413,
		31498,
		37292,
		43852,
		51235,
		59498,
		68698,
		78892,
		90137,
		102490,
		116008,
		130748,
		146767,
		164122,
		182870,
		203068,
		224789,
		248106,
		273092,
		299820,
		328363,
		358794,
		391186,
		425612,
		462145,
		500858,
		541824,
		585116,
		630807,
		678970,
		729678,
		783004,
		839021,
		897802,
		959420,
		1023948,
		1091459,
		1162026,
		1235722,
		1312620,
		1392793,
		1476442,
		1563768,
		1654972,
		1750255,
		1849818,
		1953862,
		2062588,
		2176197,
		2294890,
		2418868,
		2548332,
		2683483,
		2824522,
		2971650,
		3125068,
		3284977,
		3451578,
		3625072,
		3805660,
		3993543,
		4188922,
		4391998,
		4602972,
		4822045,
		5049418,
		5285292,
		5529868,
		5783347,
		6045930,
		6317818,
		6599212,
		6890313,
		7191322,
		7502440,
		7823868,
		8155807,
		8498458,
		8852022,
		9216700,
	], [
		0,
		0,
		4,
		16,
		40,
		88,
		172,
		304,
		496,
		760,
		1108,
		1552,
		2104,
		2776,
		3580,
		4528,
		5733,
		7308,
		9366,
		12020,
		15383,
		19568,
		24688,
		30856,
		38185,
		46788,
		56778,
		68268,
		81371,
		96200,
		112868,
		131488,
		152173,
		175036,
		200190,
		227748,
		257711,
		290080,
		324856,
		362040,
		401633,
		443636,
		488050,
		534876,
		584115,
		635768,
		689836,
		746320,
		805221,
		866540,
		930278,
		996436,
		1065015,
		1136016,
		1209440,
		1285288,
		1363561,
		1444260,
		1527386,
		1612940,
		1700923,
		1791605,
		1885256,
		1982146,
		2082545,
		2186723,
		2294950,
		2407496,
		2524631,
		2646625,
		2773748,
		2906270,
		3044461,
		3188591,
		3338930,
		3495748,
		3659315,
		3829901,
		4007776,
		4193210,
		4386473,
		4587835,
		4797566,
		5015936,
		5243215,
		5479673,
		5725580,
		5981206,
		6246821,
		6522695,
		6809098,
		7106300,
		7414571,
		7734181,
		8065400,
		8408498,
		8763745,
		9131411,
		9511766,
		9905080,
	], [
		6000,
		0,
		8,
		25,
		52,
		106,
		204,
		363,
		600,
		932,
		1376,
		1949,
		2668,
		3550,
		4612,
		5871,
		7390,
		9232,
		11460,
		14137,
		17326,
		21090,
		25492,
		30595,
		36462,
		43156,
		50740,
		59277,
		68830,
		79462,
		91236,
		104215,
		118462,
		134040,
		151012,
		169441,
		189442,
		211130,
		234620,
		260027,
		287466,
		317052,
		348900,
		383125,
		419842,
		459166,
		501212,
		546095,
		593930,
		644832,
		698916,
		756297,
		817090,
		881410,
		949372,
		1021091,
		1096682,
		1176260,
		1259940,
		1347837,
		1440066,
		1536775,
		1638112,
		1744225,
		1855262,
		1971371,
		2092700,
		2219397,
		2351610,
		2489487,
		2633176,
		2782825,
		2938582,
		3100595,
		3269012,
		3443981,
		3625650,
		3814167,
		4009680,
		4212337,
		4422286,
		4639675,
		4864652,
		5097365,
		5337962,
		5586591,
		5843400,
		6108537,
		6382150,
		6664387,
		6955396,
		7255325,
		7564322,
		7882535,
		8210112,
		8547201,
		8893950,
		9250507,
		9617020,
		9993637,
	]
];

/// $D59589
immutable Enemy[231] EnemyConfigurationTable = [
	Enemy(0x00, EBString!25("null"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 0, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 0, Music.None, 0, 0, 0, 0, 0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Insane Cultist"), Gender.Male, EnemyType.Normal, 0x003F, OverworldSprite.INSANE_CULTIST, 0x07, 94, 0, 353, 33, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_TRAPPED_YOU*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x03, 13, Music.VS_CAVE_BOY, 19, 25, 8, 20, 64, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.PAINT_ATTACK, BattleActions.CALL_FOR_HELP, BattleActions.PAINT_ATTACK, BattleActions.PAINT_ATTACK], BattleActions.NoEffect, [0x00, EnemyID.INSANE_CULTIST_1, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x00, EBString!25("Dept. Store Spook"), Gender.Male, EnemyType.Normal, 0x003D, OverworldSprite.WHIRLING_ROBO, 0x07, 610, 290, 24291, 1648, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x16, 42, Music.VS_CAVE_BOY, 82, 135, 19, 24, 62, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, 0x03, [BattleActions.PSI_FREEZE_ALPHA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSILifeupAlpha, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x09, 0x05, 0x17, EnemyID.DEPT_STORE_SPOOK_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Armored Frog"), Gender.Neutral, EnemyType.Normal, 0x0003, OverworldSprite.ARMORED_FROG, 0x07, 202, 0, 1566, 77, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 22, Music.VS_STRUTTIN_EVIL_MUSHROOM, 37, 108, 7, 5, 8, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.SPIN_SOMETHING], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x04, ItemID.BROKEN_SPRAY_CAN, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Bad Buffalo"), Gender.Male, EnemyType.Normal, 0x004A, OverworldSprite.BAD_BUFFALO, 0x07, 341, 0, 4108, 172, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x07, 34, Music.VS_CAVE_BOY, 64, 104, 11, 5, 5, 0x00, 0x01, 0x01, 0x00, 0x02, 0x02, 0x01, [BattleActions.TRAMPLE, BattleActions.TEAR_INTO, BattleActions.TRAMPLE, BattleActions.KNIT_BROW], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.WET_TOWEL, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Black Antoid"), Gender.Neutral, EnemyType.Insect, 0x0001, OverworldSprite.BLACK_ANTOID, 0x07, 34, 25, 37, 7, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x08, 7, Music.VS_CRANKY_LADY, 14, 13, 4, 3, 0, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.CALL_FOR_HELP, BattleActions.BASH, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x00, EnemyID.BLACK_ANTOID_1, 0x00, 0x17], 0x00, 1, 0x00, 0x05, ItemID.Cookie, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x01, EBString!25("Red Antoid"), Gender.Neutral, EnemyType.Insect, 0x0001, OverworldSprite.BLACK_ANTOID, 0x07, 112, 30, 1175, 35, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x10, 20, Music.VS_CRANKY_LADY, 29, 27, 10, 4, 0, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.CALL_FOR_HELP, BattleActions.BITE, BattleActions.PSI_DEFENSE_DOWN_ALPHA], BattleActions.NoEffect, [0x00, EnemyID.RED_ANTOID, 0x00, 0x29], 0x00, 2, 0x00, 0x04, ItemID.SUGAR_PACKET, InitialStatus.None, 0x00, 0x00, 0x03, 0x32),
	Enemy(0x01, EBString!25("Ramblin' Evil Mushroom"), Gender.Neutral, EnemyType.Normal, 0x0005, OverworldSprite.RAMBLIN_EVIL_MUSHROOM, 0x07, 60, 0, 95, 15, ActionScript.Unknown024, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D83*/, 0x09, 7, Music.VS_STRUTTIN_EVIL_MUSHROOM, 15, 10, 5, 5, 1, 0x00, 0x00, 0x01, 0x01, 0x03, 0x02, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.SCATTER_SPORES], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x03, ItemID.KETCHUP_PACKET, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Struttin' Evil Mushroom"), Gender.Neutral, EnemyType.Normal, 0x0005, OverworldSprite.RAMBLIN_EVIL_MUSHROOM, 0x07, 157, 0, 1492, 95, ActionScript.Unknown024, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D83*/, 0x0D, 17, Music.VS_STRUTTIN_EVIL_MUSHROOM, 29, 22, 28, 7, 1, 0x00, 0x00, 0x01, 0x01, 0x03, 0x02, 0x03, [BattleActions.SCATTER_SPORES, BattleActions.BASH, BattleActions.BASH, BattleActions.SCATTER_SPORES_2], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x03, ItemID.RUST_PROMOTER, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Mobile Sprout"), Gender.Neutral, EnemyType.Normal, 0x005A, OverworldSprite.MOBILE_SPROUT, 0x06, 79, 9, 133, 13, ActionScript.Unknown024, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D83*/, 0x06, 10, Music.VS_CRANKY_LADY, 17, 12, 6, 5, 1, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x01, [BattleActions.BASH, BattleActions.PSI_MAGNET_ALPHA, BattleActions.SOW_SEEDS, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x00, 0x2D, EnemyID.MOBILE_SPROUT, 0x17], 0x00, 1, 0x00, 0x02, ItemID.CROISSANT, InitialStatus.None, 0x00, 0x00, 0x03, 0x32),
	Enemy(0x01, EBString!25("Tough Mobile Sprout"), Gender.Neutral, EnemyType.Normal, 0x005A, OverworldSprite.MOBILE_SPROUT, 0x07, 179, 13, 1865, 119, ActionScript.Unknown024, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D83*/, 0x02, 21, Music.VS_CRANKY_LADY, 33, 27, 18, 6, 1, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x00, [BattleActions.BASH, BattleActions.SOW_SEEDS, BattleActions.PSI_MAGNET_ALPHA, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x00, EnemyID.TOUGH_MOBILE_SPROUT, 0x2D, 0x17], 0x00, 2, 0x00, 0x03, ItemID.SPRIG_OF_PARSLEY, InitialStatus.None, 0x00, 0x00, 0x03, 0x32),
	Enemy(0x01, EBString!25("Enraged Fire Plug"), Gender.Neutral, EnemyType.Normal, 0x003B, OverworldSprite.ROBO_PUMP, 0x07, 309, 0, 4321, 346, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D83*/, 0x03, 32, Music.VS_CRANKY_LADY, 60, 81, 14, 5, 4, 0x03, 0x00, 0x03, 0x01, 0x03, 0x01, 0x01, [BattleActions.SPRAY_WATER_BLAST, BattleActions.BASH, BattleActions.SPRAY_WATER_BLAST, BattleActions.SPRAY_WATER_BLAST], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.SUDDEN_GUTS_PILL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Mystical Record"), Gender.Neutral, EnemyType.Normal, 0x002E, OverworldSprite.GiftBox, 0x07, 263, 35, 2736, 310, ActionScript.Unknown031, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D83*/, 0x02, 33, Music.VS_STRUTTIN_EVIL_MUSHROOM, 63, 78, 20, 12, 7, 0x00, 0x01, 0x03, 0x01, 0x03, 0x01, 0x03, [BattleActions.CHARGE, BattleActions.BASH, BattleActions.PSILifeupAlpha, BattleActions.CHARGE], BattleActions.NoEffect, [0x00, 0x00, 0x17, 0x00], 0x00, 1, 0x00, 0x01, ItemID.Pizza, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Atomic Power Robot"), Gender.Neutral, EnemyType.Metal, 0x0069, OverworldSprite.WHIRLING_ROBO, 0x07, 594, 0, 26937, 730, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DD8*/, 0x02, 56, Music.VS_KRAKEN, 119, 133, 25, 8, 12, 0x03, 0x00, 0x02, 0x03, 0x02, 0x01, 0x01, [BattleActions.REPLENISH_FUEL, BattleActions.FIRE_BEAM, BattleActions.REPLENISH_FUEL, BattleActions.REPLENISH_FUEL], BattleActions.EXPLODE, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x03, ItemID.SUPER_BOMB, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Nuclear Reactor Robot"), Gender.Neutral, EnemyType.Metal, 0x0069, OverworldSprite.WHIRLING_ROBO, 0x07, 798, 0, 53142, 820, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DD8*/, 0x18, 64, Music.VS_KRAKEN, 142, 185, 46, 8, 12, 0x03, 0x01, 0x02, 0x03, 0x02, 0x01, 0x01, [BattleActions.REPLENISH_FUEL, BattleActions.FIRE_BEAM, BattleActions.REPLENISH_FUEL, BattleActions.REPLENISH_FUEL], BattleActions.EXPLODE, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x04, ItemID.SUPER_BOMB, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Guardian Hieroglyph"), Gender.Neutral, EnemyType.Normal, 0x0046, OverworldSprite.GUARDIAN_HIEROGLYPH, 0x07, 470, 126, 13064, 470, ActionScript.Unknown021, null/*TEXT_BLOCK_EF7879*/, null/*TEXT_BLOCK_EF6D71*/, 0x04, 48, Music.VS_CRANKY_LADY, 94, 106, 20, 20, 38, 0x00, 0x02, 0x01, 0x01, 0x00, 0x01, 0x03, [BattleActions.COUGH, BattleActions.PSI_THUNDER_ALPHA, BattleActions.PSI_FLASH_ALPHA, BattleActions.PSI_THUNDER_BETA], BattleActions.NoEffect, [0x00, 0x0D, 0x11, 0x0E], 0x00, 2, 0x00, 0x03, ItemID.PHARAOHS_CURSE, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Lethal Asp Hieroglyph"), Gender.Neutral, EnemyType.Normal, 0x0043, OverworldSprite.LETHAL_ASP_HIEROGLYPH, 0x07, 458, 0, 11321, 625, ActionScript.Unknown020, null/*TEXT_BLOCK_EF7879*/, null/*TEXT_BLOCK_EF6D71*/, 0x04, 46, Music.VS_STRUTTIN_EVIL_MUSHROOM, 89, 94, 21, 5, 36, 0x02, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, [BattleActions.BITING_ATTACK, BattleActions.BITE, BattleActions.BITE, BattleActions.COIL_AROUND], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.PHARAOHS_CURSE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Electro Swoosh"), Gender.Neutral, EnemyType.Normal, 0x0016, OverworldSprite.ELECTRO_SWOOSH, 0x07, 543, 338, 17075, 791, ActionScript.Unknown027, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 62, Music.VS_SPINNING_ROBO, 140, 156, 40, 5, 10, 0x02, 0x01, 0x00, 0x01, 0x01, 0x01, 0x02, [BattleActions.GREET, BattleActions.ELECTRIC_SHOCK, BattleActions.ELECTRIC_SHOCK, BattleActions.CHARGE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.SUDDEN_GUTS_PILL, InitialStatus.None, 0x00, 0x01, 0x04, 0x32),
	Enemy(0x01, EBString!25("Conducting Menace"), Gender.Male, EnemyType.Normal, 0x0024, OverworldSprite.THUNDER_MITE, 0x07, 445, 238, 14792, 574, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x1A, 52, Music.VS_SPINNING_ROBO, 107, 107, 20, 5, 8, 0x01, 0x01, 0x03, 0x01, 0x02, 0x01, 0x00, [BattleActions.PSI_FLASH_ALPHA, BattleActions.PSI_FLASH_BETA, BattleActions.PSI_THUNDER_ALPHA, BattleActions.PSI_THUNDER_BETA], BattleActions.NoEffect, [0x11, 0x12, 0x0D, 0x0E], 0x00, 2, 0x00, 0x02, ItemID.BottleOfWater, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Conducting Spirit"), Gender.Male, EnemyType.Normal, 0x0024, OverworldSprite.THUNDER_MITE, 0x07, 587, 329, 30390, 804, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 59, Music.VS_SPINNING_ROBO, 130, 139, 26, 5, 8, 0x01, 0x01, 0x03, 0x01, 0x02, 0x01, 0x00, [BattleActions.PSI_FLASH_ALPHA, BattleActions.PSI_FLASH_BETA, BattleActions.PSI_THUNDER_BETA, BattleActions.PSI_THUNDER_GAMMA], BattleActions.NoEffect, [0x11, 0x12, 0x0E, 0x0F], 0x00, 3, 0x00, 0x00, ItemID.BRAIN_FOOD_LUNCH, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Evil Elemental"), Gender.Neutral, EnemyType.Normal, 0x0030, OverworldSprite.ROBO_PUMP, 0x07, 564, 0, 35737, 853, ActionScript.Unknown027, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6DB8*/, 0x0B, 57, Music.VS_KRAKEN, 121, 136, 30, 7, 16, 0x00, 0x03, 0x00, 0x03, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.DISRUPT_SENSES, BattleActions.POSSESS, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.LUXURY_JERKY, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("|'s Nightmare"), Gender.Neutral, EnemyType.Normal, 0x004F, OverworldSprite.EVIL_MANI_MANI, 0x07, 1654, 882, 89004, 4442, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D83*/, 0x05, 71, Music.VS_STARMAN_JR, 172, 253, 31, 1, 80, 0x01, 0x02, 0x02, 0x03, 0x01, 0x00, 0x00, [BattleActions.EnemyExtender, BattleActions.PSI_ROCKIN_ALPHA, BattleActions.GLORIOUS_LIGHT, BattleActions.PSIShieldBeta], BattleActions.NoEffect, [EnemyID.YOUR_NIGHTMARE_2, 0x01, 0x00, 0x21], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.PSIShield, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Annoying Old Party Man"), Gender.Male, EnemyType.Normal, 0x0022, OverworldSprite.ANNOYING_OLD_PARTY_MAN, 0x07, 99, 0, 130, 32, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x08, 13, Music.VS_RUNAWAY_DOG, 20, 25, 6, 50, 15, 0x01, 0x01, 0x01, 0x01, 0x01, 0x06, 0x00, [BattleActions.BASH, BattleActions.GRUMBLE_ABOUT_YOUTH, BattleActions.WOBBLE, BattleActions.REEL], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x01, ItemID.ProteinDrink, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Annoying Reveler"), Gender.Male, EnemyType.Normal, 0x0022, OverworldSprite.ANNOYING_OLD_PARTY_MAN, 0x07, 288, 0, 2373, 268, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x10, 31, Music.VS_CAVE_BOY, 58, 77, 17, 50, 15, 0x01, 0x01, 0x01, 0x01, 0x01, 0x06, 0x00, [BattleActions.GRUMBLE_ABOUT_YOUTH, BattleActions.LECTURE, BattleActions.BASH, BattleActions.WOBBLE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x03, ItemID.ProteinDrink, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Unassuming Local Guy"), Gender.Male, EnemyType.Normal, 0x0023, OverworldSprite.UNASSUMING_LOCAL_GUY_ENEMY, 0x07, 73, 0, 146, 19, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x01, 9, Music.VS_CRANKY_LADY, 18, 13, 5, 1, 14, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.BECOME_FRIENDLY], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x04, ItemID.TOOTHBRUSH, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("New Age Retro Hippie"), Gender.Male, EnemyType.Normal, 0x006B, OverworldSprite.NEW_AGE_RETRO_HIPPIE_ENEMY, 0x07, 87, 0, 160, 23, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x01, 11, Music.VS_NEW_AGE_RETRO_HIPPIE, 19, 14, 5, 10, 16, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, [BattleActions.BASH, BattleActions.LOSE_TEMPER, BattleActions.TOOTHBRUSH, BattleActions.RULER], BattleActions.NoEffect, [0x00, 0x00, 0x9A, 0x8C], 0x00, 3, 0x00, 0x03, ItemID.RULER, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Mr. Carpainter"), Gender.Male, EnemyType.Normal, 0x0021, OverworldSprite.MR_CARPAINTER, 0x07, 262, 70, 1412, 195, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x01, 21, Music.VS_STARMAN_JR, 33, 45, 8, 13, 72, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, [BattleActions.CRASHING_BOOM_BANG, BattleActions.PSILifeupAlpha, BattleActions.PAINT_ATTACK, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x17, 0x00, EnemyID.MR_CARPAINTER_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Carbon Dog"), Gender.Male, EnemyType.Normal, 0x0028, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1672, 0, 0, 0, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 70, Music.VS_YOUR_SANCTUARY_BOSS, 159, 174, 31, 52, 53, 0x03, 0x02, 0x01, 0x02, 0x02, 0x00, 0x01, [BattleActions.SPEW_FIREBALL, BattleActions.EnemyExtender, BattleActions.HOWL, BattleActions.BITING_ATTACK], BattleActions.GIVE_OFF_RAINBOW, [0x00, EnemyID.CARBON_DOG_2, 0x00, 0x00], EnemyID.DIAMOND_DOG_1, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Mighty Bear"), Gender.Male, EnemyType.Normal, 0x0068, OverworldSprite.MIGHTY_BEAR, 0x07, 167, 0, 609, 49, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x07, 16, Music.VS_CRANKY_LADY, 29, 31, 7, 1, 5, 0x01, 0x01, 0x01, 0x02, 0x01, 0x03, 0x00, [BattleActions.CLAW, BattleActions.BITE, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.TEDDY_BEAR, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Mighty Bear Seven"), Gender.Male, EnemyType.Normal, 0x0068, OverworldSprite.MIGHTY_BEAR, 0x07, 367, 0, 8884, 440, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x15, 42, Music.VS_CRANKY_LADY, 85, 76, 11, 1, 4, 0x01, 0x01, 0x01, 0x02, 0x01, 0x03, 0x00, [BattleActions.CLAW, BattleActions.BITE, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.SUPER_PLUSH_BEAR, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Putrid Moldyman"), Gender.Male, EnemyType.Normal, 0x000A, OverworldSprite.STINKY_GHOST, 0x07, 203, 0, 830, 53, ActionScript.Unknown024, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D71*/, 0x09, 21, Music.VS_STRUTTIN_EVIL_MUSHROOM, 36, 41, 9, 5, 17, 0x03, 0x00, 0x01, 0x02, 0x00, 0x01, 0x00, [BattleActions.MOLD_SPORES, BattleActions.BASH, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.CROISSANT, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Thunder Mite"), Gender.Neutral, EnemyType.Normal, 0x001E, OverworldSprite.THUNDER_MITE, 0x07, 293, 200, 10798, 430, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DA7*/, 0x01, 43, Music.VS_SPINNING_ROBO, 85, 83, 20, 13, 8, 0x00, 0x00, 0x03, 0x01, 0x01, 0x01, 0x00, [BattleActions.PSI_THUNDER_ALPHA, BattleActions.PSI_THUNDER_ALPHA, BattleActions.PSI_THUNDER_BETA, BattleActions.PSI_THUNDER_BETA], BattleActions.NoEffect, [0x0D, 0x0D, 0x0E, 0x0E], 0x00, 2, 0x00, 0x02, ItemID.BottleOfWater, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Cranky Lady"), Gender.Female, EnemyType.Normal, 0x0063, OverworldSprite.CRANKY_LADY, 0x07, 95, 0, 200, 17, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x03, 8, Music.VS_CRANKY_LADY, 16, 18, 6, 3, 32, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, [BattleActions.BASH, BattleActions.WIELD_SHOPPING_BAG, BattleActions.SCOWL, BattleActions.GRIN], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x01, ItemID.HANDBAG_STRAP, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Extra Cranky Lady"), Gender.Female, EnemyType.Normal, 0x0063, OverworldSprite.CRANKY_LADY, 0x07, 277, 0, 3651, 134, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x07, 27, Music.VS_CRANKY_LADY, 48, 70, 17, 5, 32, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.SCOWL, BattleActions.CONTINUOUS_ATTACK, BattleActions.WIELD_SHOPPING_BAG, BattleActions.SCARY_WORDS], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x04, ItemID.HANDBAG_STRAP, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Giygas"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.WHIRLING_ROBO, 0x07, 3600, 0, 0, 0, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x00, 73, Music.GiygasAwakens, 203, 300, 52, 1, 80, 0x02, 0x02, 0x02, 0x03, 0x02, 0x00, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Wetnosaur"), Gender.Neutral, EnemyType.Normal, 0x000E, OverworldSprite.WETNOSAUR, 0x07, 1030, 0, 33098, 745, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 59, Music.VS_KRAKEN, 126, 172, 17, 2, 16, 0x00, 0x01, 0x01, 0x02, 0x01, 0x03, 0x01, [BattleActions.STOMP, BattleActions.SWING_TAIL, BattleActions.BITE, BattleActions.LOUD_RUMBLE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.LUXURY_JERKY, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Chomposaur"), Gender.Neutral, EnemyType.Normal, 0x0041, OverworldSprite.CHOMPOSAUR, 0x07, 1288, 320, 44378, 896, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x03, 62, Music.VS_CAVE_BOY, 139, 183, 17, 3, 16, 0x03, 0x01, 0x01, 0x02, 0x01, 0x02, 0x00, [BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_BETA, BattleActions.SWING_TAIL, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x05, 0x06, 0x00, EnemyID.CHOMPOSAUR_2], 0x00, 3, 0x00, 0x00, ItemID.MAGIC_FRY_PAN, InitialStatus.ShieldPower, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Titanic Ant"), Gender.Neutral, EnemyType.Insect, 0x0049, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 235, 102, 685, 150, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x04, 13, Music.VS_YOUR_SANCTUARY_BOSS, 19, 23, 6, 9, 72, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x01, [BattleActions.EnemyExtender, BattleActions.BITING_ATTACK, BattleActions.PSI_DEFENSE_DOWN_ALPHA, BattleActions.PSI_MAGNET_ALPHA], BattleActions.NoEffect, [EnemyID.TITANIC_ANT_2, 0x00, 0x29, 0x2D], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Gigantic Ant"), Gender.Neutral, EnemyType.Insect, 0x0049, OverworldSprite.GIGANTIC_ANT, 0x07, 308, 81, 3980, 304, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 30, Music.VS_CAVE_BOY, 54, 112, 17, 5, 6, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.PSI_MAGNET_ALPHA, BattleActions.POISON_STING, BattleActions.BITING_ATTACK, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x2D, 0x00, 0x00, EnemyID.GIGANTIC_ANT_2], 0x00, 3, 0x00, 0x02, ItemID.DOUBLE_BURGER, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x00, EBString!25("Shrooom!"), Gender.Neutral, EnemyType.Normal, 0x000B, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1700, 112, 96323, 4086, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 48, Music.VS_YOUR_SANCTUARY_BOSS, 95, 154, 18, 32, 72, 0x00, 0x02, 0x01, 0x03, 0x01, 0x00, 0x02, [BattleActions.SCATTER_SPORES, BattleActions.PSILifeupAlpha, BattleActions.SCATTER_SPORES_2, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x17, 0x00, EnemyID.SHROOOM_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Plague Rat of Doom"), Gender.Male, EnemyType.Normal, 0x004B, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1827, 60, 115272, 4464, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x04, 47, Music.VS_YOUR_SANCTUARY_BOSS, 71, 180, 19, 250, 45, 0x01, 0x02, 0x01, 0x02, 0x02, 0x00, 0x01, [BattleActions.POISONOUS_BITE, BattleActions.EnemyExtender, BattleActions.BITE, BattleActions.BASH], BattleActions.NoEffect, [0x00, EnemyID.PLAGUE_RAT_OF_DOOM_2, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Mondo Mole"), Gender.Male, EnemyType.Normal, 0x0053, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 498, 161, 5791, 400, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 23, Music.VS_YOUR_SANCTUARY_BOSS, 37, 50, 9, 15, 36, 0x02, 0x03, 0x00, 0x00, 0x02, 0x00, 0x00, [BattleActions.PSILifeupAlpha, BattleActions.TEAR_INTO, BattleActions.BASH, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x17, 0x00, 0x00, EnemyID.MONDO_MOLE_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Guardian Digger"), Gender.Male, EnemyType.Normal, 0x0053, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 386, 110, 17301, 1467, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x15, 32, Music.VS_YOUR_SANCTUARY_BOSS, 59, 129, 17, 21, 55, 0x01, 0x01, 0x00, 0x02, 0x02, 0x00, 0x01, [BattleActions.CLAW, BattleActions.EnemyExtender, BattleActions.BASH, BattleActions.PSIShieldBeta], BattleActions.NoEffect, [0x00, EnemyID.GUARDIAN_DIGGER_2, 0x00, 0x21], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.ShieldPower, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Scalding Coffee Cup"), Gender.Neutral, EnemyType.Normal, 0x002C, OverworldSprite.GiftBox, 0x07, 190, 0, 2462, 280, ActionScript.Unknown031, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D83*/, 0x02, 30, Music.VS_STRUTTIN_EVIL_MUSHROOM, 55, 20, 23, 5, 1, 0x02, 0x00, 0x02, 0x01, 0x02, 0x01, 0x00, [BattleActions.HOT_ESPRESSO, BattleActions.HOT_ESPRESSO, BattleActions.HOT_ESPRESSO, BattleActions.HOT_ESPRESSO], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x06, ItemID.CUP_OF_COFFEE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Loaded Dice"), Gender.Neutral, EnemyType.Normal, 0x003A, OverworldSprite.GiftBox, 0x07, 307, 0, 10672, 703, ActionScript.Unknown031, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x03, 59, Music.VS_CRANKY_LADY, 146, 113, 77, 75, 6, 0x00, 0x00, 0x02, 0x00, 0x03, 0x01, 0x00, [BattleActions.CALL_FOR_HELP, BattleActions.CALL_FOR_HELP, BattleActions.CALL_FOR_HELP, BattleActions.CALL_FOR_HELP], BattleActions.NoEffect, [EnemyID.CARE_FREE_BOMB, EnemyID.BeautifulUFO, EnemyID.HIGH_CLASS_UFO, EnemyID.CARE_FREE_BOMB], 0x00, 1, 0x00, 0x02, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x01, EBString!25("Slimy Little Pile"), Gender.Neutral, EnemyType.Normal, 0x005B, OverworldSprite.SLIMY_LITTLE_PILE, 0x07, 224, 0, 1978, 124, ActionScript.Unknown020, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x06, 24, Music.VS_MASTER_BARF, 42, 61, 15, 7, 38, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, [BattleActions.STINKY_BREATH, BattleActions.CALL_FOR_HELP, BattleActions.STICKY_MUCUS, BattleActions.BASH], BattleActions.NoEffect, [0x00, EnemyID.SLIMY_LIL_PILE, 0x00, 0x00], 0x00, 2, 0x01, 0x02, ItemID.BOMB, InitialStatus.None, 0x00, 0x00, 0x04, 0x32),
	Enemy(0x01, EBString!25("Even Slimier Little Pile"), Gender.Neutral, EnemyType.Normal, 0x005B, OverworldSprite.SLIMY_LITTLE_PILE, 0x07, 326, 0, 15075, 579, ActionScript.Unknown020, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x0E, 49, Music.VS_MASTER_BARF, 103, 101, 22, 9, 39, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, [BattleActions.BASH, BattleActions.CALL_FOR_HELP, BattleActions.STICKY_MUCUS, BattleActions.STINKY_BREATH], BattleActions.NoEffect, [0x00, EnemyID.EVEN_SLIMIER_LITTLE_PILE, 0x00, 0x00], 0x00, 3, 0x00, 0x02, ItemID.MULTI_BOTTLE_ROCKET, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x01, EBString!25("Arachnid!"), Gender.Neutral, EnemyType.Insect, 0x004D, OverworldSprite.ARACHNID, 0x07, 216, 0, 4933, 296, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 32, Music.VS_CAVE_BOY, 61, 30, 23, 3, 0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.SPIDER_SILK, BattleActions.POISON_STING], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x04, ItemID.JAR_OF_HOT_SAUCE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Arachnid!!!"), Gender.Neutral, EnemyType.Insect, 0x004D, OverworldSprite.ARACHNID, 0x07, 344, 0, 10449, 412, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x1F, 45, Music.VS_CAVE_BOY, 87, 86, 20, 4, 0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x01, [BattleActions.POISON_STING, BattleActions.BASH, BattleActions.BASH, BattleActions.SPIDER_SILK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.BEEF_JERKY, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Kraken"), Gender.Neutral, EnemyType.Normal, 0x0029, OverworldSprite.KRAKEN, 0x07, 1097, 176, 79267, 3049, ActionScript.Unknown029, null/*TEXT_BLOCK_EF7866*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 54, Music.VS_KRAKEN, 105, 166, 21, 1, 32, 0x02, 0x02, 0x01, 0x01, 0x02, 0x00, 0x00, [BattleActions.FIRE_BREATH, BattleActions.EMIT_PALE_GREEN_LIGHT, BattleActions.CRASHING_BOOM_BANG, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.KRAKEN_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Bionic Kraken"), Gender.Neutral, EnemyType.Normal, 0x0029, OverworldSprite.WHIRLING_ROBO, 0x07, 900, 60, 50308, 960, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x18, 70, Music.VS_KRAKEN, 155, 195, 42, 1, 32, 0x02, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, [BattleActions.GENERATE_TORNADO, BattleActions.CRASHING_BOOM_BANG, BattleActions.FIRE_BREATH, BattleActions.EMIT_PALE_GREEN_LIGHT], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x00, ItemID.GUTSY_BAT, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Spinning Robo"), Gender.Neutral, EnemyType.Metal, 0x0034, OverworldSprite.WHIRLING_ROBO, 0x06, 113, 17, 297, 21, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DF0*/, 0x02, 14, Music.VS_SPINNING_ROBO, 21, 22, 7, 5, 12, 0x03, 0x00, 0x01, 0x01, 0x01, 0x03, 0x00, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.NIGHT_TIME_STUFFINESS_BEAM, BattleActions.PSIShieldAlpha], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x1F], 0x00, 2, 0x00, 0x01, ItemID.METEORNIUM, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Whirling Robo"), Gender.Neutral, EnemyType.Metal, 0x0034, OverworldSprite.WHIRLING_ROBO, 0x07, 374, 36, 5782, 256, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DF0*/, 0x1C, 39, Music.VS_SPINNING_ROBO, 78, 90, 18, 5, 12, 0x03, 0x00, 0x01, 0x01, 0x01, 0x03, 0x01, [BattleActions.FIRE_BEAM, BattleActions.NIGHT_TIME_STUFFINESS_BEAM, BattleActions.Neutralizer, BattleActions.PSIShieldAlpha], BattleActions.NoEffect, [0x00, 0x00, 0xC3, 0x1F], 0x00, 2, 0x00, 0x00, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Hyper Spinning Robo"), Gender.Neutral, EnemyType.Metal, 0x0034, OverworldSprite.WHIRLING_ROBO, 0x07, 553, 83, 28866, 756, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DF0*/, 0x18, 56, Music.VS_SPINNING_ROBO, 122, 130, 28, 5, 12, 0x03, 0x00, 0x01, 0x01, 0x01, 0x03, 0x01, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.DISRUPT_SENSES, BattleActions.PSIShieldBeta], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x21], 0x00, 2, 0x00, 0x00, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x00, 0x04, 0x32),
	Enemy(0x01, EBString!25("Cop"), Gender.Male, EnemyType.Normal, 0x0033, OverworldSprite.POLICE, 0x07, 75, 0, 86, 18, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x02, 7, Music.VS_RUNAWAY_DOG, 15, 18, 5, 7, 16, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.CRUSHING_CHOP, BattleActions.CRUSHING_CHOP, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x04, ItemID.Hamburger, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x01, EBString!25("Coil Snake"), Gender.Male, EnemyType.Normal, 0x0019, OverworldSprite.THIRSTY_COIL_SNAKE, 0x07, 18, 0, 1, 4, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 1, Music.VS_CRANKY_LADY, 3, 4, 2, 0, 6, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, [BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK, BattleActions.COIL_AROUND], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.Cookie, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Thirsty Coil Snake"), Gender.Male, EnemyType.Normal, 0x0019, OverworldSprite.THIRSTY_COIL_SNAKE, 0x07, 270, 0, 2786, 276, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x19, 28, Music.VS_CRANKY_LADY, 52, 80, 18, 5, 7, 0x01, 0x00, 0x01, 0x00, 0x01, 0x01, 0x01, [BattleActions.POISONOUS_BITE, BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK, BattleActions.COIL_AROUND], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x03, ItemID.Chick, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Mr. Batty"), Gender.Male, EnemyType.Normal, 0x0013, OverworldSprite.MR_BATTY, 0x07, 86, 0, 304, 30, ActionScript.Unknown025, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 15, Music.VS_CRANKY_LADY, 25, 5, 29, 4, 3, 0x01, 0x01, 0x01, 0x00, 0x03, 0x01, 0x01, [BattleActions.BASH, BattleActions.SIZE_UP_SITUATION, BattleActions.BECOME_FRIENDLY, BattleActions.SIZE_UP_SITUATION], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x01, ItemID.JAR_OF_HOT_SAUCE, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Elder Batty"), Gender.Male, EnemyType.Normal, 0x0013, OverworldSprite.MR_BATTY, 0x07, 294, 0, 4177, 371, ActionScript.Unknown025, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x1A, 35, Music.VS_CRANKY_LADY, 66, 72, 33, 8, 4, 0x01, 0x01, 0x01, 0x00, 0x03, 0x01, 0x01, [BattleActions.BASH, BattleActions.SIZE_UP_SITUATION, BattleActions.BECOME_FRIENDLY, BattleActions.BITE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.DOUBLE_BURGER, InitialStatus.None, 0x00, 0x01, 0x03, 0x00),
	Enemy(0x01, EBString!25("Violent Roach"), Gender.Neutral, EnemyType.Insect, 0x0050, OverworldSprite.ARACHNID, 0x07, 209, 0, 1757, 80, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 18, Music.VS_STRUTTIN_EVIL_MUSHROOM, 30, 26, 35, 9, 24, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x00, [BattleActions.BASH, BattleActions.KNIT_BROW, BattleActions.VENT_ODOR, BattleActions.LEAP_FORWARD_AND_SPREAD_WINGS], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.SECRET_HERB, InitialStatus.None, 0x00, 0x00, 0x02, 0x00),
	Enemy(0x01, EBString!25("Filthy Attack Roach"), Gender.Neutral, EnemyType.Insect, 0x0050, OverworldSprite.ARACHNID, 0x07, 399, 0, 10543, 432, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x1D, 42, Music.VS_STRUTTIN_EVIL_MUSHROOM, 84, 33, 77, 9, 24, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x00, [BattleActions.BASH, BattleActions.KNIT_BROW, BattleActions.CONTINUOUS_ATTACK, BattleActions.LEAP_FORWARD_AND_SPREAD_WINGS], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x03, ItemID.SECRET_HERB, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Crazed Sign"), Gender.Neutral, EnemyType.Metal, 0x001A, OverworldSprite.CRAZED_SIGN, 0x07, 295, 98, 3618, 244, ActionScript.Unknown028, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D83*/, 0x01, 34, Music.VS_STRUTTIN_EVIL_MUSHROOM, 64, 96, 17, 5, 11, 0x02, 0x01, 0x03, 0x01, 0x00, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.PSI_PARALYSIS_ALPHA, BattleActions.PSI_HYPNOSIS_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x2F, 0x2B], 0x00, 1, 0x00, 0x01, ItemID.BIG_BOTTLE_ROCKET, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Wooly Shambler"), Gender.Neutral, EnemyType.Metal, 0x000D, OverworldSprite.WHIRLING_ROBO, 0x07, 391, 140, 5397, 458, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6DA7*/, 0x1B, 40, Music.VS_SPINNING_ROBO, 81, 91, 18, 5, 63, 0x02, 0x01, 0x01, 0x01, 0x01, 0x02, 0x01, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.PSIPSIShieldAlpha, BattleActions.PSI_FLASH_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x23, 0x11], 0x00, 2, 0x00, 0x01, ItemID.MULTI_BOTTLE_ROCKET, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Wild 'n Wooly Shambler"), Gender.Neutral, EnemyType.Metal, 0x000D, OverworldSprite.WHIRLING_ROBO, 0x07, 722, 212, 33818, 906, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6DA7*/, 0x09, 65, Music.VS_SPINNING_ROBO, 144, 171, 38, 5, 63, 0x02, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.PSIPSIShieldBeta, BattleActions.PSI_FLASH_BETA], BattleActions.NoEffect, [0x00, 0x00, 0x25, 0x12], 0x00, 2, 0x00, 0x03, ItemID.MULTI_BOTTLE_ROCKET, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Skate Punk"), Gender.Male, EnemyType.Normal, 0x0064, OverworldSprite.SkatePunk, 0x07, 31, 0, 12, 17, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x07, 3, Music.VS_STRUTTIN_EVIL_MUSHROOM, 7, 8, 5, 0, 13, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x01, [BattleActions.SHRED_ON_SKATEBOARD, BattleActions.BASH, BattleActions.CALL_FOR_HELP, BattleActions.CALL_FOR_HELP], BattleActions.NoEffect, [0x00, 0x00, EnemyID.YES_MAN_JUNIOR, EnemyID.POGO_PUNK], 0x00, 3, 0x00, 0x00, ItemID.Pizza, InitialStatus.None, 0x00, 0x01, 0x02, 0x00),
	Enemy(0x01, EBString!25("Skelpion"), Gender.Neutral, EnemyType.Insect, 0x005C, OverworldSprite.SKELPION, 0x07, 137, 21, 1823, 140, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x0E, 24, Music.VS_CAVE_BOY, 41, 23, 37, 80, 7, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.POISON_STING, BattleActions.EDGE_CLOSER, BattleActions.PSI_THUNDER_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x0D], 0x00, 1, 0x00, 0x02, ItemID.VialOfSerum, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Dread Skelpion"), Gender.Neutral, EnemyType.Insect, 0x005C, OverworldSprite.SKELPION, 0x07, 214, 125, 9908, 609, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x0B, 41, Music.VS_CAVE_BOY, 82, 57, 40, 88, 8, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, [BattleActions.POISON_STING, BattleActions.BASH, BattleActions.PSI_THUNDER_ALPHA, BattleActions.PSI_THUNDER_BETA], BattleActions.NoEffect, [0x00, 0x00, 0x0D, 0x0E], 0x00, 2, 0x00, 0x04, ItemID.KETCHUP_PACKET, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Starman"), Gender.Male, EnemyType.Normal, 0x0037, OverworldSprite.STARMAN, 0x07, 545, 155, 23396, 720, ActionScript.Unknown026, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x02, 55, Music.VS_SPINNING_ROBO, 103, 126, 24, 25, 16, 0x01, 0x01, 0x02, 0x02, 0x01, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.ON_GUARD, BattleActions.PSI_MAGNET_ALPHA, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x2D, EnemyID.STARMAN_2], 0x00, 3, 0x00, 0x00, ItemID.BRAIN_FOOD_LUNCH, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Starman Super"), Gender.Male, EnemyType.Normal, 0x0037, OverworldSprite.STARMAN, 0x07, 568, 310, 30145, 735, ActionScript.Unknown026, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x1A, 56, Music.VS_SPINNING_ROBO, 112, 129, 24, 25, 16, 0x01, 0x01, 0x02, 0x02, 0x01, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.CALL_FOR_HELP, BattleActions.ON_GUARD, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, EnemyID.STARMAN_1, 0x00, EnemyID.STARMAN_SUPER_2], 0x00, 3, 0x00, 0x00, ItemID.SWORD_OF_KINGS, InitialStatus.PSIShieldPower, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("Ghost of Starman"), Gender.Male, EnemyType.Normal, 0x0037, OverworldSprite.WHIRLING_ROBO, 0x07, 750, 462, 48695, 807, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x0C, 68, Music.VS_SPINNING_ROBO, 152, 170, 46, 43, 16, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x02, [BattleActions.PSI_STARSTORM_ALPHA, BattleActions.FLASH_SMILE, BattleActions.WHISPER_3, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x15, 0x00, 0x00, EnemyID.GHOST_OF_STARMAN_2], 0x00, 3, 0x00, 0x00, ItemID.GODDESS_RIBBON, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Smilin' Sphere"), Gender.Neutral, EnemyType.Metal, 0x0004, OverworldSprite.SMILIN_SPHERE, 0x07, 233, 60, 2218, 191, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6E03*/, 0x09, 27, Music.VS_KRAKEN, 50, 65, 17, 5, 13, 0x00, 0x03, 0x03, 0x01, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.PSI_FIRE_ALPHA, BattleActions.BASH, BattleActions.LAUGH_MANIACALLY], BattleActions.EXPLODE, [0x00, 0x05, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.METEORNIUM, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("Uncontrollable Sphere"), Gender.Neutral, EnemyType.Metal, 0x0004, OverworldSprite.SMILIN_SPHERE, 0x07, 577, 180, 20389, 796, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6E03*/, 0x11, 56, Music.VS_KRAKEN, 116, 134, 27, 5, 15, 0x00, 0x03, 0x03, 0x01, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_BETA, BattleActions.LAUGH_MANIACALLY], BattleActions.EXPLODE, [0x00, 0x05, 0x06, 0x00], 0x00, 3, 0x00, 0x00, ItemID.BROKEN_ANTENNA, InitialStatus.PSIShield, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Petrified Royal Guard"), Gender.Male, EnemyType.Normal, 0x0057, OverworldSprite.PETRIFIED_ROYAL_GUARD, 0x07, 573, 0, 19163, 628, ActionScript.Unknown028, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D83*/, 0x05, 53, Music.VS_CAVE_BOY, 106, 173, 12, 5, 5, 0x01, 0x02, 0x01, 0x00, 0x01, 0x02, 0x01, [BattleActions.COME_OUT_SWINGING, BattleActions.COME_OUT_SWINGING, BattleActions.CHARGE, BattleActions.WAR_CRY], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.SUDDEN_GUTS_PILL, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Guardian General"), Gender.Male, EnemyType.Normal, 0x0057, OverworldSprite.PETRIFIED_ROYAL_GUARD, 0x07, 831, 6, 95390, 3235, ActionScript.Unknown028, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D83*/, 0x13, 55, Music.VS_YOUR_SANCTUARY_BOSS, 109, 214, 21, 1, 7, 0x01, 0x02, 0x01, 0x02, 0x01, 0x00, 0x00, [BattleActions.COME_OUT_SWINGING, BattleActions.SPIN_SOMETHING, BattleActions.BASH, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.GUARDIAN_GENERAL_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Starman Deluxe"), Gender.Male, EnemyType.Normal, 0x006A, OverworldSprite.WHIRLING_ROBO, 0x07, 1400, 418, 160524, 3827, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x02, 65, Music.VS_SPINNING_ROBO, 143, 186, 27, 43, 21, 0x01, 0x02, 0x03, 0x02, 0x02, 0x00, 0x00, [BattleActions.EnemyExtender, BattleActions.FIRE_BEAM, BattleActions.PSI_STARSTORM_ALPHA, BattleActions.CALL_FOR_HELP], BattleActions.NoEffect, [EnemyID.STARMAN_DELUXE_2, 0x00, 0x15, EnemyID.STARMAN_SUPER_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.PSIShieldPower, 0x01, 0x01, 0x02, 0x00),
	Enemy(0x01, EBString!25("Final Starman"), Gender.Male, EnemyType.Normal, 0x006A, OverworldSprite.WHIRLING_ROBO, 0x07, 840, 860, 61929, 915, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x10, 71, Music.VS_SPINNING_ROBO, 178, 187, 47, 25, 24, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x03, [BattleActions.PSIShieldBeta, BattleActions.PSI_BRAINSHOCK_OMEGA, BattleActions.PSI_STARSTORM_ALPHA, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x21, 0x32, 0x15, EnemyID.FINAL_STARMAN_2], 0x00, 3, 0x00, 0x02, ItemID.PSI_CARAMEL, InitialStatus.PSIShieldPower, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Urban Zombie"), Gender.Neutral, EnemyType.Normal, 0x0048, OverworldSprite.URBAN_ZOMBIE, 0x07, 171, 0, 700, 58, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6E31*/, 0x04, 19, Music.VS_CRANKY_LADY, 31, 24, 10, 15, 24, 0x00, 0x03, 0x00, 0x01, 0x01, 0x01, 0x01, [BattleActions.BASH, BattleActions.LAUGH_HYSTERICALLY, BattleActions.COLD_BREATH, BattleActions.SOMETHING_MYSTERIOUS], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.Hamburger, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("Zombie Possessor"), Gender.Neutral, EnemyType.Normal, 0x0032, OverworldSprite.ZOMBIE_POSSESSOR, 0x07, 176, 0, 950, 81, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6DB8*/, 0x02, 17, Music.VS_CAVE_BOY, 28, 19, 30, 9, 6, 0x03, 0x00, 0x00, 0x01, 0x01, 0x03, 0x00, [BattleActions.BASH, BattleActions.REACH_WITH_ICY_HAND, BattleActions.CALL_FOR_HELP, BattleActions.POSSESS], BattleActions.NoEffect, [0x00, 0x00, EnemyID.ZOMBIE_POSSESSOR, 0x00], 0x00, 2, 0x00, 0x01, ItemID.SECRET_HERB, InitialStatus.None, 0x00, 0x00, 0x02, 0x00),
	Enemy(0x01, EBString!25("Zombie Dog"), Gender.Neutral, EnemyType.Normal, 0x0042, OverworldSprite.ZOMBIE_DOG, 0x07, 210, 0, 1354, 54, ActionScript.Unknown022, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6E31*/, 0x04, 22, Music.VS_CRANKY_LADY, 39, 51, 30, 10, 11, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, [BattleActions.BITING_ATTACK, BattleActions.HOWL, BattleActions.BITING_ATTACK, BattleActions.POISONOUS_BITE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.BOTTLE_ROCKET, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Crooked Cop"), Gender.Male, EnemyType.Normal, 0x0045, OverworldSprite.CROOKED_COP, 0x07, 140, 0, 492, 159, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D71*/, 0x08, 13, Music.VS_CAVE_BOY, 20, 24, 15, 8, 18, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.SUBMISSION_HOLD, BattleActions.COME_OUT_SWINGING, BattleActions.ON_GUARD, BattleActions.LOSE_TEMPER], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x02, ItemID.BoiledEgg, InitialStatus.None, 0x00, 0x00, 0x03, 0x00),
	Enemy(0x01, EBString!25("Over Zealous Cop"), Gender.Male, EnemyType.Normal, 0x0045, OverworldSprite.CROOKED_COP, 0x07, 325, 0, 7448, 420, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x0A, 36, Music.VS_CAVE_BOY, 69, 75, 18, 7, 16, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.SUBMISSION_HOLD, BattleActions.COME_OUT_SWINGING, BattleActions.ON_GUARD, BattleActions.LOSE_TEMPER], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x02, ItemID.DOUBLE_BURGER, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Territorial Oak"), Gender.Male, EnemyType.Normal, 0x005F, OverworldSprite.TERRITORIAL_OAK, 0x06, 145, 41, 356, 29, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D83*/, 0x06, 15, Music.VS_CRANKY_LADY, 26, 30, 5, 9, 4, 0x00, 0x02, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.PSI_BRAINSHOCK_ALPHA, BattleActions.VACUUM_ATTACK], BattleActions.BURST_INTO_FLAMES, [0x00, 0x00, 0x31, 0x00], 0x00, 2, 0x00, 0x00, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Hostile Elder Oak"), Gender.Male, EnemyType.Normal, 0x005F, OverworldSprite.TERRITORIAL_OAK, 0x07, 609, 76, 17567, 690, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D83*/, 0x0E, 59, Music.VS_CAVE_BOY, 134, 146, 14, 11, 5, 0x00, 0x02, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.PSI_BRAINSHOCK_ALPHA, BattleActions.PSI_MAGNET_ALPHA], BattleActions.BURST_INTO_FLAMES, [0x00, 0x00, 0x31, 0x2D], 0x00, 2, 0x00, 0x04, ItemID.VIPER, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x00, EBString!25("Diamond Dog"), Gender.Male, EnemyType.Normal, 0x004C, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 3344, 154, 337738, 6968, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x04, 70, Music.VS_SPINNING_ROBO, 167, 230, 31, 10, 47, 0x02, 0x02, 0x03, 0x03, 0x02, 0x00, 0x00, [BattleActions.BITING_ATTACK, BattleActions.EnemyExtender, BattleActions.PSIShieldBeta, BattleActions.GLORIOUS_LIGHT], BattleActions.NoEffect, [0x00, EnemyID.DIAMOND_DOG_2, 0x21, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.ShieldPower, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Marauder Octobot"), Gender.Neutral, EnemyType.Metal, 0x0007, OverworldSprite.WHIRLING_ROBO, 0x07, 482, 0, 14475, 499, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6E03*/, 0x02, 49, Music.VS_SPINNING_ROBO, 99, 121, 23, 8, 24, 0x00, 0x02, 0x03, 0x01, 0x02, 0x01, 0x01, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.Steal, BattleActions.COIL_AROUND], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Military Octobot"), Gender.Neutral, EnemyType.Metal, 0x0007, OverworldSprite.WHIRLING_ROBO, 0x07, 604, 0, 25607, 637, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6E03*/, 0x15, 61, Music.VS_SPINNING_ROBO, 138, 147, 26, 8, 18, 0x00, 0x02, 0x03, 0x01, 0x02, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.Steal, BattleActions.COIL_AROUND], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Mechanical Octobot"), Gender.Neutral, EnemyType.Metal, 0x0007, OverworldSprite.WHIRLING_ROBO, 0x07, 768, 0, 41738, 744, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6E03*/, 0x0A, 66, Music.VS_SPINNING_ROBO, 147, 176, 43, 8, 24, 0x00, 0x02, 0x03, 0x01, 0x02, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.Steal, BattleActions.ELECTRIC_FIELD], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Ultimate Octobot"), Gender.Neutral, EnemyType.Metal, 0x0007, OverworldSprite.WHIRLING_ROBO, 0x07, 792, 0, 47876, 815, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6E03*/, 0x03, 70, Music.VS_SPINNING_ROBO, 163, 181, 44, 8, 24, 0x00, 0x02, 0x03, 0x01, 0x02, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.ELECTRIC_FIELD, BattleActions.Steal, BattleActions.ELECTRIC_FIELD], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x04, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("Mad Duck"), Gender.Male, EnemyType.Normal, 0x0012, OverworldSprite.MAD_DUCK, 0x07, 51, 0, 41, 12, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 8, Music.VS_RUNAWAY_DOG, 12, 24, 30, 5, 1, 0x00, 0x00, 0x01, 0x01, 0x02, 0x05, 0x00, [BattleActions.DISRUPT_SENSES, BattleActions.FALL_DOWN, BattleActions.SPIN_SOMETHING, BattleActions.PECK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x03, ItemID.FreshEgg, InitialStatus.None, 0x00, 0x00, 0x04, 0x32),
	Enemy(0x01, EBString!25("Dali's Clock"), Gender.Neutral, EnemyType.Normal, 0x005D, OverworldSprite.DALIS_CLOCK, 0x07, 296, 0, 2503, 314, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D71*/, 0x06, 34, Music.VS_STRUTTIN_EVIL_MUSHROOM, 65, 66, 4, 5, 4, 0x01, 0x01, 0x01, 0x03, 0x00, 0x01, 0x00, [BattleActions.FREEZE_IN_TIME, BattleActions.FREEZE_IN_TIME, BattleActions.FREEZE_IN_TIME, BattleActions.TICK_TOCK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x00, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Trillionage Sprout"), Gender.Neutral, EnemyType.Normal, 0x0058, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1048, 240, 30303, 1358, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 29, Music.VS_YOUR_SANCTUARY_BOSS, 54, 88, 16, 21, 71, 0x00, 0x02, 0x01, 0x03, 0x02, 0x00, 0x01, [BattleActions.BASH, BattleActions.EnemyExtender, BattleActions.PSI_FLASH_ALPHA, BattleActions.PSI_PARALYSIS_ALPHA], BattleActions.NoEffect, [0x00, EnemyID.TRILLIONAGE_SPROUT_2, 0x11, 0x2F], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x03, 0x00),
	Enemy(0x01, EBString!25("Musica"), Gender.Neutral, EnemyType.Normal, 0x0008, OverworldSprite.GiftBox, 0x07, 292, 0, 3748, 341, ActionScript.Unknown031, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D83*/, 0x09, 35, Music.VS_STRUTTIN_EVIL_MUSHROOM, 69, 85, 21, 20, 8, 0x01, 0x01, 0x02, 0x01, 0x01, 0x01, 0x01, [BattleActions.ELECTRIC_SHOCK, BattleActions.HAUNTING_MELODY, BattleActions.BASH, BattleActions.ELECTRIC_SHOCK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x00, ItemID.SUDDEN_GUTS_PILL, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Desert Wolf"), Gender.Male, EnemyType.Normal, 0x0067, OverworldSprite.RUNAWAY_DOG, 0x07, 247, 0, 3740, 114, ActionScript.Unknown022, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x07, 30, Music.VS_CRANKY_LADY, 57, 67, 33, 2, 11, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BITING_ATTACK, BattleActions.HOWL, BattleActions.BITING_ATTACK, BattleActions.POISONOUS_BITE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.SUDDEN_GUTS_PILL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Master Belch"), Gender.Male, EnemyType.Normal, 0x0062, OverworldSprite.MASTER_BELCH, 0x07, 650, 0, 12509, 664, ActionScript.Unknown029, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x06, 27, Music.VS_MASTER_BELCH, 50, 88, 16, 20, 61, 0x01, 0x01, 0x01, 0x02, 0x00, 0x00, 0x02, [BattleActions.NAUSEATING_BURP, BattleActions.NAUSEATING_BURP, BattleActions.CALL_FOR_HELP, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, EnemyID.SLIMY_LIL_PILE, EnemyID.MasterBelch3], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x03, 0x00),
	Enemy(0x01, EBString!25("Big Pile of Puke"), Gender.Neutral, EnemyType.Normal, 0x0062, OverworldSprite.MASTER_BELCH, 0x07, 631, 0, 19659, 728, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x05, 57, Music.VS_MASTER_BELCH, 120, 158, 16, 26, 32, 0x01, 0x02, 0x01, 0x01, 0x02, 0x01, 0x01, [BattleActions.BASH, BattleActions.STINKY_BREATH, BattleActions.STICKY_MUCUS, BattleActions.NAUSEATING_BURP], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x01, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Master Barf"), Gender.Male, EnemyType.Normal, 0x0062, OverworldSprite.MASTER_BELCH, 0x07, 1319, 0, 125056, 3536, ActionScript.Unknown029, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x13, 60, Music.VS_MASTER_BELCH, 136, 177, 24, 39, 64, 0x01, 0x02, 0x01, 0x02, 0x01, 0x00, 0x00, [BattleActions.NAUSEATING_BURP, BattleActions.CONTINUOUS_ATTACK, BattleActions.STINKY_BREATH, BattleActions.EnemyExtender], BattleActions.MASTER_BARF_DEFEAT, [0x00, 0x00, 0x00, EnemyID.MASTER_BARF_2], 0x00, 3, 0x01, 0x07, ItemID.CASEY_BAT, InitialStatus.None, 0x01, 0x00, 0x03, 0x00),
	Enemy(0x01, EBString!25("Kiss of Death"), Gender.Female, EnemyType.Normal, 0x0015, OverworldSprite.THUNDER_MITE, 0x07, 333, 0, 10354, 528, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 46, Music.VS_CRANKY_LADY, 91, 100, 19, 7, 16, 0x01, 0x01, 0x02, 0x01, 0x00, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.KISS_OF_DEATH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.JAR_OF_DELISAUCE, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("French Kiss of Death"), Gender.Female, EnemyType.Normal, 0x0015, OverworldSprite.FRENCH_KISS_OF_DEATH, 0x07, 588, 0, 19210, 879, ActionScript.Unknown027, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x12, 70, Music.VS_CRANKY_LADY, 160, 160, 30, 7, 16, 0x01, 0x01, 0x02, 0x01, 0x00, 0x01, 0x00, [BattleActions.KISS_OF_DEATH, BattleActions.KISS_OF_DEATH, BattleActions.KISS_OF_DEATH, BattleActions.KISS_OF_DEATH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.HORN_OF_LIFE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Foppy"), Gender.Neutral, EnemyType.Normal, 0x0011, OverworldSprite.FOBBY, 0x07, 120, 10, 1311, 93, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 16, Music.VS_STRUTTIN_EVIL_MUSHROOM, 29, 9, 1, 5, 3, 0x00, 0x00, 0x01, 0x00, 0x03, 0x02, 0x01, [BattleActions.BASH, BattleActions.BE_ABSENTMINDED, BattleActions.PSI_BRAINSHOCK_ALPHA, BattleActions.PSI_MAGNET_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x31, 0x2D], 0x00, 2, 0x00, 0x01, ItemID.PSI_CARAMEL, InitialStatus.CantConcentrate, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Fobby"), Gender.Neutral, EnemyType.Normal, 0x0011, OverworldSprite.FOBBY, 0x07, 240, 19, 18348, 620, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x05, 48, Music.VS_STRUTTIN_EVIL_MUSHROOM, 98, 84, 5, 5, 3, 0x00, 0x00, 0x01, 0x00, 0x03, 0x04, 0x00, [BattleActions.BASH, BattleActions.HP_SUCKER, BattleActions.PSI_BRAINSHOCK_ALPHA, BattleActions.PSI_MAGNET_ALPHA], BattleActions.NoEffect, [0x00, 0x87, 0x31, 0x2D], 0x00, 3, 0x00, 0x02, ItemID.PSI_CARAMEL, InitialStatus.CantConcentrate, 0x00, 0x00, 0x04, 0x32),
	Enemy(0x01, EBString!25("Zap Eel"), Gender.Neutral, EnemyType.Normal, 0x0044, OverworldSprite.ZAP_EEL, 0x07, 370, 0, 12170, 611, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x04, 48, Music.VS_MASTER_BELCH, 97, 93, 29, 5, 8, 0x00, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, [BattleActions.ELECTRIC_SHOCK, BattleActions.ELECTRIC_SHOCK, BattleActions.ELECTRIC_SHOCK, BattleActions.ELECTRIC_SHOCK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x04, 0x32),
	Enemy(0x01, EBString!25("Tangoo"), Gender.Male, EnemyType.Normal, 0x0052, OverworldSprite.THUNDER_MITE, 0x07, 371, 5, 14718, 572, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x05, 48, Music.VS_STRUTTIN_EVIL_MUSHROOM, 96, 99, 19, 20, 16, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, [BattleActions.BASH, BattleActions.BREATHE_THROUGH_FLUTE, BattleActions.PLAY_POISON_FLUTE, BattleActions.BREATHE_THROUGH_FLUTE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x04, ItemID.SNAKE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Boogey Tent"), Gender.Neutral, EnemyType.Normal, 0x0056, OverworldSprite.None, 0x07, 579, 56, 5500, 407, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_TRAPPED_YOU*/, null/*TEXT_BLOCK_EF6D71*/, 0x05, 25, Music.VS_CAVE_BOY, 43, 69, 10, 16, 32, 0x00, 0x03, 0x01, 0x03, 0x02, 0x00, 0x00, [BattleActions.BASH, BattleActions.DEFENSE_SPRAY, BattleActions.SPEW_FLY_HONEY, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0xA1, 0x00, EnemyID.BOOGEY_TENT_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Squatter Demon"), Gender.Neutral, EnemyType.Normal, 0x0056, OverworldSprite.WHIRLING_ROBO, 0x07, 774, 60, 48311, 897, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x1E, 69, Music.VS_CAVE_BOY, 158, 192, 45, 25, 32, 0x00, 0x03, 0x01, 0x03, 0x02, 0x01, 0x01, [BattleActions.POISONOUS_BITE, BattleActions.DIAMONDIZING_BITE, BattleActions.SHIELD_KILLER, BattleActions.PSI_HYPNOSIS_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x84, 0x2B], 0x00, 3, 0x00, 0x01, ItemID.HORN_OF_LIFE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Crested Booka"), Gender.Male, EnemyType.Normal, 0x000C, OverworldSprite.CRESTED_BOOKA, 0x07, 265, 0, 3011, 130, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D71*/, 0x09, 28, Music.VS_STRUTTIN_EVIL_MUSHROOM, 53, 73, 17, 24, 37, 0x03, 0x01, 0x01, 0x02, 0x00, 0x04, 0x03, [BattleActions.GRIN, BattleActions.BASH, BattleActions.WAR_CRY, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.PicnicLunch, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Great Crested Booka"), Gender.Male, EnemyType.Normal, 0x000C, OverworldSprite.CRESTED_BOOKA, 0x07, 452, 0, 16365, 604, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D71*/, 0x03, 49, Music.VS_STRUTTIN_EVIL_MUSHROOM, 100, 110, 20, 28, 40, 0x03, 0x01, 0x01, 0x02, 0x00, 0x04, 0x01, [BattleActions.BASH, BattleActions.GRIN, BattleActions.WAR_CRY, BattleActions.CHARGE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.BEEF_JERKY, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Lesser Mook"), Gender.Neutral, EnemyType.Normal, 0x003D, OverworldSprite.WHIRLING_ROBO, 0x07, 401, 190, 7640, 467, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x0B, 39, Music.VS_SPINNING_ROBO, 76, 102, 17, 7, 16, 0x00, 0x03, 0x01, 0x02, 0x00, 0x01, 0x01, [BattleActions.PSI_FREEZE_ALPHA, BattleActions.PSI_FREEZE_BETA, BattleActions.PSI_HYPNOSIS_ALPHA, BattleActions.EERIE_GLARE], BattleActions.NoEffect, [0x09, 0x0A, 0x2B, 0x00], 0x00, 2, 0x00, 0x01, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Mook Senior"), Gender.Neutral, EnemyType.Normal, 0x003D, OverworldSprite.WHIRLING_ROBO, 0x07, 501, 700, 21056, 715, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x0D, 54, Music.VS_SPINNING_ROBO, 108, 122, 25, 7, 16, 0x00, 0x03, 0x01, 0x02, 0x00, 0x01, 0x01, [BattleActions.PSI_FREEZE_BETA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSILifeupAlpha, BattleActions.EERIE_GLARE], BattleActions.NoEffect, [0x0A, 0x05, 0x17, 0x00], 0x00, 2, 0x00, 0x02, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Smelly Ghost"), Gender.Neutral, EnemyType.Normal, 0x0035, OverworldSprite.STINKY_GHOST, 0x07, 194, 50, 606, 71, ActionScript.Unknown024, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6DB8*/, 0x02, 21, Music.VS_STRUTTIN_EVIL_MUSHROOM, 35, 89, 10, 2, 9, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.GRIN, BattleActions.PSILifeupAlpha, BattleActions.VENT_ODOR], BattleActions.NoEffect, [0x00, 0x00, 0x17, 0x00], 0x00, 2, 0x00, 0x03, ItemID.BROKEN_IRON, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Stinky Ghost"), Gender.Neutral, EnemyType.Normal, 0x0035, OverworldSprite.STINKY_GHOST, 0x07, 444, 0, 13179, 541, ActionScript.Unknown024, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6DB8*/, 0x0D, 46, Music.VS_STRUTTIN_EVIL_MUSHROOM, 90, 179, 18, 4, 7, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x01, [BattleActions.BASH, BattleActions.GRIN, BattleActions.POSSESS, BattleActions.VENT_ODOR], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.LargePizza, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Everdred"), Gender.Male, EnemyType.Normal, 0x0020, OverworldSprite.EVERDRED, 0x07, 182, 0, 986, 171, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x01, 15, Music.VS_STRUTTIN_EVIL_MUSHROOM, 25, 35, 6, 10, 40, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.KNIT_BROW, BattleActions.Steal, BattleActions.BASH, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.EVERDRED_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Attack Slug"), Gender.Neutral, EnemyType.Insect, 0x002F, OverworldSprite.BLACK_ANTOID, 0x07, 30, 6, 27, 6, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x02, 5, Music.VS_CRANKY_LADY, 9, 2, 1, 0, 3, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x01, [BattleActions.BASH, BattleActions.BASH, BattleActions.EDGE_CLOSER, BattleActions.PSI_HYPNOSIS_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x2B], 0x00, 1, 0x00, 0x00, ItemID.BOMB, InitialStatus.CantConcentrate, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Pit Bull Slug"), Gender.Neutral, EnemyType.Insect, 0x002F, OverworldSprite.BLACK_ANTOID, 0x07, 217, 11, 9994, 543, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x03, 39, Music.VS_CRANKY_LADY, 79, 77, 2, 5, 7, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x01, [BattleActions.BASH, BattleActions.BASH, BattleActions.VACUUM_ATTACK, BattleActions.PSI_HYPNOSIS_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x2B], 0x00, 2, 0x00, 0x05, ItemID.SALT_PACKET, InitialStatus.CantConcentrate, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Rowdy Mouse"), Gender.Male, EnemyType.Normal, 0x0014, OverworldSprite.ROWDY_MOUSE, 0x07, 36, 0, 34, 9, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 6, Music.VS_RUNAWAY_DOG, 7, 20, 5, 225, 2, 0x00, 0x00, 0x01, 0x01, 0x02, 0x03, 0x01, [BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x02, ItemID.BREAD_ROLL, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Deadly Mouse"), Gender.Male, EnemyType.Normal, 0x0014, OverworldSprite.ROWDY_MOUSE, 0x07, 416, 0, 9225, 406, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x17, 38, Music.VS_CAVE_BOY, 63, 98, 18, 225, 13, 0x00, 0x01, 0x01, 0x01, 0x02, 0x03, 0x00, [BattleActions.POISONOUS_BITE, BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.RUST_PROMOTER_DX, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("Care Free Bomb"), Gender.Neutral, EnemyType.Metal, 0x0006, OverworldSprite.FRENCH_KISS_OF_DEATH, 0x07, 504, 0, 14941, 641, ActionScript.Unknown027, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6DD8*/, 0x09, 60, Music.VS_CRANKY_LADY, 135, 215, 31, 15, 8, 0x02, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, [BattleActions.BOMB, BattleActions.BOMB, BattleActions.BOMB, BattleActions.SUPER_BOMB], BattleActions.NoEffect, [0x93, 0x93, 0x93, 0x94], 0x00, 2, 0x00, 0x02, ItemID.SUPER_BOMB, InitialStatus.None, 0x00, 0x00, 0x04, 0x32),
	Enemy(0x00, EBString!25("Electro Specter"), Gender.Male, EnemyType.Normal, 0x0039, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 3092, 80, 261637, 6564, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x02, 67, Music.VS_KRAKEN, 148, 203, 29, 47, 56, 0x01, 0x01, 0x03, 0x03, 0x02, 0x00, 0x01, [BattleActions.ELECTRIC_SHOCK, BattleActions.EnemyExtender, BattleActions.ELECTRIC_SHOCK, BattleActions.HUNGRY_HP_SUCKER], BattleActions.NoEffect, [0x00, EnemyID.ELECTRO_SPECTER_2, 0x00, 0x88], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.PSIShieldPower, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Handsome Tom"), Gender.Male, EnemyType.Normal, 0x001C, OverworldSprite.HANDSOME_TOM, 0x07, 133, 16, 520, 45, ActionScript.Unknown024, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D83*/, 0x03, 16, Music.VS_CAVE_BOY, 27, 25, 11, 5, 8, 0x00, 0x02, 0x00, 0x01, 0x03, 0x02, 0x01, [BattleActions.BASH, BattleActions.REEL, BattleActions.PSI_HYPNOSIS_ALPHA, BattleActions.PSI_BRAINSHOCK_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x2B, 0x31], 0x00, 2, 0x00, 0x03, ItemID.TIN_OF_COCOA, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Smilin' Sam"), Gender.Male, EnemyType.Normal, 0x001C, OverworldSprite.HANDSOME_TOM, 0x07, 161, 55, 712, 48, ActionScript.Unknown024, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D83*/, 0x01, 20, Music.VS_CAVE_BOY, 34, 44, 17, 16, 16, 0x00, 0x02, 0x00, 0x01, 0x01, 0x01, 0x00, [BattleActions.BASH, BattleActions.REEL, BattleActions.PSI_DEFENSE_DOWN_ALPHA, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x00, 0x00, 0x29, 0x17], 0x00, 2, 0x00, 0x02, ItemID.REFRESHING_HERB, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Manly Fish"), Gender.Male, EnemyType.Normal, 0x001F, OverworldSprite.MANLY_FISH, 0x07, 500, 0, 15826, 624, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 42, Music.VS_MASTER_BELCH, 83, 114, 22, 9, 20, 0x03, 0x01, 0x01, 0x01, 0x02, 0x01, 0x01, [BattleActions.SPEAR_JAB, BattleActions.SPEAR_JAB, BattleActions.SPEAR_JAB, BattleActions.SPEAR_JAB], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.BEEF_JERKY, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Manly Fish's Brother"), Gender.Male, EnemyType.Normal, 0x001F, OverworldSprite.MANLY_FISH, 0x07, 526, 210, 15970, 686, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BLOCK_EF6D71*/, 0x0E, 56, Music.VS_YOUR_SANCTUARY_BOSS, 114, 123, 24, 11, 24, 0x01, 0x03, 0x02, 0x02, 0x02, 0x01, 0x00, [BattleActions.PSI_HYPNOSIS_ALPHA, BattleActions.PSI_PARALYSIS_ALPHA, BattleActions.PSI_FREEZE_BETA, BattleActions.PSIHealingOmega], BattleActions.NoEffect, [0x2B, 0x2F, 0x0A, 0x1E], 0x00, 3, 0x00, 0x00, ItemID.HORN_OF_LIFE, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Runaway Dog"), Gender.Male, EnemyType.Normal, 0x0002, OverworldSprite.RUNAWAY_DOG, 0x07, 21, 0, 4, 3, ActionScript.Unknown022, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 2, Music.VS_RUNAWAY_DOG, 4, 5, 26, 0, 1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, [BattleActions.HOWL, BattleActions.BITING_ATTACK, BattleActions.HOWL, BattleActions.BITING_ATTACK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x02, ItemID.BREAD_ROLL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Trick or Trick Kid"), Gender.Male, EnemyType.Normal, 0x001B, OverworldSprite.TRICK_OR_TRICK_KID, 0x07, 142, 0, 570, 47, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 18, Music.VS_CRANKY_LADY, 30, 37, 7, 12, 12, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, [BattleActions.SPIT_SEEDS, BattleActions.SPIT_SEEDS, BattleActions.SPIT_SEEDS, BattleActions.GRIN], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.BOMB, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Cave Boy"), Gender.Male, EnemyType.Normal, 0x0065, OverworldSprite.CAVE_BOY, 0x07, 314, 0, 618, 17, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x07, 11, Music.VS_CAVE_BOY, 21, 33, 79, 0, 80, 0x00, 0x03, 0x01, 0x03, 0x02, 0x00, 0x01, [BattleActions.SHOUT, BattleActions.SWING_CLUB, BattleActions.SHOUT, BattleActions.SWING_CLUB], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.DOUBLE_BURGER, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Abstract Art"), Gender.Neutral, EnemyType.Normal, 0x000F, OverworldSprite.ABSTRACT_ART, 0x07, 301, 60, 4361, 255, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D83*/, 0x09, 35, Music.VS_STRUTTIN_EVIL_MUSHROOM, 67, 79, 19, 7, 7, 0x01, 0x01, 0x01, 0x00, 0x02, 0x02, 0x01, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.PSI_HYPNOSIS_ALPHA], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x2B], 0x00, 1, 0x00, 0x02, ItemID.REFRESHING_HERB, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Shattered Man"), Gender.Male, EnemyType.Normal, 0x0038, OverworldSprite.SHATTERED_MAN, 0x07, 694, 0, 44690, 2630, ActionScript.Unknown024, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x12, 51, Music.VS_YOUR_SANCTUARY_BOSS, 104, 138, 18, 25, 38, 0x02, 0x01, 0x01, 0x00, 0x01, 0x00, 0x01, [BattleActions.BASH, BattleActions.LUNGE_FORWARD, BattleActions.HUG, BattleActions.REACH_WITH_ICY_HAND], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x06, ItemID.MUMMY_WRAP, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Fierce Shattered Man"), Gender.Male, EnemyType.Normal, 0x0038, OverworldSprite.SHATTERED_MAN, 0x07, 516, 0, 17423, 577, ActionScript.Unknown024, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D71*/, 0x02, 50, Music.VS_CAVE_BOY, 101, 116, 12, 5, 4, 0x02, 0x01, 0x01, 0x00, 0x01, 0x02, 0x01, [BattleActions.BASH, BattleActions.CONTINUOUS_ATTACK, BattleActions.HUG, BattleActions.REACH_WITH_ICY_HAND], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x06, ItemID.MUMMY_WRAP, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Ego Orb"), Gender.Neutral, EnemyType.Normal, 0x0066, OverworldSprite.EGO_ORB, 0x07, 592, 0, 24180, 836, ActionScript.Unknown030, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D83*/, 0x07, 58, Music.VS_CAVE_BOY, 125, 140, 17, 1, 8, 0x02, 0x00, 0x02, 0x03, 0x02, 0x01, 0x00, [BattleActions.TEAR_INTO, BattleActions.LUNGE_FORWARD, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x03, ItemID.SKIP_SANDWICH_DX, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Thunder and Storm"), Gender.Male, EnemyType.Normal, 0x0027, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 2065, 70, 129026, 4736, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 56, Music.VS_KRAKEN, 111, 178, 21, 35, 55, 0x01, 0x01, 0x00, 0x03, 0x01, 0x00, 0x02, [BattleActions.CRASHING_BOOM_BANG, BattleActions.TAKE_DEEP_BREATH, BattleActions.INTERTWINE, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.THUNDER_AND_STORM_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Yes Man Junior"), Gender.Male, EnemyType.Normal, 0x0040, OverworldSprite.SkatePunk, 0x07, 33, 0, 13, 18, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x03, 4, Music.VS_STRUTTIN_EVIL_MUSHROOM, 8, 9, 4, 0, 14, 0x01, 0x01, 0x01, 0x01, 0x01, 0x03, 0x00, [BattleActions.SWING_HULA_HOOP, BattleActions.SWING_HULA_HOOP, BattleActions.BASH, BattleActions.LAUGH_HYSTERICALLY], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x02, ItemID.BagOfFries, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x00, EBString!25("Frankystein Mark II"), Gender.Neutral, EnemyType.Metal, 0x0061, OverworldSprite.None, 0x07, 91, 0, 76, 31, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6DF0*/, 0x06, 7, Music.VS_CAVE_BOY, 15, 18, 4, 0, 40, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00, 0x02, [BattleActions.GENERATE_STEAM, BattleActions.PUNCH, BattleActions.GENERATE_STEAM, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.FRANKYSTEIN_MARK_II_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Frank"), Gender.Male, EnemyType.Normal, 0x0025, OverworldSprite.FRANK, 0x07, 63, 0, 50, 48, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 6, Music.VS_NEW_AGE_RETRO_HIPPIE, 12, 17, 7, 5, 32, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, [BattleActions.BRANDISH_KNIFE, BattleActions.COME_OUT_SWINGING, BattleActions.SAY_SOMETHING_NASTY, BattleActions.BRANDISH_KNIFE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Cute Li'l UFO"), Gender.Neutral, EnemyType.Metal, 0x0031, OverworldSprite.LIL_UFO, 0x07, 162, 25, 1519, 110, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DF0*/, 0x02, 27, Music.VS_CRANKY_LADY, 49, 32, 58, 1, 70, 0x02, 0x02, 0x02, 0x01, 0x03, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x17], 0x00, 2, 0x00, 0x02, ItemID.None, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Beautiful UFO"), Gender.Neutral, EnemyType.Metal, 0x0031, OverworldSprite.LIL_UFO, 0x07, 339, 15, 8257, 426, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DF0*/, 0x13, 44, Music.VS_SPINNING_ROBO, 86, 87, 59, 1, 71, 0x02, 0x02, 0x02, 0x01, 0x03, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x17], 0x00, 2, 0x00, 0x02, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x04, 0x32),
	Enemy(0x01, EBString!25("Pogo Punk"), Gender.Male, EnemyType.Normal, 0x0060, OverworldSprite.SkatePunk, 0x07, 35, 0, 15, 18, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x06, 4, Music.VS_CRANKY_LADY, 8, 10, 3, 0, 15, 0x01, 0x01, 0x01, 0x01, 0x01, 0x04, 0x00, [BattleActions.CHARGE, BattleActions.CHARGE, BattleActions.BASH, BattleActions.FALL_DOWN], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x07, ItemID.Hamburger, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("Tough Guy"), Gender.Male, EnemyType.Normal, 0x0026, OverworldSprite.TOUGH_GUY, 0x07, 342, 0, 9310, 525, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78AB*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 37, Music.VS_CAVE_BOY, 72, 92, 18, 20, 16, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.COME_OUT_SWINGING, BattleActions.COME_OUT_SWINGING, BattleActions.COME_OUT_SWINGING, BattleActions.LOSE_TEMPER], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x05, ItemID.Chick, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Mad Taxi"), Gender.Neutral, EnemyType.Metal, 0x0055, OverworldSprite.MAD_TAXI, 0x07, 253, 0, 2336, 216, ActionScript.Unknown030, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6E03*/, 0x05, 28, Music.VS_STRUTTIN_EVIL_MUSHROOM, 53, 68, 38, 5, 8, 0x02, 0x02, 0x02, 0x00, 0x02, 0x01, 0x00, [BattleActions.REV_AND_ACCELERATE, BattleActions.REV_AND_ACCELERATE, BattleActions.SPEW_EXHAUST, BattleActions.SPEW_EXHAUST], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.XTERMINATOR_SPRAY, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Evil Mani-Mani"), Gender.Neutral, EnemyType.Normal, 0x004F, OverworldSprite.EVIL_MANI_MANI, 0x07, 860, 88, 28139, 1852, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D83*/, 0x03, 45, Music.VS_STARMAN_JR, 86, 145, 15, 1, 80, 0x01, 0x01, 0x01, 0x03, 0x01, 0x00, 0x03, [BattleActions.PSI_MAGNET_ALPHA, BattleActions.PSI_PARALYSIS_ALPHA, BattleActions.BASH, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x2D, 0x2F, 0x00, EnemyID.EVIL_MANI_MANI_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Mr. Molecule"), Gender.Neutral, EnemyType.Normal, 0x002D, OverworldSprite.FRENCH_KISS_OF_DEATH, 0x07, 280, 21, 8708, 659, ActionScript.Unknown027, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D96*/, 0x02, 56, Music.VS_STRUTTIN_EVIL_MUSHROOM, 118, 97, 18, 5, 4, 0x00, 0x00, 0x02, 0x00, 0x03, 0x02, 0x00, [BattleActions.PSI_THUNDER_ALPHA, BattleActions.PSI_FLASH_ALPHA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FREEZE_ALPHA], BattleActions.NoEffect, [0x0D, 0x11, 0x05, 0x09], 0x00, 2, 0x00, 0x01, ItemID.MAGIC_TART, InitialStatus.CantConcentrate, 0x00, 0x01, 0x06, 0x32),
	Enemy(0x01, EBString!25("Worthless Protoplasm"), Gender.Neutral, EnemyType.Normal, 0x003C, OverworldSprite.GiftBox, 0x07, 38, 0, 17, 11, ActionScript.Unknown031, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x03, 7, Music.VS_RUNAWAY_DOG, 11, 21, 27, 0, 1, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x00, [BattleActions.SIZE_UP_SITUATION, BattleActions.BASH, BattleActions.CALL_FOR_HELP, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, EnemyID.WORTHLESS_PROTOPLASM, 0x00], 0x00, 0, 0x00, 0x05, ItemID.Cookie, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Sentry Robot"), Gender.Neutral, EnemyType.Metal, 0x0036, OverworldSprite.SENTRY_ROBOT, 0x07, 372, 0, 5034, 392, ActionScript.Unknown030, null/*TEXT_BLOCK_EF7866*/, null/*TEXT_BLOCK_EF6DF0*/, 0x02, 39, Music.VS_CRANKY_LADY, 77, 105, 17, 10, 4, 0x02, 0x02, 0x03, 0x01, 0x01, 0x01, 0x00, [BattleActions.FIRE_BEAM, BattleActions.TICK_TOCK, BattleActions.CALL_FOR_HELP, BattleActions.BOTTLE_ROCKET], BattleActions.NoEffect, [0x00, 0x00, EnemyID.SENTRY_ROBOT, 0x90], 0x00, 3, 0x01, 0x01, ItemID.BIG_BOTTLE_ROCKET, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x00, EBString!25("Heavily Armed Pokey"), Gender.Male, EnemyType.Metal, 0x002A, OverworldSprite.Pokey, 0x07, 1746, 999, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x00, 72, Music.None, 150, 274, 51, 45, 55, 0x02, 0x02, 0x02, 0x03, 0x01, 0x00, 0x00, [BattleActions.BASH, BattleActions.PSI_FIRE_BETA, BattleActions.BASH, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x06, 0x00, EnemyID.HeavilyArmedPokey2], 0x00, 3, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Psychic Psycho"), Gender.Male, EnemyType.Normal, 0x001D, OverworldSprite.ROBO_PUMP, 0x07, 591, 252, 30094, 682, ActionScript.Unknown027, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x01, 58, Music.VS_CAVE_BOY, 124, 144, 30, 1, 24, 0x03, 0x01, 0x01, 0x02, 0x03, 0x01, 0x01, [BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_BETA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_BETA], BattleActions.NoEffect, [0x05, 0x06, 0x05, 0x06], 0x00, 3, 0x00, 0x02, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Major Psychic Psycho"), Gender.Male, EnemyType.Normal, 0x001D, OverworldSprite.ROBO_PUMP, 0x07, 618, 574, 39247, 862, ActionScript.Unknown027, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x12, 65, Music.VS_CAVE_BOY, 145, 152, 31, 1, 24, 0x03, 0x02, 0x02, 0x03, 0x01, 0x01, 0x03, [BattleActions.PSI_FIRE_BETA, BattleActions.PSIPSIShieldOmega, BattleActions.PSI_PARALYSIS_ALPHA, BattleActions.PSI_FIRE_GAMMA], BattleActions.NoEffect, [0x06, 0x26, 0x2F, 0x07], 0x00, 3, 0x00, 0x00, ItemID.STAR_PENDANT, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Mole Playing Rough"), Gender.Male, EnemyType.Normal, 0x004E, OverworldSprite.MOLE_PLAYING_ROUGH, 0x07, 103, 0, 456, 36, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 14, Music.VS_RUNAWAY_DOG, 22, 28, 9, 2, 8, 0x01, 0x01, 0x00, 0x00, 0x02, 0x03, 0x01, [BattleActions.SCRATCH, BattleActions.SIZE_UP_SITUATION, BattleActions.BE_ABSENTMINDED, BattleActions.CLAW], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.CROISSANT, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x01, EBString!25("Gruff Goat"), Gender.Male, EnemyType.Normal, 0x005E, OverworldSprite.GRUFF_GOAT, 0x07, 45, 0, 20, 9, ActionScript.Unknown022, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x06, 7, Music.VS_CRANKY_LADY, 8, 23, 12, 0, 16, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x00, [BattleActions.TRAMPLE, BattleActions.TRAMPLE, BattleActions.TRAMPLE, BattleActions.TEAR_INTO], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x04, ItemID.SALT_PACKET, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Clumsy Robot"), Gender.Neutral, EnemyType.Metal, 0x0047, OverworldSprite.CAPSULE, 0x07, 962, 0, 32378, 2081, ActionScript.Unknown027, null/*TEXT_BLOCK_EF7866*/, null/*TEXT_BLOCK_EF6D83*/, 0x04, 46, Music.VS_STARMAN_JR, 88, 137, 83, 30, 49, 0x02, 0x02, 0x02, 0x01, 0x02, 0x05, 0x03, [BattleActions.LOSE_GEAR_AND_BOLTS, BattleActions.REAPPLY_BANDAGE, BattleActions.FIRE_MISSILE_DIZZILY, BattleActions.EnemyExtender], BattleActions.RUNAWAY_FIVE_EVENT, [0x00, 0x00, 0x00, EnemyID.CLUMSY_ROBOT_2], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.PSIShield, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Soul Consuming Flame"), Gender.Neutral, EnemyType.Normal, 0x0018, OverworldSprite.ROBO_PUMP, 0x07, 602, 0, 37618, 768, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D83*/, 0x01, 59, Music.VS_YOUR_SANCTUARY_BOSS, 131, 262, 30, 14, 8, 0x03, 0x00, 0x01, 0x01, 0x02, 0x01, 0x00, [BattleActions.EDGE_CLOSER, BattleActions.FIRE_BREATH, BattleActions.SPEW_FIREBALL, BattleActions.FIRE_SPRAY], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x01, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Demonic Petunia"), Gender.Female, EnemyType.Normal, 0x0017, OverworldSprite.DEMONIC_PETUNIA, 0x07, 478, 0, 15171, 724, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 50, Music.VS_CAVE_BOY, 102, 111, 26, 5, 9, 0x00, 0x03, 0x01, 0x03, 0x02, 0x01, 0x01, [BattleActions.EDGE_CLOSER, BattleActions.EXTINGUISHING_BLAST, BattleActions.EDGE_CLOSER, BattleActions.SCATTER_POLLEN], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.SPICY_JERKY, InitialStatus.None, 0x00, 0x01, 0x02, 0x00),
	Enemy(0x01, EBString!25("Ranboob"), Gender.Male, EnemyType.Normal, 0x0009, OverworldSprite.RANBOOB, 0x07, 232, 42, 2486, 158, ActionScript.Unknown021, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 24, Music.VS_CRANKY_LADY, 41, 63, 20, 1, 9, 0x00, 0x02, 0x01, 0x01, 0x01, 0x01, 0x03, [BattleActions.BASH, BattleActions.PSIShieldAlpha, BattleActions.BASH, BattleActions.WONDERFUL_POWDER], BattleActions.NoEffect, [0x00, 0x1F, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.PicnicLunch, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Li'l UFO"), Gender.Neutral, EnemyType.Metal, 0x002B, OverworldSprite.LIL_UFO, 0x06, 82, 0, 223, 14, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DF0*/, 0x02, 12, Music.VS_CRANKY_LADY, 18, 17, 53, 13, 8, 0x00, 0x01, 0x02, 0x01, 0x03, 0x01, 0x01, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.NIGHT_TIME_STUFFINESS_BEAM, BattleActions.FIRE_BEAM], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.SKIP_SANDWICH, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("High-class UFO"), Gender.Neutral, EnemyType.Metal, 0x002B, OverworldSprite.LIL_UFO, 0x07, 433, 72, 12385, 456, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DF0*/, 0x0F, 47, Music.VS_SPINNING_ROBO, 93, 103, 60, 15, 24, 0x00, 0x01, 0x02, 0x01, 0x03, 0x01, 0x01, [BattleActions.FIRE_BEAM, BattleActions.FIRE_BEAM, BattleActions.DISRUPT_SENSES, BattleActions.PSIPSIShieldAlpha], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x23], 0x00, 2, 0x00, 0x02, ItemID.SKIP_SANDWICH_DX, InitialStatus.Shield, 0x00, 0x00, 0x04, 0x32),
	Enemy(0x01, EBString!25("Noose Man"), Gender.Neutral, EnemyType.Normal, 0x0051, OverworldSprite.NOOSE_MAN, 0x07, 231, 0, 1990, 220, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 26, Music.VS_STRUTTIN_EVIL_MUSHROOM, 47, 52, 18, 5, 4, 0x00, 0x02, 0x01, 0x01, 0x03, 0x01, 0x01, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.BINDING_ATTACK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x04, ItemID.CARTON_OF_CREAM, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Robo-pump"), Gender.Neutral, EnemyType.Metal, 0x003E, OverworldSprite.ROBO_PUMP, 0x07, 431, 0, 4797, 349, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DD8*/, 0x03, 36, Music.VS_STRUTTIN_EVIL_MUSHROOM, 70, 113, 19, 5, 4, 0x02, 0x02, 0x02, 0x01, 0x02, 0x01, 0x02, [BattleActions.WHISPER_3, BattleActions.MURMUR_2, BattleActions.MUTTER_1, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.ROBO_PUMP_2], 0x00, 2, 0x00, 0x01, ItemID.SUPER_BOMB, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Plain Crocodile"), Gender.Neutral, EnemyType.Normal, 0x0054, OverworldSprite.PLAIN_CROCODILE, 0x07, 234, 0, 1928, 62, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 24, Music.VS_CRANKY_LADY, 40, 55, 10, 1, 5, 0x02, 0x00, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.BASH, BattleActions.EDGE_CLOSER, BattleActions.BITE, BattleActions.SWING_TAIL], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x00, ItemID.METEORNIUM, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Strong Crocodile"), Gender.Neutral, EnemyType.Normal, 0x0054, OverworldSprite.PLAIN_CROCODILE, 0x07, 417, 0, 10122, 495, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x15, 43, Music.VS_CRANKY_LADY, 85, 131, 17, 5, 6, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.BASH, BattleActions.EDGE_CLOSER, BattleActions.BITE, BattleActions.SWING_TAIL], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.SUPER_BOMB, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Hard Crocodile"), Gender.Neutral, EnemyType.Normal, 0x0054, OverworldSprite.PLAIN_CROCODILE, 0x07, 522, 0, 19484, 692, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x03, 55, Music.VS_MASTER_BELCH, 110, 128, 23, 10, 4, 0x00, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BITE, BattleActions.SWING_TAIL], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.SUPER_PLUSH_BEAR, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("No Good Fly"), Gender.Neutral, EnemyType.Insect, 0x0059, OverworldSprite.NO_GOOD_FLY, 0x07, 100, 0, 415, 26, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x15, 15, Music.VS_STRUTTIN_EVIL_MUSHROOM, 23, 13, 10, 3, 0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x01, 0x01, [BattleActions.BASH, BattleActions.BASH, BattleActions.SAY_SOMETHING_NASTY, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x02, ItemID.BoiledEgg, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Mostly Bad Fly"), Gender.Neutral, EnemyType.Insect, 0x0059, OverworldSprite.NO_GOOD_FLY, 0x07, 141, 0, 1116, 84, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x02, 19, Music.VS_MASTER_BARF, 32, 16, 15, 4, 0, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x01, [BattleActions.BASH, BattleActions.BASH, BattleActions.SAY_SOMETHING_NASTY, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.Pizza, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Spiteful Crow"), Gender.Male, EnemyType.Normal, 0x0010, OverworldSprite.SPITEFUL_CROW, 0x07, 24, 0, 3, 5, ActionScript.Unknown025, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 27, Music.VS_RUNAWAY_DOG, 5, 3, 77, 0, 1, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, [BattleActions.PECK, BattleActions.PECK, BattleActions.GRIN, BattleActions.Steal], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x07, ItemID.Cookie, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("my pet"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 5, Music.None, 4, 99, 10, 40, 24, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BITING_ATTACK, BattleActions.LUNGE_FORWARD, BattleActions.CHARGE, BattleActions.BARK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Pokey"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 5, Music.None, 1, 99, 5, 1, 1, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BePokey, BattleActions.BePokey, BattleActions.BePokey, BattleActions.BePokey], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Picky"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 5, Music.None, 3, 99, 25, 10, 1, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.CHANT_SPELL], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Tony"), Gender.Neutral, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 5, Music.None, 4, 99, 12, 20, 8, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.NoEffectTony], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Bubble Monkey"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 5, Music.None, 7, 99, 20, 5, 30, 0x01, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.SCRATCH_HEAD], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Dungeon Man"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 5, Music.None, 255, 99, 1, 30, 1, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.HUG], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Flying Man"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 300, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6C84*/, 0x00, 99, Music.None, 95, 92, 100, 50, 24, 0x01, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, [BattleActions.PUNCH, BattleActions.PUNCH, BattleActions.CHARGE, BattleActions.CHARGE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Teddy Bear"), Gender.Neutral, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 100, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D2A*/, 0x00, 5, Music.None, 7, 20, 0, 5, 8, 0x00, 0x02, 0x01, 0x01, 0x03, 0x01, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Super Plush Bear"), Gender.Neutral, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 400, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D4C*/, 0x00, 5, Music.None, 7, 50, 0, 5, 8, 0x00, 0x02, 0x01, 0x01, 0x03, 0x01, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Master Belch"), Gender.Male, EnemyType.Normal, 0x0062, OverworldSprite.MASTER_BELCH, 0x07, 650, 0, 12509, 664, ActionScript.Unknown029, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x06, 27, Music.VS_MASTER_BELCH, 50, 88, 16, 20, 61, 0x01, 0x01, 0x01, 0x02, 0x00, 0x00, 0x00, [BattleActions.WOLFED_DOWN_FLY_HONEY, BattleActions.WOLFED_DOWN_FLY_HONEY, BattleActions.WOLFED_DOWN_FLY_HONEY, BattleActions.WOLFED_DOWN_FLY_HONEY], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x03, 0x00),
	Enemy(0x01, EBString!25("Insane Cultist"), Gender.Male, EnemyType.Normal, 0x003F, OverworldSprite.INSANE_CULTIST, 0x07, 94, 0, 353, 33, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_TRAPPED_YOU*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x03, 13, Music.VS_CAVE_BOY, 19, 25, 8, 20, 64, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x01, 0x00, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x00, EBString!25("Dept. Store Spook"), Gender.Male, EnemyType.Normal, 0x003D, OverworldSprite.WHIRLING_ROBO, 0x07, 610, 290, 24291, 1648, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x16, 42, Music.VS_CAVE_BOY, 82, 135, 19, 24, 62, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, 0x03, [BattleActions.PSI_MAGNET_OMEGA, BattleActions.PSI_BRAINSHOCK_ALPHA, BattleActions.PSI_FREEZE_ALPHA, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x2E, 0x31, 0x09, EnemyID.DEPT_STORE_SPOOK_1], 0x00, 0, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("|'s Nightmare"), Gender.Neutral, EnemyType.Normal, 0x004F, OverworldSprite.EVIL_MANI_MANI, 0x07, 1654, 882, 89004, 4442, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D83*/, 0x05, 71, Music.VS_STARMAN_JR, 172, 253, 31, 1, 80, 0x01, 0x02, 0x02, 0x03, 0x01, 0x00, 0x02, [BattleActions.PSI_ROCKIN_ALPHA, BattleActions.PSILifeupBeta, BattleActions.PSI_ROCKIN_OMEGA, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x01, 0x18, 0x04, EnemyID.YOUR_NIGHTMARE_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Mr. Carpainter"), Gender.Male, EnemyType.Normal, 0x0021, OverworldSprite.MR_CARPAINTER, 0x07, 262, 70, 1412, 195, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x01, 21, Music.VS_STARMAN_JR, 33, 45, 8, 13, 72, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, [BattleActions.CRASHING_BOOM_BANG, BattleActions.PSIPSIShieldAlpha, BattleActions.PAINT_ATTACK, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x23, 0x00, EnemyID.MR_CARPAINTER_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Carbon Dog"), Gender.Male, EnemyType.Normal, 0x0028, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1672, 0, 0, 0, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 70, Music.VS_YOUR_SANCTUARY_BOSS, 159, 174, 31, 52, 53, 0x03, 0x02, 0x01, 0x02, 0x02, 0x00, 0x01, [BattleActions.FIRE_SPRAY, BattleActions.EnemyExtender, BattleActions.CHARGE, BattleActions.HOWL], BattleActions.GIVE_OFF_RAINBOW, [0x00, EnemyID.CARBON_DOG_1, 0x00, 0x00], EnemyID.DIAMOND_DOG_1, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Chomposaur"), Gender.Neutral, EnemyType.Normal, 0x000E, OverworldSprite.WETNOSAUR, 0x07, 1288, 320, 44378, 896, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 62, Music.VS_CAVE_BOY, 139, 183, 17, 3, 16, 0x03, 0x01, 0x01, 0x02, 0x01, 0x02, 0x01, [BattleActions.STOMP, BattleActions.EnemyExtender, BattleActions.PSI_FIRE_BETA, BattleActions.PSI_FIRE_GAMMA], BattleActions.NoEffect, [0x00, EnemyID.CHOMPOSAUR_1, 0x06, 0x07], 0x00, 3, 0x00, 0x00, ItemID.MAGIC_FRY_PAN, InitialStatus.None, 0x00, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Titanic Ant"), Gender.Neutral, EnemyType.Insect, 0x0049, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 235, 102, 685, 150, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x04, 13, Music.VS_YOUR_SANCTUARY_BOSS, 19, 23, 6, 9, 72, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x01, [BattleActions.EnemyExtender, BattleActions.BITING_ATTACK, BattleActions.BITE, BattleActions.PSIShieldAlpha], BattleActions.NoEffect, [EnemyID.TITANIC_ANT_1, 0x00, 0x00, 0x1F], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Gigantic Ant"), Gender.Neutral, EnemyType.Insect, 0x0049, OverworldSprite.GIGANTIC_ANT, 0x07, 308, 81, 3980, 304, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 30, Music.VS_CAVE_BOY, 54, 112, 17, 5, 6, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.PSI_PARALYSIS_ALPHA, BattleActions.FLASH_SMILE, BattleActions.CALL_FOR_HELP, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x2F, 0x00, EnemyID.GIGANTIC_ANT_1, EnemyID.GIGANTIC_ANT_1], 0x00, 3, 0x00, 0x02, ItemID.DOUBLE_BURGER, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x00, EBString!25("Shrooom!"), Gender.Neutral, EnemyType.Normal, 0x000B, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1700, 112, 96323, 4086, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 48, Music.VS_YOUR_SANCTUARY_BOSS, 95, 154, 18, 32, 72, 0x00, 0x02, 0x01, 0x03, 0x01, 0x00, 0x00, [BattleActions.SCATTER_SPORES, BattleActions.BASH, BattleActions.DISRUPT_SENSES, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.SHROOOM_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Plague Rat of Doom"), Gender.Male, EnemyType.Normal, 0x004B, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1827, 60, 115272, 4464, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x04, 47, Music.VS_YOUR_SANCTUARY_BOSS, 71, 180, 19, 250, 45, 0x01, 0x02, 0x01, 0x02, 0x02, 0x00, 0x00, [BattleActions.BASH, BattleActions.EnemyExtender, BattleActions.GRIN, BattleActions.BASH], BattleActions.NoEffect, [0x00, EnemyID.PLAGUE_RAT_OF_DOOM_1, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Mondo Mole"), Gender.Male, EnemyType.Normal, 0x0053, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 498, 161, 5791, 400, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 23, Music.VS_YOUR_SANCTUARY_BOSS, 37, 50, 9, 15, 36, 0x02, 0x03, 0x00, 0x00, 0x02, 0x00, 0x00, [BattleActions.PSIPSIShieldAlpha, BattleActions.PSI_OFFENSE_UP_ALPHA, BattleActions.CLAW, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x23, 0x27, 0x00, EnemyID.MONDO_MOLE_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Guardian Digger"), Gender.Male, EnemyType.Normal, 0x0053, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 386, 110, 17301, 1467, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x15, 32, Music.VS_YOUR_SANCTUARY_BOSS, 59, 129, 17, 21, 55, 0x01, 0x01, 0x00, 0x02, 0x02, 0x00, 0x01, [BattleActions.TEAR_INTO, BattleActions.EnemyExtender, BattleActions.BASH, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x00, EnemyID.GUARDIAN_DIGGER_1, 0x00, 0x17], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Kraken"), Gender.Neutral, EnemyType.Normal, 0x0029, OverworldSprite.KRAKEN, 0x07, 1097, 176, 79267, 3049, ActionScript.Unknown029, null/*TEXT_BLOCK_EF7866*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 54, Music.VS_KRAKEN, 105, 166, 21, 1, 32, 0x02, 0x02, 0x01, 0x01, 0x02, 0x00, 0x03, [BattleActions.PSI_FLASH_BETA, BattleActions.FIRE_BREATH, BattleActions.GENERATE_TORNADO, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x12, 0x00, 0x00, EnemyID.KRAKEN_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Bionic Kraken"), Gender.Neutral, EnemyType.Normal, 0x0029, OverworldSprite.WHIRLING_ROBO, 0x07, 900, 60, 50308, 960, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x18, 70, Music.VS_KRAKEN, 155, 195, 42, 1, 32, 0x02, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x00, ItemID.GUTSY_BAT, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Starman"), Gender.Male, EnemyType.Normal, 0x0037, OverworldSprite.STARMAN, 0x07, 545, 155, 23396, 720, ActionScript.Unknown026, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x02, 55, Music.VS_SPINNING_ROBO, 103, 126, 24, 25, 16, 0x01, 0x01, 0x02, 0x02, 0x01, 0x01, 0x00, [BattleActions.PSIShieldAlpha, BattleActions.FIRE_BEAM, BattleActions.SUDDEN_GUTS_PILL, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x1F, 0x00, 0x9F, EnemyID.STARMAN_1], 0x00, 3, 0x00, 0x00, ItemID.BRAIN_FOOD_LUNCH, InitialStatus.None, 0x00, 0x00, 0x02, 0x32),
	Enemy(0x01, EBString!25("Starman Super"), Gender.Male, EnemyType.Normal, 0x0037, OverworldSprite.STARMAN, 0x07, 568, 310, 30145, 735, ActionScript.Unknown026, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x1A, 56, Music.VS_SPINNING_ROBO, 112, 129, 24, 25, 16, 0x01, 0x01, 0x02, 0x02, 0x01, 0x01, 0x00, [BattleActions.PSIPSIShieldBeta, BattleActions.PSIHealingOmega, BattleActions.FIRE_BEAM, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x25, 0x1E, 0x00, EnemyID.STARMAN_SUPER_1], 0x00, 3, 0x00, 0x00, ItemID.SWORD_OF_KINGS, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x01, EBString!25("Ghost of Starman"), Gender.Male, EnemyType.Normal, 0x0037, OverworldSprite.WHIRLING_ROBO, 0x07, 750, 462, 48695, 807, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x0C, 68, Music.VS_SPINNING_ROBO, 152, 170, 46, 43, 16, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x02, [BattleActions.MURMUR_2, BattleActions.MUTTER_1, BattleActions.PSI_STARSTORM_BETA, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x16, EnemyID.GHOST_OF_STARMAN_1], 0x00, 3, 0x00, 0x00, ItemID.GODDESS_RIBBON, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Starman Deluxe"), Gender.Male, EnemyType.Normal, 0x006A, OverworldSprite.WHIRLING_ROBO, 0x07, 1400, 418, 160524, 3827, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x02, 65, Music.VS_SPINNING_ROBO, 143, 186, 27, 43, 21, 0x01, 0x02, 0x03, 0x02, 0x02, 0x00, 0x00, [BattleActions.EnemyExtender, BattleActions.FIRE_BEAM, BattleActions.PSIPSIShieldBeta, BattleActions.CALL_FOR_HELP], BattleActions.NoEffect, [EnemyID.STARMAN_DELUXE_1, 0x00, 0x25, EnemyID.STARMAN_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x02, 0x00),
	Enemy(0x01, EBString!25("Final Starman"), Gender.Male, EnemyType.Normal, 0x006A, OverworldSprite.WHIRLING_ROBO, 0x07, 840, 860, 61929, 915, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x10, 71, Music.VS_SPINNING_ROBO, 178, 187, 47, 25, 24, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x03, [BattleActions.PSI_STARSTORM_BETA, BattleActions.FLASH_SMILE, BattleActions.PSIHealingOmega, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x16, 0x00, 0x1E, EnemyID.FINAL_STARMAN_1], 0x00, 3, 0x00, 0x02, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Urban Zombie"), Gender.Neutral, EnemyType.Normal, 0x0048, OverworldSprite.URBAN_ZOMBIE, 0x07, 171, 0, 700, 58, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6E31*/, 0x04, 19, Music.VS_CRANKY_LADY, 31, 24, 10, 15, 24, 0x00, 0x03, 0x00, 0x01, 0x01, 0x01, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x02, ItemID.Hamburger, InitialStatus.None, 0x00, 0x01, 0x02, 0x32),
	Enemy(0x00, EBString!25("Diamond Dog"), Gender.Male, EnemyType.Normal, 0x004C, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 3344, 154, 337738, 6968, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x04, 70, Music.VS_SPINNING_ROBO, 167, 230, 31, 10, 47, 0x02, 0x02, 0x03, 0x03, 0x02, 0x00, 0x00, [BattleActions.BITE, BattleActions.EnemyExtender, BattleActions.HOWL, BattleActions.DIAMONDIZING_BITE], BattleActions.NoEffect, [0x00, EnemyID.DIAMOND_DOG_1, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Trillionage Sprout"), Gender.Neutral, EnemyType.Normal, 0x0058, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 1048, 240, 30303, 1358, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x05, 29, Music.VS_YOUR_SANCTUARY_BOSS, 54, 88, 16, 21, 71, 0x00, 0x02, 0x01, 0x03, 0x02, 0x00, 0x00, [BattleActions.PSIPSIShieldAlpha, BattleActions.BASH, BattleActions.EERIE_GLARE, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x23, 0x00, 0x00, EnemyID.TRILLIONAGE_SPROUT_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x03, 0x00),
	Enemy(0x00, EBString!25("Master Belch"), Gender.Male, EnemyType.Normal, 0x0062, OverworldSprite.MASTER_BELCH, 0x07, 650, 0, 12509, 664, ActionScript.Unknown029, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x06, 27, Music.VS_MASTER_BELCH, 50, 88, 16, 20, 61, 0x01, 0x01, 0x01, 0x02, 0x00, 0x00, 0x00, [BattleActions.NAUSEATING_BURP, BattleActions.CONTINUOUS_ATTACK, BattleActions.CALL_FOR_HELP, BattleActions.EDGE_CLOSER], BattleActions.NoEffect, [0x00, 0x00, EnemyID.SLIMY_LIL_PILE, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x03, 0x00),
	Enemy(0x01, EBString!25("Big Pile of Puke"), Gender.Neutral, EnemyType.Normal, 0x0062, OverworldSprite.MASTER_BELCH, 0x07, 609, 76, 17567, 690, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x05, 59, Music.VS_MASTER_BELCH, 134, 146, 14, 11, 5, 0x00, 0x02, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x01, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x00, EBString!25("Master Barf"), Gender.Male, EnemyType.Normal, 0x0062, OverworldSprite.MASTER_BELCH, 0x07, 1319, 0, 125056, 3536, ActionScript.Unknown029, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x13, 60, Music.VS_MASTER_BELCH, 136, 177, 24, 39, 64, 0x01, 0x02, 0x01, 0x02, 0x01, 0x00, 0x00, [BattleActions.CALL_FOR_HELP, BattleActions.CONTINUOUS_ATTACK, BattleActions.NAUSEATING_BURP, BattleActions.EnemyExtender], BattleActions.MASTER_BARF_DEFEAT, [EnemyID.EVEN_SLIMIER_LITTLE_PILE, 0x00, 0x00, EnemyID.MASTER_BARF_1], 0x00, 3, 0x01, 0x07, ItemID.CASEY_BAT, InitialStatus.None, 0x01, 0x00, 0x03, 0x00),
	Enemy(0x01, EBString!25("Loaded Dice"), Gender.Neutral, EnemyType.Normal, 0x003A, OverworldSprite.GiftBox, 0x07, 307, 0, 10672, 703, ActionScript.Unknown031, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x03, 59, Music.VS_CRANKY_LADY, 146, 113, 77, 75, 6, 0x00, 0x00, 0x02, 0x00, 0x03, 0x01, 0x00, [BattleActions.CALL_FOR_HELP, BattleActions.CALL_FOR_HELP, BattleActions.CALL_FOR_HELP, BattleActions.CALL_FOR_HELP], BattleActions.NoEffect, [EnemyID.ELECTRO_SWOOSH, EnemyID.FOBBY, EnemyID.UNCONTROLLABLE_SPHERE, EnemyID.ELECTRO_SWOOSH], 0x00, 3, 0x00, 0x02, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Tangoo"), Gender.Male, EnemyType.Normal, 0x0052, OverworldSprite.THUNDER_MITE, 0x07, 371, 5, 14718, 572, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x05, 48, Music.VS_STRUTTIN_EVIL_MUSHROOM, 96, 99, 19, 20, 16, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x04, ItemID.SNAKE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Boogey Tent"), Gender.Neutral, EnemyType.Normal, 0x0056, OverworldSprite.None, 0x07, 579, 56, 5500, 407, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_TRAPPED_YOU*/, null/*TEXT_BLOCK_EF6D71*/, 0x05, 25, Music.VS_CAVE_BOY, 43, 69, 10, 16, 32, 0x00, 0x03, 0x01, 0x03, 0x02, 0x00, 0x03, [BattleActions.EMIT_PALE_GREEN_LIGHT, BattleActions.BASH, BattleActions.PSI_FLASH_ALPHA, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x11, EnemyID.BOOGEY_TENT_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Squatter Demon"), Gender.Neutral, EnemyType.Normal, 0x0056, OverworldSprite.WHIRLING_ROBO, 0x07, 774, 60, 48311, 897, ActionScript.Unknown023, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D71*/, 0x1E, 69, Music.VS_CAVE_BOY, 158, 192, 45, 25, 32, 0x00, 0x03, 0x01, 0x03, 0x02, 0x01, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x01, ItemID.HORN_OF_LIFE, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Everdred"), Gender.Male, EnemyType.Normal, 0x0020, OverworldSprite.EVERDRED, 0x07, 182, 0, 986, 171, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BATTLE_TURNED_BACK_TO_NORMAL*/, 0x01, 15, Music.VS_STRUTTIN_EVIL_MUSHROOM, 25, 35, 6, 10, 40, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, [BattleActions.BASH, BattleActions.GRIN, BattleActions.BITING_ATTACK, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.EVERDRED_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Electro Specter"), Gender.Male, EnemyType.Normal, 0x0039, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 3092, 80, 261637, 6564, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x02, 67, Music.VS_KRAKEN, 148, 203, 29, 47, 56, 0x01, 0x01, 0x03, 0x03, 0x02, 0x00, 0x03, [BattleActions.Neutralizer, BattleActions.SHIELD_KILLER, BattleActions.ELECTRIC_SHOCK, BattleActions.EnemyExtender], BattleActions.NoEffect, [0xC3, 0x84, 0x00, EnemyID.ELECTRO_SPECTER_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Thunder and Storm"), Gender.Male, EnemyType.Normal, 0x0027, OverworldSprite.YOUR_SANCTUARY_POINT_BOSS, 0x07, 2065, 70, 129026, 4736, ActionScript.Unknown023, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 56, Music.VS_KRAKEN, 111, 178, 21, 35, 55, 0x01, 0x01, 0x00, 0x03, 0x01, 0x00, 0x03, [BattleActions.SUMMON_STORM, BattleActions.BASH, BattleActions.CRASHING_BOOM_BANG, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.THUNDER_AND_STORM_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Frankystein Mark II"), Gender.Neutral, EnemyType.Metal, 0x0061, OverworldSprite.None, 0x07, 91, 0, 76, 31, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6DF0*/, 0x06, 7, Music.VS_CAVE_BOY, 15, 18, 4, 0, 40, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00, 0x03, [BattleActions.TEAR_INTO, BattleActions.PUNCH, BattleActions.GENERATE_STEAM, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.FRANKYSTEIN_MARK_II_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Evil Mani-Mani"), Gender.Neutral, EnemyType.Normal, 0x004F, OverworldSprite.EVIL_MANI_MANI, 0x07, 860, 88, 28139, 1852, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D83*/, 0x03, 45, Music.VS_STARMAN_JR, 86, 145, 15, 1, 80, 0x01, 0x01, 0x01, 0x03, 0x01, 0x00, 0x03, [BattleActions.EMIT_PALE_GREEN_LIGHT, BattleActions.BASH, BattleActions.GLORIOUS_LIGHT, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.EVIL_MANI_MANI_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Heavily Armed Pokey"), Gender.Male, EnemyType.Metal, 0x002A, OverworldSprite.Pokey, 0x07, 1746, 999, 0, 0, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 72, Music.None, 150, 274, 51, 45, 55, 0x02, 0x02, 0x02, 0x03, 0x01, 0x00, 0x02, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.HeavilyArmedPokey1], 0x00, 3, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Clumsy Robot"), Gender.Neutral, EnemyType.Metal, 0x0047, OverworldSprite.CAPSULE, 0x07, 962, 0, 32378, 2081, ActionScript.Unknown027, null/*TEXT_BLOCK_EF7866*/, null/*TEXT_BLOCK_EF6D83*/, 0x04, 46, Music.VS_STARMAN_JR, 88, 137, 83, 30, 49, 0x02, 0x02, 0x02, 0x01, 0x02, 0x05, 0x02, [BattleActions.CLUMSY_BEAM, BattleActions.CLEAN_AREA, BattleActions.EAT_BOLOGNA_SANDWICH, BattleActions.EnemyExtender], BattleActions.RUNAWAY_FIVE_EVENT, [0x00, 0x00, 0x00, EnemyID.CLUMSY_ROBOT_3], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Robo-pump"), Gender.Neutral, EnemyType.Metal, 0x003E, OverworldSprite.ROBO_PUMP, 0x07, 431, 0, 4797, 349, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6DD8*/, 0x03, 36, Music.VS_STRUTTIN_EVIL_MUSHROOM, 70, 113, 19, 5, 4, 0x02, 0x02, 0x02, 0x01, 0x02, 0x01, 0x02, [BattleActions.BOMB, BattleActions.REPLENISH_FUEL, BattleActions.TICK_TOCK, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x93, 0x00, 0x00, EnemyID.ROBO_PUMP_1], 0x00, 2, 0x00, 0x01, ItemID.SUPER_BOMB, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Foppy"), Gender.Neutral, EnemyType.Normal, 0x0011, OverworldSprite.FOBBY, 0x07, 120, 10, 1311, 93, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78C7*/, null/*TEXT_BLOCK_EF6D71*/, 0x01, 16, Music.VS_STRUTTIN_EVIL_MUSHROOM, 29, 9, 1, 5, 3, 0x00, 0x00, 0x01, 0x00, 0x03, 0x02, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x01, ItemID.PSI_CARAMEL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x00, EBString!25("Guardian General"), Gender.Male, EnemyType.Normal, 0x0057, OverworldSprite.PETRIFIED_ROYAL_GUARD, 0x07, 831, 6, 95390, 3235, ActionScript.Unknown028, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D83*/, 0x13, 55, Music.VS_YOUR_SANCTUARY_BOSS, 109, 214, 21, 1, 7, 0x01, 0x02, 0x01, 0x02, 0x01, 0x00, 0x00, [BattleActions.BASH, BattleActions.CHARGE, BattleActions.WAR_CRY, BattleActions.EnemyExtender], BattleActions.NoEffect, [0x00, 0x00, 0x00, EnemyID.GUARDIAN_GENERAL_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Black Antoid"), Gender.Neutral, EnemyType.Insect, 0x0001, OverworldSprite.BLACK_ANTOID, 0x07, 34, 25, 37, 7, ActionScript.Unknown020, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x08, 7, Music.VS_CRANKY_LADY, 14, 13, 4, 3, 0, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x03, [BattleActions.PSILifeupAlpha, BattleActions.PSILifeupAlpha, BattleActions.PSILifeupAlpha, BattleActions.PSILifeupAlpha], BattleActions.NoEffect, [0x17, 0x17, 0x17, 0x17], 0x00, 1, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x01, 0x03, 0x32),
	Enemy(0x01, EBString!25("Struttin' Evil Mushroom"), Gender.Neutral, EnemyType.Normal, 0x0005, OverworldSprite.RAMBLIN_EVIL_MUSHROOM, 0x07, 60, 0, 95, 15, ActionScript.Unknown024, null/*TEXT_BLOCK_EF789C*/, null/*TEXT_BLOCK_EF6D83*/, 0x09, 7, Music.VS_STRUTTIN_EVIL_MUSHROOM, 15, 10, 5, 5, 1, 0x00, 0x00, 0x01, 0x01, 0x03, 0x02, 0x00, [BattleActions.BE_ABSENTMINDED, BattleActions.BASH, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x06, ItemID.Cookie, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Runaway Dog"), Gender.Male, EnemyType.Normal, 0x0002, OverworldSprite.RUNAWAY_DOG, 0x07, 21, 0, 4, 3, ActionScript.Unknown022, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x09, 73, Music.VS_RUNAWAY_DOG, 4, 5, 26, 0, 1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, [BattleActions.HOWL, BattleActions.BITING_ATTACK, BattleActions.BITING_ATTACK, BattleActions.BITE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 1, 0x00, 0x06, ItemID.BREAD_ROLL, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Cave Boy"), Gender.Male, EnemyType.Normal, 0x0065, OverworldSprite.CAVE_BOY, 0x07, 314, 0, 618, 17, ActionScript.Unknown029, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x07, 11, Music.VS_CAVE_BOY, 21, 33, 5, 0, 80, 0x00, 0x03, 0x01, 0x03, 0x02, 0x08, 0x00, [BattleActions.BASH, BattleActions.BASH, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x07, ItemID.PicnicLunch, InitialStatus.None, 0x00, 0x01, 0x00, 0x32),
	Enemy(0x01, EBString!25("Tiny Li'l Ghost"), Gender.Neutral, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 90, 0, 1, 162, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6DB8*/, 0x00, 18, Music.VS_RUNAWAY_DOG, 19, 7, 100, 25, 24, 0x01, 0x01, 0x00, 0x01, 0x00, 0x04, 0x00, [BattleActions.REACH_WITH_ICY_HAND, BattleActions.REACH_WITH_ICY_HAND, BattleActions.BASH, BattleActions.BASH], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Starman Junior"), Gender.Male, EnemyType.Normal, 0x0037, OverworldSprite.STARMAN, 0x07, 200, 999, 16, 20, ActionScript.Unknown026, null/*TEXT_BLOCK_EF7866*/, null/*TEXT_BLOCK_EF6D71*/, 0x02, 6, Music.VS_STARMAN_JR, 11, 10, 1, 0, 80, 0x03, 0x03, 0x03, 0x03, 0x02, 0x00, 0x01, [BattleActions.PSI_FIRE_BETA, BattleActions.ON_GUARD, BattleActions.PSI_FREEZE_ALPHA, BattleActions.PSI_FIRE_ALPHA], BattleActions.NoEffect, [0x06, 0x00, 0x09, 0x05], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Buzz Buzz"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 2000, 999, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 20, Music.None, 40, 92, 100, 1, 80, 0x03, 0x03, 0x03, 0x03, 0x02, 0x00, 0x03, [BattleActions.PSIPSIShieldSigma, BattleActions.PSIPSIShieldSigma, BattleActions.CHARGE, BattleActions.BASH], BattleActions.NoEffect, [0x24, 0x24, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x00, EBString!25("Heavily Armed Pokey"), Gender.Male, EnemyType.Metal, 0x002A, OverworldSprite.Pokey, 0x07, 2000, 999, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x04, 80, Music.PokeyMeansBusiness, 145, 255, 60, 5, 255, 0x02, 0x02, 0x03, 0x01, 0x03, 0x01, 0x03, [BattleActions.DISCHARGE_STINKY_GAS, BattleActions.DISCHARGE_STINKY_GAS, BattleActions.CHARGE, BattleActions.TEAR_INTO], BattleActions.PokeySpeech1, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x00, EBString!25("Heavily Armed Pokey"), Gender.Male, EnemyType.Metal, 0x002A, OverworldSprite.Pokey, 0x07, 1746, 999, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x04, 72, Music.GiygasAwakens, 150, 274, 51, 45, 55, 0x02, 0x02, 0x02, 0x03, 0x01, 0x00, 0x00, [BattleActions.DISCHARGE_STINKY_GAS, BattleActions.PokeyAttack, BattleActions.CHARGE, BattleActions.TEAR_INTO], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x5F),
	Enemy(0x00, EBString!25("Giygas"), Gender.Male, EnemyType.Metal, 0x006C, OverworldSprite.None, 0x07, 9999, 999, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x14, 80, Music.PokeyMeansBusiness, 255, 255, 80, 5, 255, 0x02, 0x02, 0x03, 0x03, 0x03, 0x00, 0x01, [BattleActions.PSI_ROCKIN_ALPHA, BattleActions.PSI_ROCKIN_BETA, BattleActions.PSI_ROCKIN_ALPHA, BattleActions.PSI_ROCKIN_BETA], BattleActions.NoEffect, [0x01, 0x02, 0x01, 0x02], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Giygas"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 9999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x00, 80, Music.GiygasAwakens, 255, 255, 80, 5, 255, 0x02, 0x02, 0x03, 0x03, 0x03, 0x00, 0x02, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.GIYGAS_ATTACK], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Giygas"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 2000, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x00, 80, Music.GiygasAwakens, 255, 255, 80, 5, 255, 0x02, 0x02, 0x03, 0x03, 0x03, 0x00, 0x00, [BattleActions.INCOMPREHENSIBLE_ATTACK_THUNDER_BETA, BattleActions.INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA, BattleActions.INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA, BattleActions.SAY_PLAYER_NAME], BattleActions.PokeySpeech2, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Giygas"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 9999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x00, 80, Music.GiygasPhase2, 255, 255, 80, 5, 255, 0x02, 0x02, 0x03, 0x03, 0x03, 0x00, 0x00, [BattleActions.INCOMPREHENSIBLE_ATTACK_THUNDER_BETA_VULNERABLE, BattleActions.INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA_VULNERABLE, BattleActions.INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA_VULNERABLE, BattleActions.RANDOM_GIYGAS_QUOTE], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x01, EBString!25("Farm Zombie"), Gender.Neutral, EnemyType.Normal, 0x0048, OverworldSprite.URBAN_ZOMBIE, 0x07, 171, 0, 700, 58, ActionScript.Unknown021, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6E31*/, 0x0A, 19, Music.VS_RUNAWAY_DOG, 31, 24, 10, 15, 24, 0x00, 0x03, 0x00, 0x01, 0x01, 0x01, 0x01, [BattleActions.BASH, BattleActions.LAUGH_HYSTERICALLY, BattleActions.COLD_BREATH, BattleActions.SOMETHING_MYSTERIOUS], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 2, 0x00, 0x03, ItemID.SKIP_SANDWICH, InitialStatus.None, 0x00, 0x01, 0x02, 0x00),
	Enemy(0x01, EBString!25("Criminal Caterpillar"), Gender.Neutral, EnemyType.Insect, 0x006D, OverworldSprite.CRIMINAL_CATERPILLAR, 0x07, 250, 168, 30384, 0, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x01, 23, Music.VS_RUNAWAY_DOG, 37, 16, 134, 0, 0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, [BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_ALPHA], BattleActions.NoEffect, [0x05, 0x05, 0x05, 0x05], 0x00, 1, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x0A),
	Enemy(0x01, EBString!25("Evil Eye"), Gender.Neutral, EnemyType.Normal, 0x006E, OverworldSprite.WHIRLING_ROBO, 0x07, 720, 400, 46376, 896, ActionScript.Unknown023, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x02, 63, Music.VS_CRANKY_LADY, 141, 162, 38, 25, 16, 0x03, 0x00, 0x03, 0x02, 0x01, 0x00, 0x01, [BattleActions.PSI_BRAINSHOCK_OMEGA, BattleActions.EERIE_GLARE, BattleActions.PSI_PARALYSIS_OMEGA, BattleActions.BASH], BattleActions.NoEffect, [0x32, 0x00, 0x30, 0x00], 0x00, 1, 0x00, 0x03, ItemID.METEOTITE, InitialStatus.None, 0x00, 0x00, 0x00, 0x14),
	Enemy(0x01, EBString!25("Magic Butterfly"), Gender.Female, EnemyType.Insect, 0x0000, OverworldSprite.MAGIC_BUTTERFLY, 0x06, 16, 0, 1, 0, ActionScript.Unknown032, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_NO_MESSAGE*/, 0x00, 0, Music.None, 2, 2, 25, 0, 0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, [BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect, BattleActions.NoEffect], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 0, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x00),
	Enemy(0x01, EBString!25("Mini Barf"), Gender.Neutral, EnemyType.Normal, 0x005B, OverworldSprite.SLIMY_LITTLE_PILE, 0x07, 616, 0, 7521, 460, ActionScript.Unknown020, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x13, 26, Music.VS_MASTER_BELCH, 45, 71, 10, 19, 30, 0x00, 0x03, 0x01, 0x03, 0x02, 0x00, 0x01, [BattleActions.STINKY_BREATH, BattleActions.BASH, BattleActions.VENT_ODOR, BattleActions.STICKY_MUCUS], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x32),
	Enemy(0x01, EBString!25("Master Criminal Worm"), Gender.Neutral, EnemyType.Insect, 0x006D, OverworldSprite.MASTER_CRIMINAL_WORM, 0x07, 377, 300, 82570, 0, ActionScript.Unknown027, null/*TEXT_BLOCK_EF78B8*/, null/*TEXT_BLOCK_EF6D96*/, 0x10, 37, Music.VS_RUNAWAY_DOG, 73, 40, 136, 0, 0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, [BattleActions.PSI_FIRE_BETA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_ALPHA, BattleActions.PSI_FIRE_ALPHA], BattleActions.NoEffect, [0x06, 0x05, 0x05, 0x05], 0x00, 1, 0x00, 0x00, ItemID.None, InitialStatus.None, 0x00, 0x00, 0x00, 0x0A),
	Enemy(0x00, EBString!25("Captain Strong"), Gender.Male, EnemyType.Normal, 0x0045, OverworldSprite.CROOKED_COP, 0x07, 140, 0, 492, 159, ActionScript.Unknown021, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x08, 13, Music.VS_CAVE_BOY, 20, 24, 15, 8, 18, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, [BattleActions.SUBMISSION_HOLD, BattleActions.COME_OUT_SWINGING, BattleActions.ON_GUARD, BattleActions.LOSE_TEMPER], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x02, ItemID.BoiledEgg, InitialStatus.None, 0x00, 0x00, 0x03, 0x00),
	Enemy(0x00, EBString!25("Giygas"), Gender.Male, EnemyType.Normal, 0x0000, OverworldSprite.None, 0x07, 9999, 0, 0, 0, ActionScript.Unknown000, null/*TEXT_BATTLE_ENEMY_ATTACKED*/, null/*TEXT_BLOCK_EF6D71*/, 0x00, 80, Music.GiygasPhase2, 255, 127, 80, 5, 255, 0x02, 0x02, 0x03, 0x03, 0x03, 0x01, 0x00, [BattleActions.INCOMPREHENSIBLE_ATTACK_THUNDER_BETA_UNSTABLE, BattleActions.INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA_UNSTABLE, BattleActions.INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA_UNSTABLE, BattleActions.RANDOM_GIYGAS_QUOTE_TIMES_3], BattleActions.NoEffect, [0x00, 0x00, 0x00, 0x00], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
	Enemy(0x00, EBString!25("Clumsy Robot"), Gender.Neutral, EnemyType.Metal, 0x0047, OverworldSprite.CAPSULE, 0x07, 962, 0, 32378, 2081, ActionScript.Unknown027, null/*TEXT_BLOCK_EF7866*/, null/*TEXT_BLOCK_EF6D83*/, 0x04, 46, Music.VS_STARMAN_JR, 88, 137, 83, 30, 49, 0x02, 0x02, 0x02, 0x01, 0x02, 0x05, 0x03, [BattleActions.REEL, BattleActions.WOBBLE, BattleActions.WANT_BATTERY, BattleActions.EnemyExtender], BattleActions.RUNAWAY_FIVE_EVENT, [0x00, 0x00, 0x00, EnemyID.CLUMSY_ROBOT_1], 0x00, 3, 0x01, 0x00, ItemID.None, InitialStatus.None, 0x01, 0x01, 0x00, 0x00),
];

/// $D5EBAB
TeleportDestination[234] TeleportDestinationTable = [
	TeleportDestination(0x0000, 0x0000, CCDirection.Undefined, WarpStyle.INSTANT_PLUS_FADE, 0x0000),
	TeleportDestination(0x0388, 0x03E9, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02C8, 0x035B, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02AC, 0x02A5, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02E4, 0x032D, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02F8, 0x032D, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02F8, 0x030D, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0329, 0x032A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x038C, 0x026D, CCDirection.Down, WarpStyle.MOONSIDE11, 0x0000),
	TeleportDestination(0x02AC, 0x0228, CCDirection.Up, WarpStyle.MOONSIDE10, 0x0000),
	TeleportDestination(0x03F9, 0x0089, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03E9, 0x00CB, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00D3, 0x020A, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03AC, 0x036D, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03C8, 0x049C, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0232, 0x049B, CCDirection.Right, WarpStyle.GHOST_TUNNEL2, 0x0000),
	TeleportDestination(0x032E, 0x049B, CCDirection.Left, WarpStyle.GHOST_TUNNEL, 0x0000),
	TeleportDestination(0x03A9, 0x049B, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x009F, 0x0442, CCDirection.Left, WarpStyle.GHOST_TUNNEL, 0x0000),
	TeleportDestination(0x0388, 0x03CC, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01B0, 0x0210, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02EC, 0x009A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0037, 0x0023, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02EC, 0x022D, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03D3, 0x021D, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0149, 0x0032, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x003B, 0x0357, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x023A, 0x01C2, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02BB, 0x047A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00BB, 0x0335, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x003C, 0x0127, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x028A, 0x015F, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00A9, 0x0224, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0166, 0x0183, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x034A, 0x03EC, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0308, 0x0091, CCDirection.Up, WarpStyle.STANDARD_DOOR_WHITE_SLOW, 0x0000),
	TeleportDestination(0x00EF, 0x044A, CCDirection.Left, WarpStyle.STANDARD_DOOR_WITH_SOUND, 0x0000),
	TeleportDestination(0x02A2, 0x025D, CCDirection.Right, WarpStyle.STANDARD_DOOR_WITH_UNKNOWN_SOUND, 0x0000),
	TeleportDestination(0x02E5, 0x010A, CCDirection.Right, WarpStyle.STANDARD_DOOR_WITH_SOUND2, 0x0000),
	TeleportDestination(0x03AB, 0x00CC, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02B4, 0x01EA, CCDirection.Down, WarpStyle.STANDARD_DOOR_WHITE_SLOW_SOUND, 0x0000),
	TeleportDestination(0x0329, 0x025A, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03E5, 0x0355, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03C7, 0x010D, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03EF, 0x00ED, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0204, 0x02EA, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x038A, 0x00D9, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0059, 0x024E, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x032A, 0x03EB, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02AC, 0x0394, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x030C, 0x04BB, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0358, 0x040D, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0315, 0x022A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03B3, 0x03EA, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0123, 0x014A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0218, 0x0058, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x024F, 0x0022, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0051, 0x0083, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01ED, 0x0337, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0166, 0x0181, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02E6, 0x04FC, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x009C, 0x0441, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03D9, 0x04F9, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0235, 0x049B, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03C4, 0x006D, CCDirection.Right, WarpStyle.STANDARD_DOOR_WITH_UNKNOWN_SOUND, 0x0000),
	TeleportDestination(0x03FE, 0x03AD, CCDirection.Left, WarpStyle.STANDARD_DOOR_WITH_SOUND2, 0x0000),
	TeleportDestination(0x0388, 0x00EB, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03FD, 0x000D, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03BA, 0x001B, CCDirection.Left, WarpStyle.STANDARD_DOOR_WITH_SOUND2, 0x0000),
	TeleportDestination(0x032B, 0x0499, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0226, 0x04FC, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0359, 0x0009, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0036, 0x04E6, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0209, 0x04E3, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03C8, 0x043C, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0315, 0x01A9, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x011C, 0x027E, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x034E, 0x04EA, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0278, 0x018A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0358, 0x040C, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x024C, 0x0342, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0190, 0x008E, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x03B9, 0x0256, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0233, 0x0073, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0274, 0x0026, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0134, 0x027E, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0130, 0x037F, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02C2, 0x026B, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0372, 0x002B, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0015, 0x0409, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00C3, 0x01CB, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00B0, 0x02C4, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02B7, 0x0351, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x004A, 0x0365, CCDirection.Down, WarpStyle.PHASE_DISTORTER_III, 0x007F),
	TeleportDestination(0x02AE, 0x0026, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02F8, 0x0429, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x028C, 0x0439, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x028C, 0x0416, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02BC, 0x046C, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03A9, 0x049B, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0184, 0x02A9, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0079),
	TeleportDestination(0x0286, 0x0171, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03A5, 0x036D, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01B1, 0x0203, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02EB, 0x0023, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01D5, 0x03F7, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x038F, 0x01F3, CCDirection.Left, WarpStyle.MOONSIDE1, 0x0000),
	TeleportDestination(0x0385, 0x01FE, CCDirection.Right, WarpStyle.MOONSIDE2, 0x0000),
	TeleportDestination(0x03C7, 0x023C, CCDirection.Down, WarpStyle.MOONSIDE3, 0x0000),
	TeleportDestination(0x03C7, 0x023C, CCDirection.Down, WarpStyle.MOONSIDE4, 0x0000),
	TeleportDestination(0x03C7, 0x023C, CCDirection.Down, WarpStyle.MOONSIDE5, 0x0000),
	TeleportDestination(0x03B5, 0x01F3, CCDirection.Left, WarpStyle.MOONSIDE6, 0x0000),
	TeleportDestination(0x03A2, 0x025D, CCDirection.Right, WarpStyle.MOONSIDE7, 0x0000),
	TeleportDestination(0x03DA, 0x0257, CCDirection.Left, WarpStyle.MOONSIDE8, 0x0000),
	TeleportDestination(0x03A6, 0x023A, CCDirection.Right, WarpStyle.MOONSIDE9, 0x0000),
	TeleportDestination(0x0112, 0x0015, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0125, 0x002E, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00FC, 0x00D8, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x034C, 0x043A, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03B0, 0x00F5, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x036F, 0x04CD, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03B7, 0x03B8, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03D6, 0x048A, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03B1, 0x013D, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x002A, 0x01A9, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03E8, 0x0164, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x025A, 0x02AA, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x023B, 0x04E3, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0236, 0x026D, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02E4, 0x02ED, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02CA, 0x02A9, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02F1, 0x042C, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02D0, 0x017A, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0266, 0x0205, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x025A, 0x02AA, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0057, 0x01A3, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03D1, 0x02FD, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0392, 0x016C, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03E6, 0x036D, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00E0, 0x0276, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0209, 0x0015, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x018F, 0x0011, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01A2, 0x031D, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0037, 0x03BA, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00D3, 0x04BF, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02C1, 0x002B, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0356, 0x03CC, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03D3, 0x03DA, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03B9, 0x00BD, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0366, 0x005D, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00FA, 0x00B2, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x014D, 0x006F, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03B0, 0x002B, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x032E, 0x0267, CCDirection.Down, WarpStyle.STANDARD_DOOR_WHITE_SLOW, 0x0071),
	TeleportDestination(0x025E, 0x0274, CCDirection.Left, WarpStyle.STANDARD_DOOR_WHITE_SLOW, 0x007F),
	TeleportDestination(0x02B2, 0x0337, CCDirection.Down, WarpStyle.STANDARD_DOOR_WITH_SOUND2, 0x007F),
	TeleportDestination(0x02B2, 0x0337, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02B0, 0x0330, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x9C7F),
	TeleportDestination(0x0302, 0x04C9, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0239, 0x0072, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02A4, 0x04B9, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x02EE, 0x022B, CCDirection.Down, WarpStyle.STANDARD_DOOR_WHITE_SLOW, 0x007F),
	TeleportDestination(0x0328, 0x032D, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x00A8, 0x0270, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00BA, 0x02C8, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02EE, 0x02EB, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00D8, 0x02AE, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x003E, 0x047A, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x014F, 0x01F4, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01B4, 0x0210, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x022B, 0x029A, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02F9, 0x03B6, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02FD, 0x037D, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00C7, 0x00CA, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03AC, 0x0161, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02CD, 0x0431, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02FA, 0x03AE, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02CB, 0x04E2, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01A5, 0x02F1, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00F6, 0x037D, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x009A, 0x0206, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0150, 0x01C5, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x025F, 0x0159, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x008A, 0x0027, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03E7, 0x0141, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01D2, 0x03DC, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0029, 0x025A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0111, 0x0111, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x016F, 0x0111, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01BB, 0x0205, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0112, 0x0205, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x021C, 0x0492, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x00B6, 0x0490, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x033E, 0x047B, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02E8, 0x042D, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03AA, 0x0182, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03F7, 0x008A, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0184, 0x0402, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0061, 0x029A, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x01BE, 0x0307, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0044, 0x022F, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x003E, 0x012F, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x0255, 0x021F, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x023D, 0x01D4, CCDirection.Up, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x02B4, 0x0463, CCDirection.Left, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02CB, 0x0433, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0143, 0x03C3, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0307, 0x000C, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0236, 0x04E6, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02C6, 0x01AC, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02C6, 0x04E3, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x03F6, 0x0439, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0185, 0x03C1, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x02B5, 0x04F9, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x007F),
	TeleportDestination(0x0036, 0x04AE, CCDirection.Right, WarpStyle.STANDARD_DOOR_WHITE_SLOW_SOUND, 0x0000),
	TeleportDestination(0x0019, 0x02F6, CCDirection.Down, WarpStyle.STANDARD_DOOR_WHITE, 0x0000),
	TeleportDestination(0x0030, 0x03B9, CCDirection.Down, WarpStyle.STANDARD_DOOR_WHITE, 0x0000),
	TeleportDestination(0x03D0, 0x0166, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x03D2, 0x0166, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x03B0, 0x0039, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x00DA, 0x008E, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x00C8, 0x044A, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x02A5, 0x0158, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x0107, 0x0374, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x03DD, 0x0182, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x0180, 0x0080, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x022C, 0x01B3, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x03B0, 0x0039, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x00D9, 0x0091, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x002E, 0x03B9, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x034C, 0x0431, CCDirection.Down, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x0037, 0x002A, CCDirection.Right, WarpStyle.STANDARD_DOOR, 0x0000),
	TeleportDestination(0x03C7, 0x023C, CCDirection.Right, WarpStyle.MOONSIDE9, 0x0000),
	TeleportDestination(0x0000, 0x0000, CCDirection.Undefined, WarpStyle.INSTANT_PLUS_FADE, 0x0000),
];

/// $D5EA77
immutable CondimentTableEntry[44] CondimentTable = [
	CondimentTableEntry(ItemID.Cookie, [ItemID.JAR_OF_DELISAUCE, ItemID.TIN_OF_COCOA], 0x00, 0x02, 0x02, 0x00),
	CondimentTableEntry(ItemID.BagOfFries, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x08, 0x02, 0x00),
	CondimentTableEntry(ItemID.Hamburger, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x10, 0x02, 0x00),
	CondimentTableEntry(ItemID.BoiledEgg, [ItemID.JAR_OF_DELISAUCE, ItemID.SALT_PACKET], 0x00, 0x0E, 0x02, 0x00),
	CondimentTableEntry(ItemID.FreshEgg, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x1C, 0x02, 0x00),
	CondimentTableEntry(ItemID.PicnicLunch, [ItemID.JAR_OF_DELISAUCE, ItemID.SALT_PACKET], 0x00, 0x1C, 0x02, 0x00),
	CondimentTableEntry(ItemID.PASTA_DI_SUMMERS, [ItemID.JAR_OF_DELISAUCE, ItemID.JAR_OF_HOT_SAUCE], 0x00, 0x24, 0x02, 0x00),
	CondimentTableEntry(ItemID.Pizza, [ItemID.JAR_OF_DELISAUCE, ItemID.JAR_OF_HOT_SAUCE], 0x00, 0x28, 0x02, 0x00),
	CondimentTableEntry(ItemID.CHEFS_SPECIAL, [ItemID.JAR_OF_DELISAUCE, ItemID.SALT_PACKET], 0x00, 0x48, 0x02, 0x00),
	CondimentTableEntry(ItemID.PSI_CARAMEL, [ItemID.JAR_OF_DELISAUCE, ItemID.SUGAR_PACKET], 0x01, 0x28, 0x28, 0x00),
	CondimentTableEntry(ItemID.MAGIC_TRUFFLE, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x01, -96, 0xA0, 0x00),
	CondimentTableEntry(ItemID.BRAIN_FOOD_LUNCH, [ItemID.JAR_OF_DELISAUCE, ItemID.SALT_PACKET], 0x02, 0x00, 0x00, 0x00),
	CondimentTableEntry(ItemID.ROCK_CANDY, [ItemID.JAR_OF_DELISAUCE, ItemID.SUGAR_PACKET], 0x03, 0x02, 0x02, 0x00),
	CondimentTableEntry(ItemID.CROISSANT, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x14, 0x02, 0x00),
	CondimentTableEntry(ItemID.BREAD_ROLL, [ItemID.JAR_OF_DELISAUCE, ItemID.SUGAR_PACKET], 0x00, 0x0A, 0x02, 0x00),
	CondimentTableEntry(ItemID.TROUT_YOGURT, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x00, 0x0A, 0x02, 0x00),
	CondimentTableEntry(ItemID.BANANA, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x00, 0x08, 0x02, 0x00),
	CondimentTableEntry(ItemID.CALORIE_STICK, [ItemID.JAR_OF_DELISAUCE, ItemID.SUGAR_PACKET], 0x00, 0x14, 0x02, 0x00),
	CondimentTableEntry(ItemID.GELATO_DE_RESORT, [ItemID.JAR_OF_DELISAUCE, ItemID.TIN_OF_COCOA], 0x00, 0x0A, 0x02, 0x00),
	CondimentTableEntry(ItemID.MAGIC_TART, [ItemID.JAR_OF_DELISAUCE, ItemID.SUGAR_PACKET], 0x01, 0x28, 0x28, 0x00),
	CondimentTableEntry(ItemID.CUP_OF_NOODLES, [ItemID.JAR_OF_DELISAUCE, ItemID.JAR_OF_HOT_SAUCE], 0x00, 0x0E, 0x02, 0x00),
	CondimentTableEntry(ItemID.SKIP_SANDWICH, [ItemID.JAR_OF_DELISAUCE, ItemID.TIN_OF_COCOA], 0x00, 0x02, 0x02, 0x78),
	CondimentTableEntry(ItemID.SKIP_SANDWICH_DX, [ItemID.JAR_OF_DELISAUCE, ItemID.TIN_OF_COCOA], 0x00, 0x02, 0x02, 0xF0),
	CondimentTableEntry(ItemID.LUCKY_SANDWICH1, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x00, 0x14, 0x02, 0x00),
	CondimentTableEntry(ItemID.LUCKY_SANDWICH2, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x00, 0x50, 0x02, 0x00),
	CondimentTableEntry(ItemID.LUCKY_SANDWICH3, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x00, 0x00, 0x02, 0x00),
	CondimentTableEntry(ItemID.LUCKY_SANDWICH4, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x01, 0x0A, 0x02, 0x00),
	CondimentTableEntry(ItemID.LUCKY_SANDWICH5, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x01, 0x28, 0x02, 0x00),
	CondimentTableEntry(ItemID.LUCKY_SANDWICH6, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x02, 0x00, 0x02, 0x00),
	CondimentTableEntry(ItemID.DOUBLE_BURGER, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x20, 0x02, 0x00),
	CondimentTableEntry(ItemID.PEANUT_CHEESE_BAR, [ItemID.JAR_OF_DELISAUCE, ItemID.SPRIG_OF_PARSLEY], 0x00, 0x24, 0x02, 0x00),
	CondimentTableEntry(ItemID.PIGGY_JELLY, [ItemID.JAR_OF_DELISAUCE, ItemID.SPRIG_OF_PARSLEY], 0x00, 0x64, 0x02, 0x00),
	CondimentTableEntry(ItemID.BOWL_OF_RICE_GRUEL, [ItemID.JAR_OF_DELISAUCE, ItemID.SPRIG_OF_PARSLEY], 0x00, 0x48, 0x02, 0x00),
	CondimentTableEntry(ItemID.BEAN_CROQUETTE, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x0E, 0x02, 0x00),
	CondimentTableEntry(ItemID.PLAIN_ROLL, [ItemID.JAR_OF_DELISAUCE, ItemID.TIN_OF_COCOA], 0x00, 0x1C, 0x02, 0x00),
	CondimentTableEntry(ItemID.KABOB, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x2A, 0x02, 0x00),
	CondimentTableEntry(ItemID.PLAIN_YOGURT, [ItemID.JAR_OF_DELISAUCE, ItemID.SUGAR_PACKET], 0x00, 0x38, 0x02, 0x00),
	CondimentTableEntry(ItemID.BEEF_JERKY, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x32, 0x02, 0x00),
	CondimentTableEntry(ItemID.MAMMOTH_BURGER, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x44, 0x02, 0x00),
	CondimentTableEntry(ItemID.SPICY_JERKY, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x54, 0x02, 0x00),
	CondimentTableEntry(ItemID.LUXURY_JERKY, [ItemID.JAR_OF_DELISAUCE, ItemID.KETCHUP_PACKET], 0x00, 0x64, 0x02, 0x00),
	CondimentTableEntry(ItemID.MAGIC_PUDDING, [ItemID.JAR_OF_DELISAUCE, ItemID.SUGAR_PACKET], 0x01, 0x50, 0x50, 0x00),
	CondimentTableEntry(ItemID.POPSICLE, [ItemID.JAR_OF_DELISAUCE, ItemID.CARTON_OF_CREAM], 0x00, 0x06, 0x02, 0x00),
	CondimentTableEntry(0, [0, 0], 0, 0, 0, 0)
];

/// $D5F4BB
immutable TimedItemTransformation[4] TimedItemTransformationTable = [
	TimedItemTransformation(ItemID.FreshEgg, Sfx.None, 0, ItemID.Chick, 0x32),
	TimedItemTransformation(ItemID.Chick, Sfx.Cheep, 2, ItemID.Chicken, 0x2C),
	TimedItemTransformation(ItemID.Chicken, Sfx.Cluck, 15, ItemID.None, 0),
	TimedItemTransformation(ItemID.None, Sfx.None, 0, ItemID.None, 0),
];

/// $D5F4CF
immutable char[6][7][7] dontCareNames = [
	[
		"Ness",
		"Alec",
		"Roger",
		"Will",
		"Brian",
		"Tyler",
		"Lane",
	],
	[
		"Paula",
		"Nancy",
		"Skye",
		"Paige",
		"Marie",
		"Holly",
		"Jane",
	],
	[
		"Jeff",
		"Dan",
		"Henry",
		"Isaac",
		"Ralph",
		"Sean",
		"Rob",
	],
	[
		"Poo",
		"Kato",
		"Kai",
		"Omar",
		"Ramin",
		"Aziz",
		"Lado",
	],
	[
		"King",
		"Peach",
		"Sparky",
		"Rex",
		"Baby",
		"Rover",
		"Misty",
	],
	[
		"Steak",
		"Pie",
		"Pasta",
		"Cake",
		"Eggs",
		"Bread",
		"Salmon",
	],
	[
		"Rockin",
		"Hammer",
		"Love",
		"Gifts",
		"Slime",
		"Gaming",
		"Boxing",
	]
];

/// $D5F645
immutable TimedDelivery[10] TimedDeliveries = [
	TimedDelivery(0x97, EventFlag.Unknown0B4, 0x0006, 0x000F, 0x00B4, null /+TextDelivery1+/, null /+TextDelivery1_2+/, [0x00, 0x02, 0x00, 0x02]),
	TimedDelivery(0x87, EventFlag.Unknown0B5, 0x0006, 0x000F, 0x000A, null /+TextDelivery2+/, null /+TextDelivery2_2+/, [0x80, 0x01, 0x80, 0x01]),
	TimedDelivery(0x87, EventFlag.Unknown285, 0x0006, 0x000F, 0x000A, null /+TextDelivery3+/, null /+TextDelivery3_2+/, [0x80, 0x01, 0x80, 0x01]),
	TimedDelivery(0x37, EventFlag.ForSaleSignNPC1Coming, 0x0006, 0x000F, 0x0001, null /+TextDelivery4+/, null /+TextDelivery4_2+/, [0x80, 0x02, 0x80, 0x02]),
	TimedDelivery(0x6C, EventFlag.ForSaleSignNPC2Coming, 0x0006, 0x000F, 0x0002, null /+TextDelivery5+/, null /+TextDelivery4_2+/, [0x80, 0x02, 0x80, 0x02]),
	TimedDelivery(0x70, EventFlag.ForSaleSignNPC3Coming, 0x0006, 0x000F, 0x0003, null /+TextDelivery6+/, null /+TextDelivery4_2+/, [0x80, 0x02, 0x80, 0x02]),
	TimedDelivery(0x55, EventFlag.ForSaleSignNPC4Coming, 0x0006, 0x000F, 0x0004, null /+TextDelivery7+/, null /+TextDelivery4_2+/, [0x80, 0x02, 0x80, 0x02]),
	TimedDelivery(0x97, EventFlag.DeliveringZombiePaper, 0x00FF, 0x00FF, 0x0005, null /+TextDelivery8+/, null /+TextDelivery8_2+/, [0x80, 0x01, 0x80, 0x01]),
	TimedDelivery(0x87, EventFlag.Unknown2B6, 0x0006, 0x000F, 0x000A, null /+TextDelivery9+/, null /+TextDelivery9_2+/, [0x80, 0x01, 0x80, 0x01]),
	TimedDelivery(0x87, EventFlag.Unknown2B7, 0x0006, 0x000F, 0x000A, null /+TextDelivery10+/, null /+TextDelivery10_2+/, [0x80, 0x01, 0x80, 0x01]),
];
