package org.apache.poi.ss.formula.functions;

import com.google.android.material.motion.MotionUtils;
import java.math.BigDecimal;
import java.math.MathContext;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.Log;
import org.apache.poi.ss.formula.functions.NumericFunction;
import org.apache.poi.ss.formula.functions.Poisson;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public abstract class NumericFunction implements Function {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long PARITY_MASK = -2;
    private static final double TEN = 10.0d;
    private static final double ZERO = 0.0d;
    private static final double LOG_10_TO_BASE_e = Math.log(10.0d);
    public static final Function ABS = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.z
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.abs(d);
        }
    });
    public static final Function ACOS = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.j
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.acos(d);
        }
    });
    public static final Function ACOSH = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.w
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.acosh(d);
        }
    });
    public static final Function ASIN = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.c0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.asin(d);
        }
    });
    public static final Function ASINH = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.d0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.asinh(d);
        }
    });
    public static final Function ATAN = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.e0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.atan(d);
        }
    });
    public static final Function ATANH = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.f0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.atanh(d);
        }
    });
    public static final Function COS = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.g0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.cos(d);
        }
    });
    public static final Function COSH = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.h0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.cosh(d);
        }
    });
    public static final Function DEGREES = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.i0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.toDegrees(d);
        }
    });
    public static final Function DOLLAR = new Function() { // from class: com.sunia.HTREnginev2.c6k
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            ValueEval evaluateDollar;
            evaluateDollar = NumericFunction.evaluateDollar(valueEvalArr, i, i2);
            return evaluateDollar;
        }
    };
    public static final Function EXP = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.j0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            double lambda$static$0;
            lambda$static$0 = NumericFunction.lambda$static$0(d);
            return lambda$static$0;
        }
    });
    public static final Function FACT = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.k0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.factorial(d);
        }
    });
    public static final Function INT = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.l0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            double lambda$static$1;
            lambda$static$1 = NumericFunction.lambda$static$1(d);
            return lambda$static$1;
        }
    });

    /* renamed from: LN */
    public static final Function f111545LN = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.m0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.log(d);
        }
    });
    public static final Function LOG10 = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.n0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            double lambda$static$2;
            lambda$static$2 = NumericFunction.lambda$static$2(d);
            return lambda$static$2;
        }
    });
    public static final Function RADIANS = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.o0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.toRadians(d);
        }
    });
    public static final Function SIGN = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.g
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.sign(d);
        }
    });
    public static final Function SIN = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.h
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.sin(d);
        }
    });
    public static final Function SINH = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.i
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.sinh(d);
        }
    });
    public static final Function SQRT = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.k
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.sqrt(d);
        }
    });
    public static final Function TAN = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.l
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return Math.tan(d);
        }
    });
    public static final Function TANH = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.m
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            return MathX.tanh(d);
        }
    });
    public static final Function ATAN2 = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.n
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            Object lambda$static$3;
            lambda$static$3 = NumericFunction.lambda$static$3(d, d2);
            return lambda$static$3;
        }
    });
    public static final Function CEILING = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.o
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            return Double.valueOf(MathX.ceiling(d, d2));
        }
    });
    public static final Function COMBIN = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.p
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            Object lambda$static$4;
            lambda$static$4 = NumericFunction.lambda$static$4(d, d2);
            return lambda$static$4;
        }
    });
    public static final Function FLOOR = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.r
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            Object lambda$static$5;
            lambda$static$5 = NumericFunction.lambda$static$5(d, d2);
            return lambda$static$5;
        }
    });
    public static final Function MOD = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.s
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            Object lambda$static$6;
            lambda$static$6 = NumericFunction.lambda$static$6(d, d2);
            return lambda$static$6;
        }
    });
    public static final Function POWER = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.u
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            return Double.valueOf(Math.pow(d, d2));
        }
    });
    public static final Function ROUND = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.v
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            return Double.valueOf(MathX.round(d, d2));
        }
    });
    public static final Function ROUNDDOWN = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.x
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            return Double.valueOf(MathX.roundDown(d, d2));
        }
    });
    public static final Function ROUNDUP = twoDouble(new TwoDoubleIf() { // from class: org.apache.poi.ss.formula.functions.y
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.TwoDoubleIf
        public final Object apply(double d, double d2) {
            return Double.valueOf(MathX.roundUp(d, d2));
        }
    });
    public static final Function TRUNC = new Function() { // from class: com.sunia.HTREnginev2.x5k
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            ValueEval evaluateTrunc;
            evaluateTrunc = NumericFunction.evaluateTrunc(valueEvalArr, i, i2);
            return evaluateTrunc;
        }
    };
    public static final Function LOG = new Function() { // from class: com.sunia.HTREnginev2.y5k
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            return Log.evaluate(valueEvalArr, i, i2);
        }
    };
    static final NumberEval PI_EVAL = new NumberEval(3.141592653589793d);

    /* renamed from: PI */
    public static final Function f111546PI = new Function() { // from class: com.sunia.HTREnginev2.z5k
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            ValueEval evaluatePI;
            evaluatePI = NumericFunction.evaluatePI(valueEvalArr, i, i2);
            return evaluatePI;
        }
    };
    public static final Function RAND = new Function() { // from class: com.sunia.HTREnginev2.a6k
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            ValueEval evaluateRand;
            evaluateRand = NumericFunction.evaluateRand(valueEvalArr, i, i2);
            return evaluateRand;
        }
    };
    public static final Function POISSON = new Function() { // from class: com.sunia.HTREnginev2.b6k
        @Override // org.apache.poi.ss.formula.functions.Function
        public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
            return Poisson.evaluate(valueEvalArr, i, i2);
        }
    };
    public static final Function ODD = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.a0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            double evaluateOdd;
            evaluateOdd = NumericFunction.evaluateOdd(d);
            return evaluateOdd;
        }
    });
    public static final Function EVEN = oneDouble(new OneDoubleIf() { // from class: org.apache.poi.ss.formula.functions.b0
        @Override // org.apache.poi.ss.formula.functions.NumericFunction.OneDoubleIf
        public final double apply(double d) {
            double evaluateEven;
            evaluateEven = NumericFunction.evaluateEven(d);
            return evaluateEven;
        }
    });

    /* loaded from: classes13.dex */
    public interface OneDoubleIf {
        double apply(double d);
    }

    /* loaded from: classes13.dex */
    public interface TwoDoubleIf {
        Object apply(double d, double d2);
    }

    public static void checkValue(double d) throws EvaluationException {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new EvaluationException(ErrorEval.NUM_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueEval evaluateDollar(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length != 1 && valueEvalArr.length != 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double singleOperandEvaluate = singleOperandEvaluate(valueEvalArr[0], i, i2);
            int singleOperandEvaluate2 = (int) (valueEvalArr.length == 1 ? 2.0d : singleOperandEvaluate(valueEvalArr[1], i, i2));
            if (singleOperandEvaluate2 > 127) {
                return ErrorEval.VALUE_INVALID;
            }
            if (singleOperandEvaluate2 < 0) {
                BigDecimal valueOf = BigDecimal.valueOf(Math.pow(10.0d, -singleOperandEvaluate2));
                singleOperandEvaluate = BigDecimal.valueOf(singleOperandEvaluate).divide(valueOf, MathContext.DECIMAL128).toBigInteger().multiply(valueOf.toBigInteger()).doubleValue();
            }
            DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getCurrencyInstance(LocaleUtil.getUserLocale());
            int max = Math.max(singleOperandEvaluate2, 0);
            if (LocaleUtil.getUserLocale().getCountry().equalsIgnoreCase("US")) {
                decimalFormat.setNegativePrefix(MotionUtils.f31761c + decimalFormat.getDecimalFormatSymbols().getCurrencySymbol());
                decimalFormat.setNegativeSuffix(MotionUtils.f31762d);
            }
            decimalFormat.setMinimumFractionDigits(max);
            decimalFormat.setMaximumFractionDigits(max);
            return new StringEval(decimalFormat.format(singleOperandEvaluate).replace(Constants.UNICODECHAR_NO_BREAK_SPACE, " "));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double evaluateEven(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        double abs = Math.abs(d);
        long j = ((long) abs) & (-2);
        double sign = MathX.sign(d);
        if (Double.compare(j, abs) != 0) {
            j += 2;
        }
        return sign * j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double evaluateOdd(double d) {
        if (d == 0.0d) {
            return 1.0d;
        }
        double abs = Math.abs(d) + 1.0d;
        return MathX.sign(d) * (Double.compare((double) (((long) abs) & (-2)), abs) == 0 ? r0 - 1 : r0 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueEval evaluatePI(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 0 ? ErrorEval.VALUE_INVALID : PI_EVAL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueEval evaluateRand(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 0 ? ErrorEval.VALUE_INVALID : new NumberEval(Math.random());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueEval evaluateTrunc(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length != 1 && valueEvalArr.length != 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double roundDown = MathX.roundDown(singleOperandEvaluate(valueEvalArr[0], i, i2), valueEvalArr.length == 1 ? 0.0d : singleOperandEvaluate(valueEvalArr[1], i, i2));
            checkValue(roundDown);
            return new NumberEval(roundDown);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ValueEval lambda$oneDouble$7(OneDoubleIf oneDoubleIf, ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length != 1) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double apply = oneDoubleIf.apply(singleOperandEvaluate(valueEvalArr[0], i, i2));
            if (!Double.isNaN(apply) && !Double.isInfinite(apply)) {
                return new NumberEval(apply);
            }
            return ErrorEval.NUM_ERROR;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$static$0(double d) {
        return Math.pow(2.718281828459045d, d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$static$1(double d) {
        return Math.round(d - 0.5d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$static$2(double d) {
        return Math.log(d) / LOG_10_TO_BASE_e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$3(double d, double d2) {
        return (d == 0.0d && d2 == 0.0d) ? ErrorEval.DIV_ZERO : Double.valueOf(Math.atan2(d2, d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$4(double d, double d2) {
        return (d > 2.147483647E9d || d2 > 2.147483647E9d) ? ErrorEval.NUM_ERROR : Double.valueOf(MathX.nChooseK((int) d, (int) d2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$5(double d, double d2) {
        return d2 == 0.0d ? d == 0.0d ? Double.valueOf(0.0d) : ErrorEval.DIV_ZERO : Double.valueOf(MathX.floor(d, d2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$6(double d, double d2) {
        return d2 == 0.0d ? ErrorEval.DIV_ZERO : Double.valueOf(MathX.mod(d, d2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ValueEval lambda$twoDouble$8(TwoDoubleIf twoDoubleIf, ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length != 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            Object apply = twoDoubleIf.apply(singleOperandEvaluate(valueEvalArr[0], i, i2), singleOperandEvaluate(valueEvalArr[1], i, i2));
            if (apply instanceof ErrorEval) {
                return (ErrorEval) apply;
            }
            double doubleValue = ((Double) apply).doubleValue();
            if (!Double.isNaN(doubleValue) && !Double.isInfinite(doubleValue)) {
                return new NumberEval(doubleValue);
            }
            return ErrorEval.NUM_ERROR;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    private static Function oneDouble(final OneDoubleIf oneDoubleIf) {
        return new Function() { // from class: org.apache.poi.ss.formula.functions.f
            @Override // org.apache.poi.ss.formula.functions.Function
            public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
                ValueEval lambda$oneDouble$7;
                lambda$oneDouble$7 = NumericFunction.lambda$oneDouble$7(NumericFunction.OneDoubleIf.this, valueEvalArr, i, i2);
                return lambda$oneDouble$7;
            }
        };
    }

    public static double singleOperandEvaluate(ValueEval valueEval, int i, int i2) throws EvaluationException {
        if (valueEval == null) {
            throw new IllegalArgumentException("arg must not be null");
        }
        double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEval, i, i2));
        checkValue(coerceValueToDouble);
        return coerceValueToDouble;
    }

    private static Function twoDouble(final TwoDoubleIf twoDoubleIf) {
        return new Function() { // from class: org.apache.poi.ss.formula.functions.q
            @Override // org.apache.poi.ss.formula.functions.Function
            public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
                ValueEval lambda$twoDouble$8;
                lambda$twoDouble$8 = NumericFunction.lambda$twoDouble$8(NumericFunction.TwoDoubleIf.this, valueEvalArr, i, i2);
                return lambda$twoDouble$8;
            }
        };
    }

    public abstract double eval(ValueEval[] valueEvalArr, int i, int i2) throws EvaluationException;

    @Override // org.apache.poi.ss.formula.functions.Function
    public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        try {
            double eval = eval(valueEvalArr, i, i2);
            checkValue(eval);
            return new NumberEval(eval);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
