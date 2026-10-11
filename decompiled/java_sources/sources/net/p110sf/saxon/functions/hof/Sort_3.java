package net.p110sf.saxon.functions.hof;

import java.util.ArrayList;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Sort_1;
import net.p110sf.saxon.functions.Sort_2;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class Sort_3 extends Sort_2 {
    @Override // net.p110sf.saxon.functions.Sort_2, net.p110sf.saxon.functions.Sort_1, net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Sequence sequence = sequenceArr[0];
        ArrayList<Sort_1.ItemToBeSorted> arrayList = new ArrayList<>();
        Function function = (Function) sequenceArr[2].head();
        SequenceIterator iterate = sequence.iterate();
        int i = 0;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return doSort(arrayList, getCollation(xPathContext, sequenceArr[1]), xPathContext);
            }
            Sort_1.ItemToBeSorted itemToBeSorted = new Sort_1.ItemToBeSorted();
            itemToBeSorted.value = next;
            itemToBeSorted.originalPosition = i;
            itemToBeSorted.sortKey = SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{next}).materialize();
            arrayList.add(itemToBeSorted);
            i++;
        }
    }
}
