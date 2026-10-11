package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.flwor.FLWORExpression;
import net.p110sf.saxon.trace.TraceableComponent;

/* loaded from: classes11.dex */
public interface CodeInjector {
    default Expression inject(Expression expression) {
        return expression;
    }

    default Clause injectClause(FLWORExpression fLWORExpression, Clause clause) {
        return clause;
    }

    default void process(TraceableComponent traceableComponent) {
    }
}
