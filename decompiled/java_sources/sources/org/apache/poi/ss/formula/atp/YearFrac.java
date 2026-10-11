package org.apache.poi.ss.formula.atp;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.usermodel.DateUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class YearFrac implements FreeRefFunction {
    public static final FreeRefFunction instance = new YearFrac();

    private YearFrac() {
    }

    private static double evaluateDateArg(ValueEval valueEval, int i, int i2) throws EvaluationException {
        ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, (short) i2);
        if (!(singleValue instanceof StringEval)) {
            return OperandResolver.coerceValueToDouble(singleValue);
        }
        String stringValue = ((StringEval) singleValue).getStringValue();
        Double parseDouble = OperandResolver.parseDouble(stringValue);
        return parseDouble != null ? parseDouble.doubleValue() : DateUtil.getExcelDate(org.apache.poi.ss.util.DateParser.parseLocalDate(stringValue), false);
    }

    private static int evaluateIntArg(ValueEval valueEval, int i, int i2) throws EvaluationException {
        return OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEval, i, (short) i2));
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        int i;
        int rowIndex = operationEvaluationContext.getRowIndex();
        int columnIndex = operationEvaluationContext.getColumnIndex();
        try {
            int length = valueEvalArr.length;
            if (length == 2) {
                i = 0;
            } else {
                if (length != 3) {
                    return ErrorEval.VALUE_INVALID;
                }
                i = evaluateIntArg(valueEvalArr[2], rowIndex, columnIndex);
            }
            return new NumberEval(YearFracCalculator.calculate(evaluateDateArg(valueEvalArr[0], rowIndex, columnIndex), evaluateDateArg(valueEvalArr[1], rowIndex, columnIndex), i));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
