package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.functions.DeepEqual;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class GroupByClause extends Clause {

    /* renamed from: d */
    public Configuration f99506d;

    /* renamed from: e */
    public LocalVariableBinding[] f99507e;

    /* renamed from: f */
    public GenericAtomicComparer[] f99508f;

    /* renamed from: g */
    public Operand f99509g;

    /* renamed from: h */
    public Operand f99510h;

    /* loaded from: classes11.dex */
    public static class ObjectToBeGrouped {
        public Tuple groupingValues;
        public Tuple retainedValues;
    }

    /* loaded from: classes11.dex */
    public static class TupleComparisonKey {

        /* renamed from: a */
        public final Sequence[] f99511a;

        /* renamed from: b */
        public final GenericAtomicComparer[] f99512b;

        public TupleComparisonKey(Sequence[] sequenceArr, GenericAtomicComparer[] genericAtomicComparerArr) {
            this.f99511a = sequenceArr;
            this.f99512b = genericAtomicComparerArr;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof TupleComparisonKey) || this.f99511a.length != ((TupleComparisonKey) obj).f99511a.length) {
                return false;
            }
            int i = 0;
            while (true) {
                Sequence[] sequenceArr = this.f99511a;
                if (i >= sequenceArr.length) {
                    return true;
                }
                try {
                    SequenceIterator iterate = sequenceArr[i].iterate();
                    SequenceIterator iterate2 = ((TupleComparisonKey) obj).f99511a[i].iterate();
                    GenericAtomicComparer genericAtomicComparer = this.f99512b[i];
                    if (!DeepEqual.deepEqual(iterate, iterate2, genericAtomicComparer, genericAtomicComparer.getContext(), 0)) {
                        return false;
                    }
                    i++;
                } catch (XPathException unused) {
                    return false;
                }
            }
        }

        public int hashCode() {
            int length = this.f99511a.length ^ 2002089813;
            for (int i = 0; i < this.f99511a.length; i++) {
                GenericAtomicComparer genericAtomicComparer = this.f99512b[i];
                int implicitTimezone = genericAtomicComparer.getContext().getImplicitTimezone();
                try {
                    SequenceIterator iterate = this.f99511a[i].iterate();
                    while (true) {
                        AtomicValue atomicValue = (AtomicValue) iterate.next();
                        if (atomicValue == null) {
                            break;
                        }
                        length ^= atomicValue.getXPathMatchKey(genericAtomicComparer.getCollator(), implicitTimezone).hashCode() + i;
                    }
                } catch (XPathException unused) {
                }
            }
            return length;
        }
    }

    public GroupByClause(Configuration configuration) {
        this.f99506d = configuration;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        throw new UnsupportedOperationException("Cannot use document projection with group-by");
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public boolean containsNonInlineableVariableReference(Binding binding) {
        return getRetainedTupleExpression().includesBinding(binding) || getGroupingTupleExpression().includesBinding(binding);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("group-by");
        Iterator<Operand> it2 = getRetainedTupleExpression().operands().iterator();
        while (it2.hasNext()) {
            LocalVariableReference localVariableReference = (LocalVariableReference) it2.next().getChildExpression();
            expressionPresenter.startSubsidiaryElement("by");
            expressionPresenter.emitAttribute("var", localVariableReference.getDisplayName());
            expressionPresenter.emitAttribute("slot", localVariableReference.getBinding().getLocalSlotNumber() + "");
            expressionPresenter.endSubsidiaryElement();
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.GROUP_BY;
    }

    public TupleComparisonKey getComparisonKey(Tuple tuple, GenericAtomicComparer[] genericAtomicComparerArr) {
        return new TupleComparisonKey(tuple.getMembers(), genericAtomicComparerArr);
    }

    public TupleExpression getGroupingTupleExpression() {
        return (TupleExpression) this.f99510h.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new GroupByClausePull(tuplePull, this, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new GroupByClausePush(outputter, tuplePush, this, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public LocalVariableBinding[] getRangeVariables() {
        return this.f99507e;
    }

    public TupleExpression getRetainedTupleExpression() {
        return (TupleExpression) this.f99509g.getChildExpression();
    }

    public void initGroupingTupleExpression(FLWORExpression fLWORExpression, TupleExpression tupleExpression) {
        this.f99510h = new Operand(fLWORExpression, tupleExpression, OperandRole.FLWOR_TUPLE_CONSTRAINED);
    }

    public void initRetainedTupleExpression(FLWORExpression fLWORExpression, TupleExpression tupleExpression) {
        this.f99509g = new Operand(fLWORExpression, tupleExpression, OperandRole.FLWOR_TUPLE_CONSTRAINED);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        ArrayList arrayList = new ArrayList(Arrays.asList(this.f99507e));
        ArrayList arrayList2 = new ArrayList();
        Iterator<Operand> it2 = getRetainedTupleExpression().operands().iterator();
        while (it2.hasNext()) {
            arrayList2.add((LocalVariableReference) it2.next().getChildExpression());
        }
        int size = getGroupingTupleExpression().getSize();
        for (int size2 = arrayList.size() - 1; size2 >= size; size2--) {
            if (((LocalVariableBinding) arrayList.get(size2)).getNominalReferenceCount() == 0) {
                arrayList.remove(size2);
                arrayList2.remove(size2 - size);
            }
        }
        this.f99507e = (LocalVariableBinding[]) arrayList.toArray(new LocalVariableBinding[0]);
        getRetainedTupleExpression().setVariables(arrayList2);
    }

    public void processGroup(List<ObjectToBeGrouped> list, XPathContext xPathContext) throws XPathException {
        LocalVariableBinding[] rangeVariables = getRangeVariables();
        Sequence[] members = list.get(0).groupingValues.getMembers();
        for (int i = 0; i < members.length; i++) {
            xPathContext.setLocalVariable(rangeVariables[i].getLocalSlotNumber(), members[i]);
        }
        for (int length = members.length; length < rangeVariables.length; length++) {
            ArrayList arrayList = new ArrayList();
            Iterator<ObjectToBeGrouped> it2 = list.iterator();
            while (it2.hasNext()) {
                SequenceIterator iterate = it2.next().retainedValues.getMembers()[length - members.length].iterate();
                while (true) {
                    Item next = iterate.next();
                    if (next != null) {
                        arrayList.add(next);
                    }
                }
            }
            xPathContext.setLocalVariable(rangeVariables[length].getLocalSlotNumber(), new SequenceExtent.C18571Of(arrayList));
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
        operandProcessor.processOperand(this.f99510h);
        operandProcessor.processOperand(this.f99509g);
    }

    public void setComparers(GenericAtomicComparer[] genericAtomicComparerArr) {
        this.f99508f = genericAtomicComparerArr;
    }

    public void setGroupingTupleExpression(TupleExpression tupleExpression) {
        this.f99510h.setChildExpression(tupleExpression);
    }

    public void setRetainedTupleExpression(TupleExpression tupleExpression) {
        this.f99509g.setChildExpression(tupleExpression);
    }

    public void setVariableBindings(LocalVariableBinding[] localVariableBindingArr) {
        this.f99507e = localVariableBindingArr;
    }

    public String toString() {
        return "group by ... ";
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public GroupByClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        GroupByClause groupByClause = new GroupByClause(this.f99506d);
        groupByClause.setLocation(getLocation());
        groupByClause.setPackageData(getPackageData());
        groupByClause.f99507e = new LocalVariableBinding[this.f99507e.length];
        int i = 0;
        while (true) {
            LocalVariableBinding[] localVariableBindingArr = this.f99507e;
            if (i < localVariableBindingArr.length) {
                groupByClause.f99507e[i] = localVariableBindingArr[i].copy();
                i++;
            } else {
                groupByClause.f99508f = this.f99508f;
                groupByClause.initRetainedTupleExpression(fLWORExpression, (TupleExpression) getRetainedTupleExpression().copy(rebindingMap));
                groupByClause.initGroupingTupleExpression(fLWORExpression, (TupleExpression) getGroupingTupleExpression().copy(rebindingMap));
                return groupByClause;
            }
        }
    }
}
