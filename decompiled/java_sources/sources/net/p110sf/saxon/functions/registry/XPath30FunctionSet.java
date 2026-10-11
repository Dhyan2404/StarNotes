package net.p110sf.saxon.functions.registry;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import net.p110sf.saxon.functions.AnalyzeStringFn;
import net.p110sf.saxon.functions.ApplyFn;
import net.p110sf.saxon.functions.AvailableEnvironmentVariables;
import net.p110sf.saxon.functions.ContextItemAccessorFunction;
import net.p110sf.saxon.functions.EnvironmentVariable;
import net.p110sf.saxon.functions.FormatDate;
import net.p110sf.saxon.functions.FormatInteger;
import net.p110sf.saxon.functions.FormatNumber;
import net.p110sf.saxon.functions.GenerateId_1;
import net.p110sf.saxon.functions.HasChildren_1;
import net.p110sf.saxon.functions.HeadFn;
import net.p110sf.saxon.functions.Innermost;
import net.p110sf.saxon.functions.Outermost;
import net.p110sf.saxon.functions.ParseXml;
import net.p110sf.saxon.functions.ParseXmlFragment;
import net.p110sf.saxon.functions.Path_1;
import net.p110sf.saxon.functions.RegexFunctionSansFlags;
import net.p110sf.saxon.functions.Round;
import net.p110sf.saxon.functions.Serialize;
import net.p110sf.saxon.functions.Sort_1;
import net.p110sf.saxon.functions.StringJoin;
import net.p110sf.saxon.functions.SuperId;
import net.p110sf.saxon.functions.TailFn;
import net.p110sf.saxon.functions.UnparsedText;
import net.p110sf.saxon.functions.UnparsedTextAvailable;
import net.p110sf.saxon.functions.UnparsedTextLines;
import net.p110sf.saxon.functions.UriCollection;
import net.p110sf.saxon.functions.hof.FilterFn;
import net.p110sf.saxon.functions.hof.FoldLeftFn;
import net.p110sf.saxon.functions.hof.FoldRightFn;
import net.p110sf.saxon.functions.hof.ForEachFn;
import net.p110sf.saxon.functions.hof.ForEachPairFn;
import net.p110sf.saxon.functions.hof.FunctionArity;
import net.p110sf.saxon.functions.hof.FunctionLookup;
import net.p110sf.saxon.functions.hof.FunctionName;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class XPath30FunctionSet extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final XPath30FunctionSet f100427c = new XPath30FunctionSet();

    public XPath30FunctionSet() {
        init();
    }

    public static XPath30FunctionSet getInstance() {
        return f100427c;
    }

    public final void init() {
        importFunctionSet(XPath20FunctionSet.getInstance());
        NodeKindTest nodeKindTest = NodeKindTest.ELEMENT;
        BuiltInFunctionSet.Entry register = register("analyze-string", 2, RegexFunctionSansFlags.class, nodeKindTest, 16384, 66048);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
        register.arg(0, builtInAtomicType, 24576, null).arg(1, builtInAtomicType, 16384, null);
        register("analyze-string", 3, AnalyzeStringFn.class, nodeKindTest, 16384, 66048).arg(0, builtInAtomicType, 24576, null).arg(1, builtInAtomicType, 16384, null).arg(2, builtInAtomicType, 16384, null);
        register("apply", 2, ApplyFn.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyFunctionType.getInstance(), 16384, null).arg(1, ArrayItemType.ANY_ARRAY_TYPE, 16384, null);
        register("available-environment-variables", 0, AvailableEnvironmentVariables.class, builtInAtomicType, 57344, 512);
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.ANY_ATOMIC;
        register("data", 0, ContextItemAccessorFunction.class, builtInAtomicType2, 57344, 516);
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.ANY_URI;
        register("document-uri", 0, ContextItemAccessorFunction.class, builtInAtomicType3, 24576, 516);
        register("element-with-id", 1, SuperId.ElementWithId.class, nodeKindTest, 57344, 1540).arg(0, builtInAtomicType, 57344, BuiltInFunctionSet.EMPTY);
        BuiltInFunctionSet.Entry arg = register("element-with-id", 2, SuperId.ElementWithId.class, nodeKindTest, 57344, 1024).arg(0, builtInAtomicType, 57344, BuiltInFunctionSet.EMPTY);
        ItemType itemType = Type.NODE_TYPE;
        arg.arg(1, itemType, 16384, null);
        register("environment-variable", 1, EnvironmentVariable.class, builtInAtomicType, 24576, 512).arg(0, builtInAtomicType, 16384, null);
        SequenceType sequenceType = SequenceType.SINGLE_ITEM;
        register("filter", 2, FilterFn.class, AnyItemType.getInstance(), 57344, 513).arg(0, AnyItemType.getInstance(), 67166208, BuiltInFunctionSet.EMPTY).arg(1, new SpecificFunctionType(new SequenceType[]{sequenceType}, SequenceType.SINGLE_BOOLEAN), 16384, null);
        SequenceType sequenceType2 = SequenceType.ANY_SEQUENCE;
        register("fold-left", 3, FoldLeftFn.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, AnyItemType.getInstance(), 57344, null).arg(2, new SpecificFunctionType(new SequenceType[]{sequenceType2, sequenceType}, sequenceType2), 16384, null);
        register("fold-right", 3, FoldRightFn.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, AnyItemType.getInstance(), 57344, null).arg(2, new SpecificFunctionType(new SequenceType[]{sequenceType, sequenceType2}, sequenceType2), 16384, null);
        register(Constants.ELEMNAME_FOREACH_STRING, 2, ForEachFn.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, BuiltInFunctionSet.EMPTY).arg(1, new SpecificFunctionType(new SequenceType[]{sequenceType}, sequenceType2), 16384, null);
        register("for-each-pair", 3, ForEachPairFn.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, BuiltInFunctionSet.EMPTY).arg(1, AnyItemType.getInstance(), 57344, BuiltInFunctionSet.EMPTY).arg(2, new SpecificFunctionType(new SequenceType[]{sequenceType, sequenceType}, sequenceType2), 16384, null);
        BuiltInFunctionSet.Entry register2 = register("format-date", 2, FormatDate.class, builtInAtomicType, 24576, 32768);
        BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.DATE;
        register2.arg(0, builtInAtomicType4, 24576, null).arg(1, builtInAtomicType, 16384, null);
        register("format-date", 5, FormatDate.class, builtInAtomicType, 24576, 32768).arg(0, builtInAtomicType4, 24576, null).arg(1, builtInAtomicType, 16384, null).arg(2, builtInAtomicType, 24576, null).arg(3, builtInAtomicType, 24576, null).arg(4, builtInAtomicType, 24576, null);
        BuiltInFunctionSet.Entry register3 = register("format-dateTime", 2, FormatDate.class, builtInAtomicType, 24576, 32768);
        BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.DATE_TIME;
        register3.arg(0, builtInAtomicType5, 24576, null).arg(1, builtInAtomicType, 16384, null);
        register("format-dateTime", 5, FormatDate.class, builtInAtomicType, 24576, 32768).arg(0, builtInAtomicType5, 24576, null).arg(1, builtInAtomicType, 16384, null).arg(2, builtInAtomicType, 24576, null).arg(3, builtInAtomicType, 24576, null).arg(4, builtInAtomicType, 24576, null);
        BuiltInFunctionSet.Entry register4 = register("format-integer", 2, FormatInteger.class, AnyItemType.getInstance(), 16384, 0);
        BuiltInAtomicType builtInAtomicType6 = BuiltInAtomicType.INTEGER;
        register4.arg(0, builtInAtomicType6, 24576, null).arg(1, builtInAtomicType, 16384, null);
        register("format-integer", 3, FormatInteger.class, AnyItemType.getInstance(), 16384, 0).arg(0, builtInAtomicType6, 24576, null).arg(1, builtInAtomicType, 16384, null).arg(2, builtInAtomicType, 24576, null);
        register("format-number", 2, FormatNumber.class, builtInAtomicType, 16384, 512).arg(0, NumericType.getInstance(), 24576, null).arg(1, builtInAtomicType, 16384, null);
        register("format-number", 3, FormatNumber.class, builtInAtomicType, 16384, StandardNames.XS_BASE64_BINARY).arg(0, NumericType.getInstance(), 24576, null).arg(1, builtInAtomicType, 16384, null).arg(2, builtInAtomicType, 24576, null);
        BuiltInFunctionSet.Entry register5 = register("format-time", 2, FormatDate.class, builtInAtomicType, 24576, 32768);
        BuiltInAtomicType builtInAtomicType7 = BuiltInAtomicType.TIME;
        register5.arg(0, builtInAtomicType7, 24576, null).arg(1, builtInAtomicType, 16384, null);
        register("format-time", 5, FormatDate.class, builtInAtomicType, 24576, 32768).arg(0, builtInAtomicType7, 24576, null).arg(1, builtInAtomicType, 16384, null).arg(2, builtInAtomicType, 24576, null).arg(3, builtInAtomicType, 24576, null).arg(4, builtInAtomicType, 24576, null);
        register("function-arity", 1, FunctionArity.class, builtInAtomicType6, 16384, 0).arg(0, AnyFunctionType.getInstance(), 16384, null);
        BuiltInFunctionSet.Entry register6 = register("function-lookup", 2, FunctionLookup.class, AnyFunctionType.getInstance(), 24576, 23100);
        BuiltInAtomicType builtInAtomicType8 = BuiltInAtomicType.QNAME;
        register6.arg(0, builtInAtomicType8, 16384, null).arg(1, builtInAtomicType6, 16384, null);
        register("function-name", 1, FunctionName.class, builtInAtomicType8, 24576, 0).arg(0, AnyFunctionType.getInstance(), 16384, null);
        register(Keywords.FUNC_GENERATE_ID_STRING, 0, ContextItemAccessorFunction.class, builtInAtomicType, 16384, 516);
        BuiltInFunctionSet.Entry register7 = register(Keywords.FUNC_GENERATE_ID_STRING, 1, GenerateId_1.class, builtInAtomicType, 16384, 0);
        StringValue stringValue = StringValue.EMPTY_STRING;
        register7.arg(0, itemType, 16801792, stringValue);
        BuiltInAtomicType builtInAtomicType9 = BuiltInAtomicType.BOOLEAN;
        register("has-children", 0, ContextItemAccessorFunction.class, builtInAtomicType9, 16384, 516);
        register("has-children", 1, HasChildren_1.class, builtInAtomicType9, 24576, 0).arg(0, AnyNodeTest.getInstance(), 16801792, null);
        register(gon.f71289o, 1, HeadFn.class, AnyItemType.getInstance(), 24576, 256).arg(0, AnyItemType.getInstance(), 67166208, null);
        register("innermost", 1, Innermost.class, AnyNodeTest.getInstance(), 57344, 0).arg(0, AnyNodeTest.getInstance(), 134275072, null);
        register("nilled", 0, ContextItemAccessorFunction.class, builtInAtomicType9, 24576, 516);
        register("node-name", 0, ContextItemAccessorFunction.class, builtInAtomicType8, 24576, 516);
        register("outermost", 1, Outermost.class, AnyNodeTest.getInstance(), 57344, 257).arg(0, AnyNodeTest.getInstance(), 67166208, null);
        NodeKindTest nodeKindTest2 = NodeKindTest.DOCUMENT;
        register("parse-xml", 1, ParseXml.class, nodeKindTest2, 24576, 66048).arg(0, builtInAtomicType, 24576, BuiltInFunctionSet.EMPTY);
        register("parse-xml-fragment", 1, ParseXmlFragment.class, nodeKindTest2, 24576, 66048).arg(0, builtInAtomicType, 24576, BuiltInFunctionSet.EMPTY);
        register("path", 0, ContextItemAccessorFunction.class, builtInAtomicType, 24576, 516);
        register("path", 1, Path_1.class, builtInAtomicType, 24576, 0).arg(0, AnyNodeTest.getInstance(), 134242304, null);
        register(Keywords.FUNC_ROUND_STRING, 2, Round.class, NumericType.getInstance(), 24576, 2).arg(0, NumericType.getInstance(), 24576, BuiltInFunctionSet.EMPTY).arg(1, builtInAtomicType6, 16384, null);
        register("serialize", 1, Serialize.class, builtInAtomicType, 16384, 0).arg(0, AnyItemType.getInstance(), 57344, null);
        register(Constants.ELEMNAME_SORT_STRING, 1, Sort_1.class, AnyItemType.getInstance(), 57344, 0).arg(0, AnyItemType.getInstance(), 57344, null);
        register("string-join", 1, StringJoin.class, builtInAtomicType, 16384, 0).arg(0, builtInAtomicType2, 57344, stringValue);
        register("tail", 1, TailFn.class, AnyItemType.getInstance(), 57344, 257).arg(0, AnyItemType.getInstance(), 67166208, null);
        register("unparsed-text", 1, UnparsedText.class, builtInAtomicType, 24576, 520).arg(0, builtInAtomicType, 24576, null);
        register("unparsed-text", 2, UnparsedText.class, builtInAtomicType, 24576, 520).arg(0, builtInAtomicType, 24576, null).arg(1, builtInAtomicType, 16384, null);
        BuiltInFunctionSet.Entry register8 = register("unparsed-text-available", 1, UnparsedTextAvailable.class, builtInAtomicType9, 16384, 520);
        BooleanValue booleanValue = BooleanValue.FALSE;
        register8.arg(0, builtInAtomicType, 24576, booleanValue);
        register("unparsed-text-available", 2, UnparsedTextAvailable.class, builtInAtomicType9, 16384, 520).arg(0, builtInAtomicType, 24576, booleanValue).arg(1, builtInAtomicType, 16384, null);
        register("unparsed-text-lines", 1, UnparsedTextLines.class, builtInAtomicType, 57344, 520).arg(0, builtInAtomicType, 24576, null);
        register("unparsed-text-lines", 2, UnparsedTextLines.class, builtInAtomicType, 57344, 520).arg(0, builtInAtomicType, 24576, null).arg(1, builtInAtomicType, 16384, null);
        register("uri-collection", 0, UriCollection.class, builtInAtomicType3, 57344, 512);
        register("uri-collection", 1, UriCollection.class, builtInAtomicType3, 57344, 512).arg(0, builtInAtomicType, 24576, null);
    }
}
