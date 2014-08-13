package com.qifun.jsonStream;
import haxe.unit.TestRunner;
import com.qifun.jsonStream.*;
import com.qifun.jsonStream.CSharpPluginsTest;
import Rpc2Test;



class Main
{

  static function testAll()
  {
    var runner = new TestRunner();
    runner.add(new RawTest());
    runner.add(new SimpleTest());
    runner.add(new SimpleAbstractTest());
    runner.add(new EnumWithParameterTest());
    runner.add(new Rpc2Test());
    runner.add(new GenericClassTest());
    runner.add(new TextTest());
    runner.add(new CSharpPluginsTest());
    runner.add(new AbstractTypePluginTest());
    var isSuccess = runner.run();
    if (!isSuccess)
    {
      throw runner.result;
    }
  }

  public static function main()
  {
    // 使用Timer以绕开在main中遇到异常时FlashDevelop调试器无法退出的Bug
    #if flash9
      haxe.Timer.delay(testAll, 0);
    #else
      testAll();
    #end
  }

}