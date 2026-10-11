package org.apache.poi.ss.formula.eval;

import java.math.BigDecimal;
import java.math.MathContext;
import java.util.function.BiFunction;
import org.apache.poi.ss.formula.eval.TwoOperandNumericOperation;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.ArrayFunction;
import org.apache.poi.ss.formula.functions.Fixed2ArgFunction;
import org.apache.poi.ss.formula.functions.Function;
import org.apache.poi.ss.util.NumberToTextConverter;

/* loaded from: classes13.dex */
public abstract class TwoOperandNumericOperation extends Fixed2ArgFunction implements ArrayFunction {
    public static final Function AddEval = new TwoOperandNumericOperation() { // from class: org.apache.poi.ss.formula.eval.TwoOperandNumericOperation.1
        @Override // org.apache.poi.ss.formula.eval.TwoOperandNumericOperation
        public double evaluate(double d, double d2) {
            return d + d2;
        }
    };
    public static final Function DivideEval = new TwoOperandNumericOperation() { // from class: org.apache.poi.ss.formula.eval.TwoOperandNumericOperation.2
        @Override // org.apache.poi.ss.formula.eval.TwoOperandNumericOperation
        public double evaluate(double d, double d2) throws EvaluationException {
            if (d2 != 0.0d) {
                return new BigDecimal(NumberToTextConverter.toText(d)).divide(new BigDecimal(NumberToTextConverter.toText(d2)), MathContext.DECIMAL128).doubleValue();
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function MultiplyEval = new TwoOperandNumericOperation() { // from class: org.apache.poi.ss.formula.eval.TwoOperandNumericOperation.3
        @Override // org.apache.poi.ss.formula.eval.TwoOperandNumericOperation
        public double evaluate(double d, double d2) {
            return new BigDecimal(NumberToTextConverter.toText(d)).multiply(new BigDecimal(NumberToTextConverter.toText(d2))).doubleValue();
        }
    };
    public static final Function PowerEval = new TwoOperandNumericOperation() { // from class: org.apache.poi.ss.formula.eval.TwoOperandNumericOperation.4
        @Override // org.apache.poi.ss.formula.eval.TwoOperandNumericOperation
        public double evaluate(double d, double d2) {
            return (d >= 0.0d || Math.abs(d2) <= 0.0d || Math.abs(d2) >= 1.0d) ? Math.pow(d, d2) : Math.pow(d * (-1.0d), d2) * (-1.0d);
        }
    };
    public static final Function SubtractEval = new SubtractEvalClass();

    /* loaded from: classes13.dex */
    public static final class SubtractEvalClass extends TwoOperandNumericOperation {
        @Override // org.apache.poi.ss.formula.eval.TwoOperandNumericOperation
        public double evaluate(double d, double d2) {
            return d - d2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ValueEval lambda$evaluateArray$0(ValueEval valueEval, ValueEval valueEval2) {
        try {
            return new NumberEval(evaluate(OperandResolver.coerceValueToDouble(valueEval), OperandResolver.coerceValueToDouble(valueEval2)));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    public abstract double evaluate(double d, double d2) throws EvaluationException;

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            double evaluate = evaluate(singleOperandEvaluate(valueEval, i, i2), singleOperandEvaluate(valueEval2, i, i2));
            if (evaluate == 0.0d && !(this instanceof SubtractEvalClass)) {
                return NumberEval.ZERO;
            }
            if (!Double.isNaN(evaluate) && !Double.isInfinite(evaluate)) {
                return new NumberEval(evaluate);
            }
            return ErrorEval.NUM_ERROR;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.ArrayFunction
    public ValueEval evaluateArray(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 2 ? ErrorEval.VALUE_INVALID : evaluateTwoArrayArgs(valueEvalArr[0], valueEvalArr[1], i, i2, new BiFunction() { // from class: com.sunia.HTREnginev2.mon
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                ValueEval lambda$evaluateArray$0;
                lambda$evaluateArray$0 = TwoOperandNumericOperation.this.lambda$evaluateArray$0((ValueEval) obj, (ValueEval) obj2);
                return lambda$evaluateArray$0;
            }
        });
    }

    public final double singleOperandEvaluate(ValueEval valueEval, int i, int i2) throws EvaluationException {
        return OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEval, i, i2));
    }
}
