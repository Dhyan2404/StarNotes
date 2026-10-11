package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class ConsumingOperand extends UnaryExpression {
    public ConsumingOperand(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ConsumingOperand consumingOperand = new ConsumingOperand(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, consumingOperand);
        return consumingOperand;
    }

    public Sequence evaluate(XPathContext xPathContext) throws XPathException {
        return xPathContext.getStackFrame().holdsDynamicValue() ? xPathContext.getStackFrame().popDynamicValue() : new LazySequence(getBaseExpression().iterate(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        return evaluate(xPathContext).head();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        if ("JS".equals(((ExpressionPresenter.ExportOptions) expressionPresenter.getOptions()).target)) {
            getBaseExpression().export(expressionPresenter);
            return;
        }
        expressionPresenter.startElement("consume", this);
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "consume";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 3;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return getBaseExpression().getIntrinsicDependencies();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return new OperandRole(0, OperandUsage.ABSORPTION);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return evaluate(xPathContext).iterate();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "consume(" + getBaseExpression().toShortString() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return "consume(" + getBaseExpression().toString() + MotionUtils.f31762d;
    }
}
