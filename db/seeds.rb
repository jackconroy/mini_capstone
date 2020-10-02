Supplier.create!([
  {name: "SupraFootwear", email: "supra@gmail.com", phone_number: "111-223-3456"},
  {name: "Cage Imports", email: "NickCage@gmail.com", phone_number: "222-234-98766"},
  {name: "The Store", email: "store@gmail.com", phone_number: "333-556-7754"},
  {name: "SupraFootwear", email: "supra@gmail.com", phone_number: "111-223-3456"},
  {name: "Cage Imports", email: "NickCage@gmail.com", phone_number: "222-234-98766"},
  {name: "The Store", email: "store@gmail.com", phone_number: "333-556-7754"}
])
Product.create!([
  {name: "High Fashion Sweatshirt", price: "60.0", description: "The only one you'll ever need", inventory: 10, supplier_id: 2},
  {name: "High Fashion Sweatpants", price: "50.0", description: "Oh yeah, there's more.", inventory: 10, supplier_id: 2},
  {name: "Supra Vader's", price: "70.0", description: "Dope kicks fresh and ready for whatever you have planned.", inventory: 10, supplier_id: 1},
  {name: "Hip Hop T Shirt", price: "120.0", description: "Kanye's own hip hop 120 dollar white tee", inventory: 10, supplier_id: 3},
  {name: "Indiana Jones Hat", price: "80.0", description: "A classic, made famous and worn best by Harrison Ford.", inventory: 10, supplier_id: 3},
  {name: "Jeans from Footloose", price: "700.0", description: "The price is high but the value is priceless", inventory: 1, supplier_id: 3},
  {name: "Sandals", price: "19.0", description: "Some sweet wooden sandals.", inventory: 10, supplier_id: 3},
  {name: "Bladerunner Replica Blaster", price: "150.0", description: "The greatest sci-fi movie handgun ever made. A replica(nt) to be sure.", inventory: 3, supplier_id: 3}
])

Image.create(product_id: 1, URL: "https://contestimg.wish.com/api/webimage/5d949a969316231edc81d68e-2-large.jpg")
Image.create(product_id: 2, URL:"https://contestimg.wish.com/api/webimage/5d949a969316231edc81d68e-4-large.jpg")
Image.create(product_id: 3, URL: "https://scene7.zumiez.com/is/image/zumiez/pdp_hero/Supra-Vaider-Black%2C-Gum%2C-Suede-%26-Canvas-Skate-Shoes--_294268-front-US.jpg")
Image.create(product_id: 4, URL: "https://cdn2.thelineofbestfit.com/media/2013/07/kanye_apc_hip_hop_shirt-500x285.jpg")
Image.create(product_id: 5, URL: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWjpPIKUw5mS9znarYsfx0HtM9_rmDy_HBzw&usqp=CAU")
Image.create(product_id: 5, URL: "https://cdn.shopify.com/s/files/1/2121/1571/products/IJ559_BROWN_3Q_1000x.jpg?v=1571309048")
Image.create(product_id: 6, URL: "https://www.thesun.co.uk/wp-content/uploads/2017/05/nintchdbpict000321649328.jpg")
Image.create(product_id: 7, URL: "https://www.wikihow.com/images/thumb/8/88/Make-a-Pair-of-Geta-%28Wooden-Sandals%29-Step-13.jpg/aid44316-v4-728px-Make-a-Pair-of-Geta-%28Wooden-Sandals%29-Step-13.jpg.webp")
Image.create(product_id: 8, URL: "https://www.alloutdoor.com/wp-content/uploads/2017/10/400px-Bladerunner-blaster.jpg")