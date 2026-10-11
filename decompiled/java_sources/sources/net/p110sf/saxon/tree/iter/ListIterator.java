package net.p110sf.saxon.tree.iter;

import java.util.List;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.functions.Reverse;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public abstract class ListIterator implements SequenceIterator, LastPositionFinder, LookaheadIterator, GroundedIterator, ReversibleIterator {

    /* renamed from: net.sf.saxon.tree.iter.ListIterator$Of */
    /* loaded from: classes11.dex */
    public static class C18538Of<T extends Item> extends ListIterator {

        /* renamed from: e */
        public int f102446e = 0;
        protected List<T> list;

        public C18538Of(List<T> list) {
            this.list = list;
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public int getLength() {
            return this.list.size();
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue getResidue() {
            List<T> list = this.list;
            int i = this.f102446e;
            if (i != 0) {
                list = list.subList(i, list.size());
            }
            return new SequenceExtent.C18571Of(list);
        }

        @Override // net.p110sf.saxon.tree.iter.ReversibleIterator
        public SequenceIterator getReverseIterator() {
            return Reverse.reverseIterator(this.list);
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean hasNext() {
            return this.f102446e < this.list.size();
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public boolean isActuallyGrounded() {
            return true;
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue materialize() {
            return new SequenceExtent.C18571Of(this.list);
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            if (this.f102446e >= this.list.size()) {
                return null;
            }
            List<T> list = this.list;
            int i = this.f102446e;
            this.f102446e = i + 1;
            return list.get(i);
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public boolean supportsGetLength() {
            return true;
        }
    }

    /* loaded from: classes11.dex */
    public static class OfAtomic<A extends AtomicValue> extends C18538Of<A> implements AtomicIterator {
        public OfAtomic(List<A> list) {
            super(list);
        }

        @Override // net.p110sf.saxon.tree.iter.ListIterator.C18538Of, net.p110sf.saxon.om.SequenceIterator
        public AtomicValue next() {
            return (AtomicValue) super.next();
        }
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}
