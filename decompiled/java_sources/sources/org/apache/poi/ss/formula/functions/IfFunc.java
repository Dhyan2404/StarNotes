package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.CacheAreaEval;
import org.apache.poi.ss.formula.FormulaParseException;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class IfFunc extends Var2or3ArgFunction implements ArrayFunction {
    public static boolean evaluateFirstArg(ValueEval valueEval, int i, int i2) throws EvaluationException {
        Boolean coerceValueToBoolean = OperandResolver.coerceValueToBoolean(OperandResolver.getSingleValue(valueEval, i, i2), false);
        if (coerceValueToBoolean == null) {
            return false;
        }
        return coerceValueToBoolean.booleanValue();
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            if (evaluateFirstArg(valueEval, i, i2)) {
                return valueEval2 == MissingArgEval.instance ? BlankEval.instance : valueEval2;
            }
            return BoolEval.FALSE;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.ArrayFunction
    public ValueEval evaluateArray(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 2 || valueEvalArr.length > 3) {
            return ErrorEval.VALUE_INVALID;
        }
        return evaluateArrayArgs(valueEvalArr[0], valueEvalArr[1], valueEvalArr.length == 2 ? BoolEval.FALSE : valueEvalArr[2], i, i2);
    }

    public ValueEval evaluateArrayArgs(ValueEval valueEval, ValueEval valueEval2, ValueEval valueEval3, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        ValueEval errorEval;
        ValueEval errorEval2;
        ValueEval errorEval3;
        int i13;
        ValueEval valueEval4 = valueEval;
        if (valueEval4 instanceof AreaEval) {
            AreaEval areaEval = (AreaEval) valueEval4;
            int width = areaEval.getWidth();
            i5 = areaEval.getHeight();
            i6 = areaEval.getFirstColumn();
            i4 = areaEval.getFirstRow();
            i3 = width;
        } else if (valueEval4 instanceof RefEval) {
            RefEval refEval = (RefEval) valueEval4;
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
        if (valueEval3 instanceof AreaEval) {
            AreaEval areaEval3 = (AreaEval) valueEval3;
            i12 = areaEval3.getFirstColumn();
            i11 = areaEval3.getFirstRow();
        } else if (valueEval3 instanceof RefEval) {
            RefEval refEval3 = (RefEval) valueEval3;
            i12 = refEval3.getColumn();
            i11 = refEval3.getRow();
        } else {
            i11 = 0;
            i12 = 0;
        }
        int max = Math.max(i3, i8);
        int max2 = Math.max(i5, i9);
        int i14 = max2 * max;
        ValueEval[] valueEvalArr = new ValueEval[i14];
        int i15 = 0;
        int i16 = 0;
        while (i16 < max2) {
            int i17 = i15;
            int i18 = 0;
            while (i18 < max) {
                int i19 = i4;
                try {
                    errorEval = OperandResolver.getSingleValue(valueEval4, i4 + i16, i6 + i18);
                } catch (FormulaParseException unused) {
                    errorEval = ErrorEval.NAME_INVALID;
                } catch (EvaluationException e) {
                    errorEval = e.getErrorEval();
                }
                ValueEval valueEval5 = errorEval;
                try {
                    errorEval2 = OperandResolver.getSingleValue(valueEval2, i7 + i16, i10 + i18);
                } catch (FormulaParseException unused2) {
                    errorEval2 = ErrorEval.NAME_INVALID;
                } catch (EvaluationException e2) {
                    errorEval2 = e2.getErrorEval();
                }
                ValueEval valueEval6 = errorEval2;
                try {
                    errorEval3 = OperandResolver.getSingleValue(valueEval3, i11 + i16, i12 + i18);
                } catch (FormulaParseException unused3) {
                    errorEval3 = ErrorEval.NAME_INVALID;
                } catch (EvaluationException e3) {
                    errorEval3 = e3.getErrorEval();
                }
                if (valueEval5 instanceof ErrorEval) {
                    valueEvalArr[i17] = valueEval5;
                    i17++;
                } else {
                    try {
                        Boolean coerceValueToBoolean = OperandResolver.coerceValueToBoolean(valueEval5, false);
                        i13 = i17 + 1;
                        if (coerceValueToBoolean != null) {
                            try {
                                if (coerceValueToBoolean.booleanValue()) {
                                    errorEval3 = valueEval6;
                                }
                            } catch (EvaluationException e4) {
                                e = e4;
                                i17 = i13;
                                i13 = i17 + 1;
                                valueEvalArr[i17] = e.getErrorEval();
                                i17 = i13;
                                i18++;
                                valueEval4 = valueEval;
                                i4 = i19;
                            }
                        }
                        valueEvalArr[i17] = errorEval3;
                    } catch (EvaluationException e5) {
                        e = e5;
                    }
                    i17 = i13;
                }
                i18++;
                valueEval4 = valueEval;
                i4 = i19;
            }
            i16++;
            valueEval4 = valueEval;
            i15 = i17;
        }
        return i14 == 1 ? valueEvalArr[0] : new CacheAreaEval(i, i2, (i + max2) - 1, (i2 + max) - 1, valueEvalArr);
    }

    @Override // org.apache.poi.ss.formula.functions.Function3Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2, ValueEval valueEval3) {
        try {
            return evaluateFirstArg(valueEval, i, i2) ? valueEval2 == MissingArgEval.instance ? BlankEval.instance : valueEval2 : valueEval3 == MissingArgEval.instance ? BlankEval.instance : valueEval3;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
