package net.p110sf.saxon.functions;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.AtomicSortComparer;
import net.p110sf.saxon.functions.Sort_1;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.ma.arrays.ArraySort;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class Sort_1 extends SystemFunction {

    /* loaded from: classes11.dex */
    public static class ItemToBeSorted {
        public int originalPosition;
        public GroundedValue sortKey;
        public Item value;
    }

    /* renamed from: b */
    public static /* synthetic */ int m63173b(AtomicComparer atomicComparer, ItemToBeSorted itemToBeSorted, ItemToBeSorted itemToBeSorted2) {
        int compareSortKeys = ArraySort.compareSortKeys(itemToBeSorted.sortKey, itemToBeSorted2.sortKey, atomicComparer);
        return compareSortKeys == 0 ? itemToBeSorted.originalPosition - itemToBeSorted2.originalPosition : compareSortKeys;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return doSort(getItemsToBeSorted(sequenceArr[0]), xPathContext.getConfiguration().getCollation(getRetainedStaticContext().getDefaultCollationName()), xPathContext);
    }

    public Sequence doSort(ArrayList<ItemToBeSorted> arrayList, StringCollator stringCollator, XPathContext xPathContext) throws XPathException {
        final AtomicComparer makeSortComparer = AtomicSortComparer.makeSortComparer(stringCollator, 632, xPathContext);
        try {
            arrayList.sort(new Comparator() { // from class: com.sunia.HTREnginev2.qvm
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m63173b;
                    m63173b = Sort_1.m63173b(AtomicComparer.this, (Sort_1.ItemToBeSorted) obj, (Sort_1.ItemToBeSorted) obj2);
                    return m63173b;
                }
            });
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Iterator<ItemToBeSorted> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().value);
            }
            return new SequenceExtent.C18571Of(arrayList2);
        } catch (ClassCastException e) {
            XPathException xPathException = new XPathException("Non-comparable types found while sorting: " + e.getMessage());
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
    }

    public ArrayList<ItemToBeSorted> getItemsToBeSorted(Sequence sequence) throws XPathException {
        ArrayList<ItemToBeSorted> arrayList = new ArrayList<>();
        SequenceIterator iterate = sequence.iterate();
        int i = 0;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return arrayList;
            }
            ItemToBeSorted itemToBeSorted = new ItemToBeSorted();
            itemToBeSorted.value = next;
            itemToBeSorted.originalPosition = i;
            itemToBeSorted.sortKey = next.atomize();
            arrayList.add(itemToBeSorted);
            i++;
        }
    }
}
