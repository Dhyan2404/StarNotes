package net.p110sf.saxon.ma.arrays;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.AtomicSortComparer;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.ma.arrays.ArraySort;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ArraySort extends SystemFunction {

    /* renamed from: net.sf.saxon.ma.arrays.ArraySort$b */
    /* loaded from: classes11.dex */
    public static class C18399b {

        /* renamed from: a */
        public GroundedValue f100610a;

        /* renamed from: b */
        public GroundedValue f100611b;

        /* renamed from: c */
        public int f100612c;

        public C18399b() {
        }
    }

    /* renamed from: b */
    public static GroundedValue m63303b(Sequence sequence) throws XPathException {
        return SequenceTool.toGroundedValue(Atomizer.getAtomizingIterator(sequence.iterate(), false));
    }

    /* renamed from: c */
    public static /* synthetic */ int m63304c(AtomicComparer atomicComparer, C18399b c18399b, C18399b c18399b2) {
        int compareSortKeys = compareSortKeys(c18399b.f100611b, c18399b2.f100611b, atomicComparer);
        return compareSortKeys == 0 ? c18399b.f100612c - c18399b2.f100612c : compareSortKeys;
    }

    public static int compareSortKeys(GroundedValue groundedValue, GroundedValue groundedValue2, AtomicComparer atomicComparer) {
        int compareAtomicValues;
        SequenceIterator iterate = groundedValue.iterate();
        SequenceIterator iterate2 = groundedValue2.iterate();
        do {
            AtomicValue atomicValue = (AtomicValue) iterate.next();
            AtomicValue atomicValue2 = (AtomicValue) iterate2.next();
            if (atomicValue == null) {
                return atomicValue2 == null ? 0 : -1;
            }
            if (atomicValue2 == null) {
                return 1;
            }
            try {
                compareAtomicValues = atomicComparer.compareAtomicValues(atomicValue, atomicValue2);
            } catch (NoDynamicContextException e) {
                throw new AssertionError(e);
            }
        } while (compareAtomicValues == 0);
        return compareAtomicValues;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringCollator collation;
        ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
        ArrayList arrayList = new ArrayList(arrayItem.arrayLength());
        if (sequenceArr.length == 1) {
            collation = xPathContext.getConfiguration().getCollation(getRetainedStaticContext().getDefaultCollationName());
        } else {
            StringValue stringValue = (StringValue) sequenceArr[1].head();
            if (stringValue == null) {
                collation = xPathContext.getConfiguration().getCollation(getRetainedStaticContext().getDefaultCollationName());
            } else {
                collation = xPathContext.getConfiguration().getCollation(stringValue.getStringValue(), getStaticBaseUriString());
            }
        }
        Function function = sequenceArr.length == 3 ? (Function) sequenceArr[2].head() : null;
        int i = 0;
        for (GroundedValue groundedValue : arrayItem.members()) {
            C18399b c18399b = new C18399b();
            c18399b.f100610a = groundedValue;
            int i2 = i + 1;
            c18399b.f100612c = i;
            if (function != null) {
                c18399b.f100611b = SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{groundedValue}).materialize();
            } else {
                c18399b.f100611b = m63303b(groundedValue);
            }
            arrayList.add(c18399b);
            i = i2;
        }
        final AtomicComparer makeSortComparer = AtomicSortComparer.makeSortComparer(collation, 632, xPathContext);
        try {
            arrayList.sort(new Comparator() { // from class: com.sunia.HTREnginev2.pf
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m63304c;
                    m63304c = ArraySort.m63304c(AtomicComparer.this, (ArraySort.C18399b) obj, (ArraySort.C18399b) obj2);
                    return m63304c;
                }
            });
            ArrayList arrayList2 = new ArrayList(arrayItem.arrayLength());
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((C18399b) it2.next()).f100610a);
            }
            return new SimpleArrayItem(arrayList2);
        } catch (ClassCastException e) {
            XPathException xPathException = new XPathException("Non-comparable types found while sorting: " + e.getMessage());
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
    }
}
