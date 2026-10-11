package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AtomizedValueIterator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class EmptyIterator implements SequenceIterator, ReversibleIterator, LastPositionFinder, GroundedIterator, LookaheadIterator, AtomizedValueIterator {

    /* renamed from: e */
    public static final EmptyIterator f102440e = new EmptyIterator();

    /* renamed from: net.sf.saxon.tree.iter.EmptyIterator$a */
    /* loaded from: classes11.dex */
    public static class C18536a extends EmptyIterator implements AtomicIterator {

        /* renamed from: f */
        public static final C18536a f102441f = new C18536a();

        @Override // net.p110sf.saxon.tree.iter.EmptyIterator, net.p110sf.saxon.tree.iter.ReversibleIterator
        public /* bridge */ /* synthetic */ SequenceIterator getReverseIterator() {
            return super.getReverseIterator();
        }

        @Override // net.p110sf.saxon.tree.iter.EmptyIterator, net.p110sf.saxon.om.SequenceIterator
        public AtomicValue next() {
            return null;
        }
    }

    /* renamed from: net.sf.saxon.tree.iter.EmptyIterator$b */
    /* loaded from: classes11.dex */
    public static class C18537b extends EmptyIterator implements AxisIterator {

        /* renamed from: f */
        public static final C18537b f102442f = new C18537b();

        @Override // net.p110sf.saxon.tree.iter.EmptyIterator, net.p110sf.saxon.tree.iter.ReversibleIterator
        public /* bridge */ /* synthetic */ SequenceIterator getReverseIterator() {
            return super.getReverseIterator();
        }

        @Override // net.p110sf.saxon.tree.iter.EmptyIterator, net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            return null;
        }
    }

    public static EmptyIterator emptyIterator() {
        return f102440e;
    }

    public static EmptyIterator getInstance() {
        return f102440e;
    }

    public static AtomicIterator ofAtomic() {
        return C18536a.f102441f;
    }

    public static AxisIterator ofNodes() {
        return C18537b.f102442f;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return 0;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return EmptySequence.getInstance();
    }

    @Override // net.p110sf.saxon.tree.iter.ReversibleIterator
    public EmptyIterator getReverseIterator() {
        return this;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return false;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        return EmptySequence.getInstance();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        return null;
    }

    @Override // net.p110sf.saxon.om.AtomizedValueIterator
    public AtomicSequence nextAtomizedValue() {
        return null;
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
