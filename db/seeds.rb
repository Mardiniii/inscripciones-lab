# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tournaments = Tournament.create( [ {
    category_id: '1',
    name: 'Torneo Minibaloncesto Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("12/03/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("12/03/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,12,17),
    status: true
  },
  {
    category_id: '1',
    name: 'Torneo Minibaloncesto Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,12,17),
    status: true
  },
  {
    category_id: '2',
    name: 'Torneo Pasarela Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("04/08/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("06/19/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,26),
    status: true
  },
  {
    category_id: '2',
    name: 'Torneo Pasarela Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("04/08/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("06/19/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,26),
    status: true
  },
  {
    category_id: '3',
    name: 'Torneo Infantil Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '3',
    name: 'Torneo Infantil Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '16',
    name: 'Torneo Infatil Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("04/08/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("06/19/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,26),
    status: true
  },
  {
    category_id: '16',
    name: 'Torneo Infatil Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("04/08/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("06/19/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,26),
    status: true
  },
  {
    category_id: '17',
    name: 'Torneo Sub 17 Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '17',
    name: 'Torneo Sub 17 Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '18',
    name: 'Torneo Sub 20 Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '18',
    name: 'Torneo Sub 20 Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '19',
    name: 'Torneo Sub 23 Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '19',
    name: 'Torneo Sub 23 Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '8',
    name: 'Torneo Recreativo (Industrial) Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '20',
    name: 'Torneo Recreativo (Industrial) Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("03/12/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("05/29/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,6),
    status: true
  },
  {
    category_id: '7',
    name: 'Torneo Mayores - Primera - Masculino - Primer Semestre 2016',
    start_date: DateTime.strptime("04/08/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("06/19/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,26),
    status: true
  },
  {
    category_id: '7',
    name: 'Torneo Mayores - Primera - Femenino - Primer Semestre 2016',
    start_date: DateTime.strptime("04/08/2016", "%m/%d/%Y"),
    description: 'Descripción del torneo definida por la liga local',
    end_date: DateTime.strptime("06/19/2016", "%m/%d/%Y"),
    deadline: Date.new(2016,03,26),
    status: true
  }
] )

# categories = Categorie.create([{ name: 'Mini Baloncesto'}, { name: 'Pasarela'}, { name: 'Infantil'}, {name: 'Junior'}, { name: 'Juvenil'}, { name: 'Ascenso'}, {name: 'Primera'}, {name: 'Recreativo A'}, { name: 'Recreativo B'}, { name: 'Copa Antioquia Sub 15 - Menores'}, {name: 'Copa Antioquia Sub 17 - Menores'}, {name: 'Copa Elite'}, {name: 'Copa LAB Universitaria'}, {name: 'Clasificatorio Pony Baloncesto'} ])
# register_types = RegisterType.create( [ { name: 'Entrenador' } , { name: 'Jugador '} , { name: 'Asistente #1' } , { name: 'Asistente #2' } , { name: 'Asistente #3' } , { name: 'Delegado' } ] )


# days = Day.create([{ name: 'Lunes'}, { name: 'Martes'}, { name: 'Miercoles'}, {name: 'Jueves'}, { name: 'Viernes'}, { name: 'Sabado'}, {name: 'Domingo'} ])