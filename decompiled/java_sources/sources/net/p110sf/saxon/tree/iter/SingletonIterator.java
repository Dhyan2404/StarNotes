package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class SingletonIterator implements SequenceIterator, ReversibleIterator, LastPositionFinder, GroundedIterator, LookaheadIterator {

    /* renamed from: g */
    public static final /* synthetic */ boolean f102460g = false;

    /* renamed from: e */
    public final Item f102461e;

    /* renamed from: f */
    public boolean f102462f = false;

    public SingletonIterator(Item item) {
        this.f102461e = item;
    }

    public static SequenceIterator makeIterator(Item item) {
        return item == null ? EmptyIterator.emptyIterator() : new SingletonIterator(item);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return 1;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return this.f102462f ? EmptySequence.getInstance() : this.f102461e;
    }

    public Item getValue() {
        return this.f102461e;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return !this.f102462f;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        return this.f102461e;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        if (this.f102462f) {
            return null;
        }
        this.f102462f = true;
        return this.f102461e;
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
    public SingletonIterator getReverseIterator() {
        return new SingletonIterator(this.f102461e);
    }
}
