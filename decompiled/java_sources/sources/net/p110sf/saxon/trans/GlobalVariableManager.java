package net.p110sf.saxon.trans;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.GlobalVariable;

/* loaded from: classes11.dex */
public interface GlobalVariableManager {
    void addGlobalVariable(GlobalVariable globalVariable) throws XPathException;

    GlobalVariable getEquivalentVariable(Expression expression);
}
