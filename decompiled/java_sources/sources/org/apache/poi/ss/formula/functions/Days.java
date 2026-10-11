package org.apache.poi.ss.formula.functions;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.util.DateParser;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class Days implements FreeRefFunction {
    public static final Days instance = new Days();

    private Days() {
    }

    public static LocalDate getDate(ValueEval valueEval, int i, int i2) throws EvaluationException {
        ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
        try {
            return getDate(NumericFunction.singleOperandEvaluate(singleValue, i, i2));
        } catch (Exception unused) {
            return DateParser.parseLocalDate(OperandResolver.coerceValueToString(singleValue));
        }
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length != 2) {
            return ErrorEval.VALUE_INVALID;
        }
        return evaluate(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex(), valueEvalArr[0], valueEvalArr[1]);
    }

    private ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            return new NumberEval(evaluate(getDate(valueEval, i, i2), getDate(valueEval2, i, i2)));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    private static LocalDate getDate(double d) {
        return DateUtil.getJavaDate(d, false).toInstant().atZone(LocaleUtil.getUserTimeZone().toZoneId()).toLocalDate();
    }

    private static double evaluate(LocalDate localDate, LocalDate localDate2) {
        return ChronoUnit.DAYS.between(localDate2, localDate);
    }
}
