package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class TwoItemIterator implements SequenceIterator, LookaheadIterator, GroundedIterator, LastPositionFinder {

    /* renamed from: e */
    public final Item f102466e;

    /* renamed from: f */
    public final Item f102467f;

    /* renamed from: g */
    public int f102468g = 0;

    public TwoItemIterator(Item item, Item item2) {
        this.f102466e = item;
        this.f102467f = item2;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return 2;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        int i = this.f102468g;
        return i != 0 ? i != 1 ? EmptySequence.getInstance() : this.f102467f : new SequenceExtent.C18571Of(new Item[]{this.f102466e, this.f102467f});
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f102468g < 2;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        int i = this.f102468g;
        this.f102468g = i + 1;
        if (i == 0) {
            return this.f102466e;
        }
        if (i != 1) {
            return null;
        }
        return this.f102467f;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}
