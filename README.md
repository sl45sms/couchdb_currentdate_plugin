# A minimal CouchDB Plugin to show the current date of server that couchdb runs

it is based on my_first_couchdb_plugin skeleton

## Compile

To compile your code, simply run:

    make

The output should be something like this:

    rebar compile
    ==> couchdb_currentdate_plugin (compile)
    Compiled src/couchdb_currentdate_plugin.erl

The compiled results are stored in a directory called `ebin/`. 


## Create Plugin

    make plugin

and you will see something like this:

    > make plugin
    rebar compile
    ==> couchdb_currentdate_plugin (compile)
    couchdb_currentdate_plugin-1.0.0-R15B03-1.4.0.tar.gz: 1/MeXYfxeBK7DQyk10/6ucIRusc=

At the moment it is not clear how to install plugins on CouchDB 1.5.0  
Look at this references:  
https://github.com/apache/couchdb/tree/master/src/my-first-couchdb-plugin  
https://github.com/apache/couchdb/tree/master/src/couch_plugins  
http://www.youtube.com/watch?v=saNjXpE1h1Y  

* * *

##Workarround  

The following is for ubuntu:  
copy from priv/default.d/couchdb_currentdate_plugin.ini to /etc/couchdb/default.d  
create dir /usr/lib/x86_64-linux-gnu/couchdb/erlang/lib/couchdb_currentdate  
copy ebin folder  
 
restart CouchDB  

##Test
curl http://127.0.0.1:5984/_now 
