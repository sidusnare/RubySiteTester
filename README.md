# RubySiteTester
A program to test HTTP validity across multiple IPs

#Design
##Definitions
Sites will be defined in JSON files at ./var/sites.d/#{NAME}.json . These will define 
*   A string contain the site name for Host: header
*   A list of strings of IPs to test against
*   Optionally, a string containing validating pattern to discern an empty response from a valid response (such as a sites copyright line, or title line)
*   Optionally, a list of numbers of valid response codes, defaults to [ 200, 301, 302, 304, 206 ]
*   Optionally, a list of numbers of invalid response codes, defaults to anything not in the valid list.
*   Optionally, a number of maximum concurrent tests to run
*   Optionally, a number containing the port to connect to
*   Optionally, a boolean value for whether or not to use HTTPS

The file names will be arbitrary, and some test definitions for popular internet sites are provided.

##Function
The tests will be in parallel, and by default will run all tests concurrently.
##Configuration
Global parameters will be set in ./etc/global.json , such as maximum concurrent tests, or response code sets. These setting will supersede defaults, but be superseded by site definitions.

The overarching idea is that ./var/sites.d/ could be shared across an operations team while individual operator's concerns can be adjusted in ./etc/

#Use
##Simple defined operation
./rst.rb NAME
##Undefined operation DNS sourced IPs
./rst.rb -h HOST -d
##Undefined operation specified IPs
./rst.rb -h HOST -i DOT.NOTED.IP.ADDR -i DOT.NOTED.IP.ADDR -i DOT.NOTED.IP.ADDR


#To do
Everything


