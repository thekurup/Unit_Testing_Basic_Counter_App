import 'package:advanc/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  //Pretest:👇
  // This is a test that will run before any other tests in this file.
  // It is used to set up any necessary state or data before the tests run.
  // It is optional and can be omitted if not needed.
  
  //inorder to access class instance in all test cases we declare variable outside setup so that its public and can acces to all test cases.
  late Counter x;
  setUp((){
    //setup is called before each test in the file.
    //ie setup call then test call then teardown call.
    //Before each single test, setup is called.
    // You can use this to set up any necessary state or data before the tests run.
    // For example, you might want to create a new instance of a class or set up some mock data.
    
    //you can omit this if you don't need it
    //but if you omit this then you have to create instance of class in each test case.

     //workflow of setup and teardown is like this👇: 

    //setup->test->teardown->setup->test->teardown->setup->test->teardown
    
    // so now when you see the teste case you can see that we create instance of class in every test
    //so we can create instance of class in setup and use it in all test cases.
    //ie instead writing instance in each file we create instance in setup , so for each test cases first setup call and it create instance and then test run
    //by doing this we can avoid code duplication.
    //code means duplication is when you write the same code multiple times in different places.

    //code 👇

    // in here we create instance of class with already publicaly declared variable x.
    x=Counter();



  });
  setUpAll((){
    //setupAll is called once before all tests in the file.
    //ie setupAll call then test call then teardown call.
    //Before all tests, setupAll is called.
    //in setup case you want call setup for each test.
    //in setupAll case you want to call once setup for all tests.
    // You can use this to set up any necessary state or data before the tests run.
    // For example, you might want to create a new instance of a class or set up some mock data.
    //you can omit this if you don't need it.

    //workflow of setupall and teardownall is like this👇:

    //setupAll-> testallfiles ->teardownAll
    
  });

//Testing👇
  group("Counter Class", (){
    // This is a group of tests that share the same description.
    // You can use this to group related tests together.
    // For example, you might have a group of tests for a specific class or method.
  
  //Given When Then
  // Given: The Coutner class (Given a certain situation,)
  // When: it initialized (When something happens,)
  // Then: the counter should be 0 (Then expect a certain result.)
  test("instantiate stage of the  the counter class ie when Counter class instance is created", 
 (){
  //Arrange: Set up your object or environment(ie Given)
  // final Counter x= Counter();
  // i remove this line of code and use the instance created in setup method.
  //Act: Call the method or perform the action. (ie When)
  
  //Assert: Verify the expected result (ie Then)
    expect(x.count, 0, reason: "The initial state of the counter should be 0" );
 } );
  //Given When Then
  // Given: The Counter class (Given a certain situation,)
  // When: the Increment method is called (When something happens,)
  // Then: the counter should be 1 (Then expect a certain result.)
  test("when increment method is called", (){
    //Arrange: Set up your object or environment(ie Given)
    // final Counter x= Counter();
    // i remove this line of code and use the instance created in setup method.
    //Act: Call the method or perform the action. (ie When)
    x.Increment();
    //Assert: Verify the expected result (ie Then)
    expect(x.count, 1, reason: "The counter should be 1 after incrementing" );
  });
  test("decrement", (){
    //Arrange: Set up your object or environment(ie Given)
    // final Counter x= Counter();
    // i remove this line of code and use the instance created in setup method.
    //Act: Call the method or perform the action. (ie When)
    x.Decrement();
    x.Decrement();
    //Assert: Verify the expected result (ie Then)
    expect(x.count, -2, reason: "The counter should be -1 after decrementing" );

  });
  });

  //Posttest:👇

  // This is a test that will run after all other tests in this file.
  // It is used to clean up any state or data that was set up in the setUp method.
  // It is optional and can be omitted if not needed.
  tearDown((){
    //teardown is called after each single test in the file.
    //ie setup call then test call then teardown call.
    //After each single test, teardown is called.
    // You can use this to clean up any state or data that was set up in the setUp method.
    // For example, you might want to delete a temporary file or reset a database.
    //you can omit this if you don't need it.

     x.reset(); //reset the counter to 0 after each test.
    
  });
  tearDownAll((){
    //teardownAll is called once after all tests in the group is tested.
    //ie setupAll call then test  call to test all cases in the group then teardown call.
    // You can use this to clean up any state or data that was set up in the setUpAll method.
    // For example, you might want to delete a temporary file or reset a database.
    //you can omit this if you don't need it.
    
  });
}
