package com.qifun.jsonStream;
using com.qifun.jsonStream.Plugins;


@:build(com.qifun.jsonStream.JsonSerializer.generateSerializer(["com.qifun.jsonStream.CSharpSimple"]))
class CSharpSimpleSerializer
{
}


@:build(com.qifun.jsonStream.JsonDeserializer.generateDeserializer(["com.qifun.jsonStream.CSharpSimple"]))
class CSharpSimpleDeserializer
{
}