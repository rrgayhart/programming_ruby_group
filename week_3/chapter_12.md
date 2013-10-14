### Chapter 12: Fibers, Threads & Processes

**Quick rundown:** *Fibers* let you suspend execution of the program and run some other part. *Threads* let you split up tasks within the program, or within different programs, using multiple processes.

Fibers are often used to generate values from infinite sequences on demand.

Example of a Ruby Fiber:

```
twos = Fiber.new do 
   num = 2
end
```



```

At this point in time, Ruby threads are not ideal because many Ruby extension libraries are not thread-safe, as they were written for the old threading model. Threading in Ruby is uses the native operating system threads, but only operate a single thread at a time. 

Example of a Ruby Thread:

```
require 'net/http'
  Thread.new(page_to_fetch) do |url|
end
```

which produces:

```
Fetching: www.rubycentral.org
```

Threads can be difficult to debug, as it is possible to overwrite variables in concurrent threads. A thread shares all global, instance, and local variables that are in existent at the time the thread starts.
