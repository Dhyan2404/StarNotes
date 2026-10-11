package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public abstract class UnaryExpression extends Expression {

    /* renamed from: n */
    public final Operand f99392n;

    public UnaryExpression(Expression expression) {
        this.f99392n = new Operand(this, expression, getOperandRole());
        ExpressionTool.copyLocationInfo(expression, this);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getBaseExpression().hashCode() ^ ("UnaryExpression " + getClass()).hashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return getBaseExpression().getSpecialProperties();
    }

    public String displayOperator(Configuration configuration) {
        return null;
    }

    public void emitExtraAttributes(ExpressionPresenter expressionPresenter) {
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return obj != null && getClass().equals(obj.getClass()) && getBaseExpression().isEqual(((UnaryExpression) obj).getBaseExpression());
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        String expressionName = getExpressionName();
        if (expressionName == null) {
            expressionPresenter.startElement("unaryOperator", this);
            String displayOperator = displayOperator(expressionPresenter.getConfiguration());
            if (displayOperator != null) {
                expressionPresenter.emitAttribute("op", displayOperator);
            }
        } else {
            expressionPresenter.startElement(expressionName, this);
        }
        emitExtraAttributes(expressionPresenter);
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Expression getBaseExpression() {
        return this.f99392n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType();
    }

    public Operand getOperand() {
        return this.f99392n;
    }

    public abstract OperandRole getOperandRole();

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f99392n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99392n.optimize(expressionVisitor, contextItemStaticInfo);
        try {
            return getBaseExpression() instanceof Literal ? Literal.makeLiteral(SequenceTool.toGroundedValue(iterate(expressionVisitor.getStaticContext().makeEarlyEvaluationContext())), this) : this;
        } catch (UncheckedXPathException | XPathException unused) {
            return this;
        }
    }

    public void setBaseExpression(Expression expression) {
        this.f99392n.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getExpressionName() + MotionUtils.f31761c + getBaseExpression().toShortString() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return getExpressionName() + MotionUtils.f31761c + getBaseExpression() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99392n.typeCheck(expressionVisitor, contextItemStaticInfo);
        try {
            if (getBaseExpression() instanceof Literal) {
                Literal makeLiteral = Literal.makeLiteral(SequenceTool.toGroundedValue(iterate(expressionVisitor.getStaticContext().makeEarlyEvaluationContext())), this);
                ExpressionTool.copyLocationInfo(this, makeLiteral);
                return makeLiteral;
            }
        } catch (Exception unused) {
        }
        return this;
    }
}
