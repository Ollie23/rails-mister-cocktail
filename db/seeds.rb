Cocktail.destroy_all
Ingredient.destroy_all

cocktails = [
  {
    name: "Old Fashioned"
    },
  {
    name: "Daiquiri"
    },
  {
    name: "Margarita"
    },
  {
    name: "Sidecar"
    },
  {
    name: "French 75"
    },
  {
    name: "Bloody Mary"
    },
  {
    name: "Irish Coffee"
    },
  {
    name: "Jack Rose"
    },
  {
    name: "Negroni"
    },
  {
    name: "Boulevardier"
    },
  {
    name: "Sazerac"
    },
  {
    name: "Vieux Carré"
    },
  {
    name: "Ramos Gin Fizz"
    },
  {
    name: "Mint Julep"
    },
  {
    name: "Whiskey Sour"
    },
  {
    name: "Mai Tai"
    },
  {
    name: "Planter's Punch"
    },
  {
    name: "Pisco Sour"
    },
  {
    name: "Cosmopolitan"
    },
  {
    name: "Tom Collins"
    },
  {
    name: "Last Word"
  }
]

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }


cocktails.each { |cocktail| Cocktail.create(cocktail) }
