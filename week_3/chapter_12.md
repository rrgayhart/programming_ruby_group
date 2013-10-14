### Chapter 12: Fibers, Threads & Processes

**Quick rundown:** *Fibers* let you suspend execution of the program and run some other part. *Threads* let you split up tasks within the program, or within different programs, using multiple processes.

Fibers are often used to generate values from infinite sequences on demand.

Example of a Ruby Fiber:

```
twos = Fiber.new do 
   num = 2
   loop do
     Fiber.yield(num) unless num % 3 == 0 
     num += 2
   end 
end
10.times { print twos.resume, " " } 
```

produces:

```
2 4 8 10 14 16 20 22 26 28

```

At this point in time, Ruby threads are not ideal because many Ruby extension libraries are not thread-safe, as they were written for the old threading model. Threading in Ruby is uses the native operating system threads, but only operate a single thread at a time. 

Example of a Ruby Thread:

```
require 'net/http'
pages = %w( www.rubycentral.org slashdot.org www.google.com )
threads = pages.map do |page_to_fetch| 
  Thread.new(page_to_fetch) do |url|
    http = Net::HTTP.new(url, 80)
    print "Fetching: #{url}\n"
    resp = http.get('/')
    print "Got #{url}: #{resp.message}\n"
  end 
end
threads.each {|thr|  thr.join }
```

which produces:

```
Fetching: www.rubycentral.org
Fetching: slashdot.org
Fetching: www.google.com
Got www.google.com:  OK
Got slashdot.org:  OK
Got www.rubycentral.org:  OK
```

Threads can be difficult to debug, as it is possible to overwrite variables in concurrent threads. A thread shares all global, instance, and local variables that are in existent at the time the thread starts.

**Additional sources:**
http://lee.hambley.name/2012/06/19/the-best-description-of-a-ruby-fiber.html
http://www.paulbarry.com/
http://stackoverflow.com/questions/9052621/why-do-we-need-fibers

