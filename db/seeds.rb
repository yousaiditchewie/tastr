User.delete_all

jacob = User.new(
  email: "ja@cob.com",
  password: "abc123")

puts jacob.errors.full_messages
