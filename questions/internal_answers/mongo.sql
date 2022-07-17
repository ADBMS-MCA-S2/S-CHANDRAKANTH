ADBMS LAB  MongoDb
Creation:
use films
switched to db films
db.createCollection('movies')

db.movies.insertOne({title:'Fight Club',writer:'Chuck Palahniuk',year:1999,actors:['Brad Pitt','Edward Norton']})        

 db.movies.insertOne({title:'Pulp Fiction',writer:'Quentin Tarantino',year:1994,actors:['John Travolta','Uma Thurman']})

 db.movies.insertOne({title:'Inglorious Basterds',writer:'Quentin Tarantino',year:2009,actors:['Brad Pitt','Diane Kruger','Eli Roth']})

 db.movies.insertOne({title:'The Hobbit:An Unexpected Journey',writer:'J.R.R. Tolkein',year:2012,franchise:'The Hobbit'})

 db.movies.insertOne({title:'The Hobbit:The Desolation of Smaug',writer:'J.R.R. Tolkein',year:2013,franchise:'The Hobbit'})

db.movies.insertOne({title:'The Hobbit:The Battle of the Five Armies',writer:'J.R.R. Tolkein',year:2012,franchise:'The Hobbit',synopsis:'Bilbo and Company are forced to engage in a war against an army of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.'})

 db.movies.insertOne({title:'Pee Wee Hermans Big Adventure'})

 db.movies.insertOne({title:'Avatar'})
Question 1

 db.movies.find().pretty()

Question 2

 db.movies.find({writer:'Quentin Tarantino'}).pretty()

Question 3

 db.movies.find({actors:'Brad Pitt'}).pretty()

Question 4

 db.movies.find({year:{$lt:2000}},{title:1,_id:0}).pretty()

Question 5

db.movies.find({$or:[{year:{$lt:2000}},{year:{$gt:2010}}]},{title:1,_id:0}).pretty()

Question 6

 db.movies.updateOne({title:'The Hobbit:The Desolation of Smaug'},{$set:{synopsis:'The dwarves,along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor,their homeland from Smaug.Bilbo Baggins is in possession of a mysterious and magical ring'}})

db.movies.find({title:'The Hobbit:The Desolation of Smaug'}).pretty()

Question 7

 db.movies.updateOne({title:'Pulp Fiction'},{$addToSet:{actors:'Samuel L.Jackson'}})
 db.movies.updateOne({title:"pulp fiction"},{$addToSet:{actors:"samuel l jackson"}})

 db.movies.find({title:'Pulp Fiction'}).pretty()

Question 8

 db.movies.find({synopsis:{$regex:'Bilbo'}},{title:1,_id:0}).pretty()
{ "title" : "The Hobbit:The Desolation of Smaug" }
{ "title" : "The Hobbit:The Battle of the Five Armies" }

Question 9

db.movies.find({$and:[{synopsis:{$regex:'Bilbo'}},{synopsis:{$not:{$regex:'Gandalf'}}}]},{title:1,_id:0}).pretty()
db.movies.find({$and:[{synopsis:{$regex:"bilbo"}},{synopsis:{$not:{regex:"gandlaf"}}}]},{title:1,_id:0})
{ "title" : "The Hobbit:The Battle of the Five Armies" }

		or

> db.movies.createIndex({synopsis:'text'})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}

> db.movies.getIndices()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "_fts" : "text",
                        "_ftsx" : 1
                },
                "name" : "synopsis_text",
                "weights" : {
                        "synopsis" : 1
                },
                "default_language" : "english",
                "language_override" : "language",
                "textIndexVersion" : 3
        }
]

> db.movies.find({$text:{$search:'Bilbo-Gandalf'}},{title:1,_id:0})
{ "title" : "The Hobbit:The Desolation of Smaug" }
{ "title" : "The Hobbit:The Battle of the Five Armies" }

		

Question 10

> db.movies.find({$or:[{synopsis:{$regex:'dwarves'}},{synopsis:{$regex:'hobbit'}}]},{title:1,_id:0}).pretty()
{ "title" : "The Hobbit:The Desolation of Smaug" }

Question 12

> db.movies.deleteOne({title:'Pee Wee Hermans Big Adventure'})
{ "acknowledged" : true, "deletedCount" : 1 }
> db.movies.find({title:'Pee Wee Hermans Big Adventure'}).pretty()
>






