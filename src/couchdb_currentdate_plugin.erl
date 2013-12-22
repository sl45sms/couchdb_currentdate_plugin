-module(couchdb_currentdate_plugin).

-export([iso_8601_req/1]).

-include_lib("couch/include/couch_db.hrl").

iso_8601_req(#httpd{method='GET'}=Req) ->
    {{Year,Month,Day},{Hour,Min,Sec}} = erlang:localtime(),
    ISO=list_to_binary(io_lib:format("~4.10.0B-~2.10.0B-~2.10.0B ~2.10.0B:~2.10.0B:~2.10.0B",
        [Year, Month, Day, Hour, Min, Sec])),
    couch_httpd:send_json(Req, {[{<<"now">>, ISO}]});
iso_8601_req(Req) ->
        couch_httpd:send_method_not_allowed(Req, "GET").
