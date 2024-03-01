*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://docs.nordicsemi.com/

*** Test Cases ***
Crawl and find errors
    Crawl Site   ${URL}
	...    max_number_of_page_to_crawl=1000
	...    page_crawl_keyword=test_page

*** Keywords ***
test_page
	${title}=    Get Title
	Log to Console    Title of page crawled is ${title}
	Should Not Contain    ${title}    Page not found

