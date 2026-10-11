package net.p110sf.saxon.functions;

import com.fasterxml.jackson.core.base.ParserBase;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public final class RoundHalfToEven extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        int i = 0;
        NumericValue numericValue = (NumericValue) sequenceArr[0].head();
        if (numericValue == null) {
            return EmptySequence.getInstance();
        }
        if (sequenceArr.length == 2) {
            NumericValue numericValue2 = (NumericValue) sequenceArr[1].head();
            if (numericValue2.compareTo(2147483647L) > 0) {
                return numericValue;
            }
            i = numericValue2.compareTo(ParserBase.f21225q) < 0 ? Integer.MIN_VALUE : (int) numericValue2.longValue();
        }
        return numericValue.roundHalfToEven(i);
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
