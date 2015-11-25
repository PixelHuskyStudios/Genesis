///startingValues()

global.item[0, 1] = "item_health"; //Health Pot

global.item[1, 1] = "item_mana"; //Mana Pot

global.item[2, 1] = "item_coins"; //Coins

global.item[3, 1] = "helm_basic"; //Basic Helmet

global.item[4, 1] = "chest_basic"; //Basic Chest

global.item[5, 1] = "leg_basic"; //Basic Leggins

global.item[6, 1] = "item_sword"; //Basic Sword

for (i = 0; i < array_height_2d(global.item); i++) {
    global.item[i, 0] = i;
}
