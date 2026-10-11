package com.sun.org.apache.xalan.internal.xsltc.compiler;

/* loaded from: classes10.dex */
public interface Closure {
    void addVariable(VariableRefBase variableRefBase);

    String getInnerClassName();

    Closure getParentClosure();

    boolean inInnerClass();
}
