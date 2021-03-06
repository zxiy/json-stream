/*
 * json-stream
 * Copyright 2014 深圳岂凡网络有限公司 (Shenzhen QiFun Network Corp., LTD)
 *
 * Author: 杨博 (Yang Bo) <pop.atry@gmail.com>, 张修羽 (Zhang Xiuyu) <zxiuyu@126.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.qifun.jsonStream;

// Default plugins

#if doc_gen
/**
  定义了所有内置插件的模块。

  `using com.qifun.jsonStream.Plugins;`将启用`builderPlugin`包、`deserializerPlugin`包和`serializerPlugin`包中的所有插件。
**/
@:final
extern class Plugins{}
#end

@:dox(hide)
typedef GeneratedSerializerPlugin = com.qifun.jsonStream.serializerPlugin.GeneratedSerializerPlugin;

// 序列化插件添加在此之后

@:dox(hide)
typedef RawSerializerPlugin = com.qifun.jsonStream.serializerPlugin.RawSerializerPlugin;

@:dox(hide)
typedef Int64SerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.Int64SerializerPlugin;

@:dox(hide)
typedef UIntSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.UIntSerializerPlugin;

@:dox(hide)
typedef IntSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.IntSerializerPlugin;

#if (java || cs)
  @:dox(hide)
  typedef SingleSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.SingleSerializerPlugin;
#end

@:dox(hide)
typedef FloatSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.FloatSerializerPlugin;

@:dox(hide)
typedef BoolSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.BoolSerializerPlugin;


@:dox(hide)
typedef BinarySerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.BinarySerializerPlugin;

@:dox(hide)
typedef StringSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.StringSerializerPlugin;

@:dox(hide)
typedef ArraySerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.ArraySerializerPlugin;

@:dox(hide)
typedef VectorSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.VectorSerializerPlugin;

//TODO scala.immutable.Set/Seq build plugin



@:dox(hide)
typedef CrossPlatformRefSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.CrossPlatformRefSerializerPlugin;

@:dox(hide)
typedef CrossPlatformSetSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.CrossPlatformSetSerializerPlugin;

@:dox(hide)
typedef CrossPlatformVectorSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.CrossPlatformVectorSerializerPlugin;

@:dox(hide)
typedef CrossPlatformMapSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.CrossPlatformMapSerializerPlugin;

#if (java && scala)
@:dox(hide)
typedef ScalaSeqSerializerPlugin = com.qifun.jsonStream.serializerPlugin.ScalaSerializerPlugins.ScalaSeqSerializerPlugin;

@:dox(hide)
typedef ScalaSetSerializerPlugin = com.qifun.jsonStream.serializerPlugin.ScalaSerializerPlugins.ScalaSetSerializerPlugin;

@:dox(hide)
typedef ScalaMapSerializerPlugin = com.qifun.jsonStream.serializerPlugin.ScalaSerializerPlugins.ScalaMapSerializerPlugin;

#end

#if cs

@:dox(hide)
typedef CSharpListSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CSharpSerializerPlugins.CSharpListSerializerPlugin;

@:dox(hide)
typedef CSharpDictionarySerializerPlugin = com.qifun.jsonStream.serializerPlugin.CSharpSerializerPlugins.CSharpDictionarySerializerPlugin;

@:dox(hide)
typedef CSharpHashSetSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CSharpSerializerPlugins.CSharpHashSetSerializerPlugin;
#end

@:dox(hide)
typedef StmTRefSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.StmTRefSerializerPlugin;

@:dox(hide)
typedef StmSetSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.StmSetSerializerPlugin;

@:dox(hide)
typedef StmMapSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.StmMapSerializerPlugin;

@:dox(hide)
typedef StmVectorSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.StmVectorSerializerPlugin;

@:dox(hide)
typedef ImmutableSetSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.ImmutableSetSerializerPlugin;

@:dox(hide)
typedef ImmutableMapSerializerPlugin = com.qifun.jsonStream.serializerPlugin.CrossPlatformSerializerPlugins.ImmutableMapSerializerPlugin;

#if (java && scala)

@:dox(hide)
typedef StmRefSerializerPlugin = com.qifun.jsonStream.serializerPlugin.StmSerializerPlugins.StmRefSerializerPlugin;

@:dox(hide)
typedef StmTSetSerializerPlugin = com.qifun.jsonStream.serializerPlugin.StmSerializerPlugins.StmTSetSerializerPlugin;

@:dox(hide)
typedef StmTMapSerializerPlugin = com.qifun.jsonStream.serializerPlugin.StmSerializerPlugins.StmTMapSerializerPlugin;

@:dox(hide)
typedef StmTArraySerializerPlugin = com.qifun.jsonStream.serializerPlugin.StmSerializerPlugins.StmTArraySerializerPlugin;

#end

@:dox(hide)
typedef IntMapSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.IntMapSerializerPlugin;

@:dox(hide)
typedef StringMapSerializerPlugin = com.qifun.jsonStream.serializerPlugin.PrimitiveSerializerPlugins.StringMapSerializerPlugin;

//序列化插件添加*不能*在此之后，haxe报错

@:dox(hide)
typedef LowPriorityDynamicSerializerPlugin = com.qifun.jsonStream.serializerPlugin.LowPriorityDynamicSerializerPlugin;



@:dox(hide)
typedef GeneratedDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.GeneratedDeserializerPlugin;

// 反序列化插件添加在此之后

@:dox(hide)
typedef RawDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.RawDeserializerPlugin;

@:dox(hide)
typedef Int64DeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.Int64DeserializerPlugin;

@:dox(hide)
typedef UIntDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.UIntDeserializerPlugin;

@:dox(hide)
typedef IntDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.IntDeserializerPlugin;

#if (java || cs)
  @:dox(hide)
  typedef SingleDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.SingleDeserializerPlugin;
#end

@:dox(hide)
typedef FloatDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.FloatDeserializerPlugin;

@:dox(hide)
typedef BoolDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.BoolDeserializerPlugin;

@:dox(hide)
typedef BinaryDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.BinaryDeserializerPlugin;

@:dox(hide)
typedef StringDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.StringDeserializerPlugin;

@:dox(hide)
typedef ArrayDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.ArrayDeserializerPlugin;

@:dox(hide)
typedef VectorDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.VectorDeserializerPlugin;

@:dox(hide)
typedef CrossPlatformRefDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.CrossPlatformRefDeserializerPlugin;

@:dox(hide)
typedef CrossPlatformVectorDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.CrossPlatformVectorDeserializerPlugin;

@:dox(hide)
typedef CrossPlatformMapDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.CrossPlatformMapDeserializerPlugin;

@:dox(hide)
typedef CrossPlatformSetDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.CrossPlatformSetDeserializerPlugin;

@:dox(hide)
typedef StmTRefDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.StmTRefDeserializerPlugin;

@:dox(hide)
typedef StmSetDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.StmSetDeserializerPlugin;

@:dox(hide)
typedef StmMapDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.StmMapDeserializerPlugin;

@:dox(hide)
typedef StmVectorDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.StmVectorDeserializerPlugin;

@:dox(hide)
typedef ImmutableSetDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.ImmutableSetDeserializerPlugin;

@:dox(hide)
typedef ImmutableMapDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CrossPlatformDeserializerPlugins.ImmutableMapDeserializerPlugin;


#if (java && scala)
@:dox(hide)
typedef ScalaSeqDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.ScalaDeserializerPlugins.ScalaSeqDeserializerPlugin;

@:dox(hide)
typedef ScalaSetDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.ScalaDeserializerPlugins.ScalaSetDeserializerPlugin;

@:dox(hide)
typedef ScalaMapDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.ScalaDeserializerPlugins.ScalaMapDeserializerPlugin;
#end

#if cs

@:dox(hide)
typedef CSharpListDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CSharpDeserializerPlugins.CSharpListDeserializerPlugin;

@:dox(hide)
typedef CSharpDictionaryDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CSharpDeserializerPlugins.CSharpDictionaryDeserializerPlugin;

@:dox(hide)
typedef CSharpHashSetDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.CSharpDeserializerPlugins.CSharpHashSetDeserializerPlugin;

#end

#if (java && scala)

@:dox(hide)
typedef StmRefDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.StmDeserializerPlugins.StmRefDeserializerPlugin;

@:dox(hide)
typedef StmTSetDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.StmDeserializerPlugins.StmTSetDeserializerPlugin;

@:dox(hide)
typedef StmTMapDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.StmDeserializerPlugins.StmTMapDeserializerPlugin;

@:dox(hide)
typedef StmTArrayDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.StmDeserializerPlugins.StmTArrayDeserializerPlugin;

#end

@:dox(hide)
typedef IntMapDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.IntMapDeserializerPlugin;

@:dox(hide)
typedef StringMapDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.PrimitiveDeserializerPlugins.StringMapDeserializerPlugin;

//反序列化插件添加*不能*在此之后，haxe报错

@:dox(hide)
typedef LowPriorityDynamicDeserializerPlugin = com.qifun.jsonStream.deserializerPlugin.LowPriorityDynamicDeserializerPlugin;


@:dox(hide)
typedef GeneratedBuilderPlugin = com.qifun.jsonStream.builderPlugin.GeneratedBuilderPlugin;

//构建插件添加在此之后

@:dox(hide)
typedef RawBuilderPlugin = com.qifun.jsonStream.builderPlugin.RawBuilderPlugin;

@:dox(hide)
typedef Int64BuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.Int64BuilderPlugin;

@:dox(hide)
typedef UIntBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.UIntBuilderPlugin;

@:dox(hide)
typedef IntBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.IntBuilderPlugin;

#if (java || cs)
  @:dox(hide)
  typedef SingleBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.SingleBuilderPlugin;
#end

@:dox(hide)
typedef FloatBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.FloatBuilderPlugin;

@:dox(hide)
typedef BoolBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.BoolBuilderPlugin;

//TODO Binary builder plugin

@:dox(hide)
typedef StringBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.StringBuilderPlugin;

@:dox(hide)
typedef ArrayBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.ArrayBuilderPlugin;

@:dox(hide)
typedef VectorBuilderPlugin = com.qifun.jsonStream.builderPlugin.PrimitiveBuilderPlugins.VectorBuilderPlugin;

//构建插件添加*不能*在此之后，haxe报错
@:dox(hide)
typedef LowPriorityDynamicBuilderPlugin = com.qifun.jsonStream.builderPlugin.LowPriorityDynamicBuilderPlugin;

