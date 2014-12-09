## Hogwarts Registrar

Today we're going to create a registrar for Hogwarts. 

### User Stories

1. A Professor can see a homepage dashboard that:
  * Displays the number of students currently enrolled
  * Displays the current date
  * A form to add a new student - name, age, favorite spell
  * Link to see all students

2. A Professor can see all of the students who are enrolled

3. A grumpy IT specialist at Hogwarts who doesn't like browsers can use a command line app to add students over HTTP via the HogwartsRegistrarApi

  ```bash
  ruby enroll.rb 'Harry Potter' '13' 'lumos'
  OK
  ```

### Wireframe

Draw up a quick wireframe of the pages you expect to see.

### Routes

Create a list of routes that will handle the features above. 

Example for a monkey-tracker app:

| Route | Result |
|-------|--------|
|`GET /`| Homepage|
|`POST /monkeys`| Creates a new monkey. Redirects user to `GET /monkeys`|
|`GET /monkeys`| Return all the monkeys in the system |

### Data

Where and how will your data be represented? Sketch out an example data set and figure out where it will live.

IE:

`monkeys.json`
```json
[
  {"name":"Remy", "speaks": true},
  {"name": "Seymour", "speaks": false} 
]
```

### Start Coding!

Only once you've gone through the above steps are you ready to start coding. Take it step by step!