Role.destroy_all
Audition.destroy_all

r1 = Role.create(character_name: "bus driver")
r2 = Role.create(character_name: "Zombie")

a1 = Audition.create(actor: "Chloe", location: "Home", phone: "111-111-1111", hired: true, role_id: Role.first.id)
a2 = Audition.create(actor: "John", location: "Home-depot", phone: "222-111-1111", hired: true, role_id: Role.second.id)


