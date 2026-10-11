package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.GroupByClause;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class GroupByClausePush extends TuplePush {

    /* renamed from: b */
    public final TuplePush f99517b;

    /* renamed from: c */
    public final GroupByClause f99518c;

    /* renamed from: d */
    public final HashMap<Object, List<GroupByClause.ObjectToBeGrouped>> f99519d;

    /* renamed from: e */
    public final XPathContext f99520e;

    /* renamed from: f */
    public final GenericAtomicComparer[] f99521f;

    public GroupByClausePush(Outputter outputter, TuplePush tuplePush, GroupByClause groupByClause, XPathContext xPathContext) {
        super(outputter);
        this.f99519d = new HashMap<>();
        this.f99517b = tuplePush;
        this.f99518c = groupByClause;
        this.f99520e = xPathContext;
        this.f99521f = new GenericAtomicComparer[groupByClause.f99508f.length];
        int i = 0;
        while (true) {
            GenericAtomicComparer[] genericAtomicComparerArr = this.f99521f;
            if (i >= genericAtomicComparerArr.length) {
                return;
            }
            genericAtomicComparerArr[i] = groupByClause.f99508f[i].provideContext(xPathContext);
            i++;
        }
    }

    public static void addToGroup(Object obj, GroupByClause.ObjectToBeGrouped objectToBeGrouped, List<GroupByClause.ObjectToBeGrouped> list, HashMap<Object, List<GroupByClause.ObjectToBeGrouped>> hashMap) {
        if (list != null) {
            list.add(objectToBeGrouped);
            hashMap.put(obj, list);
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.add(objectToBeGrouped);
            hashMap.put(obj, arrayList);
        }
    }

    public static void checkGroupingValues(Sequence[] sequenceArr) throws XPathException {
        for (int i = 0; i < sequenceArr.length; i++) {
            Sequence sequence = sequenceArr[i];
            if (!(sequence instanceof EmptySequence) && !(sequence instanceof AtomicValue)) {
                GroundedValue groundedValue = SequenceTool.toGroundedValue(Atomizer.getAtomizingIterator(sequence.iterate(), false));
                if (SequenceTool.getLength(groundedValue) > 1) {
                    throw new XPathException("Grouping key value cannot be a sequence of more than one item", "XPTY0004");
                }
                sequenceArr[i] = groundedValue;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        Iterator<List<GroupByClause.ObjectToBeGrouped>> it2 = this.f99519d.values().iterator();
        while (it2.hasNext()) {
            this.f99518c.processGroup(it2.next(), this.f99520e);
            this.f99517b.processTuple(this.f99520e);
        }
        this.f99517b.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        TupleExpression groupingTupleExpression = this.f99518c.getGroupingTupleExpression();
        TupleExpression retainedTupleExpression = this.f99518c.getRetainedTupleExpression();
        GroupByClause.ObjectToBeGrouped objectToBeGrouped = new GroupByClause.ObjectToBeGrouped();
        Sequence[] members = groupingTupleExpression.evaluateItem(xPathContext).getMembers();
        checkGroupingValues(members);
        objectToBeGrouped.groupingValues = new Tuple(members);
        objectToBeGrouped.retainedValues = retainedTupleExpression.evaluateItem(xPathContext);
        GroupByClause.TupleComparisonKey comparisonKey = this.f99518c.getComparisonKey(objectToBeGrouped.groupingValues, this.f99521f);
        addToGroup(comparisonKey, objectToBeGrouped, this.f99519d.get(comparisonKey), this.f99519d);
    }
}
