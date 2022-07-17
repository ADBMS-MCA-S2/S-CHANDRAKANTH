> use emp
switched to db emp
> show collections;
empl
> db.emp.find()
> db.emp.find();
> db.empl.find();
{ "_id" : ObjectId("8197defc782fa360a419293d"), "empid" : 101, "name" : "hamna", "salary" : 7000, "role" : "manager" }
{ "_id" : ObjectId("8197defc782fa360a419293e"), "empid" : 102, "name" : "sneha", "salary" : 3000, "role" : "seniormanager" }
{ "_id" : ObjectId("8197defc782fa360a419293f"), "empid" : 103, "name" : "remya", "salary" : 8000, "role" : "hr" }
{ "_id" : ObjectId("8197defc782fa360a4192940"), "empid" : 104, "name" : "nihal", "salary" : 3000, "role" : "clerk" }
{ "_id" : ObjectId("8197defc782fa360a4192941"), "empid" : 105, "name" : "henna", "salary" : 4000, "role" : "mob" }
{ "_id" : ObjectId("8197defc782fa360a4192942"), "empid" : 106, "name" : "rahanak", "salary" : 3000, "role" : "ob" }
{ "_id" : ObjectId("8197defc782fa360a4192943"), "empid" : 107, "name" : "rd", "salary" : 10000, "role" : "developer" }
{ "_id" : ObjectId("8197defc782fa360a4192944"), "empid" : 108, "name" : "msd", "salary" : 2000, "role" : "it" }
> db.empl.find().pretty();                         //1.display data in proper format
{
        "_id" : ObjectId("8197defc782fa360a419293d"),
        "empid" : 101,
        "name" : "hamna",
        "salary" : 7000,
        "role" : "manager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293e"),
        "empid" : 102,
        "name" : "sneha",
        "salary" : 3000,
        "role" : "seniormanager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293f"),
        "empid" : 103,
        "name" : "remya",
        "salary" : 8000,
        "role" : "hr"
}
{
        "_id" : ObjectId("8197defc782fa360a4192940"),
        "empid" : 104,
        "name" : "nihal",
        "salary" : 3000,
        "role" : "clerk"
}
{
        "_id" : ObjectId("8197defc782fa360a4192941"),
        "empid" : 105,
        "name" : "henna",
        "salary" : 4000,
        "role" : "mob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192942"),
        "empid" : 106,
        "name" : "rahanak",
        "salary" : 3000,
        "role" : "ob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192943"),
        "empid" : 107,
        "name" : "rd",
        "salary" : 10000,
        "role" : "developer"
}
{
        "_id" : ObjectId("8197defc782fa360a4192944"),
        "empid" : 108,
        "name" : "msd",
        "salary" : 2000,
        "role" : "it"
}
>> db.empl.update({"name":"sneha"},{$inc:{"salary":8000}})                //2.update salary of employee where name is sneha by 8000
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.empl.find().pretty();
{
        "_id" : ObjectId("8197defc782fa360a419293d"),
        "empid" : 101,
        "name" : "hamna",
        "salary" : 7000,
        "role" : "manager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293e"),
        "empid" : 102,
        "name" : "sneha",
        "salary" : 11000,
        "role" : "seniormanager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293f"),
        "empid" : 103,
        "name" : "remya",
        "salary" : 8000,
        "role" : "hr"
}
{
        "_id" : ObjectId("8197defc782fa360a4192940"),
        "empid" : 104,
        "name" : "nihal",
        "salary" : 3000,
        "role" : "clerk"
}
{
        "_id" : ObjectId("8197defc782fa360a4192941"),
        "empid" : 105,
        "name" : "henna",
        "salary" : 4000,
        "role" : "mob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192942"),
        "empid" : 106,
        "name" : "rahanak",
        "salary" : 3000,
        "role" : "ob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192943"),
        "empid" : 107,
        "name" : "rd",
        "salary" : 10000,
        "role" : "developer"
}
{
        "_id" : ObjectId("8197defc782fa360a4192944"),
        "empid" : 108,
        "name" : "msd",
        "salary" : 2000,
        "role" : "it"
}
> db.empl.updateMany({},{$inc:{"salary":8000}})                   //3.update salary of all employee by giving increment 4000 each
{ "acknowledged" : true, "matchedCount" : 8, "modifiedCount" : 8 }
> db.empl.find().pretty();
{
        "_id" : ObjectId("8197defc782fa360a419293d"),
        "empid" : 101,
        "name" : "hamna",
        "salary" : 23000,
        "role" : "manager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293e"),
        "empid" : 102,
        "name" : "sneha",
        "salary" : 19000,
        "role" : "seniormanager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293f"),
        "empid" : 103,
        "name" : "remya",
        "salary" : 16000,
        "role" : "hr"
}
{
        "_id" : ObjectId("8197defc782fa360a4192940"),
        "empid" : 104,
        "name" : "nihal",
        "salary" : 11000,
        "role" : "clerk"
}
{
        "_id" : ObjectId("8197defc782fa360a4192941"),
        "empid" : 105,
        "name" : "henna",
        "salary" : 12000,
        "role" : "mob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192942"),
        "empid" : 106,
        "name" : "rahanak",
        "salary" : 11000,
        "role" : "ob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192943"),
        "empid" : 107,
        "name" : "rd",
        "salary" : 18000,
        "role" : "developer"
}
{
        "_id" : ObjectId("8197defc782fa360a4192944"),
        "empid" : 108,
        "name" : "msd",
        "salary" : 10000,
        "role" : "it"
}
> db.empl.update({"name":"msd"},{$set:{"role":["c","wk"]}})                //4.update role of msd as c and wk
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.empl.find().pretty();
{
        "_id" : ObjectId("8197defc782fa360a419293d"),
        "empid" : 101,
        "name" : "hamna",
        "salary" : 23000,
        "role" : "manager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293e"),
        "empid" : 102,
        "name" : "sneha",
        "salary" : 19000,
        "role" : "seniormanager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293f"),
        "empid" : 103,
        "name" : "remya",
        "salary" : 16000,
        "role" : "hr",
        "remark" : "wc"
}
{
        "_id" : ObjectId("8197defc782fa360a4192940"),
        "empid" : 104,
        "name" : "nihal",
        "salary" : 11000,
        "role" : "clerk"
}
{
        "_id" : ObjectId("8197defc782fa360a4192941"),
        "empid" : 105,
        "name" : "henna",
        "salary" : 12000,
        "role" : "mob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192942"),
        "empid" : 106,
        "name" : "rahanak",
        "salary" : 11000,
        "role" : "ob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192943"),
        "empid" : 107,
        "name" : "rd",
        "salary" : 36000,
        "role" : "developer"
}
{
        "_id" : ObjectId("8197defc782fa360a4192944"),
        "empid" : 108,
        "name" : "msd",
        "salary" : 10000,
        "role" : [
                "c",
                "wk"
        ]
}
>> db.empl.update({"name":"remya"},{$set:{"remark":"wc"}})           //5. add a new field remark to document with name remya set remark as wc
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.empl.find().pretty();
{
        "_id" : ObjectId("8197defc782fa360a419293d"),
        "empid" : 101,
        "name" : "hamna",
        "salary" : 23000,
        "role" : "manager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293e"),
        "empid" : 102,
        "name" : "sneha",
        "salary" : 19000,
        "role" : "seniormanager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293f"),
        "empid" : 103,
        "name" : "remya",
        "salary" : 16000,
        "role" : "hr",
        "remark" : "wc"
}
{
        "_id" : ObjectId("8197defc782fa360a4192940"),
        "empid" : 104,
        "name" : "nihal",
        "salary" : 11000,
        "role" : "clerk"
}
{
        "_id" : ObjectId("8197defc782fa360a4192941"),
        "empid" : 105,
        "name" : "henna",
        "salary" : 12000,
        "role" : "mob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192942"),
        "empid" : 106,
        "name" : "rahanak",
        "salary" : 11000,
        "role" : "ob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192943"),
        "empid" : 107,
        "name" : "rd",
        "salary" : 18000,
        "role" : "developer"
}
{
        "_id" : ObjectId("8197defc782fa360a4192944"),
        "empid" : 108,
        "name" : "msd",
        "salary" : 10000,
        "role" : "it"
}
> db.empl.update({"name":"rd"},{$mul:{"salary":2}});            //6.update the field rd by multipliying with salary 2
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.empl.find().pretty();
{
        "_id" : ObjectId("8197defc782fa360a419293d"),
        "empid" : 101,
        "name" : "hamna",
        "salary" : 23000,
        "role" : "manager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293e"),
        "empid" : 102,
        "name" : "sneha",
        "salary" : 19000,
        "role" : "seniormanager"
}
{
        "_id" : ObjectId("8197defc782fa360a419293f"),
        "empid" : 103,
        "name" : "remya",
        "salary" : 16000,
        "role" : "hr",
        "remark" : "wc"
}
{
        "_id" : ObjectId("8197defc782fa360a4192940"),
        "empid" : 104,
        "name" : "nihal",
        "salary" : 11000,
        "role" : "clerk"
}
{
        "_id" : ObjectId("8197defc782fa360a4192941"),
        "empid" : 105,
        "name" : "henna",
        "salary" : 12000,
        "role" : "mob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192942"),
        "empid" : 106,
        "name" : "rahanak",
        "salary" : 11000,
        "role" : "ob"
}
{
        "_id" : ObjectId("8197defc782fa360a4192943"),
        "empid" : 107,
        "name" : "rd",
        "salary" : 36000,
        "role" : "developer"
}
{
        "_id" : ObjectId("8197defc782fa360a4192944"),
        "empid" : 108,
        "name" : "msd",
        "salary" : 10000,
        "role" : "it"
}
> db.empl.find({name:{$regex:"^s"}})                              //7.find document from the empl collection where name begins with s
{ "_id" : ObjectId("8197defc782fa360a419293e"), "empid" : 102, "name" : "sneha", "salary" : 19000, "role" : "seniormanager" }

> db.empl.find({name:{$regex:"k$"}})                              //8. find document from the empl collection where name ends with k                           
{ "_id" : ObjectId("8197defc782fa360a4192942"), "empid" : 106, "name" : "rahanak", "salary" : 11000, "role" : "ob" }

> db.empl.find({name:{$regex:"s"}})                               //9.find document from empl collection where name has s in any position
{ "_id" : ObjectId("8197defc782fa360a419293e"), "empid" : 102, "name" : "sneha", "salary" : 19000, "role" : "seniormanager" }
{ "_id" : ObjectId("8197defc782fa360a4192944"), "empid" : 108, "name" : "msd", "salary" : 10000, "role" : [ "c", "wk" ] }
>
> db.empl.find({},{salary:1,_id:0}).sort({salary:-1}).limit(1)     //10.find document from the employee collection who has highest salary and lowest salary
{ "salary" : 36000 }
> db.empl.find({},{salary:1,_id:0}).sort({salary:1}).limit(1)
{ "salary" : 10000 }
> db.empl.find({$or:[{role:"mob"},{role:"ob"}]})                     //11.display document where in empl collection have ob,mob(role)
{ "_id" : ObjectId("8197defc782fa360a4192941"), "empid" : 105, "name" : "henna", "salary" : 12000, "role" : "mob" }
{ "_id" : ObjectId("8197defc782fa360a4192942"), "empid" : 106, "name" : "rahanak", "salary" : 11000, "role" : "ob" }
> db.empl.find({$nor:[{role:"mob"},{role:"ob"}]})                    //12.display documents where in empl collection field not have ob.mob
{ "_id" : ObjectId("8197defc782fa360a419293d"), "empid" : 101, "name" : "hamna", "salary" : 23000, "role" : "manager" }
{ "_id" : ObjectId("8197defc782fa360a419293e"), "empid" : 102, "name" : "sneha", "salary" : 19000, "role" : "seniormanager" }
{ "_id" : ObjectId("8197defc782fa360a419293f"), "empid" : 103, "name" : "remya", "salary" : 16000, "role" : "hr", "remark" : "wc" }
{ "_id" : ObjectId("8197defc782fa360a4192940"), "empid" : 104, "name" : "nihal", "salary" : 11000, "role" : "clerk" }
{ "_id" : ObjectId("8197defc782fa360a4192943"), "empid" : 107, "name" : "rd", "salary" : 36000, "role" : "developer" }
{ "_id" : ObjectId("8197defc782fa360a4192944"), "empid" : 108, "name" : "msd", "salary" : 10000, "role" : [ "c", "wk" ] }
