package net.p110sf.saxon.functions.registry;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import net.p110sf.saxon.functions.CollatingFunctionFree;
import net.p110sf.saxon.functions.CollationKeyFn;
import net.p110sf.saxon.functions.ContainsToken;
import net.p110sf.saxon.functions.ContextItemAccessorFunction;
import net.p110sf.saxon.functions.CopyOfFn;
import net.p110sf.saxon.functions.DynamicContextAccessor;
import net.p110sf.saxon.functions.GenerateId_1;
import net.p110sf.saxon.functions.HasChildren_1;
import net.p110sf.saxon.functions.HeadFn;
import net.p110sf.saxon.functions.Innermost;
import net.p110sf.saxon.functions.ParseIetfDate;
import net.p110sf.saxon.functions.ParseXml;
import net.p110sf.saxon.functions.ParseXmlFragment;
import net.p110sf.saxon.functions.Serialize;
import net.p110sf.saxon.functions.SnapshotFn;
import net.p110sf.saxon.functions.Sort_1;
import net.p110sf.saxon.functions.Sort_2;
import net.p110sf.saxon.functions.StringJoin;
import net.p110sf.saxon.functions.Tokenize_1;
import net.p110sf.saxon.functions.Trace;
import net.p110sf.saxon.functions.TransformFn;
import net.p110sf.saxon.functions.hof.LoadXqueryModule;
import net.p110sf.saxon.functions.hof.RandomNumberGenerator;
import net.p110sf.saxon.functions.hof.Sort_3;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.ma.json.JsonDoc;
import net.p110sf.saxon.ma.json.JsonToXMLFn;
import net.p110sf.saxon.ma.json.ParseJsonFn;
import net.p110sf.saxon.ma.json.XMLToJsonFn;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class XPath31FunctionSet extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final XPath31FunctionSet f100428c = new XPath31FunctionSet();

    public XPath31FunctionSet() {
        init();
    }

    public static XPath31FunctionSet getInstance() {
        return f100428c;
    }

    public final void init() {
        importFunctionSet(XPath20FunctionSet.getInstance());
        importFunctionSet(XPath30FunctionSet.getInstance());
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.BASE64_BINARY;
        BuiltInFunctionSet.Entry register = register("collation-key", 1, CollationKeyFn.class, builtInAtomicType, 24576, 32);
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.STRING;
        register.arg(0, builtInAtomicType2, 16384, null);
        register("collation-key", 2, CollatingFunctionFree.class, builtInAtomicType, 24576, 32).arg(0, builtInAtomicType2, 16384, null).arg(1, builtInAtomicType2, 16384, null);
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.BOOLEAN;
        register("contains-token", 2, ContainsToken.class, builtInAtomicType3, 16384, 32).arg(0, builtInAtomicType2, 57344, null).arg(1, builtInAtomicType2, 16384, null);
        register("contains-token", 3, CollatingFunctionFree.class, builtInAtomicType3, 16384, 8).arg(0, builtInAtomicType2, 57344, null).arg(1, builtInAtomicType2, 16384, null).arg(2, builtInAtomicType2, 16384, null);
        register(Constants.ELEMNAME_COPY_OF_STRING, 0, CopyOfFn.class, AnyItemType.getInstance(), 57344, 65536);
        register(Constants.ELEMNAME_COPY_OF_STRING, 1, CopyOfFn.class, AnyItemType.getInstance(), 57344, 65536).arg(0, AnyItemType.getInstance(), 33611776, BuiltInFunctionSet.EMPTY);
        register("default-language", 0, DynamicContextAccessor.DefaultLanguage.class, BuiltInAtomicType.LANGUAGE, 16384, 64);
        register(Keywords.FUNC_GENERATE_ID_STRING, 0, ContextItemAccessorFunction.class, builtInAtomicType2, 16384, 516);
        BuiltInFunctionSet.Entry register2 = register(Keywords.FUNC_GENERATE_ID_STRING, 1, GenerateId_1.class, builtInAtomicType2, 16384, 0);
        ItemType itemType = Type.NODE_TYPE;
        StringValue stringValue = StringValue.EMPTY_STRING;
        register2.arg(0, itemType, 16801792, stringValue);
        register("has-children", 0, ContextItemAccessorFunction.class, builtInAtomicType3, 16384, 516);
        register("has-children", 1, HasChildren_1.class, builtInAtomicType3, 24576, 0).arg(0, AnyNodeTest.getInstance(), 16801792, null);
        register(gon.f71289o, 1, HeadFn.class, AnyItemType.getInstance(), 24576, 256).arg(0, AnyItemType.getInstance(), 67166208, null);
        register("innermost", 1, Innermost.class, AnyNodeTest.getInstance(), 57344, 0).arg(0, AnyNodeTest.getInstance(), 134275072, null);
        register("json-doc", 1, JsonDoc.class, AnyItemType.getInstance(), 24576, 512).arg(0, builtInAtomicType2, 24576, null);
        BuiltInFunctionSet.Entry arg = register("json-doc", 2, JsonDoc.class, AnyItemType.getInstance(), 24576, 512).arg(0, builtInAtomicType2, 24576, null);
        MapType mapType = MapType.ANY_MAP_TYPE;
        arg.arg(1, mapType, 16384, null).setOptionDetails(ParseJsonFn.OPTION_DETAILS);
        register("json-to-xml", 1, JsonToXMLFn.class, AnyItemType.getInstance(), 24576, 66048).arg(0, builtInAtomicType2, 24576, null);
        register("json-to-xml", 2, JsonToXMLFn.class, AnyItemType.getInstance(), 24576, 66048).arg(0, builtInAtomicType2, 24576, null).arg(1, mapType, 16384, null).setOptionDetails(JsonToXMLFn.OPTION_DETAILS);
        register("load-xquery-module", 1, LoadXqueryModule.class, mapType, 16384, 512).arg(0, builtInAtomicType2, 16384, null);
        register("load-xquery-module", 2, LoadXqueryModule.class, mapType, 16384, 512).arg(0, builtInAtomicType2, 16384, null).arg(1, mapType, 16384, BuiltInFunctionSet.EMPTY).setOptionDetails(LoadXqueryModule.makeOptionsParameter());
        register("parse-ietf-date", 1, ParseIetfDate.class, BuiltInAtomicType.DATE_TIME, 24576, 0).arg(0, builtInAtomicType2, 24576, BuiltInFunctionSet.EMPTY);
        register("parse-json", 1, ParseJsonFn.class, AnyItemType.getInstance(), 24576, 0).arg(0, builtInAtomicType2, 24576, BuiltInFunctionSet.EMPTY);
        register("parse-json", 2, ParseJsonFn.class, AnyItemType.getInstance(), 24576, 0).arg(0, builtInAtomicType2, 24576, BuiltInFunctionSet.EMPTY).arg(1, mapType, 16384, null).setOptionDetails(ParseJsonFn.OPTION_DETAILS);
        NodeKindTest nodeKindTest = NodeKindTest.DOCUMENT;
        register("parse-xml", 1, ParseXml.class, nodeKindTest, 24576, 66048).arg(0, builtInAtomicType2, 24576, BuiltInFunctionSet.EMPTY);
        MapType mapType2 = RandomNumberGenerator.RETURN_TYPE;
        register("random-number-generator", 0, RandomNumberGenerator.class, mapType2, 16384, 512);
        BuiltInFunctionSet.Entry register3 = register("random-number-generator", 1, RandomNumberGenerator.class, mapType2, 16384, 512);
        BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.ANY_ATOMIC;
        register3.arg(0, builtInAtomicType4, 24576, null);
        register("parse-xml-fragment", 1, ParseXmlFragment.class, nodeKindTest, 24576, 66048).arg(0, builtInAtomicType2, 24576, BuiltInFunctionSet.EMPTY);
        BuiltInFunctionSet.Entry arg2 = register("serialize", 2, Serialize.class, builtInAtomicType2, 16384, 0).arg(0, AnyItemType.getInstance(), 57344, null);
        ItemType itemType2 = Type.ITEM_TYPE;
        arg2.arg(1, itemType2, 24576, null).setOptionDetails(Serialize.makeOptionsParameter());
        register("snapshot", 0, ContextItemAccessorFunction.class, AnyItemType.getInstance(), 57344, 66052);
        register("snapshot", 1, SnapshotFn.class, AnyNodeTest.getInstance(), 57344, 65536).arg(0, AnyItemType.getInstance(), 33611776, BuiltInFunctionSet.EMPTY);
        register(Constants.ELEMNAME_SORT_STRING, 1, Sort_1.class, AnyItemType.getInstance(), 57344, 0).arg(0, AnyItemType.getInstance(), 57344, null);
        register(Constants.ELEMNAME_SORT_STRING, 2, Sort_2.class, AnyItemType.getInstance(), 57344, 0).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, builtInAtomicType2, 24576, null);
        register(Constants.ELEMNAME_SORT_STRING, 3, Sort_3.class, AnyItemType.getInstance(), 57344, 0).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, builtInAtomicType2, 24576, null).arg(2, new SpecificFunctionType(new SequenceType[]{SequenceType.SINGLE_ITEM}, SequenceType.ATOMIC_SEQUENCE), 16384, null);
        register("string-join", 1, StringJoin.class, builtInAtomicType2, 16384, 0).arg(0, builtInAtomicType4, 57344, stringValue);
        register("string-join", 2, StringJoin.class, builtInAtomicType2, 16384, 0).arg(0, builtInAtomicType4, 57344, stringValue).arg(1, builtInAtomicType2, 16384, null);
        register("tokenize", 1, Tokenize_1.class, builtInAtomicType2, 57344, 0).arg(0, builtInAtomicType2, 24576, BuiltInFunctionSet.EMPTY);
        register(AbstractLogger.TRACE, 1, Trace.class, itemType2, 57344, 513).arg(0, itemType2, 67166208, null);
        register(Constants.ELEMNAME_TRANSFORM_STRING, 1, TransformFn.class, mapType, 16384, 512).arg(0, mapType, 16384, BuiltInFunctionSet.EMPTY).setOptionDetails(TransformFn.makeOptionsParameter());
        register("xml-to-json", 1, XMLToJsonFn.class, builtInAtomicType2, 24576, 512).arg(0, AnyNodeTest.getInstance(), 33579008, BuiltInFunctionSet.EMPTY);
        register("xml-to-json", 2, XMLToJsonFn.class, builtInAtomicType2, 24576, 512).arg(0, AnyNodeTest.getInstance(), 33579008, BuiltInFunctionSet.EMPTY).arg(1, mapType, 33570816, null).setOptionDetails(XMLToJsonFn.makeOptionsParameter());
    }
}
