package net.p110sf.saxon.functions.registry;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import net.p110sf.saxon.functions.AccumulatorFn;
import net.p110sf.saxon.functions.AvailableSystemProperties;
import net.p110sf.saxon.functions.Current;
import net.p110sf.saxon.functions.CurrentGroup;
import net.p110sf.saxon.functions.CurrentGroupingKey;
import net.p110sf.saxon.functions.CurrentMergeGroup;
import net.p110sf.saxon.functions.CurrentMergeKey;
import net.p110sf.saxon.functions.CurrentOutputUri;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.functions.ElementAvailable;
import net.p110sf.saxon.functions.FunctionAvailable;
import net.p110sf.saxon.functions.KeyFn;
import net.p110sf.saxon.functions.RegexGroup;
import net.p110sf.saxon.functions.StreamAvailable;
import net.p110sf.saxon.functions.SystemProperty;
import net.p110sf.saxon.functions.TypeAvailable;
import net.p110sf.saxon.functions.UnparsedEntity;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;

/* loaded from: classes11.dex */
public class XSLT30FunctionSet extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final XSLT30FunctionSet f100430c = new XSLT30FunctionSet();

    public XSLT30FunctionSet() {
        init();
    }

    public static XSLT30FunctionSet getInstance() {
        return f100430c;
    }

    public final void init() {
        importFunctionSet(XPath40FunctionSet.getInstance());
        BuiltInFunctionSet.Entry register = register("accumulator-after", 1, AccumulatorFn.AccumulatorAfter.class, AnyItemType.getInstance(), 57344, 516);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
        register.arg(0, builtInAtomicType, 16384, null);
        register("accumulator-before", 1, AccumulatorFn.AccumulatorBefore.class, AnyItemType.getInstance(), 57344, 516).arg(0, builtInAtomicType, 16384, null);
        register("available-system-properties", 0, AvailableSystemProperties.class, BuiltInAtomicType.QNAME, 57344, 512);
        ItemType itemType = Type.ITEM_TYPE;
        register(Keywords.FUNC_CURRENT_STRING, 0, Current.class, itemType, 16384, 512);
        register("current-group", 0, CurrentGroup.class, itemType, 57344, 512);
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.ANY_ATOMIC;
        register("current-grouping-key", 0, CurrentGroupingKey.class, builtInAtomicType2, 57344, 512);
        register("current-merge-group", 0, CurrentMergeGroup.class, AnyItemType.getInstance(), 57344, 512);
        register("current-merge-group", 1, CurrentMergeGroup.class, AnyItemType.getInstance(), 57344, 512).arg(0, builtInAtomicType, 16384, null);
        register("current-merge-key", 0, CurrentMergeKey.class, builtInAtomicType2, 57344, 512);
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.ANY_URI;
        register("current-output-uri", 0, CurrentOutputUri.class, builtInAtomicType3, 24576, 512);
        ItemType itemType2 = Type.NODE_TYPE;
        register("document", 1, DocumentFn.class, itemType2, 57344, 1544).arg(0, itemType, 57344, null);
        register("document", 2, DocumentFn.class, itemType2, 57344, 1544).arg(0, itemType, 57344, null).arg(1, itemType2, 16384, null);
        BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.BOOLEAN;
        register(Keywords.FUNC_EXT_ELEM_AVAILABLE_STRING, 1, ElementAvailable.class, builtInAtomicType4, 16384, 16).arg(0, builtInAtomicType, 16384, null);
        register(Keywords.FUNC_EXT_FUNCTION_AVAILABLE_STRING, 1, FunctionAvailable.class, builtInAtomicType4, 16384, StandardNames.XS_BASE64_BINARY).arg(0, builtInAtomicType, 16384, null);
        BuiltInFunctionSet.Entry arg = register(Keywords.FUNC_EXT_FUNCTION_AVAILABLE_STRING, 2, FunctionAvailable.class, builtInAtomicType4, 16384, StandardNames.XS_BASE64_BINARY).arg(0, builtInAtomicType, 16384, null);
        BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.INTEGER;
        arg.arg(1, builtInAtomicType5, 16384, null);
        register("key", 2, KeyFn.class, itemType2, 57344, 16912).arg(0, builtInAtomicType, 16384, null).arg(1, builtInAtomicType2, 57344, BuiltInFunctionSet.EMPTY);
        register("key", 3, KeyFn.class, itemType2, 57344, StandardNames.XS_BASE64_BINARY).arg(0, builtInAtomicType, 16384, null).arg(1, builtInAtomicType2, 57344, BuiltInFunctionSet.EMPTY).arg(2, itemType2, 16384, null);
        register("regex-group", 1, RegexGroup.class, builtInAtomicType, 16384, 8704).arg(0, builtInAtomicType5, 16384, null);
        register("stream-available", 1, StreamAvailable.class, builtInAtomicType4, 16384, 512).arg(0, builtInAtomicType, 24576, null);
        register(Keywords.FUNC_SYSTEM_PROPERTY_STRING, 1, SystemProperty.class, builtInAtomicType, 16384, StandardNames.XS_BASE64_BINARY).arg(0, builtInAtomicType, 16384, null);
        register("type-available", 1, TypeAvailable.class, builtInAtomicType4, 16384, 16).arg(0, builtInAtomicType, 16384, null);
        register("unparsed-entity-public-id", 1, UnparsedEntity.UnparsedEntityPublicId.class, builtInAtomicType, 16384, 16896).arg(0, builtInAtomicType, 16384, null);
        register("unparsed-entity-public-id", 2, UnparsedEntity.UnparsedEntityPublicId.class, builtInAtomicType, 16384, 0).arg(0, builtInAtomicType, 16384, null).arg(1, itemType2, 16384, null);
        register(Keywords.FUNC_UNPARSED_ENTITY_URI_STRING, 1, UnparsedEntity.UnparsedEntityUri.class, builtInAtomicType3, 16384, 16896).arg(0, builtInAtomicType, 16384, null);
        register(Keywords.FUNC_UNPARSED_ENTITY_URI_STRING, 2, UnparsedEntity.UnparsedEntityUri.class, builtInAtomicType3, 16384, 0).arg(0, builtInAtomicType, 16384, null).arg(1, itemType2, 16384, null);
    }
}
