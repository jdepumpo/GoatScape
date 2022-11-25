# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "open-uri"

User.create(email: "gerardo.wemans@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Gerardo", last_name: "Wemans", phone_number: 987654321, bio: "Im a GoatMaster, whit a Masters degree in Goats", address: "Porto")
Goat.destroy_all
cat = ["Yoga Goat", "Grazing Goat", "Company Goat", "Birthday Goat", "Decoration Goat", "Seeing Goat", "Guardian Goat", "Entertaining Goat"]
# ["zekfrs"]
urls = [
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669049570/goat_d2m3nl.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118240/nandhu-kumar-jAMcUbsTvWE-unsplash_kmcfu8.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118242/marko-blazevic-5ExxF9SOHdM-unsplash_njvwjh.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118245/nati-melnychuk-BjGj8x5cdSk-unsplash_l6elyi.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118246/oytun-babur-ozen-rfV53ZkGcGA-unsplash_sb6vwe.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118246/marwan-ahmed-_e_fe1OF-AI-unsplash_hcdsio.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118250/florian-van-duyn-J9wZ6D2kYPw-unsplash_zgrnzl.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118252/logan-weaver-lgnwvr-9EiQ5BepZhQ-unsplash_zq05vi.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118252/peter-lloyd-o96Lf_wuM5o-unsplash_mevzkm.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118260/robin-gaillot-drevon-qRnh-zosks4-unsplash_sfmjaq.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118261/peter-neumann-mUtYXnpW1ts-unsplash_xdygbb.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118261/robin-gaillot-drevon-wFb71uuC5KY-unsplash_nbthf9.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118262/robin-gaillot-drevon-gPBueqE_o0c-unsplash_y2mguf.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118262/sergiu-valena-so8R5rTDTXM-unsplash_x5fqsk.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118262/ray-aucott-xB0e8bDV4ww-unsplash_hbo5li.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118262/joshua-wilking-GjlypNQfTD4-unsplash_eoy5wd.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118265/strvnge-films-P_SSMIgqjY0-unsplash_lxlopl.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118269/fabrizio-conti-b5rPuIBFeME-unsplash_dsaaqy.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118271/thomas-jarrand-SClPUUkGD8M-unsplash_rv7urx.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118273/dusan-veverkolog-afYq2hfi_ak-unsplash_ngkpvv.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118273/thomas-de-luze-kqhTq4QiZGA-unsplash_jfi6eb.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118274/skylar-jean-e7sobIPbpZQ-unsplash_pzir0w.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118274/dusan-veverkolog-6yPzo6rjNgU-unsplash_wclvdp.jpg",
  "https://res.cloudinary.com/dxfg68ykv/image/upload/v1669118278/yoann-donze-FGYgDfL6Vxg-unsplash_zekfrs.jpg"
]
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis ipsum eget lorem ultrices ullamcorper. Sed lectus ipsum, ullamcorper non tellus ut, fermentum auctor purus. Quisque ultricies orci vitae quam fermentum feugiat. Aenean facilisis volutpat ipsum. Pellentesque consequat est enim, ac tristique nisl tristique eget. Sed in dui tristique, iaculis neque condimentum, pharetra sapien. Cras maximus tempus elementum. Nullam non enim risus. Nullam ornare ligula non justo rutrum, nec tristique enim molestie."
cities = ["Águeda", "Albergaria-a-Velha", "Anadia", "Arouca", "Aveiro", "Castelo de Paiva", "Espinho", "Estarreja", "Ílhavo", "Mealhada", "Murtosa", "Oliveira de Azeméis", "Oliveira do Bairro", "Ovar", "Santa Maria da Feira", "São João da Madeira", "Sever do Vouga", "Vagos", "Vale de Cambra", "Aljustrel", "Almodôvar", "Alvito", "Barrancos", "Beja", "Castro Verde", "Cuba", "Ferreira do Alentejo", "Mértola", "Moura", "Odemira", "Ourique", "Serpa", "Vidigueira", "Amares", "Barcelos", "Braga", "Cabeceiras de Basto", "Celorico de Basto", "Esposende", "Fafe", "Guimarães", "Póvoa de Lanhoso", "Terras de Bouro", "Vieira do Minho", "Vila Nova de Famalicão", "Vila Verde", "Vizela", "Alfândega da Fé", "Bragança", "Carrazeda de Ansiães", "Freixo de Espada à Cinta", "Macedo de Cavaleiros", "Miranda do Douro", "Mirandela", "Mogadouro", "Torre de Moncorvo", "Vila Flor", "Vimioso", "Vinhais", "Belmonte", "Castelo Branco", "Covilhã", "Fundão", "Idanha-a-Nova", "Oleiros", "Penamacor", "Proença-a-Nova", "Sertã", "Vila de Rei", "Vila Velha de Ródão", "Arganil", "Cantanhede", "Coimbra", "Condeixa-a-Nova", "Figueira da Foz", "Góis", "Lousã", "Mira", "Miranda do Corvo", "Montemor-o-Velho", "Oliveira do Hospital", "Pampilhosa da Serra", "Penacova", "Penela", "Soure", "Tábua", "Vila Nova de Poiares", "Alandroal", "Arraiolos", "Borba", "Estremoz", "Évora", "Montemor-o-Novo", "Mora", "Mourão", "Portel", "Redondo", "Reguengos de Monsaraz", "Vendas Novas", "Viana do Alentejo", "Vila Viçosa", "Albufeira", "Alcoutim", "Aljezur", "Castro Marim", "Faro", "Lagoa", "Lagos", "Loulé", "Monchique", "Olhão", "Portimão", "São Brás de Alportel", "Silves", "Tavira", "Vila do Bispo", "Vila Real de Santo António", "Aguiar da Beira", "Almeida", "Celorico da Beira", "Figueira de Castelo Rodrigo", "Fornos de Algodres", "Gouveia", "Guarda", "Manteigas", "Mêda", "Pinhel", "Sabugal", "Seia", "Trancoso", "Vila Nova de Foz Côa", "Alcobaça", "Alvaiázere", "Ansião", "Batalha", "Bombarral", "Caldas da Rainha", "Castanheira de Pera", "Figueiró dos Vinhos", "Leiria", "Marinha Grande", "Nazaré", "Óbidos", "Pedrógão Grande", "Peniche", "Pombal", "Porto de Mós", "Alenquer", "Amadora", "Arruda dos Vinhos", "Azambuja", "Cadaval", "Cascais", "Lisbon", "Loures", "Lourinhã", "Mafra", "Odivelas", "Oeiras", "Sintra", "Sobral de Monte Agraço", "Torres Vedras", "Vila Franca de Xira", "Alter do Chão", "Arronches", "Avis", "Campo Maior", "Castelo de Vide", "Crato", "Elvas", "Fronteira", "Gavião", "Marvão", "Monforte", "Nisa", "Ponte de Sor", "Portalegre", "Sousel", "Amarante", "Baião", "Felgueiras", "Gondomar", "Lousada", "Maia", "Marco de Canaveses", "Matosinhos", "Paços de Ferreira", "Paredes", "Penafiel", "Porto", "Póvoa de Varzim", "Santo Tirso", "Trofa", "Valongo", "Vila do Conde", "Vila Nova de Gaia", "Abrantes", "Alcanena", "Almeirim", "Alpiarça", "Benavente", "Cartaxo", "Chamusca", "Constância", "Coruche", "Entroncamento", "Ferreira do Zêzere", "Golegã", "Mação", "Ourém", "Rio Maior", "Salvaterra de Magos", "Santarém", "Sardoal", "Tomar", "Torres Novas", "Vila Nova da Barquinha", "Alcácer do Sal", "Alcochete", "Almada", "Barreiro", "Grândola", "Moita", "Montijo", "Palmela", "Santiago do Cacém", "Seixal", "Sesimbra", "Setúbal", "Sines", "Arcos de Valdevez", "Caminha", "Melgaço", "Monção", "Paredes de Coura", "Ponte da Barca", "Ponte de Lima", "Valença", "Viana do Castelo", "Vila Nova de Cerveira", "Alijó", "Boticas", "Chaves", "Mesão Frio", "Mondim de Basto", "Montalegre", "Murça", "Peso da Régua", "Ribeira de Pena", "Sabrosa", "Santa Marta de Penaguião", "Valpaços", "Vila Pouca de Aguiar", "Vila Real", "Armamar", "Carregal do Sal", "Castro Daire", "Cinfães", "Lamego", "Mangualde", "Moimenta da Beira", "Mortágua", "Nelas", "Oliveira de Frades", "Penalva do Castelo", "Penedono", "Resende", "Santa Comba Dão", "São João da Pesqueira", "São Pedro do Sul", "Sátão", "Sernancelhe", "Tabuaço", "Tarouca", "Tondela", "Vila Nova de Paiva", "Viseu", "Vouzela"]
urls.each do |url|
  goat = Goat.new({
                    name: Faker::Name.first_name,
                    category: cat.sample,
                    age: rand(1..20), user_id: 1,
                    # image_url: urls.sample,
                    description: lorem,
                    price_per_day: rand(27..114),
                    transport_fee: rand(12..87),
                    cleaning_fee: rand(8..39),
                    rating: rand(0.0..5.0).round(1),
                    address: "#{cities.sample}, Portugal"
                  })

  pic = URI.parse(url).open
  goat.photo.attach(io: pic, filename: "#{goat.name}.png", content_type: "image/png")
  goat.save
  puts goat.name
end
