package org.apache.poi.ss.formula.functions;

import java.time.LocalDate;
import java.util.Calendar;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class Days360 extends Var2or3ArgFunction {
    private static Calendar getDate(double d) {
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
        localeCalendar.setTime(DateUtil.getJavaDate(d, false));
        return localeCalendar;
    }

    private static int[] getEndingDate(Calendar calendar, int[] iArr, boolean z) {
        int i = 1;
        int i2 = calendar.get(1);
        int i3 = calendar.get(2);
        int min = Math.min(30, calendar.get(5));
        if (z || calendar.get(5) != 31) {
            i = min;
        } else if (iArr[2] < 30) {
            calendar.set(5, 1);
            calendar.add(2, 1);
            i2 = calendar.get(1);
            i3 = calendar.get(2);
        } else {
            i = 30;
        }
        return new int[]{i2, i3, i};
    }

    private static int[] getStartingDate(Calendar calendar, boolean z) {
        return new int[]{calendar.get(1), calendar.get(2), (z || !isLastDayOfMonth(calendar)) ? Math.min(30, calendar.get(5)) : 30};
    }

    private static boolean isLastDayOfMonth(Calendar calendar) {
        return calendar.get(5) == calendar.getActualMaximum(5);
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            return new NumberEval(evaluate(DateUtil.getExcelDate(Days.getDate(valueEval, i, i2)), DateUtil.getExcelDate(Days.getDate(valueEval2, i, i2)), false));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.Function3Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2, ValueEval valueEval3) {
        try {
            LocalDate date = Days.getDate(valueEval, i, i2);
            LocalDate date2 = Days.getDate(valueEval2, i, i2);
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval3, i, i2);
            boolean z = false;
            Boolean coerceValueToBoolean = OperandResolver.coerceValueToBoolean(singleValue, false);
            double excelDate = DateUtil.getExcelDate(date);
            double excelDate2 = DateUtil.getExcelDate(date2);
            if (coerceValueToBoolean != null && coerceValueToBoolean.booleanValue()) {
                z = true;
            }
            return new NumberEval(evaluate(excelDate, excelDate2, z));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    private static double evaluate(double d, double d2, boolean z) {
        Calendar date = getDate(d);
        int[] endingDate = getEndingDate(getDate(d2), getStartingDate(date, z), z);
        return (((endingDate[0] * 360.0d) + (endingDate[1] * 30.0d)) + endingDate[2]) - (((r9[0] * 360.0d) + (r9[1] * 30.0d)) + r9[2]);
    }
}
