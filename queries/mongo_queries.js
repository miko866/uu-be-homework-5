// Select Collection
use doucovani

// Vytvořte dotazy, které budou obsahovat seznam žáků a počet jejich doučování
db.doucovani.aggregate([
    { $group: { _id: "$zak_jmeno", count: { $sum: 1 } } },
    { $sort: { count: -1 } }
  ])

// Vytvořte dotaz, který bude obsahovat seznam tří vyučujících s nejvyšším počtem doučování
db.doucovani.aggregate([
  { $group: { _id: '$vyucujici_jmeno', count: { $sum: 1 } } },
  { $sort: { count: -1 } },
  { $limit: 3}
])