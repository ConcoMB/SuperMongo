// Computa el ratio de heroes a villanos. Positivo si hay mas heroes de villanos
// para correrlo ejecutar:
// db.superheros.mapReduce(map, reduce, {out: {inline:1}})
var map = function() {
  var key = { city: this.city_id };
  if (this.is_good) {
    emit(key, {count: 1});
  }else {
    emit(key, {count: -1});
  }
};
var reduce = function(key, values) {
  var sum = 0;
  values.forEach(function(value) {
    sum += value['count'];
  });
  return {count: sum};
};