Feature: Book API sample

  Scenario: get list books
  * url 'http://restapi.demoqa.com/utilities/books/getallbooks'
    When method get
    * def Author = $.books[*].author
    * def Pages = $.books[?(@.pages<=234)]
    * print Author
    * print Pages
    Then
    * match json == { isbn: '9781593275846', pages: 472 }

#    * print response
#    * def titles = $..title
#    * print titles
#    * def books_with_isbn = $..books[?(@.isbn)]
#    * print books_with_isbn
#    * def books_with_page_greater = $..books[?(@.pages > 400)]
#    * print books_with_page_greater
#    * print $..books[:2]
#    * print $..books[-2:]

