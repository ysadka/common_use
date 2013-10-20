Create rake task with following:

```ruby
    desc "Pings PING_URL to keep a dyno alive"
    task :dyno_ping do
      require "net/http"

      if ENV['PING_URL']
        uri = URI(ENV['PING_URL'])
        Net::HTTP.get_response(uri)
      end
    end
```

Run from CLI:

```
$ heroku config:add PING_URL=http://my-app.herokuapp.com
```

Add dyno_ping task to Heroku Scheduler

From:
https://coderwall.com/p/u0x3nw
