## NoSQL - MongoDB Exercises

Connection:
Address: bdad.fe.up.pt	
Port: 27017

Authentication:
Database: twitter
User-name: bdad
Password: 2017

1. db.tweets.find({'source':'web'}).count()
2. db.tweets.find({'entities.hashtags.text': 'javascript'}).count()
3. db.tweets.aggregate([{$sortByCount: '$entities.hashtags.text'}])
4. db.tweets.find({"user.followers_count": {"$gt":100}}).count()
5. db.tweets.find().limit(100).sort({'$user.friends_count':-1})
6. db.tweets.find({"text": {'$regex' : "Cristiano Ronaldo"}}).count()
7. db.tweets.find({"user.time_zone" : "Lisbon"}).count()
8. db.tweets.distinct('user.time_zone')
