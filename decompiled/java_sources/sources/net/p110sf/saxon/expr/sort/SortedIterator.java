package net.p110sf.saxon.expr.sort;

import java.util.Arrays;
import java.util.Comparator;
import net.p110sf.saxon.expr.ErrorIterator;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class SortedIterator implements SequenceIterator, LastPositionFinder, LookaheadIterator {
    protected SequenceIterator base;
    protected AtomicComparer[] comparators;
    protected XPathContext context;

    /* renamed from: e */
    public HostLanguage f100117e;
    protected SortKeyEvaluator sortKeyEvaluator;
    protected ObjectToBeSorted[] values;
    protected int count = -1;
    protected int position = 0;

    /* renamed from: net.sf.saxon.expr.sort.SortedIterator$a */
    /* loaded from: classes11.dex */
    public static class C18329a implements Comparator<ObjectToBeSorted> {

        /* renamed from: e */
        public AtomicComparer[] f100118e;

        public C18329a(AtomicComparer[] atomicComparerArr) {
            this.f100118e = atomicComparerArr;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(ObjectToBeSorted objectToBeSorted, ObjectToBeSorted objectToBeSorted2) {
            int i = 0;
            while (true) {
                try {
                    AtomicComparer[] atomicComparerArr = this.f100118e;
                    if (i >= atomicComparerArr.length) {
                        return objectToBeSorted.originalPosition - objectToBeSorted2.originalPosition;
                    }
                    int compareAtomicValues = atomicComparerArr[i].compareAtomicValues(objectToBeSorted.sortKeyValues[i], objectToBeSorted2.sortKeyValues[i]);
                    if (compareAtomicValues != 0) {
                        return compareAtomicValues;
                    }
                    i++;
                } catch (NoDynamicContextException e) {
                    throw new AssertionError("Sorting without dynamic context: " + e.getMessage());
                }
            }
        }
    }

    public SortedIterator() {
    }

    public void buildArray() throws XPathException {
        int length = SequenceTool.supportsGetLength(this.base) ? SequenceTool.getLength(this.base) : 100;
        this.values = new ItemToBeSorted[length];
        this.count = 0;
        while (true) {
            Item next = this.base.next();
            if (next == null) {
                break;
            }
            int i = this.count;
            if (i == length) {
                length *= 2;
                ObjectToBeSorted[] objectToBeSortedArr = new ObjectToBeSorted[length];
                System.arraycopy(this.values, 0, objectToBeSortedArr, 0, i);
                this.values = objectToBeSortedArr;
            }
            ItemToBeSorted itemToBeSorted = new ItemToBeSorted(this.comparators.length);
            this.values[this.count] = itemToBeSorted;
            itemToBeSorted.value = next;
            for (int i2 = 0; i2 < this.comparators.length; i2++) {
                itemToBeSorted.sortKeyValues[i2] = this.sortKeyEvaluator.evaluateSortKey(i2, this.context);
            }
            int i3 = this.count;
            this.count = i3 + 1;
            itemToBeSorted.originalPosition = i3;
        }
        int i4 = length * 2;
        int i5 = this.count;
        if (i4 < i5 || length - i5 > 2000) {
            ObjectToBeSorted[] objectToBeSortedArr2 = new ObjectToBeSorted[i5];
            System.arraycopy(this.values, 0, objectToBeSortedArr2, 0, i5);
            this.values = objectToBeSortedArr2;
        }
    }

    /* renamed from: f */
    public final void m62933f() throws XPathException {
        buildArray();
        int i = this.count;
        if (i < 2) {
            return;
        }
        try {
            Arrays.sort(this.values, 0, i, new C18329a(this.comparators));
        } catch (ClassCastException e) {
            XPathException xPathException = new XPathException("Non-comparable types found while sorting: " + e.getMessage());
            if (this.f100117e == HostLanguage.XSLT) {
                xPathException.setErrorCode("XTDE1030");
                throw xPathException;
            }
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        if (this.count < 0) {
            try {
                m62933f();
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }
        return this.count;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        int i = this.position;
        if (i < 0) {
            return false;
        }
        int i2 = this.count;
        if (i2 >= 0) {
            return i < i2;
        }
        SequenceIterator sequenceIterator = this.base;
        if ((sequenceIterator instanceof LookaheadIterator) && ((LookaheadIterator) sequenceIterator).supportsHasNext()) {
            return ((LookaheadIterator) this.base).hasNext();
        }
        try {
            m62933f();
            return this.count > 0;
        } catch (XPathException e) {
            this.count = -1;
            this.base = new FocusTrackingIterator(new ErrorIterator(e));
            return true;
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        if (this.position < 0) {
            return null;
        }
        if (this.count < 0) {
            try {
                m62933f();
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }
        int i = this.position;
        if (i >= this.count) {
            this.position = -1;
            return null;
        }
        ObjectToBeSorted[] objectToBeSortedArr = this.values;
        this.position = i + 1;
        return objectToBeSortedArr[i].value;
    }

    public void setHostLanguage(HostLanguage hostLanguage) {
        this.f100117e = hostLanguage;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    public SortedIterator(XPathContext xPathContext, SequenceIterator sequenceIterator, SortKeyEvaluator sortKeyEvaluator, AtomicComparer[] atomicComparerArr, boolean z) {
        if (z) {
            XPathContextMinor newMinorContext = xPathContext.newMinorContext();
            this.context = newMinorContext;
            this.base = newMinorContext.trackFocus(sequenceIterator);
            this.context.setTemporaryOutputState(203);
        } else {
            this.base = sequenceIterator;
            this.context = xPathContext;
        }
        this.sortKeyEvaluator = sortKeyEvaluator;
        this.comparators = new AtomicComparer[atomicComparerArr.length];
        for (int i = 0; i < atomicComparerArr.length; i++) {
            this.comparators[i] = atomicComparerArr[i].provideContext(xPathContext);
        }
    }
}
