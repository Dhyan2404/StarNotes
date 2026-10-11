package net.p110sf.saxon.expr.sort;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Objects;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.PseudoExpression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class SortKeyDefinition extends PseudoExpression {
    protected String baseURI;
    protected Operand caseOrder;
    protected StringCollator collation;
    protected Operand language;
    protected Operand order;
    protected Operand sortKey;
    protected Operand dataTypeExpression = null;
    protected Operand collationName = null;
    protected Operand stable = null;
    protected boolean emptyLeast = true;
    protected boolean backwardsCompatible = false;
    protected boolean setContextForSortKey = false;

    /* renamed from: n */
    public transient AtomicComparer f100115n = null;

    public SortKeyDefinition() {
        StringLiteral stringLiteral = new StringLiteral(Constants.ATTRVAL_ORDER_ASCENDING);
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.order = new Operand(this, stringLiteral, operandRole);
        this.caseOrder = new Operand(this, new StringLiteral("#default"), operandRole);
        this.language = new Operand(this, new StringLiteral(StringValue.EMPTY_STRING), operandRole);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        int hashCode = ((getOrder().hashCode() ^ 0) ^ getCaseOrder().hashCode()) ^ getLanguage().hashCode();
        if (getDataTypeExpression() != null) {
            hashCode ^= getDataTypeExpression().hashCode();
        }
        if (getStable() != null) {
            hashCode ^= getStable().hashCode();
        }
        return getCollationNameExpression() != null ? hashCode ^ getCollationNameExpression().hashCode() : hashCode;
    }

    /* renamed from: e */
    public final Expression m62932e(Expression expression, RebindingMap rebindingMap) {
        if (expression == null) {
            return null;
        }
        return expression.copy(rebindingMap);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof SortKeyDefinition)) {
            return false;
        }
        SortKeyDefinition sortKeyDefinition = (SortKeyDefinition) obj;
        return Objects.equals(getSortKey(), sortKeyDefinition.getSortKey()) && Objects.equals(getOrder(), sortKeyDefinition.getOrder()) && Objects.equals(getLanguage(), sortKeyDefinition.getLanguage()) && Objects.equals(getDataTypeExpression(), sortKeyDefinition.getDataTypeExpression()) && Objects.equals(getStable(), sortKeyDefinition.getStable()) && Objects.equals(getCollationNameExpression(), sortKeyDefinition.getCollationNameExpression());
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("sortKey", this);
        AtomicComparer atomicComparer = this.f100115n;
        if (atomicComparer != null) {
            expressionPresenter.emitAttribute("comp", atomicComparer.save());
        }
        expressionPresenter.setChildRole("select");
        this.sortKey.getChildExpression().export(expressionPresenter);
        expressionPresenter.setChildRole(Constants.ATTRNAME_ORDER);
        this.order.getChildExpression().export(expressionPresenter);
        if (this.dataTypeExpression != null) {
            expressionPresenter.setChildRole("dataType");
            this.dataTypeExpression.getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.setChildRole("lang");
        this.language.getChildExpression().export(expressionPresenter);
        expressionPresenter.setChildRole("caseOrder");
        this.caseOrder.getChildExpression().export(expressionPresenter);
        if (this.stable != null) {
            expressionPresenter.setChildRole("stable");
            this.stable.getChildExpression().export(expressionPresenter);
        }
        if (this.collationName != null) {
            expressionPresenter.setChildRole("collation");
            this.collationName.getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public SortKeyDefinition fix(XPathContext xPathContext) throws XPathException {
        SortKeyDefinition copy = copy(new RebindingMap());
        copy.setLanguage(new StringLiteral(getLanguage().evaluateAsString(xPathContext)));
        copy.setOrder(new StringLiteral(getOrder().evaluateAsString(xPathContext)));
        if (this.collationName != null) {
            copy.setCollationNameExpression(new StringLiteral(getCollationNameExpression().evaluateAsString(xPathContext)));
        }
        copy.setCaseOrder(new StringLiteral(getCaseOrder().evaluateAsString(xPathContext)));
        if (this.dataTypeExpression != null) {
            copy.setDataTypeExpression(new StringLiteral(getDataTypeExpression().evaluateAsString(xPathContext)));
        }
        copy.setSortKey(new ContextItemExpression(), true);
        return copy;
    }

    public String getBaseURI() {
        return this.baseURI;
    }

    public Expression getCaseOrder() {
        return this.caseOrder.getChildExpression();
    }

    public StringCollator getCollation() {
        return this.collation;
    }

    public Expression getCollationNameExpression() {
        Operand operand = this.collationName;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getDataTypeExpression() {
        Operand operand = this.dataTypeExpression;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public boolean getEmptyLeast() {
        return this.emptyLeast;
    }

    public AtomicComparer getFinalComparator() {
        return this.f100115n;
    }

    @Override // net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 0;
    }

    public Expression getLanguage() {
        return this.language.getChildExpression();
    }

    public Expression getOrder() {
        return this.order.getChildExpression();
    }

    public Expression getSortKey() {
        return this.sortKey.getChildExpression();
    }

    public Operand getSortKeyOperand() {
        return this.sortKey;
    }

    public Expression getStable() {
        return this.stable.getChildExpression();
    }

    public boolean isBackwardsCompatible() {
        return this.backwardsCompatible;
    }

    public boolean isFixed() {
        Operand operand;
        Operand operand2;
        Operand operand3;
        return (this.order.getChildExpression() instanceof Literal) && ((operand = this.dataTypeExpression) == null || (operand.getChildExpression() instanceof Literal)) && (this.caseOrder.getChildExpression() instanceof Literal) && (this.language.getChildExpression() instanceof Literal) && (((operand2 = this.stable) == null || (operand2.getChildExpression() instanceof Literal)) && ((operand3 = this.collationName) == null || (operand3.getChildExpression() instanceof Literal)));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return false;
    }

    public boolean isSetContextForSortKey() {
        return this.setContextForSortKey;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0206  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.sort.AtomicComparer makeComparator(net.p110sf.saxon.expr.XPathContext r10) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.sort.SortKeyDefinition.makeComparator(net.sf.saxon.expr.XPathContext):net.sf.saxon.expr.sort.AtomicComparer");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(8);
        arrayList.add(this.sortKey);
        arrayList.add(this.order);
        Operand operand = this.dataTypeExpression;
        if (operand != null) {
            arrayList.add(operand);
        }
        arrayList.add(this.caseOrder);
        arrayList.add(this.language);
        Operand operand2 = this.stable;
        if (operand2 != null) {
            arrayList.add(operand2);
        }
        Operand operand3 = this.collationName;
        if (operand3 != null) {
            arrayList.add(operand3);
        }
        return arrayList;
    }

    public void setBackwardsCompatible(boolean z) {
        this.backwardsCompatible = z;
    }

    public void setBaseURI(String str) {
        this.baseURI = str;
    }

    public void setCaseOrder(Expression expression) {
        this.caseOrder.setChildExpression(expression);
    }

    public void setCollation(StringCollator stringCollator) {
        this.collation = stringCollator;
    }

    public void setCollationNameExpression(Expression expression) {
        if (expression == null) {
            this.collationName = null;
            return;
        }
        if (this.collationName == null) {
            this.collationName = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        }
        this.collationName.setChildExpression(expression);
    }

    public void setDataTypeExpression(Expression expression) {
        if (expression == null) {
            this.dataTypeExpression = null;
            return;
        }
        if (this.dataTypeExpression == null) {
            this.dataTypeExpression = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        }
        this.dataTypeExpression.setChildExpression(expression);
    }

    public void setEmptyLeast(boolean z) {
        this.emptyLeast = z;
    }

    public void setFinalComparator(AtomicComparer atomicComparer) {
        this.f100115n = atomicComparer;
    }

    public void setLanguage(Expression expression) {
        this.language.setChildExpression(expression);
    }

    public void setOrder(Expression expression) {
        this.order.setChildExpression(expression);
    }

    public void setSortKey(Expression expression, boolean z) {
        this.sortKey = new Operand(this, expression, z ? new OperandRole(68, OperandUsage.TRANSMISSION, SequenceType.ANY_SEQUENCE) : OperandRole.ATOMIC_SEQUENCE);
        this.setContextForSortKey = z;
    }

    public void setStable(Expression expression) {
        if (expression == null) {
            expression = new StringLiteral("yes");
        }
        if (this.stable == null) {
            this.stable = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        }
        this.stable.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SortKeyDefinition copy(RebindingMap rebindingMap) {
        SortKeyDefinition sortKeyDefinition = new SortKeyDefinition();
        sortKeyDefinition.setSortKey(m62932e(this.sortKey.getChildExpression(), rebindingMap), true);
        sortKeyDefinition.setOrder(m62932e(this.order.getChildExpression(), rebindingMap));
        Operand operand = this.dataTypeExpression;
        sortKeyDefinition.setDataTypeExpression(operand == null ? null : m62932e(operand.getChildExpression(), rebindingMap));
        sortKeyDefinition.setCaseOrder(m62932e(this.caseOrder.getChildExpression(), rebindingMap));
        sortKeyDefinition.setLanguage(m62932e(this.language.getChildExpression(), rebindingMap));
        Operand operand2 = this.stable;
        sortKeyDefinition.setStable(m62932e(operand2 == null ? null : operand2.getChildExpression(), rebindingMap));
        Operand operand3 = this.collationName;
        sortKeyDefinition.setCollationNameExpression(operand3 != null ? m62932e(operand3.getChildExpression(), rebindingMap) : null);
        sortKeyDefinition.collation = this.collation;
        sortKeyDefinition.emptyLeast = this.emptyLeast;
        sortKeyDefinition.baseURI = this.baseURI;
        sortKeyDefinition.backwardsCompatible = this.backwardsCompatible;
        sortKeyDefinition.f100115n = this.f100115n;
        sortKeyDefinition.setContextForSortKey = this.setContextForSortKey;
        return sortKeyDefinition;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SortKeyDefinition typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        for (Operand operand : checkedOperands()) {
            if (operand.hasSameFocus()) {
                operand.typeCheck(expressionVisitor, contextItemStaticInfo);
            }
        }
        Expression language = getLanguage();
        if (language instanceof StringLiteral) {
            StringLiteral stringLiteral = (StringLiteral) language;
            if (!stringLiteral.getString().isEmpty() && StringConverter.StringToLanguage.INSTANCE.validate(stringLiteral.getGroundedValue().getUnicodeStringValue()) != null) {
                throw new XPathException("The lang attribute of xsl:sort must be a valid language code", "XTDE0030");
            }
        }
        return this;
    }
}
