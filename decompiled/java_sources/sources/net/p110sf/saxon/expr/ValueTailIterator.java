package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class ValueTailIterator implements SequenceIterator, GroundedIterator, LookaheadIterator {

    /* renamed from: e */
    public final GroundedValue f99417e;

    /* renamed from: f */
    public final int f99418f;

    /* renamed from: g */
    public int f99419g = 0;

    public ValueTailIterator(GroundedValue groundedValue, int i) {
        this.f99417e = groundedValue;
        this.f99418f = i;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        int i = this.f99418f;
        return (i == 0 && this.f99419g == 0) ? this.f99417e : this.f99417e.subsequence(i + this.f99419g, Integer.MAX_VALUE);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f99417e.itemAt(this.f99418f + this.f99419g) != null;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        int i = this.f99418f;
        return i == 0 ? this.f99417e : this.f99417e.subsequence(i, Integer.MAX_VALUE);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        GroundedValue groundedValue = this.f99417e;
        int i = this.f99418f;
        int i2 = this.f99419g;
        this.f99419g = i2 + 1;
        return groundedValue.itemAt(i + i2);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}
