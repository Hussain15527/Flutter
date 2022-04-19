`Asynchronous`  or `async` is needed when we want certain task to be completed before the next line runs, let's say your first task is to fetch the name of the person and then using that name you want to access his bio data, since without first geting the name it is not possible to get the bio data, we use `async` , `await` and `Future.delayed` function to do this task.

````dart
void todo() async {
    String name = await Future.delayed(Duration(seconds: 2), () {
      return "mujtaba hussain";
    });
    print("the name of the person is ${name}");
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todo();
  }

````
*initState()*  is kinda executed when the Widget build itself for the first time. So anything inside will get executed at the time of widget building.

*todo()* is our dummy function we used `async` there so that we can use `await` and the `Future.delayed` is used to stimulate the api retrieval porcess.
