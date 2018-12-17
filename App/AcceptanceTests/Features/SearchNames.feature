Feature:	SearchNames
			Users can search for names in the System via the Search page

Scenario:	Navigate to Bantu-Names website
Given		
When		User Navigates to Bantu-Names website Url: https://bantunames.azurewebsites.net/
Then		User Is sent to Search page by default

Scenario: 	Navigate to Search Page
Given		That I am on the Bantu-Names website
When		User Navigates to Search page
Then		Search page visible in initial state no name in search box and no search results.

Scenario: 	Search for existing Name
Given		That I am on the Bantu-Names website
And			That I am on the Search page
And			The name 'Musisi' exists
When		User searches for  'Musisi'
Then		Search results returned for 'Musisi'

Scenario: 	Search for non-existant Name
Given		That I am on the Bantu-Names website
And			That I am on the Search page
And			The name 'Jack' doesn't exist
When		User searches for  'Jack'
Then		No search results returned for 'Jack'

Scenario: 	Use valid search term when searching Names
Given		That I am on the Bantu-Names website
And			That I am on the Search page
And			The name 'Buwembo' is valid search term
When		User searches for  'Buwembo'
Then		No Validation message displayed for 'Buwembo'

Scenario: 	Use invalid search-term when searching Names
Given		That I am on the Bantu-Names website
And			That I am on the Search page
And			The name '1James' is invalid search term
When		User searches for  '1James'
Then		Validation message displayed for '1James'