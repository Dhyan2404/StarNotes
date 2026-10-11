package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.AreaEvalBase;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class Single implements FreeRefFunction {
    public static final FreeRefFunction instance = new Single();

    private Single() {
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        int columnIndex = operationEvaluationContext.getColumnIndex();
        int rowIndex = operationEvaluationContext.getRowIndex();
        ValueEval valueEval = null;
        for (ValueEval valueEval2 : valueEvalArr) {
            if (valueEval2 instanceof AreaEvalBase) {
                AreaEvalBase areaEvalBase = (AreaEvalBase) valueEval2;
                if (areaEvalBase.contains(rowIndex, columnIndex)) {
                    if (valueEval != null) {
                        return ErrorEval.VALUE_INVALID;
                    }
                    valueEval = areaEvalBase.getAbsoluteValue(rowIndex, columnIndex);
                } else if (areaEvalBase.containsRow(rowIndex)) {
                    if (valueEval != null) {
                        return ErrorEval.VALUE_INVALID;
                    }
                    valueEval = areaEvalBase.getAbsoluteValue(rowIndex, areaEvalBase.getFirstColumn());
                } else if (!areaEvalBase.containsColumn(columnIndex)) {
                    continue;
                } else {
                    if (valueEval != null) {
                        return ErrorEval.VALUE_INVALID;
                    }
                    valueEval = areaEvalBase.getAbsoluteValue(areaEvalBase.getFirstRow(), columnIndex);
                }
            }
        }
        return valueEval != null ? valueEval : ErrorEval.VALUE_INVALID;
    }
}
