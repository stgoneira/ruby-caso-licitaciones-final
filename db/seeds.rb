# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrador.create!([
    {email: "admin@123.cl", password: "123456"}
])

Categoria.create!([
    {nombre: "Construcción"},
    {nombre: "Software"},
    {nombre: "Salud"},
    {nombre: "Bienestar"}
])

# https://www.bcn.cl/siit/nuestropais/regiones
Region.create!([
    {nombre: "Región de Arica y Parinacota"},
    {nombre: "Región de Tarapacá"},
    {nombre: "Región de Antofagasta"},
    {nombre: "Región de Atacama"},
    {nombre: "Región de Coquimbo"},
    {nombre: "Región de Valparaíso"},
    {nombre: "Región del Libertador General Bernardo OHiggins"},
    {nombre: "Región del Maule"},
    {nombre: "Región del Ñuble"},
    {nombre: "Región del Biobío"},
    {nombre: "Región de La Araucanía"},
    {nombre: "Región de Los Ríos"},
    {nombre: "Región de Los Lagos"},
    {nombre: "Región de Aysén del G. Carlos Ibañez del Campo"},
    {nombre: "Región de Magallanes y de la Antártica Chilena"},
    {nombre: "Región Metropolitana de Santiago"},
])

Licitante.create!([
    {rut: "77888999-k", razon_social: "Municipalidad de Chigualoco", email: "chigualoco@123.cl", password: "123456"},
    {rut: "99888777-k", razon_social: "Municipalidad de Salsipuedes", email: "salsipuedes@123.cl", password: "123456"}
])

Empresa.create!([
    {rut: "12345678-5", razon_social: "Prueba SpA", email: "prueba@prueba.cl", password: "123456"},
    {rut: "87654321-5", razon_social: "Aiep EIRL", email: "aiep@aiep.cl", password: "123456"}
])

Licitacion.create!([
    {titulo: "Pavimentación Calle XXX", descripcion: "....", presupuesto: 50900300, region_id: 1, licitante_id: 1, categoria_id: 1},
    {titulo: "Sistema Notas Escuela Pública G128", descripcion: "....", presupuesto: 9800100, region_id: 5, licitante_id: 2, categoria_id: 2},
    {titulo: "Servicio Bienestar Adulto Mayor", descripcion: "....", presupuesto: 4300200, region_id: 10, licitante_id: 1, categoria_id: 3}
])


