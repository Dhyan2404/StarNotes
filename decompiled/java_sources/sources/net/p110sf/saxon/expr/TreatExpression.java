package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class TreatExpression {
    public static Expression make(Expression expression, SequenceType sequenceType) {
        return make(expression, sequenceType, "XPDY0050");
    }

    public static Expression make(Expression expression, SequenceType sequenceType, String str) {
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(2, "treat as", 0);
        roleDiagnostic.setErrorCode(str);
        return new ItemChecker(CardinalityChecker.makeCardinalityChecker(expression, sequenceType.getCardinality(), roleDiagnostic), sequenceType.getPrimaryType(), roleDiagnostic);
    }
}
