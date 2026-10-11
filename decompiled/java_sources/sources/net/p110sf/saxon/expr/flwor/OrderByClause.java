package net.p110sf.saxon.expr.flwor;

import java.util.Iterator;
import java.util.function.Predicate;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.flwor.OrderByClause;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.SortKeyDefinition;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class OrderByClause extends Clause {
    public static final OperandRole SORT_KEYS_ROLE = new OperandRole(20, OperandUsage.NAVIGATION, SequenceType.ANY_SEQUENCE, new Predicate() { // from class: com.sunia.HTREnginev2.whk
        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            boolean m62701b;
            m62701b = OrderByClause.m62701b((Expression) obj);
            return m62701b;
        }
    });

    /* renamed from: d */
    public Operand f99533d;

    /* renamed from: e */
    public AtomicComparer[] f99534e;

    /* renamed from: f */
    public Operand f99535f;

    public OrderByClause(FLWORExpression fLWORExpression, SortKeyDefinition[] sortKeyDefinitionArr, TupleExpression tupleExpression) {
        this.f99533d = new Operand(fLWORExpression, new SortKeyDefinitionList(sortKeyDefinitionArr), SORT_KEYS_ROLE);
        this.f99535f = new Operand(fLWORExpression, tupleExpression, OperandRole.FLWOR_TUPLE_CONSTRAINED);
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m62701b(Expression expression) {
        return expression instanceof SortKeyDefinitionList;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        Iterator<SortKeyDefinition> it2 = getSortKeyDefinitions().iterator();
        while (it2.hasNext()) {
            it2.next().getSortKey().addToPathMap(pathMap, pathMapNodeSet);
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public boolean containsNonInlineableVariableReference(Binding binding) {
        return getTupleExpression().includesBinding(binding);
    }

    public AtomicValue evaluateSortKey(int i, XPathContext xPathContext) throws XPathException {
        return (AtomicValue) getSortKeyDefinitions().getSortKeyDefinition(i).getSortKey().evaluateItem(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("order-by");
        Iterator<SortKeyDefinition> it2 = getSortKeyDefinitions().iterator();
        while (it2.hasNext()) {
            SortKeyDefinition next = it2.next();
            expressionPresenter.startSubsidiaryElement("key");
            next.getSortKey().export(expressionPresenter);
            expressionPresenter.endSubsidiaryElement();
        }
        expressionPresenter.endElement();
    }

    public AtomicComparer[] getAtomicComparers() {
        return this.f99534e;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.ORDER_BY;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new OrderByClausePull(tuplePull, getTupleExpression(), this, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new OrderByClausePush(outputter, tuplePush, getTupleExpression(), this, xPathContext);
    }

    public SortKeyDefinitionList getSortKeyDefinitions() {
        return (SortKeyDefinitionList) this.f99533d.getChildExpression();
    }

    public TupleExpression getTupleExpression() {
        return (TupleExpression) this.f99535f.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
        operandProcessor.processOperand(this.f99535f);
        operandProcessor.processOperand(this.f99533d);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("order by ... ");
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        boolean z;
        SortKeyDefinitionList sortKeyDefinitions = getSortKeyDefinitions();
        Iterator<SortKeyDefinition> it2 = sortKeyDefinitions.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = true;
                break;
            } else if (!it2.next().isFixed()) {
                z = false;
                break;
            }
        }
        if (z) {
            this.f99534e = new AtomicComparer[sortKeyDefinitions.size()];
        }
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        Iterator<SortKeyDefinition> it3 = sortKeyDefinitions.iterator();
        int i = 0;
        while (it3.hasNext()) {
            SortKeyDefinition next = it3.next();
            Expression sortKey = next.getSortKey();
            RoleDiagnostic roleDiagnostic = new RoleDiagnostic(6, "", i);
            roleDiagnostic.setErrorCode("XPTY0004");
            next.setSortKey(typeChecker.staticTypeCheck(sortKey, SequenceType.OPTIONAL_ATOMIC, roleDiagnostic, expressionVisitor), false);
            next.typeCheck(expressionVisitor, contextItemStaticInfo);
            if (next.isFixed()) {
                AtomicComparer makeComparator = next.makeComparator(expressionVisitor.getStaticContext().makeEarlyEvaluationContext());
                next.setFinalComparator(makeComparator);
                if (z) {
                    this.f99534e[i] = makeComparator;
                }
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public OrderByClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        SortKeyDefinitionList sortKeyDefinitions = getSortKeyDefinitions();
        SortKeyDefinition[] sortKeyDefinitionArr = new SortKeyDefinition[sortKeyDefinitions.size()];
        for (int i = 0; i < sortKeyDefinitions.size(); i++) {
            sortKeyDefinitionArr[i] = sortKeyDefinitions.getSortKeyDefinition(i).copy(rebindingMap);
        }
        OrderByClause orderByClause = new OrderByClause(fLWORExpression, sortKeyDefinitionArr, (TupleExpression) getTupleExpression().copy(rebindingMap));
        orderByClause.setLocation(getLocation());
        orderByClause.setPackageData(getPackageData());
        orderByClause.f99534e = this.f99534e;
        return orderByClause;
    }
}
