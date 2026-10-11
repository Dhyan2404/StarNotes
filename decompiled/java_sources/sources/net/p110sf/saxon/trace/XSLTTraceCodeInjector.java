package net.p110sf.saxon.trace;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.instruct.FixedAttribute;

/* loaded from: classes11.dex */
public class XSLTTraceCodeInjector extends TraceCodeInjector {
    @Override // net.p110sf.saxon.trace.TraceCodeInjector
    public boolean isApplicable(Expression expression) {
        return expression.isInstruction() || (expression instanceof LetExpression) || (expression instanceof FixedAttribute);
    }
}
