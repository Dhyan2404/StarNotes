package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.gon;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class TailExpression extends UnaryExpression {

    /* renamed from: o */
    public int f99384o;

    public TailExpression(Expression expression, int i) {
        super(expression);
        this.f99384o = i;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality() | 8192;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99384o ^ super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        TailExpression tailExpression = new TailExpression(getBaseExpression().copy(rebindingMap), this.f99384o);
        ExpressionTool.copyLocationInfo(this, tailExpression);
        return tailExpression;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof TailExpression) {
            TailExpression tailExpression = (TailExpression) obj;
            if (getBaseExpression().isEqual(tailExpression.getBaseExpression()) && this.f99384o == tailExpression.f99384o) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("tail", this);
        expressionPresenter.emitAttribute(gon.f71290o0, this.f99384o + "");
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "tail";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    public int getStart() {
        return this.f99384o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "TailExpression";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return TailIterator.make(getBaseExpression().iterate(xPathContext), this.f99384o);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        return getBaseExpression() instanceof Literal ? Literal.makeLiteral(SequenceTool.toGroundedValue(iterate(expressionVisitor.getStaticContext().makeEarlyEvaluationContext())), this) : this;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        if (this.f99384o == 2) {
            return "tail(" + getBaseExpression().toShortString() + MotionUtils.f31762d;
        }
        return getBaseExpression().toShortString() + "[position() ge " + this.f99384o + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        if (this.f99384o == 2) {
            return "tail(" + getBaseExpression() + MotionUtils.f31762d;
        }
        return ExpressionTool.parenthesize(getBaseExpression()) + "[position() ge " + this.f99384o + IteratorUtils.f104924b;
    }
}
