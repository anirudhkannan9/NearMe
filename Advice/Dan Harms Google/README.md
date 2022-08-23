* Disclaimer -- maybe a civil lawsuit or smth if I get big enough
* re: not getting blocked
    * Dimensions that they pool to see if you're a person
        * Doing smth @ very specific intervals e.g. doing smth every even number vs adding a random element to your request (e.g. sending the request between every 1m and 1m20s; anything over a couple second range of randomness/variability is enough; the bigger the range, the blurrier the signal; if the requests aren't time-sensitive you can do it over an hour)
        * IP Address for request
            * Use a VPN or a cloud data centre, which'll have its own IP
                * (But if AWS hits their sites all the time they may get suspicious too)
    * Persist this so clients aren't pinging stores directly; product avail @ a location isn't data that'll change per user, so good indicator that I want to pull into a central DB, and then my users hit the cached copy of latest data
* There're scraping libraries; bunch that're written in Python
    * They'll have the "remain elusive" functionality built into it
    * So don't try and reinvent the wheel, esp if I'm not v interested in this intellectually
* For now, I could just load it, and no one would care
    * Even with customers, it really shouldn't increase that much anyway, if I do my job as a Singleton it'll be one request for the whole DB to update
