# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Tag.destroy_all
User.destroy_all
PostTag.destroy_all

bob = User.create(
    username: "bob",
    password: "password",
    description: ""
)

sam = User.create(
    username: "sam",
    password: "password",
    description: ""
)

post1 = Post.create(
    comment: "Had a great time at FlatIron Dance Studios",
    user_id: 1
)

post2 = Post.create(
    comment: "collab with Alexa Goode",
    user_id: 2
)

tag1 = Tag.create(
    name: "#flatironstudios"
)

tag2 = Tag.create(
    name: "#heels"
)

postTag1 = PostTag.create(
    post_id: 1,
    tag_id: 1
)

postTag2 = PostTag.create(
    post_id: 2,
    tag_id: 2
)


