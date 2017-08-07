var colors = ['blue', 'green', 'red', 'yellow']
var names = ['wendy', 'flicker', 'bob', 'frank']

colors.push('purple');
names.push('sally');

console.log(colors);
console.log(names);

var horses = {}

for (i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);

function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.speed = function() {
    console.log("We're going fast!");
  };
}

var newCar = new Car('kia', 'rio', 2010);
console.log(newCar);
newCar.speed();
console.log('-----');

var anotherNewCar = new Car('ford', 'taurus', 1996);
console.log(anotherNewCar.make);
anotherNewCar.speed();


