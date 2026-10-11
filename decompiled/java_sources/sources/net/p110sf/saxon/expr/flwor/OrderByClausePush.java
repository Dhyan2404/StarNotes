package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.OrderByClausePush;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.ItemToBeSorted;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class OrderByClausePush extends TuplePush {

    /* renamed from: b */
    public final TuplePush f99542b;

    /* renamed from: c */
    public final OrderByClause f99543c;

    /* renamed from: d */
    public final TupleExpression f99544d;

    /* renamed from: e */
    public final AtomicComparer[] f99545e;

    /* renamed from: f */
    public final XPathContext f99546f;

    /* renamed from: g */
    public int f99547g;

    /* renamed from: h */
    public final ArrayList<ItemToBeSorted> f99548h;

    public OrderByClausePush(Outputter outputter, TuplePush tuplePush, TupleExpression tupleExpression, OrderByClause orderByClause, XPathContext xPathContext) {
        super(outputter);
        int i = 0;
        this.f99547g = 0;
        this.f99548h = new ArrayList<>(100);
        this.f99542b = tuplePush;
        this.f99544d = tupleExpression;
        this.f99543c = orderByClause;
        this.f99546f = xPathContext;
        AtomicComparer[] atomicComparers = orderByClause.getAtomicComparers();
        this.f99545e = new AtomicComparer[atomicComparers.length];
        while (true) {
            AtomicComparer[] atomicComparerArr = this.f99545e;
            if (i >= atomicComparerArr.length) {
                return;
            }
            atomicComparerArr[i] = atomicComparers[i].provideContext(xPathContext);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ int m62705b(ItemToBeSorted itemToBeSorted, ItemToBeSorted itemToBeSorted2) {
        int i = 0;
        while (true) {
            try {
                AtomicComparer[] atomicComparerArr = this.f99545e;
                if (i >= atomicComparerArr.length) {
                    return itemToBeSorted.originalPosition - itemToBeSorted2.originalPosition;
                }
                int compareAtomicValues = atomicComparerArr[i].compareAtomicValues(itemToBeSorted.sortKeyValues[i], itemToBeSorted2.sortKeyValues[i]);
                if (compareAtomicValues != 0) {
                    return compareAtomicValues;
                }
                i++;
            } catch (NoDynamicContextException e) {
                throw new AssertionError("Sorting without dynamic context: " + e.getMessage());
            }
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        try {
            this.f99548h.sort(new Comparator() { // from class: com.sunia.HTREnginev2.yhk
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m62705b;
                    m62705b = OrderByClausePush.this.m62705b((ItemToBeSorted) obj, (ItemToBeSorted) obj2);
                    return m62705b;
                }
            });
            Iterator<ItemToBeSorted> it2 = this.f99548h.iterator();
            while (it2.hasNext()) {
                this.f99544d.setCurrentTuple(this.f99546f, (Tuple) it2.next().value);
                this.f99542b.processTuple(this.f99546f);
            }
            this.f99542b.close();
        } catch (ClassCastException e) {
            XPathException xPathException = new XPathException("Non-comparable types found while sorting: " + e.getMessage());
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        Tuple evaluateItem = this.f99544d.evaluateItem(xPathContext);
        SortKeyDefinitionList sortKeyDefinitions = this.f99543c.getSortKeyDefinitions();
        ItemToBeSorted itemToBeSorted = new ItemToBeSorted(sortKeyDefinitions.size());
        itemToBeSorted.value = evaluateItem;
        for (int i = 0; i < sortKeyDefinitions.size(); i++) {
            itemToBeSorted.sortKeyValues[i] = this.f99543c.evaluateSortKey(i, xPathContext);
        }
        int i2 = this.f99547g + 1;
        this.f99547g = i2;
        itemToBeSorted.originalPosition = i2;
        this.f99548h.add(itemToBeSorted);
    }
}
