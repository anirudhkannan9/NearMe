
Questions:
* Your background @ BB, how you came to be involved



* Does it acc work as I understand it - Just as an example – say I want to see if you guys have AirPods in stock at a store near me
    * First, I’d use the Products API: http://bestbuyapis.github.io/bby-query-builder/#/productSearch
        * Search would include
            * Category -- headphones
            * Keyword -- airpods
            * In store availability = true
        * Response includes:
            * In-store availability, in-store availaibility text, and SKU
                * Will these include store ID?
    * I'd then use the Stores API
        * Get the user's current location, postal code or lat/long
        * Append desired SKU(s) to request
    * What would a response look like?
    
    
Example query: https://stackoverflow.com/questions/27515341/how-can-i-list-which-stores-have-an-item-in-stock


* Why did BB decide to build this API
    * Basic -- demand & reordering
    * Exposed -- neded information to display something on their website
    * E.g. Lobalws or grocery stores generally do
* What needed to happen for this to work? What was already in place?
    * Was __all__ of it necessary?
    * What advantages did BB have in implementing this as opposed to e.g. a grocery or convenience store?
    * Do you know of other companies that've implemented this?

* Every big retailer will have this internally. So convincing them to build it won’t be the challenge
* Could build a first-slice approach
    * MVP: Canadian Tire, London Drugs, Best Buy. Most of the large grocery chains.
        * Already expose it


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





