# toy-robot-simulator

## Run in your local

```
bundle install

ruby main.rb
```

## Run tests

```
bundle exec rspec
```

## Example Data

These examples can be find in example-data.txt

INPUTS

```
PLACE 1,1,EAST
MOVE
MOVE
MOVE
MOVE
MOVE
MOVE
REPORT
```

OUTPUT

```
Output: 4, 1, EAST
```

### ----------------------

INPUTS

```
PLACE 3,3,WEST
LEFT
MOVE
LEFT
MOVE
PLACE 1,1,NORTH
REPORT
```

OUTPUT

```
Output: 1, 1, NORTH
```

### ----------------------

INPUTS

```
PLACE 1,3,WEST
MOVE
MOVE
```

OUTPUT

```
The robot going to fall down. We did not move the robot anywhere.
```

### ----------------------


INPUTS

```
MOVE
```

OUTPUT

```
You should first place robot on the table.
```

### ----------------------

INPUTS
```
PLACE 0,0,NORTH
MOVE
REPORT
``` 
OUTPUT

```
Output: 0, 1, NORTH
```

### ----------------------

INPUTS
```
PLACE 0,0,NORTH
LEFT
REPORT
``` 
OUTPUT

```
Output: 0, 0, WEST
```
