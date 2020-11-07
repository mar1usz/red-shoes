# Red Shoes
A database-backed [JSON:API](http://jsonapi.org/) in Ruby and Rails:
```HTTP
GET api/brands/1
```

```JavaScript
{
    "data": {
        "id": "1",
        "type": "brand",
        "attributes": {
            "name": "Nike"
        },
        "relationships": {
            "shoes": {
                "data": [
                    {
                        "id": "1",
                        "type": "shoe"
                    },
                    {
                        "id": "2",
                        "type": "shoe"
                    },
                    {...}
                ]
            }
        }
    }
}
```

```HTTP
GET api/brands/1/shoes
```

```JavaScript
{
    "data": [
        {
            "id": "1",
            "type": "shoe",
            "attributes": {
                "brand_id": 1,
                "name": "Air Jordan I OG",
                "color": "Black / Red",
                "year": 1985
            },
            "relationships": {
                "brand": {
                    "data": {
                        "id": "1",
                        "type": "brand"
                    }
                }
            }
        },
        {
            "id": "2",
            "type": "shoe",
            "attributes": {
                "brand_id": 1,
                "name": "Air Jordan I OG",
                "color": "Black / Royal Blue",
                "year": 1985
            },
            "relationships": {
                "brand": {
                    "data": {
                        "id": "1",
                        "type": "brand"
                    }
                }
            }
        },
        {...}
    ]
}
```

## Prerequisites:
- Ruby 2.7.1
- Rails 6
- PostgreSQL 12

## Build and run:
### PostgreSQL:
- specify the username, password, host and port in config/database.yml
- `rails db:create`
- `rails db:migrate`
- `rails db:seed`
### Rails / Launchy:
- `rails server`

## Credits:
- Rails Scaffold Generator by https://github.com/rails/rails (MIT license)
- fast_jsonapi by https://github.com/Netflix/fast_jsonapi (Apache-2.0 license)
- restful-jsonapi by https://github.com/Netflix/restful-jsonapi (MIT license)
