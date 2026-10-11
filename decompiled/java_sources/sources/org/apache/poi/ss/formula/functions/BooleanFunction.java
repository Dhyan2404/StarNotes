package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.BooleanFunction;

/* loaded from: classes13.dex */
public abstract class BooleanFunction implements Function, ArrayFunction {
    public static final Function AND = new BooleanFunction() { // from class: org.apache.poi.ss.formula.functions.BooleanFunction.1
        @Override // org.apache.poi.ss.formula.functions.BooleanFunction
        public boolean getInitialResultValue() {
            return true;
        }

        @Override // org.apache.poi.ss.formula.functions.BooleanFunction
        public boolean partialEvaluate(boolean z, boolean z2) {
            return z && z2;
        }
    };

    /* renamed from: OR */
    public static final Function f111533OR = new BooleanFunction() { // from class: org.apache.poi.ss.formula.functions.BooleanFunction.2
        @Override // org.apache.poi.ss.formula.functions.BooleanFunction
        public boolean getInitialResultValue() {
            return false;
        }

        @Override // org.apache.poi.ss.formula.functions.BooleanFunction
        public boolean partialEvaluate(boolean z, boolean z2) {
            return z || z2;
        }
    };
    public static final Function FALSE = new Function() { // from class: com.sunia.HTREnginev2.qt
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            ValueEval evaluateFalse;
            evaluateFalse = BooleanFunction.evaluateFalse(valueEvalArr, i, i2);
            return evaluateFalse;
        }
    };
    public static final Function TRUE = new Function() { // from class: com.sunia.HTREnginev2.rt
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            ValueEval evaluateTrue;
            evaluateTrue = BooleanFunction.evaluateTrue(valueEvalArr, i, i2);
            return evaluateTrue;
        }
    };
    public static final Function NOT = new Function() { // from class: com.sunia.HTREnginev2.st
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            ValueEval evaluateNot;
            evaluateNot = BooleanFunction.evaluateNot(valueEvalArr, i, i2);
            return evaluateNot;
        }
    };

    private boolean calculate(ValueEval[] valueEvalArr) throws EvaluationException {
        boolean initialResultValue = getInitialResultValue();
        int length = valueEvalArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            ValueEval valueEval = valueEvalArr[i];
            if (valueEval instanceof TwoDEval) {
                TwoDEval twoDEval = (TwoDEval) valueEval;
                int height = twoDEval.getHeight();
                int width = twoDEval.getWidth();
                for (int i2 = 0; i2 < height; i2++) {
                    for (int i3 = 0; i3 < width; i3++) {
                        Boolean coerceValueToBoolean = OperandResolver.coerceValueToBoolean(twoDEval.getValue(i2, i3), true);
                        if (coerceValueToBoolean != null) {
                            initialResultValue = partialEvaluate(initialResultValue, coerceValueToBoolean.booleanValue());
                            z = true;
                        }
                    }
                }
            } else if (valueEval instanceof RefEval) {
                RefEval refEval = (RefEval) valueEval;
                int lastSheetIndex = refEval.getLastSheetIndex();
                for (int firstSheetIndex = refEval.getFirstSheetIndex(); firstSheetIndex <= lastSheetIndex; firstSheetIndex++) {
                    Boolean coerceValueToBoolean2 = OperandResolver.coerceValueToBoolean(refEval.getInnerValueEval(firstSheetIndex), true);
                    if (coerceValueToBoolean2 != null) {
                        initialResultValue = partialEvaluate(initialResultValue, coerceValueToBoolean2.booleanValue());
                        z = true;
                    }
                }
            } else {
                Boolean coerceValueToBoolean3 = valueEval == MissingArgEval.instance ? Boolean.FALSE : OperandResolver.coerceValueToBoolean(valueEval, false);
                if (coerceValueToBoolean3 != null) {
                    initialResultValue = partialEvaluate(initialResultValue, coerceValueToBoolean3.booleanValue());
                    z = true;
                }
            }
        }
        if (z) {
            return initialResultValue;
        }
        throw new EvaluationException(ErrorEval.VALUE_INVALID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueEval evaluateFalse(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 0 ? ErrorEval.VALUE_INVALID : BoolEval.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueEval evaluateNot(ValueEval[] valueEvalArr, final int i, final int i2) {
        if (valueEvalArr.length != 1) {
            return ErrorEval.VALUE_INVALID;
        }
        return ArrayFunction._evaluateOneArrayArg(valueEvalArr[0], i, i2, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.pt
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ValueEval lambda$evaluateNot$0;
                lambda$evaluateNot$0 = BooleanFunction.lambda$evaluateNot$0(i, i2, (ValueEval) obj);
                return lambda$evaluateNot$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueEval evaluateTrue(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 0 ? ErrorEval.VALUE_INVALID : BoolEval.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ValueEval lambda$evaluateNot$0(int i, int i2, ValueEval valueEval) {
        try {
            Boolean coerceValueToBoolean = OperandResolver.coerceValueToBoolean(OperandResolver.getSingleValue(valueEval, i, i2), false);
            return BoolEval.valueOf(coerceValueToBoolean != null && coerceValueToBoolean.booleanValue() ? false : true);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 1) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            return BoolEval.valueOf(calculate(valueEvalArr));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.ArrayFunction
    public ValueEval evaluateArray(ValueEval[] valueEvalArr, int i, int i2) {
        return evaluate(valueEvalArr, i, i2);
    }

    public abstract boolean getInitialResultValue();

    public abstract boolean partialEvaluate(boolean z, boolean z2);
}
