# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
parks = Park.create!(
  [{ address: 'Boston Common', details: "This is a large park with a lot of food traffic. There are designated areas where your pet can be off it's leash but all other areas require that you pet wears a leash.", user_id: 1},
  { address: 'Peters Park', details: "Peters Park is a small community park located in the South End neighborhood of Boston, MA. Its boundaries are Shawmut Avenue, Watham Street, Washington Street and East Berkley.", user_id: 1},
  { address: 'Carleton Court Dog Park', details: "Completely fenced in, surrounded by concrete wall (2-3 ft high) all the way around, except gates.", user_id: 1},
  { address: 'South Boston Bark Park', details: "This is a fenced in park. Grass is forgone for gravel. A great place to socialize your pup!", user_id: 1},
  { address: 'Brookline Avenue Playground', details: "Fenced park features off-leash hours for dogs, a water fountain & a large, grassy athletic field.", user_id: 1},
  { address: 'Nunziato Field Dog Park', details: "Fenced-in, off-leash recreation area for dogs at Nunziato Field, with a few picnic tables.", user_id: 1},
  { address: 'Corey Hill Outlook Park', details: "This grassy park with views of the city & a playground is a popular area for runners.", user_id: 1},
  { address: 'Dorchester Shores Reservation Victory Road Park', details: "This reclaimed landfill accessible by a footbridge has a dog-friendly green space, trails & benches.", user_id: 1},
  { address: 'Belle Isle Marsh Reservation', details: "Salt marsh preserve featuring a 28-acre park offering benches, paths & an observation tower.", user_id: 1},
  { address: 'Danehy Dog Park', details: "Large area for dogs to run around and 2 smaller ones for time out. Few times I've been there and had good experience with responsible dog owners except for one small dog who have a napoleon complex and the owners did not try to stop from attacking my big dog, good thing his a friendly dog.", user_id: 1},
  { address: 'Norwood Estate Dog Park', details: "Nice little spot to sit and let the dogs play. A little hard to see your dog all the time with the large brush in the middle of the park if you are just hoping to let them play with other pups while you sit and relax but if you're looking for an ok spot and don't mind relocating around the park or have a pup that doesn't stray too far it's perfect!", user_id: 1},
  { address: 'Red Bud Isle', details: "Lakefront off-leash dog park with 13 acres of recreational space, plus hiking, canoeing & kayaking.", user_id: 1},
  { address: 'Yard Bar', details: "Sandwiches, cocktails & pet treats served from a cool snack stand with picnic tables & a dog park.", user_id: 1},
  { address: 'Destin Dog Park', details: "Between the dog parks in Navarre and Fort Walton, this one is the nicest. It’s a very big grassy area, has plenty of benches along the edges for your to sit, and has a nice water station. It can get very crowded on the weekends, but even then, there is a good amount of room for your dog to run around and play.", user_id: 1},
  { address: 'Henderson Beach State Park', details: "Beach haven offering a boardwalk, a pet-friendly nature trail plus a playground & campground.", user_id: 1}])
