db.createUser(
  {
    user: "miko",
    pwd: "password",
    roles: [
      {
        role: "readWrite",
        db: "doucovani"
      }
    ]
  }
);
db.createCollection('doucovani');