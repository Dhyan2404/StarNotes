package net.p110sf.saxon.tree.iter;

import java.util.Arrays;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.functions.Reverse;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public abstract class ArrayIterator implements SequenceIterator, LastPositionFinder, LookaheadIterator, GroundedIterator, ReversibleIterator {
    protected int end;
    protected int index;
    protected int start;

    /* loaded from: classes11.dex */
    public static class OfNodes<N extends NodeInfo> extends C18535Of<N> implements AxisIterator {
        public OfNodes(N[] nArr) {
            super(nArr);
        }

        @Override // net.p110sf.saxon.tree.iter.ArrayIterator.C18535Of, net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            return (NodeInfo) super.next();
        }
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    public abstract SequenceIterator makeSliceIterator(int i, int i2);

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    /* renamed from: net.sf.saxon.tree.iter.ArrayIterator$Of */
    /* loaded from: classes11.dex */
    public static class C18535Of<T extends Item> extends ArrayIterator {
        protected T[] items;

        public C18535Of(T[] tArr) {
            this.items = tArr;
            this.start = 0;
            this.end = tArr.length;
            this.index = 0;
        }

        public T[] getArray() {
            return this.items;
        }

        public int getEndPosition() {
            return this.end;
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public int getLength() {
            return this.end - this.start;
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue getResidue() {
            SequenceExtent.C18571Of c18571Of;
            if (this.start == 0 && this.index == 0) {
                int i = this.end;
                T[] tArr = this.items;
                if (i == tArr.length) {
                    c18571Of = new SequenceExtent.C18571Of(tArr);
                    return c18571Of.reduce();
                }
            }
            c18571Of = new SequenceExtent.C18571Of(Arrays.asList(this.items).subList(this.start + this.index, this.end));
            return c18571Of.reduce();
        }

        @Override // net.p110sf.saxon.tree.iter.ReversibleIterator
        public SequenceIterator getReverseIterator() {
            if (this.start == 0) {
                int i = this.end;
                T[] tArr = this.items;
                if (i == tArr.length) {
                    return Reverse.reverseIterator(Arrays.asList(tArr));
                }
            }
            return Reverse.reverseIterator(Arrays.asList(this.items).subList(this.start, this.end));
        }

        public int getStartPosition() {
            return this.start;
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean hasNext() {
            return this.index < this.end;
        }

        @Override // net.p110sf.saxon.tree.iter.ArrayIterator
        public SequenceIterator makeSliceIterator(int i, int i2) {
            T[] array = getArray();
            int startPosition = getStartPosition();
            int endPosition = getEndPosition();
            if (i < 1) {
                i = 1;
            }
            int i3 = (i - 1) + startPosition;
            if (i3 >= startPosition) {
                startPosition = i3;
            }
            int i4 = i2 == Integer.MAX_VALUE ? endPosition : ((i2 + startPosition) - i) + 1;
            if (i4 <= endPosition) {
                endPosition = i4;
            }
            return endPosition <= startPosition ? EmptyIterator.emptyIterator() : new C18535Of(array, startPosition, endPosition);
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue materialize() {
            SequenceExtent.C18571Of c18571Of;
            if (this.start == 0) {
                int i = this.end;
                T[] tArr = this.items;
                if (i == tArr.length) {
                    c18571Of = new SequenceExtent.C18571Of(tArr);
                    return c18571Of.reduce();
                }
            }
            c18571Of = new SequenceExtent.C18571Of(Arrays.asList(this.items).subList(this.start, this.end));
            return c18571Of.reduce();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            int i = this.index;
            int i2 = this.end;
            if (i >= i2) {
                this.index = i2 + 1;
                return null;
            }
            T[] tArr = this.items;
            this.index = i + 1;
            return tArr[i];
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public boolean supportsGetLength() {
            return true;
        }

        public C18535Of(T[] tArr, int i, int i2) {
            this.items = tArr;
            this.end = i2;
            this.start = i;
            this.index = i;
        }
    }
}
