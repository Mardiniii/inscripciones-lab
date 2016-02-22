# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# categories = Categorie.create([{ name: 'Mini Baloncesto'}, { name: 'Pasarela'}, { name: 'Infantil'}, {name: 'Junior'}, { name: 'Juvenil'}, { name: 'Ascenso'}, {name: 'Primera'}, {name: 'Recreativo A'}, { name: 'Recreativo B'}, { name: 'Copa Antioquia Sub 15 - Menores'}, {name: 'Copa Antioquia Sub 17 - Menores'}, {name: 'Copa Elite'}, {name: 'Copa LAB Universitaria'}, {name: 'Clasificatorio Pony Baloncesto'} ])
# register_types = RegisterType.create( [ { name: 'Entrenador' } , { name: 'Jugador '} , { name: 'Asistente #1' } , { name: 'Asistente #2' } , { name: 'Asistente #3' } , { name: 'Delegado' } ] )
# tournaments = Tournament.create( [ {
# 		category_id: '1',
# 		name: 'Torneo Minibaloncesto Masculino',
# 		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
# 		description: 'Descripción del torneo definida por la liga local',
# 		end_date: DateTime.strptime("10/01/2015", "%m/%d/%Y"),
# 		deadline: Date.new(2015,02,20)
# 	},
# 	{
# 		category_id: '1',
# 		name: 'Torneo Minibaloncesto Femenino',
# 		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
# 		description: 'Descripción del torneo definida por la liga local',
# 		end_date: DateTime.strptime("10/30/2015", "%m/%d/%Y"),
# 		deadline: Date.new(2015,02,20)
# 	},
# 	{
# 		category_id: '3',
# 		name: 'Torneo Infantil Masculino',
# 		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
# 		description: 'Descripción del torneo definida por la liga local',
# 		end_date: DateTime.strptime("10/01/2015", "%m/%d/%Y"),
# 		deadline: Date.new(2015,02,20)
# 	},
# 	{
# 		category_id: '3',
# 		name: 'Torneo Infantil Femenino',
# 		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
# 		description: 'Descripción del torneo definida por la liga local',
# 		end_date: DateTime.strptime("10/30/2015", "%m/%d/%Y"),
# 		deadline: Date.new(2015,02,20)
# 	},
# 	{
# 		category_id: '4',
# 		name: 'Torneo Junior Masculino',
# 		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
# 		description: 'Descripción del torneo definida por la liga local',
# 		end_date: DateTime.strptime("10/01/2015", "%m/%d/%Y"),
# 		deadline: Date.new(2015,02,20)
# 	},
# 	{
# 		category_id: '4',
# 		name: 'Torneo Junior Femenino',
# 		start_date: DateTime.strptime("09/01/2015", "%m/%d/%Y"),
# 		description: 'Descripción del torneo definida por la liga local',
# 		end_date: DateTime.strptime("10/30/2015", "%m/%d/%Y"),
# 		deadline: Date.new(2015,02,20)
# 	}
# ] )

days = Day.create([{ name: 'Lunes'}, { name: 'Martes'}, { name: 'Miercoles'}, {name: 'Jueves'}, { name: 'Viernes'}, { name: 'Sabado'}, {name: 'Domingo'} ])