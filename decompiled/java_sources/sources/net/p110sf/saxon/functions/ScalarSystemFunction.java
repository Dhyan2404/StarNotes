package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public abstract class ScalarSystemFunction extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.ScalarSystemFunction$a */
    /* loaded from: classes11.dex */
    public class C18370a extends SystemFunctionCall {
        public C18370a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public AtomicValue evaluateItem(XPathContext xPathContext) throws XPathException {
            Item evaluateItem = getArg(0).evaluateItem(xPathContext);
            if (evaluateItem == null) {
                return (AtomicValue) ScalarSystemFunction.this.resultWhenEmpty().head();
            }
            return ScalarSystemFunction.this.evaluate(evaluateItem, xPathContext);
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public final Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Item head = sequenceArr[0].head();
        return head == null ? resultWhenEmpty() : SequenceTool.itemOrEmpty(evaluate(head, xPathContext));
    }

    public abstract AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException;

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        C18370a c18370a = new C18370a(this, expressionArr);
        c18370a.setRetainedStaticContext(getRetainedStaticContext());
        return c18370a;
    }

    public Sequence resultWhenEmpty() {
        return EmptySequence.getInstance();
    }
}
