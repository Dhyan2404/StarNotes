package org.apache.poi.ss.formula.functions;

import java.util.function.BiFunction;
import org.apache.poi.ss.formula.CacheAreaEval;
import org.apache.poi.ss.formula.FormulaParseException;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public interface ArrayFunction {
    static ValueEval _evaluateOneArrayArg(ValueEval valueEval, int i, int i2, java.util.function.Function<ValueEval, ValueEval> function) {
        int i3;
        int i4;
        int i5;
        int i6;
        ValueEval errorEval;
        if (valueEval instanceof AreaEval) {
            AreaEval areaEval = (AreaEval) valueEval;
            int width = areaEval.getWidth();
            i4 = areaEval.getHeight();
            i6 = areaEval.getFirstColumn();
            i5 = areaEval.getFirstRow();
            i3 = width;
        } else if (valueEval instanceof RefEval) {
            RefEval refEval = (RefEval) valueEval;
            i6 = refEval.getColumn();
            i5 = refEval.getRow();
            i3 = 1;
            i4 = 1;
        } else {
            i3 = 1;
            i4 = 1;
            i5 = 0;
            i6 = 0;
        }
        int max = Math.max(i3, 1);
        int max2 = Math.max(i4, 1);
        int i7 = max2 * max;
        ValueEval[] valueEvalArr = new ValueEval[i7];
        int i8 = 0;
        int i9 = 0;
        while (i9 < max2) {
            int i10 = i8;
            int i11 = 0;
            while (i11 < max) {
                try {
                    errorEval = OperandResolver.getSingleValue(valueEval, i5 + i9, i6 + i11);
                } catch (FormulaParseException unused) {
                    errorEval = ErrorEval.NAME_INVALID;
                } catch (RuntimeException e) {
                    if (!e.getMessage().startsWith("Don't know how to evaluate name")) {
                        throw e;
                    }
                    errorEval = ErrorEval.NAME_INVALID;
                } catch (EvaluationException e2) {
                    errorEval = e2.getErrorEval();
                }
                valueEvalArr[i10] = function.apply(errorEval);
                i11++;
                i10++;
            }
            i9++;
            i8 = i10;
        }
        return i7 == 1 ? valueEvalArr[0] : new CacheAreaEval(i, i2, (i + max2) - 1, (i2 + max) - 1, valueEvalArr);
    }

    static ValueEval _evaluateTwoArrayArgs(ValueEval valueEval, ValueEval valueEval2, int i, int i2, BiFunction<ValueEval, ValueEval, ValueEval> biFunction) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        ValueEval errorEval;
        ValueEval errorEval2;
        ValueEval valueEval3 = valueEval;
        if (valueEval3 instanceof AreaEval) {
            AreaEval areaEval = (AreaEval) valueEval3;
            int width = areaEval.getWidth();
            i5 = areaEval.getHeight();
            i6 = areaEval.getFirstColumn();
            i4 = areaEval.getFirstRow();
            i3 = width;
        } else if (valueEval3 instanceof RefEval) {
            RefEval refEval = (RefEval) valueEval3;
            i6 = refEval.getColumn();
            i4 = refEval.getRow();
            i3 = 1;
            i5 = 1;
        } else {
            i3 = 1;
            i4 = 0;
            i5 = 1;
            i6 = 0;
        }
        if (valueEval2 instanceof AreaEval) {
            AreaEval areaEval2 = (AreaEval) valueEval2;
            i8 = areaEval2.getWidth();
            i9 = areaEval2.getHeight();
            i10 = areaEval2.getFirstColumn();
            i7 = areaEval2.getFirstRow();
        } else if (valueEval2 instanceof RefEval) {
            RefEval refEval2 = (RefEval) valueEval2;
            i10 = refEval2.getColumn();
            i7 = refEval2.getRow();
            i8 = 1;
            i9 = 1;
        } else {
            i7 = 0;
            i8 = 1;
            i9 = 1;
            i10 = 0;
        }
        int max = Math.max(i3, i8);
        int max2 = Math.max(i5, i9);
        int i11 = max2 * max;
        ValueEval[] valueEvalArr = new ValueEval[i11];
        int i12 = 0;
        int i13 = 0;
        while (i13 < max2) {
            int i14 = i12;
            int i15 = 0;
            while (i15 < max) {
                try {
                    errorEval = OperandResolver.getSingleValue(valueEval3, i4 + i13, i6 + i15);
                } catch (FormulaParseException unused) {
                    errorEval = ErrorEval.NAME_INVALID;
                } catch (RuntimeException e) {
                    if (!e.getMessage().startsWith("Don't know how to evaluate name")) {
                        throw e;
                    }
                    errorEval = ErrorEval.NAME_INVALID;
                } catch (EvaluationException e2) {
                    errorEval = e2.getErrorEval();
                }
                ValueEval valueEval4 = errorEval;
                try {
                    errorEval2 = OperandResolver.getSingleValue(valueEval2, i7 + i13, i10 + i15);
                } catch (FormulaParseException unused2) {
                    errorEval2 = ErrorEval.NAME_INVALID;
                } catch (RuntimeException e3) {
                    if (!e3.getMessage().startsWith("Don't know how to evaluate name")) {
                        throw e3;
                    }
                    errorEval2 = ErrorEval.NAME_INVALID;
                } catch (EvaluationException e4) {
                    errorEval2 = e4.getErrorEval();
                }
                if (valueEval4 instanceof ErrorEval) {
                    valueEvalArr[i14] = valueEval4;
                    i14++;
                } else if (errorEval2 instanceof ErrorEval) {
                    valueEvalArr[i14] = errorEval2;
                    i14++;
                } else {
                    valueEvalArr[i14] = biFunction.apply(valueEval4, errorEval2);
                    i14++;
                }
                i15++;
                valueEval3 = valueEval;
            }
            i13++;
            valueEval3 = valueEval;
            i12 = i14;
        }
        return i11 == 1 ? valueEvalArr[0] : new CacheAreaEval(i, i2, (i + max2) - 1, (i2 + max) - 1, valueEvalArr);
    }

    ValueEval evaluateArray(ValueEval[] valueEvalArr, int i, int i2);

    default ValueEval evaluateOneArrayArg(ValueEval valueEval, int i, int i2, java.util.function.Function<ValueEval, ValueEval> function) {
        return _evaluateOneArrayArg(valueEval, i, i2, function);
    }

    default ValueEval evaluateTwoArrayArgs(ValueEval valueEval, ValueEval valueEval2, int i, int i2, BiFunction<ValueEval, ValueEval, ValueEval> biFunction) {
        return _evaluateTwoArrayArgs(valueEval, valueEval2, i, i2, biFunction);
    }
}
