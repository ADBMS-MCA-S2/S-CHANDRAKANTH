1.> db.movies.find().pretty()
db.movies.find().pretty()
{
        "_id" : ObjectId("62a7bef241de71df86b0b270"),
        "title" : "fight club",
        "writer" : "chunk palahniuk",
        "year" : 1999,
        "actors" : [
                "brad pitt",
                "edward norton"
        ]
}
{
        "_id" : ObjectId("62a7bf5941de71df86b0b271"),
        "title" : "pulp fiction",
        "writer" : "quentin tarantino",
        "year" : 1994,
        "actors" : [
                "john travolta",
                "uma thurman",
                "samuel l.jackson"
        ]
}
{
        "_id" : ObjectId("62a7c07f01698ee8f35ad470"),
        "title" : "inglorious basterds",
        "writer" : "quentin tarantino",
        "year" : 2009,
        "actors" : [
                "brad pitt",
                "diane kruger",
                "eli roth"
        ]
}
{
        "_id" : ObjectId("62a7c13801698ee8f35ad471"),
        "title" : "the hobbit:an unexpected journey",
        "writer" : "j.r.r tolkein",
        "year" : 2012,
        "franchise" : "the hobbit"
}
{
        "_id" : ObjectId("62a7c17201698ee8f35ad472"),
        "title" : "the hobbit:the desolation of smaug",
        "writer" : "j.r.r tolkein",
        "year" : 2013,
        "franchise" : "the hobbit",
        "sysnopis" : "the dwarves along with bilbo baggains and gandalf the grey,continue their quest to reclaim erebor,their homeland,from smaug.bilbo baggins is in possession of a mysterious and magical ring"
}
{
        "_id" : ObjectId("62a7c27501698ee8f35ad473"),
        "title" : "the hobbit:the battle of the five armies",
        "writer" : "j.r.r tolkein",
        "year" : 2012,
        "franchise" : "the hobbit",
        "synopsis" : "bilbo and company are forced to engage in a war against an army of combatants and keep the lonely mountain from falling into the hands of a rising darkness"
}
{
        "_id" : ObjectId("62a7c2a001698ee8f35ad474"),
        "title" : "pee wee hermans big adventure"
}
{ "_id" : ObjectId("62a7c2ab01698ee8f35ad475"), "title" : "avatar" }
2.> db.movies.find({writer:"quentin tarantino"}).pretty()

        "_id" : ObjectId("62a7bf5941de71df86b0b271"),
        "title" : "pulp fiction",
        "writer" : "quentin tarantino",
        "year" : 1994,
        "actors" : [
                "john travolta",
                "uma thurman",
                "samuel l.jackson"
        ]
}
{
        "_id" : ObjectId("62a7c07f01698ee8f35ad470"),
        "title" : "inglorious basterds",
        "writer" : "quentin tarantino",
        "year" : 2009,
        "actors" : [
                "brad pitt",
                "diane kruger",
                "eli roth"
        ]
}
3.> db.movies.find({"actors":"brad pitt"}).pretty()

        "_id" : ObjectId("62a7bef241de71df86b0b270"),
        "title" : "fight club",
        "writer" : "chunk palahniuk",
        "year" : 1999,
        "actors" : [
                "brad pitt",
                "edward norton"
        ]
}
{
        "_id" : ObjectId("62a7c07f01698ee8f35ad470"),
        "title" : "inglorious basterds",
        "writer" : "quentin tarantino",
        "year" : 2009,
        "actors" : [
                "brad pitt",
                "diane kruger",
                "eli roth"
        ]
}
>
4.> > db.movies.find({year:{$gte:1990,$lte:1999}},{"title":1,_id:0}).pretty()
{ "title" : "fight club" }
{ "title" : "pulp fiction" }
5.> db.movies.find({$or:[{year:{$lt:2000}},{year:{$gt:2010}}]},{title:1,_id:0,year:1}).pretty()
{ "title" : "fight club", "year" : 1999 }
{ "title" : "pulp fiction", "year" : 1994 }
{ "title" : "the hobbit:an unexpected journey", "year" : 2012 }
{ "title" : "the hobbit:the desolation of smaug", "year" : 2013 }
{ "title" : "the hobbit:the battle of the five armies", "year" : 2012 }
6.> db.movies.updateOne({"title":"the hobbit:the desolation of smaug"},{$set:{sysnopis:"the dwarves along with bilbo baggains and gandalf the grey,continue their quest to reclaim erebor,their homeland,from smaug.bilbo baggins is in possession of a mysterious and magical ring"}})
7.> db.movies.update({"title":"pulp fiction"},{$addToSet:{"actors":"samuel l.jackson"}})
8.> db.movies.createIndex({"synopsis":"text"})
  > db.movies.find({$text:{$search:"bilbo"}},{"title":1,_id:0})
 "title" : "the hobbit:the battle of the five armies" }

9.db.movies.find({$and:[{sysnopsis:{$regex:'bilbo'}},{synopsis:{$not:{$regex:'gandalf'}}}]}
10.db.movies.find({$or:[{synopsis:{$regex:'dwarves'}},{synopsis:{$regex:'hobbit'}}]}
12.> db.movies.deleteOne({title:"pee wee hermans big adventure"})
{ "acknowledged" : true, "deletedCount" : 1 }
>
