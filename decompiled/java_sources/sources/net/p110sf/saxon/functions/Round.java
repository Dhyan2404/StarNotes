package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public final class Round extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NumericValue numericValue = (NumericValue) sequenceArr[0].head();
        if (numericValue == null) {
            return EmptySequence.getInstance();
        }
        return numericValue.round(sequenceArr.length == 2 ? (int) ((NumericValue) sequenceArr[1].head()).longValue() : 0);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return expressionArr[0].getCardinality();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "RoundingCompiler";
    }
}
