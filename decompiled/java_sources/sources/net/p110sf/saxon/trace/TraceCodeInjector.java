package net.p110sf.saxon.trace;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.flwor.FLWORExpression;
import net.p110sf.saxon.expr.flwor.OperandProcessor;
import net.p110sf.saxon.expr.flwor.TraceClause;
import net.p110sf.saxon.expr.instruct.ComponentTracer;
import net.p110sf.saxon.expr.instruct.TraceExpression;
import net.p110sf.saxon.expr.parser.CodeInjector;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.trace.TraceCodeInjector;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class TraceCodeInjector implements CodeInjector {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m64083b(Operand operand) throws XPathException {
        operand.setChildExpression(ExpressionTool.injectCode(operand.getChildExpression(), this));
    }

    @Override // net.p110sf.saxon.expr.parser.CodeInjector
    public Expression inject(Expression expression) {
        if (!(expression instanceof FLWORExpression)) {
            return ((expression instanceof TraceExpression) || !isApplicable(expression)) ? expression : new TraceExpression(expression);
        }
        ((FLWORExpression) expression).injectCode(this);
        return expression;
    }

    @Override // net.p110sf.saxon.expr.parser.CodeInjector
    public Clause injectClause(FLWORExpression fLWORExpression, Clause clause) {
        try {
            clause.processOperands(new OperandProcessor() { // from class: com.sunia.HTREnginev2.tkn
                @Override // net.p110sf.saxon.expr.flwor.OperandProcessor
                public final void processOperand(Operand operand) {
                    TraceCodeInjector.this.m64083b(operand);
                }
            });
            return new TraceClause(fLWORExpression, clause);
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    public boolean isApplicable(Expression expression) {
        return false;
    }

    @Override // net.p110sf.saxon.expr.parser.CodeInjector
    public void process(TraceableComponent traceableComponent) {
        if (traceableComponent.getBody() instanceof ComponentTracer) {
            return;
        }
        traceableComponent.setBody(ExpressionTool.injectCode(traceableComponent.getBody(), this));
        traceableComponent.setBody(new ComponentTracer(traceableComponent));
    }
}
