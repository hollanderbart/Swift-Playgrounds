
struct Friend{
    var firstName: String?
    var lastName: String?
    var height: Int?
    struct test {}
}

// free initializer
let friend = Friend(firstName: nil, lastName: nil, height: nil)
let friend2 = Friend()

if (friend.firstName != nil), (friend.lastName != nil) {
    print("hoi")
}
