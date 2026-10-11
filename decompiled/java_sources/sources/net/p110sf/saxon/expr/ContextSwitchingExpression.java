package net.p110sf.saxon.expr;

/* loaded from: classes11.dex */
public interface ContextSwitchingExpression extends ContextOriginator {
    Expression getActionExpression();

    Expression getSelectExpression();
}
