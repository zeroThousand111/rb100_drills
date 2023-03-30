PRODUCTS = [
    { name: 'Thinkpad x210', price: 220 },
    { name: 'Thinkpad x220', price: 250 },
    { name: 'Thinkpad x250', price: 979 },
    { name: 'Thinkpad x230', price: 300 },
    { name: 'Thinkpad x230', price: 330 },
    { name: 'Thinkpad x230', price: 350 },
    { name: 'Thinkpad x240', price: 700 },
    { name: 'Macbook Leopard', price: 300 },
    { name: 'Macbook Air', price: 700 },
    { name: 'Macbook', price: 1449 },
    { name: 'Dell Latitude', price: 200 },
    { name: 'Dell Latitude', price: 650 },
    { name: 'Dell Inspiron', price: 300 },
    { name: 'Dell Inspiron', price: 450 }
    ]

query1 = {price_min: 240, price_max: 280, q: 'thinkpad'}

query2 = {price_min: 300, price_max: 450, q: 'dell'}

def search(query)
    selection_array = PRODUCTS.select do |element|
        ((query[:price_min]..query[:price_max]).include? element[:price]) && (element[:name].downcase.include? query[:q])
    end
    p selection_array
end

search(query1)
# output should be [{ name: "Thinkpad x220", price: 250}]

search(query2)
# output should be [{ name: "Dell Inspiron", price: 300}, {name: "Dell Inspiron", price: 450}]