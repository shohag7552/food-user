

import 'package:food_user_app/app/common/models/category_wise_food.dart';

class CategoryFood {
  final List<CategoryWiseFood> categories = [
    CategoryWiseFood(
      id: 1,
      category: 'Fruits',
      foodItems: [
        FoodItem(
          id: 1,
          name: 'Apple',
          price: 1.99,
          description: 'An apple a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/108350315/photo/child-holding-an-apple.jpg?s=612x612&w=0&k=20&c=stOOxsmuwEDe4pmxcfChDoK5KFJ-9Ts3z4xDwabx5ZQ=',
        ),
        FoodItem(
          id: 2,
          name: 'Banana',
          price: 0.99,
          description: 'A banana a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/619046500/photo/bananas.jpg?s=612x612&w=0&k=20&c=p5-v1iKwhOhw5cFjfx83qgaZcOBSVpUuicZi4VIGF2Y=',
        ),
        FoodItem(
          id: 3,
          name: 'Orange',
          price: 1.49,
          description: 'An orange a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/182463420/photo/tangerine-duo-with-leafs.jpg?s=612x612&w=0&k=20&c=d3JZRAqgqZ5RWyN4ryFteCnmFNbeD9e3TNJkS2IC0vU=',
        ),
        FoodItem(
          id: 4,
          name: 'Cherry',
          price: 1.80,
          description: 'An apple a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/519050468/photo/close-up-of-fresh-cherry.jpg?s=612x612&w=0&k=20&c=uFqIGBRypPFd_OFYf2DdVJ1PypXITrq502imfm333_k=',
        ),
        FoodItem(
          id: 5,
          name: 'Strawberry',
          price: 1.99,
          description: 'A banana a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/471674664/photo/two-strawberries-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=a5g5o0t4M5qGInHo4gKNa07TRdz0HHzZ31UmGW9HuBk=',
        ),
        FoodItem(
          id: 6,
          name: 'Pineapple',
          price: 1.51,
          description: 'An orange a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1217479737/photo/pineapple-with-slices-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=KYxsZ-Bv1tEgjrOmH9qxak06iTK9S5betgteqTuDzhU=',
        ),
        FoodItem(
          id: 7,
          name: 'Grapes',
          price: 1.99,
          description: 'An apple',
          image: 'https://media.istockphoto.com/id/496701460/photo/grapes-harvest.jpg?s=612x612&w=0&k=20&c=vgCB0RJRDQuHZaeJdYP8Z7mViti3CgqE6lf5XYoTXR4=',
        ),

      ],
    ),

    CategoryWiseFood(
      id: 2,
      category: 'Vegetables',
      foodItems: [
        FoodItem(
          id: 4,
          name: 'Carrot',
          price: 0.99,
          description: 'A carrot a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1388403435/photo/fresh-carrots-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=XmrTb_nASc7d-4zVKUz0leeTT4fibDzWi_GpIun0Tlc=',
        ),
        FoodItem(
          id: 5,
          name: 'Tomato',
          price: 1.49,
          description: 'A tomato a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1159189277/photo/fresh-tomatoes-isolated-on-wooden-background-harvesting-tomatoes-tomato-with-droplets-of-water.jpg?s=612x612&w=0&k=20&c=aSMuh8GwY_7cr9FFdCis5nw4lgOM8QPzmCmHEw6fAL0=',
        ),
        FoodItem(
          id: 6,
          name: 'Potato',
          price: 0.99,
          description: 'A potato a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/157430678/photo/three-potatoes.jpg?s=612x612&w=0&k=20&c=qkMoEgcj8ZvYbzDYEJEhbQ57v-nmkHS7e88q8dv7TSA=',
        ),
        FoodItem(
          id: 7,
          name: 'Broccoli',
          price: 1.29,
          description: 'A broccoli a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/183300149/photo/broccoli.jpg?s=612x612&w=0&k=20&c=ryP5FrMKK8ejTMX04iMUVpOTyfL_Sgb2fYmeQzKQeng=',
        ),
        FoodItem(
          id: 8,
          name: 'Spinach',
          price: 1.99,
          description: 'A spinach a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/169983791/photo/spinach.jpg?s=612x612&w=0&k=20&c=1L9qJL3BTYurO97HyExfESkKyFREzR35EReHHlh9ibk=',
        ),
        FoodItem(
          id: 9,
          name: 'Pepper',
          price: 1.49,
          description: 'A pepper a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/157568993/photo/three-bell-peppers-a-red-a-yellow-and-an-orange-one.jpg?s=612x612&w=0&k=20&c=uj3OgcABQonRxBw0b_r1DBtjbVk7c5VP-8HmXja2LFU=',
        ),
      ],
    ),

    CategoryWiseFood(
      id: 3,
      category: 'Meat',
      foodItems: [
        FoodItem(
          id: 7,
          name: 'Chicken',
          price: 4.99,
          description: 'A chicken a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/511486326/photo/raw-chicken-fillets-close-up-isolated-on-white.jpg?s=612x612&w=0&k=20&c=ptabozbp4iO9pLZONQqjlUTSUfUl02Df37G19IOIfGU=',
        ),
        FoodItem(
          id: 8,
          name: 'Beef',
          price: 5.99,
          description: 'A beef a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/935316446/photo/fresh-raw-rib-eye-steaks-isolated-on-white.jpg?s=612x612&w=0&k=20&c=UBnLccI6y47Vynuxa2BybZS0jPUtEqpJvL4LzVgGSOg=',
        ),
        FoodItem(
          id: 9,
          name: 'Pork',
          price: 3.99,
          description: 'A pork a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/469354734/photo/fresh-and-raw-meat-sirloin-medallions-steaks.jpg?s=612x612&w=0&k=20&c=OH-FtjIgFS2psxomUDTZ450Zc35VvyZCQP2w64cbl_4=',
        ),
        FoodItem(
          id: 10,
          name: 'Lamb',
          price: 6.99,
          description: 'A lamb a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/538918713/photo/lamb-chops.jpg?s=612x612&w=0&k=20&c=qRiDgM6Pp7mKLcIf_hIy6o4jom6J-wGrtkRMaXw5RaM=',
        ),
        FoodItem(
          id: 11,
          name: 'Turkey',
          price: 4.99,
          description: 'A turkey a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1282866808/photo/fresh-raw-chicken.jpg?s=612x612&w=0&k=20&c=QtfdAhdeIGpR3JUNDmYFo6cN0el8oYMcOXMQI7Qder4=',
        ),
        FoodItem(
          id: 12,
          name: 'Duck',
          price: 5.49,
          description: 'A duck a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1265526176/photo/duck-leg-confit-with-mushroom-sauce-on-black-plate-slate-background-top-view.jpg?s=612x612&w=0&k=20&c=3moFA8YoU66j4JiyTVH3Psa3pYM5jyZ5Y1_veMSD-rg=',
        ),
      ],
    ),

    CategoryWiseFood(
      id: 4,
      category: 'Fish',
      foodItems: [
        FoodItem(
          id: 10,
          name: 'Salmon',
          price: 6.99,
          description: 'A salmon a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/846068022/photo/baked-salmon-steak-with-tomato-onion-mix-of-green-leaves-salad-in-a-plate-healthy-food.jpg?s=612x612&w=0&k=20&c=nHogUMy6S_0r8PPo6nG4WLDR0uIMTlhreh68zWXy610=',
        ),
        FoodItem(
          id: 11,
          name: 'Tuna',
          price: 5.99,
          description: 'A tuna a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1035953564/photo/grilled-tuna-steak-with-pepper-and-avocado-cucumber-salsa-close-up-horizontal.jpg?s=612x612&w=0&k=20&c=YNFXT3u8uc3azwNzAnkKruyXmdrjTQeA6WfAQX_Y0VU=',
        ),
        FoodItem(
          id: 12,
          name: 'Cod',
          price: 4.99,
          description: 'A cod a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1230001174/photo/fried-cod-fillet-with-fresh-vegetables.jpg?s=612x612&w=0&k=20&c=d3zoqHtISpWslyS-g7iLBZnuKog3zFg2jdmfw8LlfaY=',
        ),
        FoodItem(
          id: 13,
          name: 'Trout',
          price: 5.49,
          description: 'A trout a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/856544254/photo/fish-meal.jpg?s=612x612&w=0&k=20&c=VNOl95jkYw53dG9gnRxY5tTsPDEdrUWcSjeYXZDgMao=',
        ),
        FoodItem(
          id: 14,
          name: 'Bass',
          price: 6.49,
          description: 'A bass a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/942666862/photo/seabass-with-beautiful-presentation.jpg?s=612x612&w=0&k=20&c=tJMEXGsoZx-eUqA7NWY3kWfdxfZjg1Ofm_A03H-LAPA=',
        ),
        FoodItem(
          id: 15,
          name: 'Mackerel',
          price: 4.49,
          description: 'A mackerel a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1292943746/photo/sandwich-with-mackerel-fish-cucumber-and-mustard-black-background-top-view.jpg?s=612x612&w=0&k=20&c=KBjaK1znBp4fNOI2wPHS3df8ADOSmmRVe393GKjuU7M=',
        ),
      ],
    ),

    CategoryWiseFood(
      id: 5,
      category: 'Dairy',
      foodItems: [
        FoodItem(
          id: 13,
          name: 'Milk',
          price: 2.99,
          description: 'A milk a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1194725246/photo/woman-shopping-milk.jpg?s=612x612&w=0&k=20&c=iZLrhWvgRC1aJU15BA7nfTbSdNfxsWrjCPYG0Olgrd0=',
        ),
        FoodItem(
          id: 14,
          name: 'Cheese',
          price: 3.99,
          description: 'A cheese a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1434778198/photo/different-types-of-sarah-on-a-wooden-background-assortment-of-cheeses.jpg?s=612x612&w=0&k=20&c=Cju_uyrxUheQPZcp55V7hStTTbR_xZJqwLUuYsqDGQg=',
        ),
        FoodItem(
          id: 15,
          name: 'Yogurt',
          price: 1.99,
          description: 'A yogurt a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1356258302/photo/anonymous-afro-american-woman-pouring-a-smoothie-into-a-glass.jpg?s=612x612&w=0&k=20&c=4GA7qre0LlLP6jTYH8sFJXpJ9vTKg9eKSkCUg8OPWhE=',
        ),
      ],
    ),

    CategoryWiseFood(
      id: 6,
      category: 'Bakery',
      foodItems: [
        FoodItem(
          id: 16,
          name: 'Bread',
          price: 1.99,
          description: 'A bread a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1405538150/photo/different-types-of-baked-bread.jpg?s=612x612&w=0&k=20&c=hY-R9nGBw-KUQwHHJ_R2jdsE-SeAOLjpyFZDogH8sPc=',
        ),
        FoodItem(
          id: 17,
          name: 'Croissant',
          price: 2.99,
          description: 'A croissant a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1001971972/photo/breakfast-with-croissants-coffee-orange-juice-and-berries.jpg?s=612x612&w=0&k=20&c=wTVT_klrQJrY3_fMa23nl18vEa8KGUXokHSzB39t9hg=',
        ),
        FoodItem(
          id: 18,
          name: 'Baguette',
          price: 1.99,
          description: 'A baguette a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/931658626/photo/bread-baguettes-in-basket-at-baking-shop.jpg?s=612x612&w=0&k=20&c=rsyg0aaHMY2fPJG-E8SGJaWK_dS7YoiceDW2vVXLnSg=',
        ),
        
        FoodItem(
          id: 19,
          name: 'Muffin',
          price: 2.49,
          description: 'A muffin a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/958878618/photo/breakfast-cornmeal-muffins-with-raisins.jpg?s=612x612&w=0&k=20&c=E1tv_MGXv_UCKmofqBgOf6FnZel96SU8aw0a7SdpQwg=',
        ),
        FoodItem(
          id: 20,
          name: 'Donut',
          price: 1.49,
          description: 'A donut a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/534053642/photo/donuts-in-multicolored-glaze-close-up.jpg?s=612x612&w=0&k=20&c=PgLfztaXlKX1B8BP5Hb3uPOmQSQ6lIASiPGiecWlSYw=',
        ),
        FoodItem(
          id: 21,
          name: 'Bagel',
          price: 1.99,
          description: 'A bagel a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/534159727/photo/hearty-breakfast-sandwich-on-a-bagel.jpg?s=612x612&w=0&k=20&c=tUIgL9GFlT5wx9p9GVaSM85O03CERb9L3oE_xxaKJ5g=',
        ),
      ],
    ),

    CategoryWiseFood(
      id: 7,
      category: 'Drinks',
      foodItems: [
        FoodItem(
          id: 19,
          name: 'Water',
          price: 0.99,
          description: 'A water a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/185072125/photo/bottle-of-spring-water.jpg?s=612x612&w=0&k=20&c=8uCYpbrjtHF9Gx-P3zQ27aDafFB_oJcxzXzry9CrnRc=',
        ),
        FoodItem(
          id: 20,
          name: 'Juice',
          price: 1.99,
          description: 'A juice a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/120742288/photo/orange-juice.jpg?s=612x612&w=0&k=20&c=vOX4uGn3ikeILHPOiQz7Hc44XBxUMbbsythJStTFcOE=',
        ),
        FoodItem(
          id: 21,
          name: 'Soda',
          price: 1.99,
          description: 'A soda a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/489122917/photo/assorted-organic-craft-sodas.jpg?s=612x612&w=0&k=20&c=GacQ3_caSCgsYx7rJtCtMFIlHy7UNeRvshRdeq6L1gY=',
        ),
        FoodItem(
          id: 22,
          name: 'Tea',
          price: 1.49,
          description: 'A tea a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1015308848/photo/process-brewing-tea-tea-ceremony-cup-of-freshly-brewed-fruit-and-herbal-tea-dark-mood-hot.jpg?s=612x612&w=0&k=20&c=tMG594LYE3nSE7sn3OuX77R9U64kwBLZl-Vv-bnj9xM=',
        ),
        FoodItem(
          id: 23,
          name: 'Coffee',
          price: 2.49,
          description: 'A coffee a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/1224409272/photo/bottled-coffee.jpg?s=612x612&w=0&k=20&c=-D1-LvK3JnM2bSC6HSLdbsQhL6jBeKL4NJDainYTVzA=',
        ),
        FoodItem(
          id: 24,
          name: 'Milkshake',
          price: 2.99,
          description: 'A milkshake a day keeps the doctor away',
          image: 'https://media.istockphoto.com/id/534831661/photo/strawberry-regular-and-chocolate-milk-in-bottles-isolated.jpg?s=612x612&w=0&k=20&c=satdFw-w_CM-XXN2-FQwf17INx8hMo3HSTqT8l5ZhEI=',
        ),
      ],
    ),

  ];
}