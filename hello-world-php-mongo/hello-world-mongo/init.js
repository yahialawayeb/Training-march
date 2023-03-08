db.createUser({
    user: "admin",
    pwd: "password",
    roles: [{ role: "userAdminAnyDatabase", db: "admin" }]
});
  
db.createCollection("countries");
  
db.countries.insertMany([
{
    "name": "United States",
    "capital": "Washington, D.C.",
    "population": 328200000,
    "currency": "US Dollar" 
}
]);


