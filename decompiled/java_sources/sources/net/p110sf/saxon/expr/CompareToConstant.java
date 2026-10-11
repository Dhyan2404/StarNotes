package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public abstract class CompareToConstant extends UnaryExpression implements ComparisonExpression {
    protected int operator;

    public CompareToConstant(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 8388608;
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public boolean convertsUntypedToOther() {
        return true;
    }

    /* renamed from: d */
    public boolean m62559d(int i) {
        switch (this.operator) {
            case 50:
                return i == 0;
            case 51:
                return i != 0;
            case 52:
                return i > 0;
            case 53:
                return i < 0;
            case 54:
                return i >= 0;
            case 55:
                return i <= 0;
            default:
                throw new UnsupportedOperationException("Unknown operator " + this.operator);
        }
    }

    public int getComparisonOperator() {
        return this.operator;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public Operand getLhs() {
        return getOperand();
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public Expression getLhsExpression() {
        return getBaseExpression();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SINGLE_ATOMIC;
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public Operand getRhs() {
        return new Operand(this, getRhsExpression(), OperandRole.SINGLE_ATOMIC);
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public abstract Expression getRhsExpression();

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public int getSingletonOperator() {
        return this.operator;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        return getLhsExpression() instanceof Literal ? Literal.makeLiteral(BooleanValue.get(effectiveBooleanValue(null)), this) : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }
}
