
Questions:
-	Your background @ BB, how you came to be involved

-	Does it acc work as I understand it - Just as an example – say I want to see if you guys have AirPods in stock at a store near me
o	First, I’d use the Products API: http://bestbuyapis.github.io/bby-query-builder/#/productSearch
	Search would include
•	Category – headphones
•	Keyword  - airpods
•	In store availability = true
	Response would include
•	In Store Availability, In Store Availability Text, and SKU
o	Will these include store ID?
o	I’d then use the Stores API
	Get the user’s current location, postal code or lat/long
	Append desired SKU(s) to request
o	What would a response look like?

Example query: https://stackoverflow.com/questions/27515341/how-can-i-list-which-stores-have-an-item-in-stock

-	What your exact involvement was, where the project was when you came to be involved/@ what stage you became involved
-	Why did you guys decide to build this API?
o	Basic – demand & reordering
o	Exposed – needed information to display something on their website
o	E.g. Loblaws or grocery stores generally do
-	What needed to happen for this to work? What was already in place?
o	Was all of it necessary?
o	What advantages did BB have in implementing this as opposed to e.g. a grocery or a convenience store?
o	Do you know of other companies that’ve implemented this?
-	How long did it take? How many people worked on it? How much did it cost?
-	Hardest part about implementing it?
-	If you had to do it w/ 10% of the resources, how would you go about it?
-	Who else should I talk to?
o	Your friend who works @ Slack?









-	Every big retailer will have this internally. So convincing them to build it won’t be the challenge
-	Could build a first-slice approach
o	MVP: Canadian Tire, London Drugs, Best Buy. Most of the large grocery chains.
	Already expose it
	Find out how – Developer Tools in Chrome by loading up all the product pages
-	Why did BB decide to expose it?
o	For retailers’ customers who want to know – destination based
o	7-Eleven – spontaneous
o	BB – big investment of time, money, big product – also risking health by entering a store
o	At least exposing that availability information to give info – but many – not only can you see, you can reserve 
-	If I wanted to go down this route
o	Go to all their websites – see if it says ‘in stock’ on product page. 
o	If it’s on a publically accessible page – won’t need a key for sure
o	Might need some dev skills to comb through to see what call is being made
-	Take a look @ grocery stores
o	Most cases either a JSON call or an XML call
o	If you understand those things, how API calls, practice making Postman collections if I haven’t done that before
	Practice API programming, interpreting API outputs
-	Should know:
o	Most retailers have rate limiters on APIs – make too many calls, will block you
o	Blocks are ‘pretty smart’
	Address
	Geolocation
	I.P address
	Behavioural – e.g. if calling API directly too many times, it’s obviously a bot
	Look for proxy addresses





