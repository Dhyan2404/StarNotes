package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class FilterIterator implements SequenceIterator {
    protected FocusIterator base;
    protected Expression filter;
    protected XPathContext filterContext;

    /* loaded from: classes11.dex */
    public static final class NonNumeric extends FilterIterator {
        public NonNumeric(SequenceIterator sequenceIterator, Expression expression, XPathContext xPathContext) {
            super(sequenceIterator, expression, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.FilterIterator
        public boolean matches() throws XPathException {
            return this.filter.effectiveBooleanValue(this.filterContext);
        }
    }

    public FilterIterator(SequenceIterator sequenceIterator, Expression expression, XPathContext xPathContext) {
        this.filter = expression;
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        this.filterContext = newMinorContext;
        this.base = newMinorContext.trackFocus(sequenceIterator);
    }

    public static boolean testPredicateValue(SequenceIterator sequenceIterator, long j, Expression expression) throws XPathException {
        Item next = sequenceIterator.next();
        if (next == null) {
            return false;
        }
        if (next instanceof NodeInfo) {
            return true;
        }
        if (next instanceof BooleanValue) {
            if (sequenceIterator.next() != null) {
                ExpressionTool.ebvError("a sequence of two or more items starting with a boolean", expression);
            }
            return ((BooleanValue) next).getBooleanValue();
        }
        if (next instanceof StringValue) {
            if (sequenceIterator.next() != null) {
                ExpressionTool.ebvError("a sequence of two or more items starting with a string", expression);
            }
            return !((StringValue) next).isEmpty();
        }
        if (next instanceof Int64Value) {
            if (sequenceIterator.next() != null) {
                ExpressionTool.ebvError("a sequence of two or more items starting with a numeric value", expression);
            }
            return ((Int64Value) next).longValue() == j;
        }
        if (next instanceof NumericValue) {
            if (sequenceIterator.next() != null) {
                ExpressionTool.ebvError("a sequence of two or more items starting with a numeric value", expression);
            }
            return ((NumericValue) next).compareTo(j) == 0;
        }
        if (next instanceof AtomicValue) {
            ExpressionTool.ebvError("a sequence starting with an atomic value of type " + ((AtomicValue) next).getPrimitiveType().getDisplayName() + " (" + next.toShortString() + MotionUtils.f31762d, expression);
            return false;
        }
        ExpressionTool.ebvError("a sequence starting with " + Err.describeGenre(next.getGenre()) + " (" + next.toShortString() + MotionUtils.f31762d, expression);
        return false;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.base.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.base.discharge();
    }

    public Item getNextMatchingItem() throws XPathException {
        Item next;
        do {
            next = this.base.next();
            if (next == null) {
                return null;
            }
        } while (!matches());
        return next;
    }

    public boolean matches() throws XPathException {
        return testPredicateValue(this.filter.iterate(this.filterContext), this.base.position(), this.filter);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        try {
            return getNextMatchingItem();
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    public void setSequence(SequenceIterator sequenceIterator, XPathContext xPathContext) {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        this.filterContext = newMinorContext;
        this.base = newMinorContext.trackFocus(sequenceIterator);
    }
}
