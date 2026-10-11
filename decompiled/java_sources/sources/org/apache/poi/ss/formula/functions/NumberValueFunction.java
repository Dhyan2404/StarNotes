package org.apache.poi.ss.formula.functions;

import java.text.DecimalFormatSymbols;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public final class NumberValueFunction implements FreeRefFunction {
    public static final FreeRefFunction instance = new NumberValueFunction();

    private NumberValueFunction() {
    }

    private static void checkValue(double d) throws EvaluationException {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new EvaluationException(ErrorEval.NUM_ERROR);
        }
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        String str;
        DecimalFormatSymbols decimalFormatSymbols = DecimalFormatSymbols.getInstance(LocaleUtil.getUserLocale());
        String valueOf = String.valueOf(decimalFormatSymbols.getDecimalSeparator());
        String valueOf2 = String.valueOf(decimalFormatSymbols.getGroupingSeparator());
        try {
            if (valueEvalArr.length == 1) {
                str = OperandResolver.coerceValueToString(OperandResolver.getSingleValue(valueEvalArr[0], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex()));
            } else if (valueEvalArr.length == 2) {
                ValueEval singleValue = OperandResolver.getSingleValue(valueEvalArr[0], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
                ValueEval singleValue2 = OperandResolver.getSingleValue(valueEvalArr[1], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
                String coerceValueToString = OperandResolver.coerceValueToString(singleValue);
                valueOf = OperandResolver.coerceValueToString(singleValue2).substring(0, 1);
                str = coerceValueToString;
            } else if (valueEvalArr.length == 3) {
                ValueEval singleValue3 = OperandResolver.getSingleValue(valueEvalArr[0], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
                ValueEval singleValue4 = OperandResolver.getSingleValue(valueEvalArr[1], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
                ValueEval singleValue5 = OperandResolver.getSingleValue(valueEvalArr[2], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
                String coerceValueToString2 = OperandResolver.coerceValueToString(singleValue3);
                valueOf = OperandResolver.coerceValueToString(singleValue4).substring(0, 1);
                String substring = OperandResolver.coerceValueToString(singleValue5).substring(0, 1);
                str = coerceValueToString2;
                valueOf2 = substring;
            } else {
                str = null;
            }
            if ("".equals(str) || str == null) {
                str = "0";
            }
            String replace = str.replace(" ", "");
            String[] split = replace.split(IteratorUtils.f104923a + valueOf + IteratorUtils.f104924b);
            if (split.length > 2) {
                return ErrorEval.VALUE_INVALID;
            }
            if (split.length > 1) {
                String str2 = split[0];
                String str3 = split[1];
                if (str3.contains(valueOf2)) {
                    return ErrorEval.VALUE_INVALID;
                }
                replace = str2.replace(valueOf2, "") + "." + str3;
            } else if (split.length > 0) {
                replace = split[0].replace(valueOf2, "");
            }
            int i = 0;
            while (replace.endsWith("%")) {
                i++;
                replace = replace.substring(0, replace.length() - 1);
            }
            try {
                double parseDouble = Double.parseDouble(replace) / Math.pow(100.0d, i);
                checkValue(parseDouble);
                return new NumberEval(parseDouble);
            } catch (EvaluationException e) {
                return e.getErrorEval();
            } catch (Exception unused) {
                return ErrorEval.VALUE_INVALID;
            }
        } catch (EvaluationException e2) {
            return e2.getErrorEval();
        }
    }
}
