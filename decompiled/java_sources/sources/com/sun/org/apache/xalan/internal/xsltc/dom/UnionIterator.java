package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase;

/* loaded from: classes10.dex */
public final class UnionIterator extends DTMAxisIteratorBase {
    private static final int InitSize = 8;
    private int _cachedHeapSize;
    private final DOM _dom;
    private int _returnedLast;
    private int _heapSize = 0;
    private int _size = 8;
    private LookAheadIterator[] _heap = new LookAheadIterator[8];
    private int _free = 0;
    private int _cachedReturnedLast = -1;

    /* loaded from: classes10.dex */
    public static final class LookAheadIterator {
        public boolean isStartSet = false;
        public DTMAxisIterator iterator;
        public int markedNode;
        public int node;

        public LookAheadIterator(DTMAxisIterator dTMAxisIterator) {
            this.iterator = dTMAxisIterator;
        }

        public LookAheadIterator cloneIterator() {
            LookAheadIterator lookAheadIterator = new LookAheadIterator(this.iterator.cloneIterator());
            lookAheadIterator.node = this.node;
            lookAheadIterator.markedNode = this.node;
            return lookAheadIterator;
        }

        public void gotoMark() {
            this.node = this.markedNode;
            this.iterator.gotoMark();
        }

        public void setMark() {
            this.markedNode = this.node;
            this.iterator.setMark();
        }

        public int step() {
            int next = this.iterator.next();
            this.node = next;
            return next;
        }
    }

    public UnionIterator(DOM dom) {
        this._dom = dom;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
    
        if (r2.lessThan(r3[r1].node, r3[r6].node) != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0032, code lost:
    
        if (r2.lessThan(r3[r0].node, r3[r1].node) != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void heapify(int r6) {
        /*
            r5 = this;
        L0:
            int r0 = r6 + 1
            int r0 = r0 << 1
            int r1 = r0 + (-1)
            int r2 = r5._heapSize
            if (r1 >= r2) goto L1d
            com.sun.org.apache.xalan.internal.xsltc.DOM r2 = r5._dom
            com.sun.org.apache.xalan.internal.xsltc.dom.UnionIterator$LookAheadIterator[] r3 = r5._heap
            r4 = r3[r1]
            int r4 = r4.node
            r3 = r3[r6]
            int r3 = r3.node
            boolean r2 = r2.lessThan(r4, r3)
            if (r2 == 0) goto L1d
            goto L1e
        L1d:
            r1 = r6
        L1e:
            int r2 = r5._heapSize
            if (r0 >= r2) goto L35
            com.sun.org.apache.xalan.internal.xsltc.DOM r2 = r5._dom
            com.sun.org.apache.xalan.internal.xsltc.dom.UnionIterator$LookAheadIterator[] r3 = r5._heap
            r4 = r3[r0]
            int r4 = r4.node
            r3 = r3[r1]
            int r3 = r3.node
            boolean r2 = r2.lessThan(r4, r3)
            if (r2 == 0) goto L35
            goto L36
        L35:
            r0 = r1
        L36:
            if (r0 == r6) goto L44
            com.sun.org.apache.xalan.internal.xsltc.dom.UnionIterator$LookAheadIterator[] r1 = r5._heap
            r2 = r1[r0]
            r3 = r1[r6]
            r1[r0] = r3
            r1[r6] = r2
            r6 = r0
            goto L0
        L44:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.dom.UnionIterator.heapify(int):void");
    }

    public UnionIterator addIterator(DTMAxisIterator dTMAxisIterator) {
        int i = this._free;
        int i2 = this._size;
        if (i == i2) {
            int i3 = i2 * 2;
            this._size = i3;
            LookAheadIterator[] lookAheadIteratorArr = new LookAheadIterator[i3];
            System.arraycopy(this._heap, 0, lookAheadIteratorArr, 0, i);
            this._heap = lookAheadIteratorArr;
        }
        this._heapSize++;
        LookAheadIterator[] lookAheadIteratorArr2 = this._heap;
        int i4 = this._free;
        this._free = i4 + 1;
        lookAheadIteratorArr2[i4] = new LookAheadIterator(dTMAxisIterator);
        return this;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public DTMAxisIterator cloneIterator() {
        this._isRestartable = false;
        LookAheadIterator[] lookAheadIteratorArr = new LookAheadIterator[this._heap.length];
        try {
            UnionIterator unionIterator = (UnionIterator) super.clone();
            for (int i = 0; i < this._free; i++) {
                lookAheadIteratorArr[i] = this._heap[i].cloneIterator();
            }
            unionIterator.setRestartable(false);
            unionIterator._heap = lookAheadIteratorArr;
            return unionIterator.reset();
        } catch (CloneNotSupportedException e) {
            BasisLibrary.runTimeError(BasisLibrary.ITERATOR_CLONE_ERR, e.toString());
            return null;
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public void gotoMark() {
        for (int i = 0; i < this._free; i++) {
            this._heap[i].gotoMark();
        }
        int i2 = this._cachedHeapSize;
        this._heapSize = i2;
        for (int i3 = i2 / 2; i3 >= 0; i3--) {
            heapify(i3);
        }
        this._returnedLast = this._cachedReturnedLast;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public int next() {
        while (true) {
            int i = this._heapSize;
            if (i <= 0) {
                return -1;
            }
            LookAheadIterator[] lookAheadIteratorArr = this._heap;
            LookAheadIterator lookAheadIterator = lookAheadIteratorArr[0];
            int i2 = lookAheadIterator.node;
            if (i2 == -1) {
                if (i <= 1) {
                    return -1;
                }
                int i3 = i - 1;
                this._heapSize = i3;
                lookAheadIteratorArr[0] = lookAheadIteratorArr[i3];
                lookAheadIteratorArr[i3] = lookAheadIterator;
            } else {
                if (i2 != this._returnedLast) {
                    lookAheadIterator.step();
                    heapify(0);
                    this._returnedLast = i2;
                    return returnNode(i2);
                }
                lookAheadIterator.step();
            }
            heapify(0);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public DTMAxisIterator reset() {
        int i;
        int i2 = 0;
        while (true) {
            i = this._free;
            if (i2 >= i) {
                break;
            }
            this._heap[i2].iterator.reset();
            this._heap[i2].step();
            i2++;
        }
        this._heapSize = i;
        for (int i3 = i / 2; i3 >= 0; i3--) {
            heapify(i3);
        }
        this._returnedLast = -1;
        return resetPosition();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public void setMark() {
        for (int i = 0; i < this._free; i++) {
            this._heap[i].setMark();
        }
        this._cachedReturnedLast = this._returnedLast;
        this._cachedHeapSize = this._heapSize;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public DTMAxisIterator setStartNode(int i) {
        int i2;
        if (!this._isRestartable) {
            return this;
        }
        this._startNode = i;
        int i3 = 0;
        while (true) {
            i2 = this._free;
            if (i3 >= i2) {
                break;
            }
            LookAheadIterator lookAheadIterator = this._heap[i3];
            if (!lookAheadIterator.isStartSet) {
                lookAheadIterator.iterator.setStartNode(i);
                this._heap[i3].step();
                this._heap[i3].isStartSet = true;
            }
            i3++;
        }
        this._heapSize = i2;
        for (int i4 = i2 / 2; i4 >= 0; i4--) {
            heapify(i4);
        }
        this._returnedLast = -1;
        return resetPosition();
    }
}
