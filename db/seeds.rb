# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# load in default scene and lines
scene = Scene.create(title: 'Henry IV, Part One', description: 'SCENE IV. The Boar\'s-Head Tavern, Eastcheap.')

# load in lines
scene_id = scene.id
lines = [
  {character: '', line: "Enter PRINCE HENRY and POINS", line_order: 5, scene_id: scene_id}, 
  {character: 'PRINCE HENRY', line: "Ned, prithee, come out of that fat room, and lend me\nthy hand to laugh a little.", line_order: 10, scene_id: scene_id}, 
  {character: 'POINS', line: "Where hast been, Hal?", line_order: 15, scene_id: scene_id},   

]
Line.create(lines)

