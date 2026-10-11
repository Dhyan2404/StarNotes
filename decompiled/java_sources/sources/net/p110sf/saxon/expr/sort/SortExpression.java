package net.p110sf.saxon.expr.sort;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class SortExpression extends Expression implements SortKeyEvaluator {

    /* renamed from: q */
    public static final OperandRole f100110q;

    /* renamed from: r */
    public static final OperandRole f100111r;

    /* renamed from: n */
    public final Operand f100112n;

    /* renamed from: o */
    public final Operand f100113o;

    /* renamed from: p */
    public transient AtomicComparer[] f100114p = null;

    static {
        OperandUsage operandUsage = OperandUsage.ABSORPTION;
        SequenceType sequenceType = SequenceType.OPTIONAL_ATOMIC;
        f100110q = new OperandRole(4, operandUsage, sequenceType);
        f100111r = new OperandRole(6, operandUsage, sequenceType);
    }

    public SortExpression(Expression expression, SortKeyDefinitionList sortKeyDefinitionList) {
        this.f100112n = new Operand(this, expression, OperandRole.FOCUS_CONTROLLING_SELECT);
        this.f100113o = new Operand(this, sortKeyDefinitionList, OperandRole.ATOMIC_SEQUENCE);
        adoptChildExpression(expression);
        adoptChildExpression(sortKeyDefinitionList);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        PathMap.PathMapNodeSet addToPathMap = getSelect().addToPathMap(pathMap, pathMapNodeSet);
        Iterator<SortKeyDefinition> it2 = getSortKeyDefinitionList().iterator();
        while (it2.hasNext()) {
            SortKeyDefinition next = it2.next();
            if (next.isSetContextForSortKey()) {
                next.getSortKey().addToPathMap(pathMap, addToPathMap);
            } else {
                next.getSortKey().addToPathMap(pathMap, pathMapNodeSet);
            }
            Expression order = next.getOrder();
            if (order != null) {
                order.addToPathMap(pathMap, pathMapNodeSet);
            }
            Expression caseOrder = next.getCaseOrder();
            if (caseOrder != null) {
                caseOrder.addToPathMap(pathMap, pathMapNodeSet);
            }
            Expression dataTypeExpression = next.getDataTypeExpression();
            if (dataTypeExpression != null) {
                dataTypeExpression.addToPathMap(pathMap, pathMapNodeSet);
            }
            Expression language = next.getLanguage();
            if (language != null) {
                language.addToPathMap(pathMap, pathMapNodeSet);
            }
            Expression collationNameExpression = next.getCollationNameExpression();
            if (collationNameExpression != null) {
                collationNameExpression.addToPathMap(pathMap, pathMapNodeSet);
            }
        }
        return addToPathMap;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getSelect().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int i = getSelect().hasSpecialProperty(65536) ? 65536 : 0;
        if (getSelect().hasSpecialProperty(16777216)) {
            i |= 16777216;
        }
        return getSelect().hasSpecialProperty(8388608) ? i | 8388608 : i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        int size = getSortKeyDefinitionList().size();
        SortKeyDefinition[] sortKeyDefinitionArr = new SortKeyDefinition[size];
        for (int i = 0; i < size; i++) {
            sortKeyDefinitionArr[i] = getSortKeyDefinition(i).copy(rebindingMap);
        }
        SortExpression sortExpression = new SortExpression(getSelect().copy(rebindingMap), new SortKeyDefinitionList(sortKeyDefinitionArr));
        ExpressionTool.copyLocationInfo(this, sortExpression);
        sortExpression.f100114p = this.f100114p;
        return sortExpression;
    }

    @Override // net.p110sf.saxon.expr.sort.SortKeyEvaluator
    public AtomicValue evaluateSortKey(int i, XPathContext xPathContext) throws XPathException {
        return (AtomicValue) getSortKeyDefinition(i).getSortKey().evaluateItem(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Constants.ELEMNAME_SORT_STRING, this);
        expressionPresenter.setChildRole("select");
        getSelect().export(expressionPresenter);
        getSortKeyDefinitionList().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Expression getBaseExpression() {
        return getSelect();
    }

    public Operand getBaseOperand() {
        return this.f100112n;
    }

    public AtomicComparer[] getComparators() {
        return this.f100114p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return Constants.ELEMNAME_SORT_STRING;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getSelect().getItemType();
    }

    public Expression getSelect() {
        return this.f100112n.getChildExpression();
    }

    public SortKeyDefinition getSortKeyDefinition(int i) {
        return getSortKeyDefinitionList().getSortKeyDefinition(i);
    }

    public SortKeyDefinitionList getSortKeyDefinitionList() {
        return (SortKeyDefinitionList) this.f100113o.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "SortExpression";
    }

    public boolean isSortKey(Expression expression) {
        Iterator<SortKeyDefinition> it2 = getSortKeyDefinitionList().iterator();
        while (it2.hasNext()) {
            if (it2.next().getSortKey() == expression) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        AtomicComparer[] atomicComparerArr;
        SequenceIterator iterate = getSelect().iterate(xPathContext);
        if (iterate instanceof EmptyIterator) {
            return iterate;
        }
        AtomicComparer[] atomicComparerArr2 = this.f100114p;
        if (atomicComparerArr2 == null) {
            int size = getSortKeyDefinitionList().size();
            AtomicComparer[] atomicComparerArr3 = new AtomicComparer[size];
            for (int i = 0; i < size; i++) {
                AtomicComparer finalComparator = getSortKeyDefinition(i).getFinalComparator();
                if (finalComparator == null) {
                    finalComparator = getSortKeyDefinition(i).makeComparator(xPathContext);
                }
                atomicComparerArr3[i] = finalComparator;
            }
            atomicComparerArr = atomicComparerArr3;
        } else {
            atomicComparerArr = atomicComparerArr2;
        }
        SortedIterator sortedIterator = new SortedIterator(xPathContext, iterate, this, atomicComparerArr, getSortKeyDefinition(0).isSetContextForSortKey());
        sortedIterator.setHostLanguage(getPackageData().getHostLanguage());
        return sortedIterator;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f100112n, this.f100113o);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f100112n.optimize(expressionVisitor, contextItemStaticInfo);
        if (getSortKeyDefinition(0).isSetContextForSortKey()) {
            contextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(getSelect().getItemType(), false);
        }
        Iterator<SortKeyDefinition> it2 = getSortKeyDefinitionList().iterator();
        while (it2.hasNext()) {
            SortKeyDefinition next = it2.next();
            next.setSortKey(next.getSortKey().optimize(expressionVisitor, contextItemStaticInfo), true);
        }
        return Cardinality.allowsMany(getSelect().getCardinality()) ? this : getSelect();
    }

    public void setSelect(Expression expression) {
        this.f100112n.setChildExpression(expression);
    }

    public void setSortKeyDefinitionList(SortKeyDefinitionList sortKeyDefinitionList) {
        this.f100113o.setChildExpression(sortKeyDefinitionList);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "sort(" + getBaseExpression().toShortString() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        boolean z;
        Expression staticTypeCheck;
        this.f100112n.typeCheck(expressionVisitor, contextItemStaticInfo);
        Expression select = getSelect();
        if (select != getSelect()) {
            adoptChildExpression(select);
            setSelect(select);
        }
        if (!Cardinality.allowsMany(select.getCardinality())) {
            return select;
        }
        ItemType itemType = getSelect().getItemType();
        Iterator<SortKeyDefinition> it2 = getSortKeyDefinitionList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = true;
                break;
            }
            if (!it2.next().isFixed()) {
                z = false;
                break;
            }
        }
        if (z) {
            this.f100114p = new AtomicComparer[getSortKeyDefinitionList().size()];
        }
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        for (int i = 0; i < getSortKeyDefinitionList().size(); i++) {
            SortKeyDefinition sortKeyDefinition = getSortKeyDefinition(i);
            Expression sortKey = sortKeyDefinition.getSortKey();
            Expression typeCheck = sortKeyDefinition.isSetContextForSortKey() ? sortKey.typeCheck(expressionVisitor, expressionVisitor.getConfiguration().makeContextItemStaticInfo(itemType, false)) : sortKey.typeCheck(expressionVisitor, contextItemStaticInfo);
            if (sortKeyDefinition.isBackwardsCompatible()) {
                staticTypeCheck = FirstItemExpression.makeFirstItemExpression(typeCheck);
            } else {
                RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:sort/select", 0);
                roleDiagnostic.setErrorCode("XTTE1020");
                staticTypeCheck = typeChecker.staticTypeCheck(typeCheck, SequenceType.OPTIONAL_ATOMIC, roleDiagnostic, expressionVisitor);
            }
            sortKeyDefinition.setSortKey(staticTypeCheck, sortKeyDefinition.isSetContextForSortKey());
            sortKeyDefinition.typeCheck(expressionVisitor, contextItemStaticInfo);
            if (sortKeyDefinition.isFixed()) {
                AtomicComparer makeComparator = sortKeyDefinition.makeComparator(expressionVisitor.getStaticContext().makeEarlyEvaluationContext());
                sortKeyDefinition.setFinalComparator(makeComparator);
                if (z) {
                    this.f100114p[i] = makeComparator;
                }
            }
            if (sortKeyDefinition.isSetContextForSortKey() && !ExpressionTool.dependsOnFocus(staticTypeCheck)) {
                expressionVisitor.getStaticContext().issueWarning("Sort key will have no effect because its value does not depend on the context item", staticTypeCheck.getLocation());
            }
        }
        return this;
    }
}
