(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    //Allow using this built library as an AMD module
    //in another project. That other project will only
    //see this AMD call, not the internal modules in
    //the closure below.
    define([], factory);
  } else {
    //We don't have an AMD library, so just assign to a
    //global variable.
    root.HelloWorld = factory();
  }
}(this, function () {
    //almond, and your modules will be inlined here
