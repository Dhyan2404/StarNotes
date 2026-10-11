package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.axes.LocPathIterator;
import com.sun.org.apache.xpath.internal.functions.FuncCurrent;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import com.sun.org.apache.xpath.internal.functions.Function;
import com.sun.org.apache.xpath.internal.operations.Variable;

/* loaded from: classes10.dex */
public class AbsPathChecker extends XPathVisitor {
    private boolean m_isAbs = true;

    public boolean checkAbsolute(LocPathIterator locPathIterator) {
        this.m_isAbs = true;
        locPathIterator.callVisitors(null, this);
        return this.m_isAbs;
    }

    @Override // com.sun.org.apache.xpath.internal.XPathVisitor
    public boolean visitFunction(ExpressionOwner expressionOwner, Function function) {
        if (!(function instanceof FuncCurrent) && !(function instanceof FuncExtFunction)) {
            return true;
        }
        this.m_isAbs = false;
        return true;
    }

    @Override // com.sun.org.apache.xpath.internal.XPathVisitor
    public boolean visitVariableRef(ExpressionOwner expressionOwner, Variable variable) {
        this.m_isAbs = false;
        return true;
    }
}
