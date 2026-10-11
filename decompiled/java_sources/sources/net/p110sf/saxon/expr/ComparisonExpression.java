package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.sort.AtomicComparer;

/* loaded from: classes11.dex */
public interface ComparisonExpression {
    boolean convertsUntypedToOther();

    AtomicComparer getAtomicComparer();

    Operand getLhs();

    Expression getLhsExpression();

    Operand getRhs();

    Expression getRhsExpression();

    int getSingletonOperator();
}
