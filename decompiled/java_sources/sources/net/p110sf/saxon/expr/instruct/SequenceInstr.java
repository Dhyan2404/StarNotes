package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.UnaryExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SequenceInstr extends UnaryExpression {
    public SequenceInstr(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        return new SequenceInstr(getBaseExpression().copy(rebindingMap));
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        getBaseExpression().export(expressionPresenter);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "sequence";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return getBaseExpression().getImplementationMethod();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return new OperandRole(0, OperandUsage.TRANSMISSION);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "SequenceInstr";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return getBaseExpression().iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        getBaseExpression().process(outputter, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
