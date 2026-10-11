package net.p110sf.saxon.expr.sort;

import java.util.Comparator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.SlashExpression;
import net.p110sf.saxon.expr.UnaryExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class DocumentSorter extends UnaryExpression {

    /* renamed from: o */
    public final Comparator<? super NodeInfo> f100032o;

    public DocumentSorter(Expression expression) {
        super(expression);
        int specialProperties = expression.getSpecialProperties();
        if ((65536 & specialProperties) == 0 && (specialProperties & 16777216) == 0) {
            this.f100032o = GlobalOrderComparer.getInstance();
        } else {
            this.f100032o = LocalOrderComparer.getInstance();
        }
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return getBaseExpression().getSpecialProperties() | 131072;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        DocumentSorter documentSorter = new DocumentSorter(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, documentSorter);
        return documentSorter;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return getBaseExpression().effectiveBooleanValue(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("docOrder", this);
        expressionPresenter.emitAttribute("intra", this.f100032o instanceof LocalOrderComparer ? "1" : "0");
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Comparator<? super NodeInfo> getComparer() {
        return this.f100032o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "docOrder";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return 30;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "DocumentSorterAdjunct";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return new DocumentOrderIterator(getBaseExpression().iterate(xPathContext), this.f100032o);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        Expression baseExpression = getBaseExpression();
        boolean isStaticPropertiesKnown = baseExpression.isStaticPropertiesKnown();
        while (!baseExpression.hasSpecialProperty(131072) && Cardinality.allowsMany(baseExpression.getCardinality())) {
            boolean z = baseExpression instanceof SlashExpression;
            if (z) {
                SlashExpression slashExpression = (SlashExpression) baseExpression;
                Expression lhsExpression = slashExpression.getLhsExpression();
                Expression rhsExpression = slashExpression.getRhsExpression();
                if ((lhsExpression instanceof ConditionalSorter) && slashExpression.getRhsExpression().hasSpecialProperty(524288)) {
                    ConditionalSorter conditionalSorter = (ConditionalSorter) lhsExpression;
                    return new ConditionalSorter(conditionalSorter.getCondition(), new DocumentSorter(new SlashExpression(conditionalSorter.getDocumentSorter().getBaseExpression(), rhsExpression).optimize(expressionVisitor, contextItemStaticInfo)));
                }
                if ((lhsExpression instanceof DocumentSorter) && (rhsExpression instanceof AxisExpression) && ((AxisExpression) rhsExpression).getAxis() == 3) {
                    SlashExpression slashExpression2 = new SlashExpression(((DocumentSorter) lhsExpression).getBaseExpression(), rhsExpression);
                    ExpressionTool.copyLocationInfo(this, slashExpression2);
                    return new DocumentSorter(slashExpression2).optimize(expressionVisitor, contextItemStaticInfo);
                }
                if (!ExpressionTool.dependsOnFocus(rhsExpression) && !rhsExpression.hasSpecialProperty(33554432) && rhsExpression.hasSpecialProperty(8388608)) {
                    SlashExpression slashExpression3 = new SlashExpression(FirstItemExpression.makeFirstItemExpression(slashExpression.getLhsExpression()), new DocumentSorter(slashExpression.getRhsExpression()));
                    ExpressionTool.copyLocationInfo(this, slashExpression3);
                    return slashExpression3.optimize(expressionVisitor, contextItemStaticInfo);
                }
            }
            if (!isStaticPropertiesKnown) {
                return (!z || expressionVisitor.isOptimizeForStreaming() || (getParentExpression() instanceof ConditionalSorter)) ? this : expressionVisitor.obtainOptimizer().makeConditionalDocumentSorter(this, (SlashExpression) baseExpression);
            }
            baseExpression.resetLocalStaticProperties();
            isStaticPropertiesKnown = false;
        }
        return baseExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        Expression simplify = getBaseExpression().simplify();
        return simplify.hasSpecialProperty(131072) ? simplify : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        return getBaseExpression().toPattern(configuration);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression typeCheck = super.typeCheck(expressionVisitor, contextItemStaticInfo);
        if (typeCheck != this) {
            return typeCheck;
        }
        if (expressionVisitor.getConfiguration().getTypeHierarchy().relationship(getBaseExpression().getItemType(), AnyNodeTest.getInstance()) == Affinity.DISJOINT) {
            return getBaseExpression();
        }
        setBaseExpression(expressionVisitor.getConfiguration().getTypeChecker(false).staticTypeCheck(getBaseExpression(), SequenceType.NODE_SEQUENCE, new RoleDiagnostic(20, "document-order sorter", 0), expressionVisitor));
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        Expression unordered = getBaseExpression().unordered(z, z2);
        if (unordered.hasSpecialProperty(131072) || !z) {
            return unordered;
        }
        if (unordered instanceof SlashExpression) {
            SlashExpression slashExpression = (SlashExpression) unordered;
            Expression selectExpression = slashExpression.getSelectExpression();
            Expression actionExpression = slashExpression.getActionExpression();
            Expression unfilteredExpression = ExpressionTool.unfilteredExpression(selectExpression, false);
            Expression unfilteredExpression2 = ExpressionTool.unfilteredExpression(actionExpression, false);
            if (unfilteredExpression instanceof AxisExpression) {
                AxisExpression axisExpression = (AxisExpression) unfilteredExpression;
                if ((axisExpression.getAxis() == 4 || axisExpression.getAxis() == 5) && (unfilteredExpression2 instanceof AxisExpression) && ((AxisExpression) unfilteredExpression2).getAxis() == 3) {
                    return unordered.unordered(z, false);
                }
            }
        }
        setBaseExpression(unordered);
        return this;
    }

    public DocumentSorter(Expression expression, boolean z) {
        super(expression);
        if (z) {
            this.f100032o = LocalOrderComparer.getInstance();
        } else {
            this.f100032o = GlobalOrderComparer.getInstance();
        }
    }
}
