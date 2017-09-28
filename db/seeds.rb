# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


todos = [
  {
    title: 'Bailar Cueca',
    description: 'Bailar un pie de cueca anima a cualquiera',
    image: 'imgs/cueca.jpg'
  },
  {
    title: 'Jugar rayuela',
    description: 'Jugar a la rayuela es clásico del 18, ve y juega!',
    image: 'imgs/rayuela.jpg'
  },
  {
    title: 'Comer Empanadas',
    description: 'La empanada es el clásico del 18, sin empanadas no es 18!',
    image: 'imgs/empanada.jpg'
  },
  {
    title: 'Ir a una Fonda',
    description: 'Tiquitiquiti! Una fonda es el lugar ideal para pasar el 18!',
    image: 'imgs/fonda.jpg'
  },
  {
    title: 'Elevar Volantín',
    description: 'Los chancho en piedra lo dijeron todo con su canción volantín!',
    image: 'imgs/volantin.jpg'
  },
  {
    title: 'Tomar un Terremoto',
    description: 'Chile es un pais de terremotos... ¿y por que no tomarse uno?',
    image: 'imgs/terremoto.jpg'
  },
  {
    title: 'Salir de Santiago',
    description: 'Si estás en la capital, salir es una excelente opción!',
    image: 'imgs/peaje.jpg'
  },
  {
    title: 'Descansar!',
    description: 'Después de un 18 bailado y comido, nada como descansar para el proximo 18.',
    image: 'imgs/yasta.jpg'
  }
]

todos.each do |todo|
  Task.create(
    title: todo[:title],
    description: todo[:description],
    image: todo[:image]
  )
end
