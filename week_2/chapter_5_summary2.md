**Inheritance and mixins both allow you to write code in one place and effectively inject that code into multiple classes.**


####Inheritance 
- Allows you to create a class that is a refinement or specialization of another class.
- subclass/child class inherits from superclass/parent class
- If a method is called in a child class that isn't defined in that class, Ruby looks in the parent class of the child class and so on until it reaches Basic Object.
- Sub-class: Child object is a kind of the parent (i.e. a cat is a kind of animal)

####Modules
"A uses B"
1. Namespace: contains variables and methods which can be shared among different Ruby programs. Often used when certain methods don't logically fit into a class but may need to be used within that class. 
2. Mixins: Basically the same as inheritance. Generally don't have instance variables because it can cause confusion of instance variables in actual class including the module. Also, any module that requires state (i.e. instance variables in the initialize) should probably be it's own class. 
*Last module included is the one that Ruby searches in first for a method*


####Questions
- use of the keyword super p. 73
- yield p. 78
