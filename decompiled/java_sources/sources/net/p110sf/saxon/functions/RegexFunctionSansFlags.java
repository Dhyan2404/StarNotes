package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class RegexFunctionSansFlags extends SystemFunction {
    /* renamed from: a */
    public final SystemFunction m63153a() {
        SystemFunction makeSystemFunction = getRetainedStaticContext().getConfiguration().makeSystemFunction(getFunctionName().getLocalPart(), getArity() + 1);
        makeSystemFunction.setRetainedStaticContext(getRetainedStaticContext());
        return makeSystemFunction;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        SystemFunction m63153a = m63153a();
        Sequence[] sequenceArr2 = new Sequence[sequenceArr.length + 1];
        System.arraycopy(sequenceArr, 0, sequenceArr2, 0, sequenceArr.length);
        sequenceArr2[sequenceArr.length] = StringValue.EMPTY_STRING;
        return m63153a.call(xPathContext, sequenceArr2);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        SystemFunction m63153a = m63153a();
        Expression[] expressionArr2 = new Expression[expressionArr.length + 1];
        System.arraycopy(expressionArr, 0, expressionArr2, 0, expressionArr.length);
        expressionArr2[expressionArr.length] = new StringLiteral("");
        return m63153a.makeFunctionCall(expressionArr2);
    }
}
