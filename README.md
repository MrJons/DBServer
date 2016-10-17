### DB server tech test (day 1)

#### How to run app:
1) Install Ruby; <br>
2) cd in to app folder within project; <br>
3) Run server using `ruby app.rb` in above directory; <br>
4) Navigate to `localhost:4000/set?` in browser and enter chosen query in `key=value format`; <br>
5) -

---

#### Key steps from brief:
1) Set up Sinatra server; `COMPLETE` <br>
2) Configure listening port to 4000; `COMPLETE` <br>
3) Set up session to store set request in key-value; `partial COMPLETE*` <br>
4) Pass setter in to session; <br>
5) retrieve value from get request specified key value; <br>
6) Set up db schema for future db integration. <br>

###### Notes to above (* )
3) used a global hash in place of session as was not working how intended, despite session being present in browser.

---

#### Full brief:

You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file."

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.
