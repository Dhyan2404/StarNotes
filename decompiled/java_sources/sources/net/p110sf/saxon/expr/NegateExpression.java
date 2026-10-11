package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class NegateExpression extends UnaryExpression {

    /* renamed from: o */
    public boolean f99317o;

    public NegateExpression(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality() & (-32769);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        NegateExpression negateExpression = new NegateExpression(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, negateExpression);
        return negateExpression;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public String displayOperator(Configuration configuration) {
        return "-";
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("minus", this);
        if (this.f99317o) {
            expressionPresenter.emitAttribute("vn", "1");
        }
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "minus";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType().getPrimitiveItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SINGLE_ATOMIC;
    }

    public boolean isBackwardsCompatible() {
        return this.f99317o;
    }

    public void setBackwardsCompatible(boolean z) {
        this.f99317o = z;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        Expression staticTypeCheck = expressionVisitor.getConfiguration().getTypeChecker(this.f99317o).staticTypeCheck(getBaseExpression(), SequenceType.OPTIONAL_NUMERIC, new RoleDiagnostic(9, "-", 0), expressionVisitor);
        setBaseExpression(staticTypeCheck);
        if (!(staticTypeCheck instanceof Literal)) {
            return this;
        }
        GroundedValue groundedValue = ((Literal) staticTypeCheck).getGroundedValue();
        return groundedValue instanceof NumericValue ? Literal.makeLiteral(((NumericValue) groundedValue).negate(), this) : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public NumericValue evaluateItem(XPathContext xPathContext) throws XPathException {
        NumericValue numericValue = (NumericValue) getBaseExpression().evaluateItem(xPathContext);
        if (numericValue == null) {
            if (this.f99317o) {
                return DoubleValue.NaN;
            }
            return null;
        }
        return numericValue.negate();
    }
}
