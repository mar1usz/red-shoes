brands = Brand.create([
    {name: 'Nike'}
])

shoes = Shoe.create([
    {name: 'Air Jordan I OG', color: 'Black / Red', year: 1985, brand: brands.first},
    {name: 'Air Jordan I OG', color: 'Black / Royal Blue', year: 1985, brand: brands.first},
    {name: 'Air Jordan I OG', color: 'Black / Grey', year: 1985, brand: brands.first}
])