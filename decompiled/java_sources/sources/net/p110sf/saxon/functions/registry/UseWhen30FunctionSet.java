package net.p110sf.saxon.functions.registry;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import net.p110sf.saxon.functions.AvailableSystemProperties;
import net.p110sf.saxon.functions.ElementAvailable;
import net.p110sf.saxon.functions.FunctionAvailable;
import net.p110sf.saxon.functions.SystemProperty;
import net.p110sf.saxon.functions.TypeAvailable;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.type.BuiltInAtomicType;

/* loaded from: classes11.dex */
public class UseWhen30FunctionSet extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final UseWhen30FunctionSet f100423c = new UseWhen30FunctionSet();

    public UseWhen30FunctionSet() {
        init();
    }

    public static UseWhen30FunctionSet getInstance() {
        return f100423c;
    }

    public void addXPathFunctions() {
        importFunctionSet(XPath31FunctionSet.getInstance());
    }

    public void init() {
        addXPathFunctions();
        register("available-system-properties", 0, AvailableSystemProperties.class, BuiltInAtomicType.QNAME, 57344, 512);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.BOOLEAN;
        BuiltInFunctionSet.Entry register = register(Keywords.FUNC_EXT_ELEM_AVAILABLE_STRING, 1, ElementAvailable.class, builtInAtomicType, 16384, 16);
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.STRING;
        register.arg(0, builtInAtomicType2, 16384, null);
        register(Keywords.FUNC_EXT_FUNCTION_AVAILABLE_STRING, 1, FunctionAvailable.class, builtInAtomicType, 16384, StandardNames.XS_BASE64_BINARY).arg(0, builtInAtomicType2, 16384, null);
        register(Keywords.FUNC_EXT_FUNCTION_AVAILABLE_STRING, 2, FunctionAvailable.class, builtInAtomicType, 16384, StandardNames.XS_BASE64_BINARY).arg(0, builtInAtomicType2, 16384, null).arg(1, BuiltInAtomicType.INTEGER, 16384, null);
        register(Keywords.FUNC_SYSTEM_PROPERTY_STRING, 1, SystemProperty.class, builtInAtomicType2, 16384, StandardNames.XS_BASE64_BINARY).arg(0, builtInAtomicType2, 16384, null);
        register("type-available", 1, TypeAvailable.class, builtInAtomicType, 16384, 16).arg(0, builtInAtomicType2, 16384, null);
    }
}
