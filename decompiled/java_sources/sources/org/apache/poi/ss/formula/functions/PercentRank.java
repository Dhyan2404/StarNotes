package org.apache.poi.ss.formula.functions;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.util.Internal;

/* loaded from: classes13.dex */
public final class PercentRank implements Function {
    public static final Function instance = new PercentRank();

    private PercentRank() {
    }

    private ValueEval calculateRank(List<Double> list, double d, int i, boolean z) {
        double d2 = Double.MIN_VALUE;
        double d3 = Double.MAX_VALUE;
        if (z) {
            for (Double d4 : list) {
                if (d4.doubleValue() <= d && d4.doubleValue() > d2) {
                    d2 = d4.doubleValue();
                }
                if (d4.doubleValue() > d && d4.doubleValue() < d3) {
                    d3 = d4.doubleValue();
                }
            }
        }
        double d5 = d3;
        double d6 = d2;
        if (z && d6 != d && d5 != d) {
            int i2 = i < 5 ? 8 : i + 3;
            ValueEval calculateRank = calculateRank(list, d6, i2, false);
            if (!(calculateRank instanceof NumberEval)) {
                return calculateRank;
            }
            ValueEval calculateRank2 = calculateRank(list, d5, i2, false);
            return !(calculateRank2 instanceof NumberEval) ? calculateRank2 : interpolate(d, d6, d5, (NumberEval) calculateRank, (NumberEval) calculateRank2, i);
        }
        int i3 = 0;
        int i4 = 0;
        for (Double d7 : list) {
            if (d7.doubleValue() < d) {
                i4++;
            } else if (d7.doubleValue() > d) {
                i3++;
            }
        }
        if (i3 == list.size() || i4 == list.size()) {
            return ErrorEval.f111531NA;
        }
        int i5 = i3 + i4;
        return i5 == 0 ? new NumberEval(0.0d) : new NumberEval(round(BigDecimal.valueOf(i4 / i5), i));
    }

    @Internal
    public static List<ValueEval> getValues(ValueEval valueEval, int i, int i2) throws EvaluationException {
        if (!(valueEval instanceof AreaEval)) {
            return Collections.singletonList(OperandResolver.getSingleValue(valueEval, i, i2));
        }
        AreaEval areaEval = (AreaEval) valueEval;
        ArrayList arrayList = new ArrayList();
        for (int firstRow = areaEval.getFirstRow(); firstRow <= areaEval.getLastRow(); firstRow++) {
            for (int firstColumn = areaEval.getFirstColumn(); firstColumn <= areaEval.getLastColumn(); firstColumn++) {
                arrayList.add(OperandResolver.getSingleValue(areaEval.getAbsoluteValue(firstRow, firstColumn), firstRow, firstColumn));
            }
        }
        return arrayList;
    }

    @Internal
    public static NumberEval interpolate(double d, double d2, double d3, NumberEval numberEval, NumberEval numberEval2, int i) {
        double d4 = d3 - d2;
        double d5 = d - d2;
        return new NumberEval(round(BigDecimal.valueOf(numberEval.getNumberValue()).add(new BigDecimal(NumberToTextConverter.toText(numberEval2.getNumberValue() - numberEval.getNumberValue())).multiply(BigDecimal.valueOf(d5 / d4))), i));
    }

    @Internal
    public static double round(BigDecimal bigDecimal, int i) {
        return bigDecimal.setScale(i + 3, RoundingMode.HALF_UP).setScale(i, RoundingMode.DOWN).doubleValue();
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        int coerceValueToInt;
        if (valueEvalArr.length < 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[1], i, i2));
            ArrayList arrayList = new ArrayList();
            try {
                for (ValueEval valueEval : getValues(valueEvalArr[0], i, i2)) {
                    if (!(valueEval instanceof BlankEval) && !(valueEval instanceof MissingArgEval)) {
                        arrayList.add(Double.valueOf(OperandResolver.coerceValueToDouble(valueEval)));
                    }
                }
                if (arrayList.isEmpty()) {
                    return ErrorEval.NUM_ERROR;
                }
                if (valueEvalArr.length > 2) {
                    try {
                        coerceValueToInt = OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEvalArr[2], i, i2));
                        if (coerceValueToInt < 1) {
                            return ErrorEval.NUM_ERROR;
                        }
                    } catch (EvaluationException e) {
                        return e.getErrorEval();
                    }
                } else {
                    coerceValueToInt = 3;
                }
                return calculateRank(arrayList, coerceValueToDouble, coerceValueToInt, true);
            } catch (EvaluationException e2) {
                ErrorEval errorEval = e2.getErrorEval();
                return errorEval != ErrorEval.f111531NA ? errorEval : ErrorEval.NUM_ERROR;
            }
        } catch (EvaluationException e3) {
            ErrorEval errorEval2 = e3.getErrorEval();
            ErrorEval errorEval3 = ErrorEval.NUM_ERROR;
            return errorEval2 == errorEval3 ? errorEval2 : errorEval3;
        }
    }
}
