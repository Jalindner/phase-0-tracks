## HTTP Status codes

> HTTP status codes are 3 digit codes that represent the status of the page loaded. The nature of these codes depends on the first digit.

* 1xx codes represent a provisional response. These are usually only used for experimental purposes.

* 2xx codes represent a successful action being received and processed by the client. Generally, most web pages want to aim for code 200, the general success code.

* 3xx codes represent a redirection to another page. These are usually indicate that the client must take additional action before a successful status.

* 4xx codes represent a client-side error, meaning the user has done something wrong in trying to load the web page. Most common errors in this category are 401 (unauthorized access), 403 (forbidden access), and the infamous 404 (page not found).

* 5xx codes represent a server-side error, meaning that the server where the page data is stored is experiencing a problem providing the web page. The most common is 500 (general server error).

## GET vs. POST

> In general, you would use a GET request when the page need to to fetch documents from the server while POST requests are used to update data to make changes to the server. This is because GET requests usually have a limited amount of data they are able to upload while POST requests do not. Also, GET request information can be bookmarked and are saved to the browsing history while POST request information is not.

## Cookies

> Cookies are peices of data that is saved on the client's machine after interacting with a web site that uses cookies. This data can then be sent back to the web server when the page is revisited and utilize that data. Common usages include saving shopping carts, form information, and saved data.