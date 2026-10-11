package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.iter.RangeIterator;
import net.p110sf.saxon.tree.iter.ReversibleIterator;
import net.p110sf.saxon.value.BigIntegerValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public class AscendingRangeIterator extends RangeIterator implements AtomicIterator, ReversibleIterator, LastPositionFinder, LookaheadIterator, GroundedIterator {

    /* renamed from: e */
    public long f99159e;

    /* renamed from: f */
    public long f99160f;

    /* renamed from: g */
    public long f99161g;

    /* renamed from: h */
    public long f99162h;

    public AscendingRangeIterator(long j, long j2, long j3) {
        this.f99159e = j;
        this.f99160f = j2;
        this.f99161g = j - j2;
        this.f99162h = j3;
        if (j2 != 1) {
            this.f99162h = j + (((j3 - j) / j2) * j2);
        }
    }

    public static AtomicIterator makeLongRangeIterator(long j, long j2, long j3) throws XPathException {
        int compare = Long.compare(j2, 0L);
        if (compare == 0 || ((compare > 0 && j > j3) || (compare < 0 && j < j3))) {
            return EmptyIterator.ofAtomic();
        }
        if ((j3 - j) / j2 <= 2147483647L) {
            return j2 > 0 ? new AscendingRangeIterator(j, j2, j3) : new DescendingRangeIterator(j, -j2, j3);
        }
        throw new XPathException("Saxon limit on sequence length exceeded (2^31)", "XPDY0130");
    }

    public static AtomicIterator makeRangeIterator(IntegerValue integerValue, IntegerValue integerValue2, IntegerValue integerValue3) throws XPathException {
        if (integerValue == null || integerValue2 == null || integerValue3 == null) {
            return EmptyIterator.ofAtomic();
        }
        int compareTo = integerValue2.compareTo((XPathComparable) Int64Value.ZERO);
        if (compareTo == 0 || integerValue.compareTo((XPathComparable) integerValue3) > 0) {
            return EmptyIterator.ofAtomic();
        }
        if ((integerValue instanceof BigIntegerValue) || (integerValue2 instanceof BigIntegerValue) || (integerValue3 instanceof BigIntegerValue)) {
            return compareTo < 0 ? new BigRangeIterator(integerValue3.asBigInteger(), integerValue2.asBigInteger(), integerValue.asBigInteger()) : new BigRangeIterator(integerValue.asBigInteger(), integerValue2.asBigInteger(), integerValue3.asBigInteger());
        }
        long longValue = integerValue.longValue();
        long longValue2 = integerValue2.longValue();
        long longValue3 = integerValue3.longValue();
        if ((longValue3 - longValue) / longValue2 <= 2147483647L) {
            return longValue2 > 0 ? new AscendingRangeIterator(longValue, longValue2, longValue3) : new DescendingRangeIterator(longValue3, -longValue2, longValue);
        }
        throw new XPathException("Saxon limit on sequence length exceeded (2^31)", "XPDY0130");
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getFirst() {
        return new Int64Value(this.f99159e);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getLast() {
        return new Int64Value(this.f99162h);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return (int) ((this.f99162h - this.f99159e) + 1);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getMax() {
        return new Int64Value(this.f99162h);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getMin() {
        return new Int64Value(this.f99159e);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator, net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return new IntegerRange(this.f99161g, this.f99160f, this.f99162h);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getStep() {
        return new Int64Value(this.f99160f);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f99161g + this.f99160f <= this.f99162h;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        return new IntegerRange(this.f99159e, this.f99160f, this.f99162h);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.ReversibleIterator
    public AtomicIterator getReverseIterator() {
        return new DescendingRangeIterator(this.f99162h, this.f99160f, this.f99159e);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public IntegerValue next() {
        long j = this.f99161g + this.f99160f;
        this.f99161g = j;
        if (j > this.f99162h) {
            return null;
        }
        return Int64Value.makeIntegerValue(j);
    }
}
