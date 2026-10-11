package org.apache.poi.ss.formula.functions;

import java.time.DateTimeException;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.Value;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes13.dex */
public final class Value extends Fixed1ArgFunction implements ArrayFunction {
    private static final int MIN_DISTANCE_BETWEEN_THOUSANDS_SEPARATOR = 4;
    private static final Double ZERO = Double.valueOf(0.0d);

    public static Double convertTextToNumber(String str) {
        int length = str.length();
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (i < length) {
            char charAt = str.charAt(i);
            if (Character.isDigit(charAt) || charAt == '.') {
                break;
            }
            if (charAt != ' ') {
                if (charAt != '$') {
                    if (charAt != '+') {
                        if (charAt != '-' || z3 || z4) {
                            return null;
                        }
                        z3 = true;
                    } else {
                        if (z3 || z4) {
                            return null;
                        }
                        z4 = true;
                    }
                } else {
                    if (z2) {
                        return null;
                    }
                    z2 = true;
                }
            }
            i++;
        }
        if (i >= length) {
            if (z2 || z3 || z4) {
                return null;
            }
            return ZERO;
        }
        StringBuilder sb = new StringBuilder(length);
        int i2 = -32768;
        int i3 = i;
        boolean z5 = false;
        while (i3 < length) {
            char charAt2 = str.charAt(i3);
            if (Character.isDigit(charAt2)) {
                sb.append(charAt2);
            } else if (charAt2 != ' ') {
                if (charAt2 != '%') {
                    if (charAt2 != ',') {
                        if (charAt2 != '.') {
                            if ((charAt2 != 'E' && charAt2 != 'e') || i3 - i2 < 4) {
                                return null;
                            }
                            sb.append(str.substring(i3));
                            i3 = length;
                        } else {
                            if (z || i3 - i2 < 4) {
                                return null;
                            }
                            sb.append('.');
                            z = true;
                        }
                    } else {
                        if (z || i3 - i2 < 4) {
                            return null;
                        }
                        i2 = i3;
                    }
                }
                z5 = true;
            } else {
                String trim = str.substring(i3).trim();
                if (!trim.equals("%")) {
                    if (trim.length() > 0) {
                        return null;
                    }
                }
                z5 = true;
            }
            i3++;
        }
        if (!z && i3 - i2 < 4) {
            return null;
        }
        try {
            double parseDouble = Double.parseDouble(sb.toString());
            if (z3) {
                parseDouble = -parseDouble;
            }
            if (z5) {
                parseDouble /= 100.0d;
            }
            return Double.valueOf(parseDouble);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Double parseDateTime(String str) {
        try {
            return DateUtil.parseDateTime(str);
        } catch (DateTimeException unused) {
            return null;
        }
    }

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    /* renamed from: evaluate */
    public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            String coerceValueToString = OperandResolver.coerceValueToString(singleValue);
            if (singleValue == BlankEval.instance) {
                return new NumberEval(0.0d);
            }
            if (StringUtil.isBlank(coerceValueToString)) {
                return ErrorEval.VALUE_INVALID;
            }
            Double convertTextToNumber = convertTextToNumber(coerceValueToString);
            if (convertTextToNumber == null) {
                convertTextToNumber = parseDateTime(coerceValueToString);
            }
            return convertTextToNumber == null ? ErrorEval.VALUE_INVALID : new NumberEval(convertTextToNumber.doubleValue());
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.ArrayFunction
    public ValueEval evaluateArray(ValueEval[] valueEvalArr, final int i, final int i2) {
        return valueEvalArr.length != 1 ? ErrorEval.VALUE_INVALID : evaluateOneArrayArg(valueEvalArr[0], i, i2, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.a0o
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ValueEval lambda$evaluateArray$0;
                lambda$evaluateArray$0 = Value.this.lambda$evaluateArray$0(i, i2, (ValueEval) obj);
                return lambda$evaluateArray$0;
            }
        });
    }
}
