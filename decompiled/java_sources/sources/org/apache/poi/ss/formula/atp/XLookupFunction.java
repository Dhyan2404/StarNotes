package org.apache.poi.ss.formula.atp;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.ArrayFunction;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.functions.LookupUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class XLookupFunction implements FreeRefFunction, ArrayFunction {
    public static final FreeRefFunction instance = new XLookupFunction(ArgumentsEvaluator.instance);
    private final ArgumentsEvaluator evaluator;

    private XLookupFunction(ArgumentsEvaluator argumentsEvaluator) {
        this.evaluator = argumentsEvaluator;
    }

    private ValueEval _evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 3) {
            return ErrorEval.VALUE_INVALID;
        }
        ValueEval valueEval = BlankEval.instance;
        if (valueEvalArr.length > 3) {
            try {
                ValueEval singleValue = OperandResolver.getSingleValue(valueEvalArr[3], i, i2);
                if (singleValue != null) {
                    valueEval = singleValue;
                }
            } catch (EvaluationException e) {
                return e.getErrorEval();
            }
        }
        ValueEval valueEval2 = valueEval;
        LookupUtils.MatchMode matchMode = LookupUtils.MatchMode.ExactMatch;
        if (valueEvalArr.length > 4) {
            try {
                matchMode = LookupUtils.matchMode(OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEvalArr[4], i, i2)));
            } catch (EvaluationException e2) {
                return e2.getErrorEval();
            } catch (Exception unused) {
                return ErrorEval.VALUE_INVALID;
            }
        }
        LookupUtils.MatchMode matchMode2 = matchMode;
        LookupUtils.SearchMode searchMode = LookupUtils.SearchMode.IterateForward;
        if (valueEvalArr.length > 5) {
            try {
                searchMode = LookupUtils.searchMode(OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEvalArr[5], i, i2)));
            } catch (EvaluationException e3) {
                return e3.getErrorEval();
            } catch (Exception unused2) {
                return ErrorEval.VALUE_INVALID;
            }
        }
        return evaluate(i, i2, valueEvalArr[0], valueEvalArr[1], valueEvalArr[2], valueEval2, matchMode2, searchMode);
    }

    private AreaEval notFoundAreaEval(final ValueEval valueEval, final int i) {
        return new AreaEval() { // from class: org.apache.poi.ss.formula.atp.XLookupFunction.1
            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public boolean contains(int i2, int i3) {
                return containsRow(i2) && containsColumn(i3);
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public boolean containsColumn(int i2) {
                return i2 < i;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public boolean containsRow(int i2) {
                return i2 == 0;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public ValueEval getAbsoluteValue(int i2, int i3) {
                return i3 == 0 ? valueEval : new StringEval("");
            }

            @Override // org.apache.poi.ss.formula.TwoDEval
            public TwoDEval getColumn(int i2) {
                return null;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public int getFirstColumn() {
                return 0;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public int getFirstRow() {
                return 0;
            }

            @Override // org.apache.poi.ss.formula.SheetRange
            public int getFirstSheetIndex() {
                return 0;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval, org.apache.poi.ss.formula.TwoDEval
            public int getHeight() {
                return 1;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public int getLastColumn() {
                return i - 1;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public int getLastRow() {
                return 0;
            }

            @Override // org.apache.poi.ss.formula.SheetRange
            public int getLastSheetIndex() {
                return 0;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public ValueEval getRelativeValue(int i2, int i3) {
                return getAbsoluteValue(i2, i3);
            }

            @Override // org.apache.poi.ss.formula.TwoDEval
            public TwoDEval getRow(int i2) {
                return null;
            }

            @Override // org.apache.poi.ss.formula.ThreeDEval
            public ValueEval getValue(int i2, int i3, int i4) {
                return getAbsoluteValue(i3, i4);
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval, org.apache.poi.ss.formula.TwoDEval
            public int getWidth() {
                return i;
            }

            @Override // org.apache.poi.ss.formula.TwoDEval
            public boolean isColumn() {
                return false;
            }

            @Override // org.apache.poi.ss.formula.TwoDEval
            public boolean isRowHidden(int i2) {
                return false;
            }

            @Override // org.apache.poi.ss.formula.TwoDEval
            public boolean isSubTotal(int i2, int i3) {
                return false;
            }

            @Override // org.apache.poi.ss.formula.eval.AreaEval
            public AreaEval offset(int i2, int i3, int i4, int i5) {
                return null;
            }

            @Override // org.apache.poi.ss.formula.TwoDEval
            public ValueEval getValue(int i2, int i3) {
                return getAbsoluteValue(i2, i3);
            }
        };
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        return _evaluate(valueEvalArr, operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
    }

    @Override // org.apache.poi.ss.formula.functions.ArrayFunction
    public ValueEval evaluateArray(ValueEval[] valueEvalArr, int i, int i2) {
        return _evaluate(valueEvalArr, i, i2);
    }

    private ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2, ValueEval valueEval3, ValueEval valueEval4, LookupUtils.MatchMode matchMode, LookupUtils.SearchMode searchMode) {
        LookupUtils.ValueVector createRowVector;
        int width;
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            TwoDEval resolveTableArrayArg = LookupUtils.resolveTableArrayArg(valueEval2);
            if (resolveTableArrayArg.isColumn()) {
                createRowVector = LookupUtils.createColumnVector(resolveTableArrayArg, 0);
            } else {
                createRowVector = LookupUtils.createRowVector(resolveTableArrayArg, 0);
            }
            try {
                int xlookupIndexOfValue = LookupUtils.xlookupIndexOfValue(singleValue, createRowVector, matchMode, searchMode);
                if (!(valueEval3 instanceof AreaEval)) {
                    return valueEval3;
                }
                AreaEval areaEval = (AreaEval) valueEval3;
                if (resolveTableArrayArg.isColumn()) {
                    return areaEval.offset(xlookupIndexOfValue, xlookupIndexOfValue, 0, areaEval.getWidth() - 1);
                }
                return areaEval.offset(0, areaEval.getHeight() - 1, xlookupIndexOfValue, xlookupIndexOfValue);
            } catch (EvaluationException e) {
                if (ErrorEval.f111531NA.equals(e.getErrorEval())) {
                    if (valueEval4 != BlankEval.instance) {
                        return (!(valueEval3 instanceof AreaEval) || (width = ((AreaEval) valueEval3).getWidth()) <= 1) ? valueEval4 : this.notFoundAreaEval(valueEval4, width);
                    }
                    return ErrorEval.f111531NA;
                }
                return e.getErrorEval();
            }
        } catch (EvaluationException e2) {
            return e2.getErrorEval();
        }
    }
}
