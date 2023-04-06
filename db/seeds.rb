puts "🌱 Seeding spices..."

# Seed your database here
Outfit.create(
    name: "Cozy Comfy",
    last_worn: "03-31-2023"
)

Outfit.create(
    name: "Green Floral Set",
    last_worn: "04-06-2023"
)

Article.create(
    name: "lululemon Ribbed Leggings",
    outfit_id: 1,
    url: "https://images.lululemon.com/is/image/lululemon/LW5FJTS_0001_1?wid=1800&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72",
    price: 118
    )
Article.create(
    name: "Badtz-Maru Sweater",
    outfit_id: 1,
    url: "https://www.forever21.com/dw/image/v2/BFKH_PRD/on/demandware.static/-/Sites-f21-master-catalog/default/dwf71949c6/2_side_750/00467337-03.jpg?sw=1000&sh=1500",
    price: 10.99
    )
Article.create(
    name: "All Saints Liner Jacket",
    outfit_id: 1,
    url: "https://www.allsaints.com/dw/image/v2/BHHD_PRD/on/demandware.static/-/Sites-allsaints-us-master-catalog/default/dwe970423e/images/large/WO098X/750/WO098X-750-2.jpg?sw=3000&sh=3000&sm=fit&q=70",
    price: 399
    )
Article.create(
    name:  "Green Floral Mini Skirt",
    outfit_id: 2,
    url: "https://www.lulus.com/images/product/xlarge/9180761_1870276.jpg?w=560",
    price: 49
)
Article.create(
    name:  "Green Floral Crop Top",
    outfit_id: 2,
    url: "https://www.lulus.com/images/product/xlarge/9180841_1870376.jpg?w=560",
    price: 19
)

puts "✅ Done seeding!"
