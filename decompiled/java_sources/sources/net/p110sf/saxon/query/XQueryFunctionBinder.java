package net.p110sf.saxon.query;

import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public interface XQueryFunctionBinder extends FunctionLibrary {
    XQueryFunction getDeclaration(StructuredQName structuredQName, int i);
}
