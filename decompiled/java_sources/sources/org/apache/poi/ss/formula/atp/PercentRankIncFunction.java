package org.apache.poi.ss.formula.atp;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.functions.PercentRank;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class PercentRankIncFunction implements FreeRefFunction {
    public static final FreeRefFunction instance = new PercentRankIncFunction(ArgumentsEvaluator.instance);
    private ArgumentsEvaluator evaluator;

    private PercentRankIncFunction(ArgumentsEvaluator argumentsEvaluator) {
        this.evaluator = argumentsEvaluator;
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        return PercentRank.instance.evaluate(valueEvalArr, operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
    }
}
