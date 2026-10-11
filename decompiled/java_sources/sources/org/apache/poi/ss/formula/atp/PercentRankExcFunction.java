package org.apache.poi.ss.formula.atp;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.functions.PercentRank;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class PercentRankExcFunction implements FreeRefFunction {
    public static final FreeRefFunction instance = new PercentRankExcFunction(ArgumentsEvaluator.instance);
    private ArgumentsEvaluator evaluator;

    private PercentRankExcFunction(ArgumentsEvaluator argumentsEvaluator) {
        this.evaluator = argumentsEvaluator;
    }

    private ValueEval calculateRank(List<Double> list, double d, int i, boolean z) {
        double d2;
        double d3;
        double d4 = Double.MIN_VALUE;
        if (z) {
            double d5 = Double.MAX_VALUE;
            double d6 = Double.MAX_VALUE;
            double d7 = Double.MIN_VALUE;
            for (Double d8 : list) {
                if (d8.doubleValue() <= d && d8.doubleValue() > d7) {
                    d7 = d8.doubleValue();
                }
                if (d8.doubleValue() > d && d8.doubleValue() < d6) {
                    d6 = d8.doubleValue();
                }
                if (d8.doubleValue() < d5) {
                    d5 = d8.doubleValue();
                }
                if (d8.doubleValue() > d4) {
                    d4 = d8.doubleValue();
                }
            }
            if (d < d5 || d > d4) {
                return ErrorEval.f111531NA;
            }
            d3 = d6;
            d2 = d7;
        } else {
            d2 = Double.MIN_VALUE;
            d3 = Double.MAX_VALUE;
        }
        if (!z || d2 == d || d3 == d) {
            Iterator<Double> it2 = list.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                if (it2.next().doubleValue() < d) {
                    i2++;
                }
            }
            return new NumberEval(PercentRank.round(BigDecimal.valueOf((i2 + 1) / (list.size() + 1)), i));
        }
        int i3 = i < 5 ? 8 : i + 3;
        ValueEval calculateRank = calculateRank(list, d2, i3, false);
        if (!(calculateRank instanceof NumberEval)) {
            return calculateRank;
        }
        ValueEval calculateRank2 = calculateRank(list, d3, i3, false);
        if (calculateRank2 instanceof NumberEval) {
            return PercentRank.interpolate(d, d2, d3, (NumberEval) calculateRank, (NumberEval) calculateRank2, i);
        }
        return calculateRank2;
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        return evaluate(valueEvalArr, operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
    }

    private ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        int coerceValueToInt;
        if (valueEvalArr.length < 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[1], i, i2));
            ArrayList arrayList = new ArrayList();
            try {
                for (ValueEval valueEval : PercentRank.getValues(valueEvalArr[0], i, i2)) {
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
