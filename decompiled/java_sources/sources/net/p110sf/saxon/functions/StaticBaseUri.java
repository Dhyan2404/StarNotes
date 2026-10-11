package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;

/* loaded from: classes11.dex */
public class StaticBaseUri extends SystemFunction {
    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return getRetainedStaticContext().getPackageData().isRelocatable() ? super.makeFunctionCall(expressionArr) : Literal.makeLiteral(new AnyURIValue(getRetainedStaticContext().getStaticBaseUriString()));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public AnyURIValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new AnyURIValue(getRetainedStaticContext().getStaticBaseUriString());
    }
}
