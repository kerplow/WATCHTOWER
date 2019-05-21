puts 'Cleaning database...'
Watch.destroy_all
User.destroy_all

puts "Creating users...."
users_attributes = [
  {
    username:   'Barack Obama',
    email:      'barack@example.com',
    password:   '123456',
    address:    'Street 1, Washington',
  },
  {
    username:   'George Bush',
    email:      'george@example.com',
    password:   '123456',
    address:    'Street 2, Dallas',
  },
  {
    username:   'Bill Clinton',
    email:      'bill@example.com',
    password:   '123456',
    address:    'Street 4, NYC',
  },
  {
    username:   'Margaret Tatcher',
    email:      'maggie@example.com',
    password:   '123456',
    address:    'Pont street, London',
  },
]

users = User.create!(users_attributes)

puts "Creating watches...."
watches_attributes = [
  {
    watch_brand:        'Hublot',
    watch_model:        'Big Bang',
    watch_category:     'Sports',
    rental_price:       '150',
    retail_price:       '5600',
    gender:             'Men',
    availability_start: '2019-06-20',
    availability_end:   '2022-08-18',
    user:               users[0],
    watch_image:        File.open(Rails.root.join("db/fixtures/watches/hublot-big-bang.png"))
  },
  {
    watch_brand:        'Rolex',
    watch_model:        'GMT-Master II',
    watch_category:     'Slim',
    rental_price:       '220',
    retail_price:       '7700',
    gender:             'Men',
    availability_start: '2019-02-14',
    availability_end:   '2023-02-22',
    user:               users[1],
    watch_image:        File.open(Rails.root.join("db/fixtures/watches/rolex-gmt-master.png"))
  },
 {
    watch_brand:        'Patek Philippe',
    watch_model:        'Calatrava',
    watch_category:     'Quartz',
    rental_price:       '180',
    retail_price:       '5100',
    gender:             'Women',
    availability_start: '2019-01-18',
    availability_end:   '2023-07-01',
    user:               users[2],
    watch_image:        File.open(Rails.root.join("db/fixtures/watches/patek-philippe-calatrava.png"))
  },
  {
    watch_brand:        'Zenith',
    watch_model:        'El Primero',
    watch_category:     'Mechanical',
    rental_price:       '130',
    retail_price:       '1900',
    gender:             'Women',
    availability_start: '2019-05-10',
    availability_end:   '2022-09-15',
    user:               users[3],
    watch_image:        File.open(Rails.root.join("db/fixtures/watches/zenith-el-primero.png"))
  },
  {
    watch_brand:        'Longines',
    watch_model:        'Master Collection',
    watch_category:     'Titanium',
    rental_price:       '150',
    retail_price:       '1080',
    gender:             'Men',
    availability_start: '2019-08-15',
    availability_end:   '2021-01-01',
    user:               users[0],
    watch_image:        File.open(Rails.root.join("db/fixtures/watches/longines-master-collection.png"))
  },
   {
    watch_brand:        'Cartier',
    watch_model:        'Tank',
    watch_category:     'Titanium',
    rental_price:       '270',
    retail_price:       '3300',
    gender:             'Women',
    availability_start: '2019-04-18',
    availability_end:   '2022-11-10',
    user:               users[1],
    watch_image:        File.open(Rails.root.join("db/fixtures/watches/cartier-tank.png"))
  },
  {
    watch_brand:         'IWC',
    watch_model:         'Portfofino',
    watch_category:      'Slim',
    rental_price:        '180',
    retail_price:        '1600',
    gender:              'Women',
    availability_start:  '2019-02-12',
    availability_end:    '2027-06-07',
    user:                 users[2],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/iwc-portofino.png"))
  },
 {
    watch_brand:         'Rolex',
    watch_model:         'Daytona',
    watch_category:      'Sports',
    rental_price:        '450',
    retail_price:        '11200',
    gender:              'Men',
    availability_start:  '2019-05-02',
    availability_end:    '2023-08-20',
    user:                 users[3],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/rolex-daytona.png"))
  },
  {
    watch_brand:         'Zenith',
    watch_model:         'Elite',
    watch_category:      'Sports',
    rental_price:        '150',
    retail_price:        '1300',
    gender:              'Men',
    availability_start:  '2019-01-01',
    availability_end:    '2025-05-18',
    user:                 users[0],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/zenith-elite.png"))
  },
  {
    watch_brand:         'Vacheron Constantin',
    watch_model:         'Malte',
    watch_category:      'Slim',
    rental_price:        '300',
    retail_price:        '6600',
    gender:              'Women',
    availability_start:  '2019-12-12',
    availability_end:    '2028-04-20',
    user:                 users[1],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/vacheron-constantin-elite.png"))
  },
  {
    watch_brand:         'Cartier',
    watch_model:         'Ballon Bleu',
    watch_category:      'Sports',
    rental_price:        '250',
    retail_price:        '3700',
    gender:              'Men',
    availability_start:  '2019-05-12',
    availability_end:    '2020-12-20',
    user:                users[2],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/cartier-ballon-bleu.png"))
  },
  {
    watch_brand:         'Tag Heuer',
    watch_model:         'Monaco',
    watch_category:      'Titanium',
    rental_price:        '150',
    retail_price:        '1600',
    gender:              'Men',
    availability_start:  '2019-08-12',
    availability_end:    '2024-02-20',
    user:                users[3],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/tag-heuer-monaco.png"))
  },
 {
    watch_brand:         'Longines',
    watch_model:         'DolceVita',
    watch_category:      'Sports',
    rental_price:        '150',
    retail_price:        '700',
    gender:              'Women',
    availability_start:  '2019-06-15',
    availability_end:    '2029-08-25',
    user:                 users[0],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/longines-dolce-vita.png"))
  },
  {
    watch_brand:         'Breguet',
    watch_model:         'Moonphase',
    watch_category:      'Titanium',
    rental_price:        '700',
    retail_price:        '23900',
    gender:              'Men',
    availability_start:  '2019-03-12',
    availability_end:    '2025-12-02',
    user:                users[1],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/breguet-moon.jpg"))
  },
  {
    watch_brand:         'Audemars Piguet',
    watch_model:         'Royal Oak Concept',
    watch_category:      'Quartz',
    rental_price:        '400',
    retail_price:        '11500',
    gender:              'Women',
    availability_start:  '2019-08-14',
    availability_end:    '2026-07-19',
    user:                users[2],
    watch_image:         File.open(Rails.root.join("db/fixtures/watches/audemars-piguet-royal-oak.png"))
  }
]

Watch.create!(watches_attributes)
