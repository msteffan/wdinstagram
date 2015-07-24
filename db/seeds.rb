require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/entry"
require_relative "../models/author"
require_relative "../models/comment"

# authors
melissa = Author.create(name: "Melissa", bio: "West coast, best coast", prof_pic:"http://www.lifewithdogs.tv/wp-content/uploads/2014/12/345354534.jpg")
nick = Author.create(name: "Nick", bio: "A corgi-loving WDI student", prof_pic: "http://cypresscreekanimalhospital.com/wp-content/uploads/2015/06/921935-yellow-lab-puppy.jpg")

# entries

first_entry = Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/2015-04/14/11/enhanced/webdr01/enhanced-1519-1429025522-8.png", date_taken: "July 24", caption: "Stumpy corgi on a stump", author_id: melissa.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/2015-04/14/12/enhanced/webdr13/enhanced-13454-1429028513-10.jpg", date_taken: "July 24", caption: " corgi", author_id: melissa.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/terminal05/2012/4/19/16/enhanced-buzz-31509-1334866896-8.jpg", date_taken: "July 24", caption: " corgi", author_id: melissa.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/web04/2012/4/19/16/enhanced-buzz-11025-1334867292-10.jpg", date_taken: "July 24", caption: " corgi", author_id: melissa.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/web05/2012/4/19/16/enhanced-buzz-30695-1334867674-11.jpg", date_taken: "July 24", caption: " corgi", author_id: nick.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/terminal05/2012/4/19/17/enhanced-buzz-4415-1334869411-3.jpg", date_taken: "July 24", caption: "second corgi", author_id: nick.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/web03/2012/4/19/16/enhanced-buzz-18908-1334869106-29.jpg", date_taken: "July 24", caption: "second corgi", author_id: nick.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/web04/2012/4/19/16/enhanced-buzz-10369-1334866408-7.jpg", date_taken: "July 24", caption: "second corgi", author_id: nick.id)
Entry.create(photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/web04/2012/4/19/16/enhanced-buzz-10741-1334866693-13.jpg", date_taken: "July 24", caption: "second corgi", author_id: nick.id)

#comments
Comment.create(name: "Nick", body: "Wow, sweet corgi!", date_taken: "June 23", entry_id: first_entry.id )
Comment.create(name: "Andy", body: "So cute!", date_taken: "June 24", entry_id: first_entry.id )

binding.pry
puts "database seeded!"
