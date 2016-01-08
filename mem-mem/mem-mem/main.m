//
//  main.m
//  mem-mem
//
//  Created by Byrdann Fox on 1/8/16.
//  Copyright © 2016 Loopi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
	
	/* std. memory management example */
	
	// SomeObject *myOwnObject;
	
	// myOwnObject is created in main
	// myOwnObject = [[SomeObject alloc] init];
	
	// myOwnObject can be used by other objects
	
	// [anotherObject using:myOwnObject];
	
	// NSMutableArray *myArray;
	// add my object to myArray
	// myArray = [[NSMutableArray alloc] initWithObjects:myOwnObject, nil];
	
	// but main is responsible for releasing it, and now that an NSMutableArray was initialized with a reference to the initialized myOwnObject, 'main' does not need a reference to it anymore
	// [myOwnObject release];
	
	// however, the array holding a reference to myOwnObject is still needed
	// [anotherObject usingArray: myArray];
	
	// on array destruction every object inside array gets release messaged
	// [myArray release];
	
	// myOwnObject retain count decreases this time to 0 and myOwnObject will be deleted together with the array
	
	/* std. memory leak example */
	
	// NSMutableString *str = [[NSMutableString alloc] initWithString: @"Leaky"];
	
	@autoreleasepool {
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
	}
	
}