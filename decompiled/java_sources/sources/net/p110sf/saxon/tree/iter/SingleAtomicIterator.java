package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class SingleAtomicIterator extends SingletonIterator implements AtomicIterator, ReversibleIterator, LastPositionFinder, GroundedIterator, LookaheadIterator {
    public SingleAtomicIterator(AtomicValue atomicValue) {
        super(atomicValue);
    }

    public static AtomicIterator makeIterator(AtomicValue atomicValue) {
        return atomicValue == null ? EmptyIterator.ofAtomic() : new SingleAtomicIterator(atomicValue);
    }

    @Override // net.p110sf.saxon.tree.iter.SingletonIterator, net.p110sf.saxon.om.SequenceIterator
    public AtomicValue next() {
        return (AtomicValue) super.next();
    }

    @Override // net.p110sf.saxon.tree.iter.SingletonIterator, net.p110sf.saxon.tree.iter.ReversibleIterator
    public SingleAtomicIterator getReverseIterator() {
        return new SingleAtomicIterator((AtomicValue) getValue());
    }
}
