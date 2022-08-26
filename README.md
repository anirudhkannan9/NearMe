# NearMe
What physical products are available NearMe?



Motivating example:

In May 2021, I had a minor surgery. The doctor advised that I get lots of protein to aid recovery. I was vegetarian at the time, so I was planning on relying on supplementation i.e. Muscle Milk. 

I'd seen Muscle Milk available at the Shoppers Drug Mart (chain convenience store + pharmacy) on-campus at UBC. So when I left the dental clinic where I'd had the surgery, I went to the nearest Shopper's Drug Mart to get some Muscle Milk. They didn't have it.

I tried other convenience stores and grocery stores; they didn't have it either. 

I needed a solution that would tell me whether or not a product is in stock at stores near me. 

Notes from Khaleel, Gavin, Dan:
- Khaleel Amarshi, who headed a similar product (live, location-specific physical inventory) at BestBuy: can do, probably by scraping website frontends. Caution -- they'll ban if you're at all suspicious, so you'll need to work around that. 

- Gavin Heidenreich, Computer Vision Engineer @ Faimdata (supply-chain CV company): no risk of being banned until loads of users + corresponding requests

- Dan Harms, SWE (mobile backend) @ Google: echoes Gavin. Also, the data isn't user specific i.e. whether or not product X is available @ Store Y doesn't change based on which user makes the request, so that implies a central DB that I pull to every e.g. hr (the less often, the better; also introduce randomness into requests; randomness on the order of 10-20 s (or even a few seconds) is probs enough), and then the users pull from this DB.


NOTES: 

POSSIBLE PROBLEM W PROMOTION: had planned to do it with doordash people. BUT THEY TYPICALLY ARE ASSIGNED TO GO TO ONE SPECIFIC BRANCH OF ONE SPECIFIC STORE -- SO THEY AREN'T GOING TO NEED THE ELSEWHERE FUNCTIONALITY.

Response: Yes, it can acc be useful. 
* Driver can look @ see what's available; they can suggest the sub themselves
    * Eventually: app can suggest sub
* Driver can also send the app to the user; the USER can see what's available and suggest a sub

Instacart/DD Drivers — Facebook groups, Reddit groups, Discord


* Sketch out the workflow/user flow; plan out all interactions, both from the user's perspective and then also from the POV of the backend as a singleton caching unit that operates independently of the users. THEN, from here, figure out the *absolute minimum* viable product.                

** FB POST **: 
Hi everyone, 

I'm a student in Canada. 

I'm building an app to help Instacart shoppers. 


BACKGROUND: MAY 2021

I had a minor surgery and the doctor told me to get lots of protein to recover. I was vegetarian and so I thought I'd get muscle milk to add protein to my diet. 

I went to a bunch of nearby stores and none of them had muscle milk/anything similar. I thought it should be easier to know if a certain product is in stock at a store near you.


APP: 

You know how you can go to a grocery store's website and select which store location you want to shop from? When you do that, the website tells you which items are in stock as you browse their menu. 

My app would collect a bunch of this real-time info about what's in stock at various stores. 

You could go into the app, type in "muscle milk", and it would show you the nearby stores that have Muscle Milk, based on their websites.


QUESTIONS:

1. I know IC includes some stock information in the app when you order as a customer. Can shoppers see this info too? If so, how accurate is it?

2. Would it help if you knew, in advance, if the store you're going to has the products you're shopping for in stock? 

3. I know that Instacart has 3 options for substitutions: "Find Best Match", "Pick Specific Replacement", and "Don't Replace". In case the customer picks "Find Best Match", are you allowed to buy from a nearby store that does? If not, would you be willing and able to arrange doing this via messaging the customer, in exchange for a generous tip?

4. Any general thoughts for me? 
