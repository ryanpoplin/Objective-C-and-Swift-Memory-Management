import UIKit

// Every time you create a new instance of a class, ARC allocates a chunk of memory to store information about that instance. This memory holds information about the type of the instance, together with the values of any stored properties associated with that instance.

class Person {
	private var instanceCount = 0
	private var name: String?
	init(name: String?) {
		self.name = name
		++instanceCount
	}
	deinit {
		--instanceCount
	}
}

class Test {
	private var instanceCount = 0
	private var personInstance: Person?
	init(personInstance: Person?) {
		self.personInstance = personInstance
		++instanceCount
	}
	deinit {
		--instanceCount
	}
}

var test1: Test?
var test2: Test?
var test3: Test?

test1 = Test(personInstance: Person(name: "Ryan Poplin"))
test2 = Test(personInstance: Person(name: "Byrdann Fox"))
test3 = Test(personInstance: Person(name: "Test User"))

test1 = nil
test1?.instanceCount
test2 = nil
test2?.instanceCount
test3 = nil
test3?.instanceCount

