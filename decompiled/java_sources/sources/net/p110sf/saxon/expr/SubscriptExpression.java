package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MemoSequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.value.NumericValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class SubscriptExpression extends SingleItemFilter {

    /* renamed from: o */
    public final Operand f99375o;

    public SubscriptExpression(Expression expression, Expression expression2) {
        super(expression);
        this.f99375o = new Operand(this, expression2, OperandRole.SINGLE_ATOMIC);
    }

    @Override // net.p110sf.saxon.expr.SingleItemFilter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 24576;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getSubscript().hashCode() ^ getBaseExpression().hashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        SubscriptExpression subscriptExpression = new SubscriptExpression(getBaseExpression().copy(rebindingMap), getSubscript().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, subscriptExpression);
        return subscriptExpression;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof SubscriptExpression) {
            SubscriptExpression subscriptExpression = (SubscriptExpression) obj;
            if (getBaseExpression().isEqual(subscriptExpression.getBaseExpression()) && getSubscript().isEqual(subscriptExpression.getSubscript())) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        int asSubscript;
        NumericValue numericValue = (NumericValue) getSubscript().evaluateItem(xPathContext);
        if (numericValue == null || (asSubscript = numericValue.asSubscript()) == -1) {
            return null;
        }
        SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
        if (asSubscript == 1) {
            return iterate.next();
        }
        if (iterate instanceof MemoSequence.ProgressiveIterator) {
            return ((MemoSequence.ProgressiveIterator) iterate).getMemoSequence().itemAt(asSubscript - 1);
        }
        if ((iterate instanceof GroundedIterator) && ((GroundedIterator) iterate).isActuallyGrounded()) {
            return SequenceTool.toGroundedValue(iterate).itemAt(asSubscript - 1);
        }
        SequenceIterator make = TailIterator.make(iterate, asSubscript);
        Item next = make.next();
        make.close();
        return next;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("subscript", this);
        getBaseExpression().export(expressionPresenter);
        getSubscript().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "subscript";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "SubscriptExpression";
    }

    public Expression getSubscript() {
        return this.f99375o.getChildExpression();
    }

    public Expression getSubscriptExpression() {
        return getSubscript();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(getOperand(), this.f99375o);
    }

    @Override // net.p110sf.saxon.expr.SingleItemFilter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        return Literal.isConstantOne(getSubscript()) ? FirstItemExpression.makeFirstItemExpression(getBaseExpression()) : this;
    }

    public void setSubscript(Expression expression) {
        this.f99375o.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return ExpressionTool.parenthesize(getBaseExpression()) + IteratorUtils.f104923a + getSubscript().toShortString() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getBaseExpression()) + IteratorUtils.f104923a + getSubscript() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
