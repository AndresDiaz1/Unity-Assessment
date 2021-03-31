# Unity-Assessment

## 2. Questions

### 2.1 Definitions:

***Scriptable Build Pipeline***     
It's a C# package with a predefined build flow for building AssetBundles. It can be used to control how Unity builds content. 

***Scriptable Render Pipeline***   
It's a feature that allows to control the rendering via C# scripts, the user can have more customization over the rendering process and performance resources. Can be used when a game requires specific rendering.

***Addressables***   
It's a unity package that provides an easy way to load assets asynchronously using an address. A good use case could be a mod system, so the user can load and unload mods on the game.

***IL2CPP***   
It's a Unity technology for compiling .NET assemblies to native platform. It has an AOT (Ahead of Time) compiler so the C# code is compiled to IL (Intermediate Language), then it's compiled to native code increasing performance and enabling crossplatform portability.

***Nested Prefabs***   
A prefab is a template for a collection of game objects and components, a prefab can be instantiated into a scene. Nested prefabs allows to include prefab instances as children inside other prefabs, while still maintaining a reference to their own prefab asset, so making a change to the parent prefab taht change will be reflected in all children

### 2.2 Problems of Unity’s non-incremental Garbage Collector.   
1. Whenever the garbage collector needs to perform garbage collection, it will stop the running program, and resume only when it has finished all its work, causing delays at arbitrary moments. This can become an issue as ii is not possible to sustain a consistent frame rate.
2. The programmer has little control when the garbage collection should be launched.

### 2.3 Unity LTS vs TECH release vs Beta vs Alpha
***Alpha:*** In this phase the software is not thoroughly tested and main contain several bugs and errors.   
***Betha:*** The software is feature completed but may contain known and unknown bugs.   
***TECH release:*** Consist of three major releases a year with new features and funcionality.
***LTS:*** Is the last TECH release of each year   

Depending on where you are in your development cycle, you may want either to try out new features (TECH release) or only to get bug fixes in the version you are using for a longer period without adding new features (LTS).

### 2.4 Preferred VCS
