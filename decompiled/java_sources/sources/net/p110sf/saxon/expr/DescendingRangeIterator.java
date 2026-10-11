package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.iter.RangeIterator;
import net.p110sf.saxon.tree.iter.ReversibleIterator;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public class DescendingRangeIterator extends RangeIterator implements AtomicIterator, ReversibleIterator, LastPositionFinder, LookaheadIterator {

    /* renamed from: i */
    public static final /* synthetic */ boolean f99226i = false;

    /* renamed from: e */
    public long f99227e;

    /* renamed from: f */
    public long f99228f;

    /* renamed from: g */
    public long f99229g;

    /* renamed from: h */
    public long f99230h;

    public DescendingRangeIterator(long j, long j2, long j3) {
        this.f99227e = j;
        this.f99228f = j2;
        this.f99229g = j + j2;
        this.f99230h = j3;
        if (j2 != 1) {
            this.f99230h = j + (((j3 - j) / j2) * j2);
        }
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getFirst() {
        return new Int64Value(this.f99227e);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getLast() {
        return new Int64Value(this.f99230h);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return (int) ((this.f99227e - this.f99230h) + 1);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getMax() {
        return new Int64Value(this.f99227e);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getMin() {
        return new Int64Value(this.f99230h);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator, net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return new IntegerRange(this.f99229g, -this.f99228f, this.f99230h);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getStep() {
        return new Int64Value(-this.f99228f);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f99229g - this.f99228f >= this.f99230h;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        return new IntegerRange(this.f99227e, -this.f99228f, this.f99230h);
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
        return new AscendingRangeIterator(this.f99227e, this.f99228f, this.f99230h);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public IntegerValue next() {
        long j = this.f99229g - this.f99228f;
        this.f99229g = j;
        if (j < this.f99230h) {
            return null;
        }
        return Int64Value.makeIntegerValue(j);
    }
}
