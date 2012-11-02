URL = "http://c2po.keminglabs.com"
URL = "http://localhost:5000"

###########
# Use JSON
scatterplot =
  data: [{a: 1, b: 2}, {a: 1.2, b: 2.1}, {a: 1.4, b: 2.9}]
  mapping: {x: "a", y: "b"}
  geom: "point"

params = {c2po: scatterplot}


##########
# Use EDN

#todo: JS -> EDN generator.
params =
  c2po: """
{:data [{:a 1 :b 2} {:a 1.2 :b 2.1} {:a 1.4 :b 2.9}]
 :mapping {:x :a, :y :b}
 :geom #point {}}
"""

jQuery.post URL, params, (res) ->
  document.body.appendChild res.documentElement




