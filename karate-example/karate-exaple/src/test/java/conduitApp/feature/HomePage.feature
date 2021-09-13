Feature: Tests for the home page

    Background: Define URL
        Given url 'https://conduit.productionready.io/api/'

    Scenario: Get all tags
    		#Given url 'https://conduit.productionready.io/api/'
        Given path 'tags'
        When method Get
        Then status 200
        And match response.tags contains ['МІLF', 'рublіс']
        And match response.tags !contains 'truck'
        And match response.tags == "#array"
        And match each response.tags == "#string"
        
@debug
    Scenario: Get 10 articles from the page
 				#Given url 'https://conduit.productionready.io/api/'
 				#Given param limit = 10
 				#Given param offset = 0
        Given params { limit: 10, offset: 0}
        Given path 'articles'
        When method Get
        Then status 200
        #And match response.articles == '#[10]'
        #And match response.articlesCount == 500
        And match response == { "articles": "#[10]", "articlesCount": 500}
        
        
        
        
        
        
        