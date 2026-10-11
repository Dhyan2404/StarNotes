package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public abstract class RangeIterator implements GroundedIterator {
    public boolean containsEq(NumericValue numericValue) {
        IntegerValue convert;
        if (numericValue instanceof IntegerValue) {
            convert = (IntegerValue) numericValue;
        } else {
            if (!numericValue.isWholeNumber()) {
                return false;
            }
            convert = Converter.DecimalToInteger.INSTANCE.convert((AtomicValue) numericValue);
        }
        try {
            if (convert.compareTo((XPathComparable) getMin()) < 0 || convert.compareTo((XPathComparable) getMax()) > 0) {
                return false;
            }
            return convert.minus(getFirst()).mod(getStep()).equals(Int64Value.ZERO);
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    public abstract IntegerValue getFirst();

    public abstract IntegerValue getLast();

    public abstract IntegerValue getMax();

    public abstract IntegerValue getMin();

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public abstract GroundedValue getResidue();

    public abstract IntegerValue getStep();
}
