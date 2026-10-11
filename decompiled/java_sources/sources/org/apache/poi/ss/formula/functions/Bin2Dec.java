package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.util.StringUtil;

/* loaded from: classes13.dex */
public class Bin2Dec extends Fixed1ArgFunction implements FreeRefFunction {
    public static final FreeRefFunction instance = new Bin2Dec();

    private int getDecimalValue(String str) {
        int length = str.length();
        int i = length - 1;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 += (int) (Integer.parseInt(str.substring(i3, r3)) * Math.pow(2.0d, i));
            i--;
        }
        return i2;
    }

    private static String toggleBits(String str) {
        StringBuilder sb = new StringBuilder(Long.toBinaryString(Long.parseLong(str, 2) ^ ((1 << str.length()) - 1)));
        int length = str.length() - sb.length();
        if (length > 0) {
            sb.insert(0, StringUtil.repeat('0', length));
        }
        return sb.toString();
    }

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    /* renamed from: evaluate */
    public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
        String coerceValueToString;
        String substring;
        boolean startsWith;
        String str;
        if (valueEval instanceof RefEval) {
            RefEval refEval = (RefEval) valueEval;
            coerceValueToString = OperandResolver.coerceValueToString(refEval.getInnerValueEval(refEval.getFirstSheetIndex()));
        } else {
            coerceValueToString = OperandResolver.coerceValueToString(valueEval);
        }
        if (coerceValueToString.length() > 10) {
            return ErrorEval.NUM_ERROR;
        }
        if (coerceValueToString.length() < 10) {
            substring = coerceValueToString;
            startsWith = true;
        } else {
            substring = coerceValueToString.substring(1);
            startsWith = coerceValueToString.startsWith("0");
        }
        try {
            if (startsWith) {
                str = String.valueOf(getDecimalValue(substring));
            } else {
                str = "-" + (getDecimalValue(toggleBits(substring)) + 1);
            }
            return new NumberEval(Long.parseLong(str));
        } catch (NumberFormatException unused) {
            return ErrorEval.NUM_ERROR;
        }
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length != 1) {
            return ErrorEval.VALUE_INVALID;
        }
        return lambda$evaluateArray$0(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex(), valueEvalArr[0]);
    }
}
