package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CurrentGroup extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        throw new XPathException("Dynamic call on current-group() fails (the current group is absent)", "XTDE1061");
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        return new CurrentGroupCall();
    }
}
