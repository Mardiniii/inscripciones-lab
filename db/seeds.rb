# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Categorie.create([{ name: 'Mini Baloncesto'}, { name: 'Pasarela'}, { name: 'Infantil'}, {name: 'Junior'}, { name: 'Juvenil'}, { name: 'Ascenso'}, {name: 'Primera'}, {name: 'Recreativo A'}, { name: 'Recreativo B'}, { name: 'Copa Antioquia Sub 15 - Menores'}, {name: 'Copa Antioquia Sub 17 - Menores'}, {name: 'Copa Elite'}, {name: 'Copa LAB Universitaria'}, {name: 'Clasificatorio Pony Baloncesto'} ])
register_types = RegisterType.create( [ { name: 'Entrenador' } , { name: 'Jugador '} , { name: 'Asistente #1' } , { name: 'Asistente #2' } , { name: 'Asistente #3' } , { name: 'Asistente #4' } ] )

tournaments = Tournament.create( [ {
		categorie_id: '29',
		name: 'Torneo Minibaloncesto Masculino',
		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
		end_date: DateTime.strptime("10/01/2015", "%m/%d/%Y"),
	},
	{
		categorie_id: '29',
		name: 'Torneo Minibaloncesto Femenino',
		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
		end_date: DateTime.strptime("10/30/2015", "%m/%d/%Y"),
	},
] )