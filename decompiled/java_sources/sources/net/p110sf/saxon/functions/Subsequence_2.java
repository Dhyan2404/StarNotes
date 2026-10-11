package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.TailExpression;
import net.p110sf.saxon.expr.TailIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class Subsequence_2 extends SystemFunction implements Callable {
    public static SequenceIterator subSequence(SequenceIterator sequenceIterator, NumericValue numericValue) throws XPathException {
        long longValue;
        if (numericValue instanceof Int64Value) {
            longValue = numericValue.longValue();
            if (longValue <= 1) {
                return sequenceIterator;
            }
        } else {
            if (numericValue.isNaN()) {
                return EmptyIterator.emptyIterator();
            }
            NumericValue round = numericValue.round(0);
            if (round.compareTo((XPathComparable) Int64Value.PLUS_ONE) <= 0) {
                return sequenceIterator;
            }
            if (round.compareTo((XPathComparable) Int64Value.MAX_LONG) > 0) {
                return EmptyIterator.emptyIterator();
            }
            longValue = round.longValue();
        }
        return longValue > 2147483647L ? EmptyIterator.emptyIterator() : TailIterator.make(sequenceIterator, (int) longValue);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(subSequence(sequenceArr[0].iterate(), (NumericValue) sequenceArr[1].head()));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return expressionArr[0].getCardinality() | 24576;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return expressionArr[0].getSpecialProperties();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Subsequence";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        try {
            if (Literal.isAtomic(expressionArr[1]) && !(expressionArr[0] instanceof ErrorExpression)) {
                long longValue = ((NumericValue) ((Literal) expressionArr[1]).getGroundedValue()).round(0).longValue();
                return longValue > 2147483647L ? super.makeFunctionCall(expressionArr) : longValue <= 0 ? expressionArr[0] : new TailExpression(expressionArr[0], (int) longValue);
            }
        } catch (Exception unused) {
        }
        return super.makeFunctionCall(expressionArr);
    }
}
