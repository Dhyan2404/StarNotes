package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class Unordered extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return sequenceArr[0];
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return expressionArr[0];
    }
}
