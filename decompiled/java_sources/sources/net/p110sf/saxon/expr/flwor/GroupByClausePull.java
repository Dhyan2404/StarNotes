package net.p110sf.saxon.expr.flwor;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.GroupByClause;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class GroupByClausePull extends TuplePull {

    /* renamed from: a */
    public final TuplePull f99513a;

    /* renamed from: b */
    public final GroupByClause f99514b;

    /* renamed from: c */
    public Iterator<List<GroupByClause.ObjectToBeGrouped>> f99515c;

    /* renamed from: d */
    public final GenericAtomicComparer[] f99516d;

    public GroupByClausePull(TuplePull tuplePull, GroupByClause groupByClause, XPathContext xPathContext) {
        this.f99513a = tuplePull;
        this.f99514b = groupByClause;
        this.f99516d = new GenericAtomicComparer[groupByClause.f99508f.length];
        int i = 0;
        while (true) {
            GenericAtomicComparer[] genericAtomicComparerArr = this.f99516d;
            if (i >= genericAtomicComparerArr.length) {
                return;
            }
            genericAtomicComparerArr[i] = groupByClause.f99508f[i].provideContext(xPathContext);
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.f99513a.close();
        this.f99515c = null;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        if (this.f99515c == null) {
            TupleExpression groupingTupleExpression = this.f99514b.getGroupingTupleExpression();
            TupleExpression retainedTupleExpression = this.f99514b.getRetainedTupleExpression();
            HashMap hashMap = new HashMap();
            while (this.f99513a.nextTuple(xPathContext)) {
                GroupByClause.ObjectToBeGrouped objectToBeGrouped = new GroupByClause.ObjectToBeGrouped();
                Sequence[] members = groupingTupleExpression.evaluateItem(xPathContext).getMembers();
                GroupByClausePush.checkGroupingValues(members);
                objectToBeGrouped.groupingValues = new Tuple(members);
                objectToBeGrouped.retainedValues = retainedTupleExpression.evaluateItem(xPathContext);
                GroupByClause.TupleComparisonKey comparisonKey = this.f99514b.getComparisonKey(objectToBeGrouped.groupingValues, this.f99516d);
                GroupByClausePush.addToGroup(comparisonKey, objectToBeGrouped, (List) hashMap.get(comparisonKey), hashMap);
            }
            this.f99515c = hashMap.values().iterator();
        }
        if (!this.f99515c.hasNext()) {
            return false;
        }
        this.f99514b.processGroup(this.f99515c.next(), xPathContext);
        return true;
    }
}
