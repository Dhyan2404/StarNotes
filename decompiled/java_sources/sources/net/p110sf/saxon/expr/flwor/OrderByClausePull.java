package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.Comparator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.OrderByClausePull;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.ItemToBeSorted;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class OrderByClausePull extends TuplePull {

    /* renamed from: a */
    public final TuplePull f99536a;

    /* renamed from: b */
    public final OrderByClause f99537b;

    /* renamed from: c */
    public final TupleExpression f99538c;

    /* renamed from: e */
    public final AtomicComparer[] f99540e;

    /* renamed from: d */
    public int f99539d = -1;

    /* renamed from: f */
    public final ArrayList<ItemToBeSorted> f99541f = new ArrayList<>(100);

    public OrderByClausePull(TuplePull tuplePull, TupleExpression tupleExpression, OrderByClause orderByClause, XPathContext xPathContext) {
        this.f99536a = tuplePull;
        this.f99538c = tupleExpression;
        this.f99537b = orderByClause;
        AtomicComparer[] atomicComparers = orderByClause.getAtomicComparers();
        this.f99540e = new AtomicComparer[atomicComparers.length];
        int i = 0;
        while (true) {
            AtomicComparer[] atomicComparerArr = this.f99540e;
            if (i >= atomicComparerArr.length) {
                return;
            }
            atomicComparerArr[i] = atomicComparers[i].provideContext(xPathContext);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ int m62703b(ItemToBeSorted itemToBeSorted, ItemToBeSorted itemToBeSorted2) {
        int i = 0;
        while (true) {
            try {
                AtomicComparer[] atomicComparerArr = this.f99540e;
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

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.f99536a.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        if (this.f99539d < 0) {
            this.f99539d = 0;
            int i = 0;
            while (this.f99536a.nextTuple(xPathContext)) {
                Tuple evaluateItem = this.f99538c.evaluateItem(xPathContext);
                SortKeyDefinitionList sortKeyDefinitions = this.f99537b.getSortKeyDefinitions();
                ItemToBeSorted itemToBeSorted = new ItemToBeSorted(sortKeyDefinitions.size());
                itemToBeSorted.value = evaluateItem;
                for (int i2 = 0; i2 < sortKeyDefinitions.size(); i2++) {
                    itemToBeSorted.sortKeyValues[i2] = this.f99537b.evaluateSortKey(i2, xPathContext);
                }
                i++;
                itemToBeSorted.originalPosition = i;
                this.f99541f.add(itemToBeSorted);
            }
            try {
                this.f99541f.sort(new Comparator() { // from class: com.sunia.HTREnginev2.xhk
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int m62703b;
                        m62703b = OrderByClausePull.this.m62703b((ItemToBeSorted) obj, (ItemToBeSorted) obj2);
                        return m62703b;
                    }
                });
            } catch (ClassCastException e) {
                XPathException xPathException = new XPathException("Non-comparable types found while sorting: " + e.getMessage());
                xPathException.setErrorCode("XPTY0004");
                throw xPathException;
            }
        }
        if (this.f99539d >= this.f99541f.size()) {
            return false;
        }
        TupleExpression tupleExpression = this.f99538c;
        ArrayList<ItemToBeSorted> arrayList = this.f99541f;
        int i3 = this.f99539d;
        this.f99539d = i3 + 1;
        tupleExpression.setCurrentTuple(xPathContext, (Tuple) arrayList.get(i3).value);
        return true;
    }
}
