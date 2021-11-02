:- use_module(library(http/http_host)).
:- use_module(library(http/http_path)).
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
:- use_module(library(http/html_write)).
:- http_handler(root(.), hello, []).

:- use_module(library(http/http_unix_daemon)).

:- initialization http_daemon.

hello(_Request) :-
    reply_html_page(
	   [title('Simple Website')],
	   [
               h1('Simple Website'),
	       p('This is to show how a simple website can be made')
           ]
    ).