-ifndef(MESSAGE_HRL).
-define(MESSAGE_HRL, true).

-type container()     :: chain | cur.
-type messageType()   :: sys | reply | forward | read | edited | cursor.
-type messageStatus() :: masync | mdelete | mclear| mupdate | medit.

-record(muc,            {name = [] :: [] | binary() }).
-record(p2p,            {from = [] :: [] | binary(),
                         to   = [] :: [] | binary() }).

-record('Message',      {id        = [] :: [] | integer(),
                         container = chain :: container(),
                         feed_id   = [] :: #muc{} | #p2p{},
                         prev      = [] :: [] | integer(),
                         next      = [] :: [] | integer(),
                         msg_id    = [] :: [] | binary(),
                         from      = [] :: [] | binary(),
                         to        = [] :: [] | binary(),
                         created   = [] :: [] | integer(),
                         files     = [] :: list(#'Desc'{}),
                         type      = [] :: messageType(),
                         link      = [] :: [] | integer() | #'Message'{},
                         seenby    = [] :: list(binary() | integer()),
                         repliedby = [] :: list(integer()),
                         mentioned = [] :: list(integer()),
                         mstatus   = [] :: messageStatus()}).

-endif.