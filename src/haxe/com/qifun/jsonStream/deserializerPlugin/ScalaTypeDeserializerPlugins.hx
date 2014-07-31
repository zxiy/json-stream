package com.qifun.jsonStream.deserializerPlugin;


#if (scala && (java || macro))

import haxe.macro.Context;
import haxe.macro.TypeTools;
import haxe.ds.Vector;
import com.dongxiguo.continuation.utils.Generator;
import com.qifun.jsonStream.JsonStream;
import com.qifun.jsonStream.JsonDeserializer;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.Seq;

/**
```scala.collection.Seq```的反序列化插件。
**/
@:final
class SeqScalaDeserializerPlugin
{
  #if java
  @:dox(hide)
  public static function deserializeForElement<Element>(self:JsonDeserializerPluginStream<scala.collection.Seq<Element>>, elementDeserializeFunction:JsonDeserializerPluginStream<Element>->Element):Null<scala.collection.Seq<Element>> return
  {
    switch (self.underlying)
    {
      case com.qifun.jsonStream.JsonStream.ARRAY(value):
      {
        var arrayBuffer:ArrayBuffer<Element> = scala.collection.mutable.ArrayBufferSingleton.getInstance().empty();
        var generator = Std.instance(value, (Generator:Class<Generator<JsonStream>>));
        if (generator != null)
        {
          [
            for (element in generator)
            {
              ArrayBufferPlusEqualsOperator.plusEquals(arrayBuffer,elementDeserializeFunction(new JsonDeserializerPluginStream(element)));
            }
          ];
        }
        else
        {
          [
            for (element in value)
            {
              ArrayBufferPlusEqualsOperator.plusEquals(arrayBuffer,elementDeserializeFunction(new JsonDeserializerPluginStream(element)));
            }
          ];
        }
        arrayBuffer.toSeq();
      }
      case NULL:
        null;
      case _:
        throw "Expect Seq";
    }
  }
  #end

  #if (java || macro)
  macro public static function pluginDeserialize<Element>(self:ExprOf<JsonDeserializerPluginStream<scala.collection.Seq<Element>>>):ExprOf<Null<scala.collection.Seq<Element>>> return
  {
    macro com.qifun.jsonStream.deserializerPlugin.ScalaTypeDeserializerPlugins.SeqScalaDeserializerPlugin.deserializeForElement($self, function(substream) return substream.pluginDeserialize());
  }
  #end
}
#end
