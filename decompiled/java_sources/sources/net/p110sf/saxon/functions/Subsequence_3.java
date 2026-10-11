package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.ArithmeticExpression;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SubsequenceIterator;
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
public class Subsequence_3 extends SystemFunction implements Callable {
    public static SequenceIterator subSequence(SequenceIterator sequenceIterator, NumericValue numericValue, NumericValue numericValue2, XPathContext xPathContext) throws XPathException {
        if ((numericValue instanceof Int64Value) && (numericValue2 instanceof Int64Value)) {
            long longValue = numericValue.longValue();
            if (longValue > 2147483647L) {
                return EmptyIterator.emptyIterator();
            }
            long longValue2 = numericValue2.longValue();
            long j = longValue2 <= 2147483647L ? longValue2 : 2147483647L;
            if (j < 1) {
                return EmptyIterator.emptyIterator();
            }
            long j2 = (j + longValue) - 1;
            if (j2 < 1) {
                return EmptyIterator.emptyIterator();
            }
            return SubsequenceIterator.make(sequenceIterator, longValue >= 1 ? (int) longValue : 1, (int) j2);
        }
        if (numericValue.isNaN()) {
            return EmptyIterator.emptyIterator();
        }
        Int64Value int64Value = Int64Value.MAX_LONG;
        if (numericValue.compareTo((XPathComparable) int64Value) > 0) {
            return EmptyIterator.emptyIterator();
        }
        NumericValue round = numericValue.round(0);
        if (numericValue2.isNaN()) {
            return EmptyIterator.emptyIterator();
        }
        NumericValue round2 = numericValue2.round(0);
        Int64Value int64Value2 = Int64Value.ZERO;
        if (round2.compareTo((XPathComparable) int64Value2) <= 0) {
            return EmptyIterator.emptyIterator();
        }
        NumericValue numericValue3 = (NumericValue) ArithmeticExpression.compute(round, 0, round2, xPathContext);
        if (numericValue3.isNaN()) {
            return EmptyIterator.emptyIterator();
        }
        Int64Value int64Value3 = Int64Value.PLUS_ONE;
        NumericValue numericValue4 = (NumericValue) ArithmeticExpression.compute(numericValue3, 1, int64Value3, xPathContext);
        if (numericValue4.compareTo((XPathComparable) int64Value2) <= 0) {
            return EmptyIterator.emptyIterator();
        }
        long longValue3 = round.compareTo((XPathComparable) int64Value3) > 0 ? round.longValue() : 1L;
        if (longValue3 > 2147483647L) {
            return EmptyIterator.emptyIterator();
        }
        return SubsequenceIterator.make(sequenceIterator, (int) longValue3, (int) (numericValue4.compareTo((XPathComparable) int64Value) < 0 ? numericValue4.longValue() : 2147483647L));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(subSequence(sequenceArr[0].iterate(), (NumericValue) sequenceArr[1].head(), (NumericValue) sequenceArr[2].head(), xPathContext));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return expressionArr[0].getSpecialProperties();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Subsequence";
    }
}
