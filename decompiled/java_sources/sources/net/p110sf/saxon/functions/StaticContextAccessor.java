package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class StaticContextAccessor extends SystemFunction {

    /* loaded from: classes11.dex */
    public static class DefaultCollation extends StaticContextAccessor {
        @Override // net.p110sf.saxon.functions.StaticContextAccessor, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.StaticContextAccessor
        public AtomicValue evaluate(RetainedStaticContext retainedStaticContext) {
            return new StringValue(retainedStaticContext.getDefaultCollationName());
        }
    }

    public abstract AtomicValue evaluate(RetainedStaticContext retainedStaticContext);

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return Literal.makeLiteral(evaluate(getRetainedStaticContext()));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public AtomicValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return evaluate(getRetainedStaticContext());
    }
}
