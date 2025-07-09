# simple-rack-server

🚀 A minimal Rack application built by [Farz](https://github.com/farz-bhullar) to explore the internals of Ruby web servers.

This project includes a simple Rack app and a custom middleware to log request processing time.

---

## 🧱 What is Rack?

Rack is a Ruby interface that connects web servers with web applications.

It’s the foundation of popular Ruby frameworks like **Rails** and **Sinatra**.

This project shows:

- How to write a minimal Rack app
- How to build and use custom middleware
- How query parameters and routing work under the hood

---

## 📂 Project Structure

simple-rack-server/

├── application.rb # The main Rack app
├── config.ru # Rackup config to run the app
├── middleware/
│ └── request_timer_middleware.rb # Custom middleware to log request time
├── README.md

---

# ▶️ How to Run

### 1. Install Rack

`gem install rack`

### 2. Start the server

`rackup config.ru`

By default, it runs at: 👉 [`http://localhost:9292/`](http://localhost:9292/)

## 🌈 Try It!

Open your browser and try these:

- [`http://localhost:9292/`](http://localhost:9292/)
- [`http://localhost:9292/?name=Farz&lang=Ruby`](http://localhost:9292/?name=Farz&lang=Ruby)

You’ll see the path you visited and any query parameters you passed in the URL.

---

## 🔍 Features

### ✅ Minimal Rack App

- Handles request and shows path visited
- Displays query parameters if provided (like `?name=Farz`)
- Everything is built with plain Ruby — no Rails, no Sinatra

### ✅ Custom Middleware

**`RequestTimerMiddleware`**
Logs how long it takes to process each request.
You’ll see something like this in your terminal:

`[GET /?name=Farz] Completed in 1.23 ms`

This is like a stopwatch for every request hitting your app!

---

## 🧪 Example Output (HTML)

```
<h1>Hello, Folk!</h1>
<p>You visited: /</p>
<p>Params: {"name"=>"Farz", "lang"=>"Ruby"}</p>
```

---

## 📚 Learn More

- 🌐 [Rack on GitHub](https://github.com/rack/rack)
- 📜 [Rack SPEC - How Rack Works](https://github.com/rack/rack/blob/main/SPEC.rdoc)
