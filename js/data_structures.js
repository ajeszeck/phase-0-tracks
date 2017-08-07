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