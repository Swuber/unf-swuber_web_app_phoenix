# Implementation

On a mac: 
make sure postgress is installed via homebrew.
<pre>
brew install postgresql
brew services start postgresql
</pre>

Dather dependencies and start the server
<pre>
 mix deps.get
 npm install 
 
 mix phoenix.server
</pre>
### Agenda 

1.make new pheonix app.<br>
2.implement channels into the app in order to incorporate swuber implementation.<br>
3. <br>

# UnfSwuber

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
