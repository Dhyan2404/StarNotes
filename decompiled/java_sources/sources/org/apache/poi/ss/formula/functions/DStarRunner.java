package org.apache.poi.ss.formula.functions;

import java.util.function.Supplier;
import java.util.regex.Pattern;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.StringValueEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.Countif;
import org.apache.poi.ss.formula.functions.DAverage;
import org.apache.poi.ss.formula.functions.DCount;
import org.apache.poi.ss.formula.functions.DCountA;
import org.apache.poi.ss.formula.functions.DGet;
import org.apache.poi.ss.formula.functions.DMax;
import org.apache.poi.ss.formula.functions.DMin;
import org.apache.poi.ss.formula.functions.DProduct;
import org.apache.poi.ss.formula.functions.DStdev;
import org.apache.poi.ss.formula.functions.DStdevp;
import org.apache.poi.ss.formula.functions.DSum;
import org.apache.poi.ss.formula.functions.DVar;
import org.apache.poi.ss.formula.functions.DVarp;
import org.apache.poi.ss.util.NumberComparer;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;

@Internal
/* loaded from: classes13.dex */
public final class DStarRunner implements Function3Arg {
    private final DStarAlgorithmEnum algoType;

    /* renamed from: org.apache.poi.ss.formula.functions.DStarRunner$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C197331 {

        /* renamed from: $SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator */
        static final /* synthetic */ int[] f111540x203aa51d;

        static {
            int[] iArr = new int[operator.values().length];
            f111540x203aa51d = iArr;
            try {
                iArr[operator.largerThan.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111540x203aa51d[operator.largerEqualThan.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111540x203aa51d[operator.smallerThan.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111540x203aa51d[operator.smallerEqualThan.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111540x203aa51d[operator.equal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum DStarAlgorithmEnum {
        DGET(new Supplier() { // from class: com.sunia.HTREnginev2.wqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DGet();
            }
        }),
        DMIN(new Supplier() { // from class: com.sunia.HTREnginev2.bre
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DMin();
            }
        }),
        DMAX(new Supplier() { // from class: com.sunia.HTREnginev2.cre
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DMax();
            }
        }),
        DSUM(new Supplier() { // from class: com.sunia.HTREnginev2.dre
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DSum();
            }
        }),
        DCOUNT(new Supplier() { // from class: com.sunia.HTREnginev2.ere
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DCount();
            }
        }),
        DCOUNTA(new Supplier() { // from class: com.sunia.HTREnginev2.fre
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DCountA();
            }
        }),
        DAVERAGE(new Supplier() { // from class: com.sunia.HTREnginev2.gre
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DAverage();
            }
        }),
        DSTDEV(new Supplier() { // from class: com.sunia.HTREnginev2.hre
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DStdev();
            }
        }),
        DSTDEVP(new Supplier() { // from class: com.sunia.HTREnginev2.xqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DStdevp();
            }
        }),
        DVAR(new Supplier() { // from class: com.sunia.HTREnginev2.yqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DVar();
            }
        }),
        DVARP(new Supplier() { // from class: com.sunia.HTREnginev2.zqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DVarp();
            }
        }),
        DPRODUCT(new Supplier() { // from class: com.sunia.HTREnginev2.are
            @Override // java.util.function.Supplier
            public final Object get() {
                return new DProduct();
            }
        });

        private final Supplier<IDStarAlgorithm> implSupplier;

        DStarAlgorithmEnum(Supplier supplier) {
            this.implSupplier = supplier;
        }

        public IDStarAlgorithm newInstance() {
            return this.implSupplier.get();
        }
    }

    /* loaded from: classes13.dex */
    public enum operator {
        largerThan,
        largerEqualThan,
        smallerThan,
        smallerEqualThan,
        equal
    }

    public DStarRunner(DStarAlgorithmEnum dStarAlgorithmEnum) {
        this.algoType = dStarAlgorithmEnum;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0062, code lost:
    
        if (r3 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean fulfillsConditions(org.apache.poi.ss.formula.eval.AreaEval r10, int r11, org.apache.poi.ss.formula.eval.AreaEval r12) throws org.apache.poi.ss.formula.eval.EvaluationException {
        /*
            int r0 = r12.getHeight()
            r1 = 1
            r2 = r1
        L6:
            r3 = 0
            if (r2 >= r0) goto L68
            int r4 = r12.getWidth()
            r5 = r3
        Le:
            if (r5 >= r4) goto L61
            org.apache.poi.ss.formula.eval.ValueEval r6 = resolveReference(r12, r2, r5)
            boolean r7 = r6 instanceof org.apache.poi.ss.formula.eval.BlankEval
            if (r7 == 0) goto L19
            goto L3c
        L19:
            org.apache.poi.ss.formula.eval.ValueEval r7 = resolveReference(r12, r3, r5)
            boolean r8 = r7 instanceof org.apache.poi.ss.formula.eval.StringValueEval
            if (r8 == 0) goto L59
            int r8 = getColumnForName(r7, r10)
            r9 = -1
            if (r8 != r9) goto L2a
            r8 = r3
            goto L2b
        L2a:
            r8 = r1
        L2b:
            if (r8 == 0) goto L3f
            int r7 = getColumnForName(r7, r10)
            org.apache.poi.ss.formula.eval.ValueEval r7 = resolveReference(r10, r11, r7)
            boolean r6 = testNormalCondition(r7, r6)
            if (r6 != 0) goto L3c
            goto L62
        L3c:
            int r5 = r5 + 1
            goto Le
        L3f:
            java.lang.String r10 = org.apache.poi.ss.formula.eval.OperandResolver.coerceValueToString(r6)
            boolean r10 = r10.isEmpty()
            if (r10 == 0) goto L51
            org.apache.poi.ss.formula.eval.EvaluationException r10 = new org.apache.poi.ss.formula.eval.EvaluationException
            org.apache.poi.ss.formula.eval.ErrorEval r11 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID
            r10.<init>(r11)
            throw r10
        L51:
            org.apache.poi.ss.formula.eval.NotImplementedException r10 = new org.apache.poi.ss.formula.eval.NotImplementedException
            java.lang.String r11 = "D* function with formula conditions"
            r10.<init>(r11)
            throw r10
        L59:
            org.apache.poi.ss.formula.eval.EvaluationException r10 = new org.apache.poi.ss.formula.eval.EvaluationException
            org.apache.poi.ss.formula.eval.ErrorEval r11 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID
            r10.<init>(r11)
            throw r10
        L61:
            r3 = r1
        L62:
            if (r3 == 0) goto L65
            return r1
        L65:
            int r2 = r2 + 1
            goto L6
        L68:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.functions.DStarRunner.fulfillsConditions(org.apache.poi.ss.formula.eval.AreaEval, int, org.apache.poi.ss.formula.eval.AreaEval):boolean");
    }

    private static int getColumnForName(ValueEval valueEval, AreaEval areaEval) throws EvaluationException {
        if (!(valueEval instanceof NumericValueEval)) {
            return getColumnForString(areaEval, OperandResolver.coerceValueToString(valueEval));
        }
        int coerceValueToInt = OperandResolver.coerceValueToInt(valueEval) - 1;
        if (coerceValueToInt < 0 || coerceValueToInt >= areaEval.getWidth()) {
            return -1;
        }
        return coerceValueToInt;
    }

    private static int getColumnForString(AreaEval areaEval, String str) {
        int width = areaEval.getWidth();
        for (int i = 0; i < width; i++) {
            ValueEval resolveReference = resolveReference(areaEval, 0, i);
            if (!(resolveReference instanceof BlankEval) && !(resolveReference instanceof ErrorEval) && str.equalsIgnoreCase(OperandResolver.coerceValueToString(resolveReference))) {
                return i;
            }
        }
        return -1;
    }

    private static Double getNumberFromValueEval(ValueEval valueEval) {
        if (valueEval instanceof NumericValueEval) {
            return Double.valueOf(((NumericValueEval) valueEval).getNumberValue());
        }
        if (valueEval instanceof StringValueEval) {
            try {
                return Double.valueOf(Double.parseDouble(((StringValueEval) valueEval).getStringValue()));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    private static ValueEval resolveReference(AreaEval areaEval, int i, int i2) {
        try {
            return OperandResolver.getSingleValue(areaEval.getValue(i, i2), areaEval.getFirstRow() + i, areaEval.getFirstColumn() + i2);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    private static boolean testNormalCondition(ValueEval valueEval, ValueEval valueEval2) throws EvaluationException {
        boolean z = false;
        if (!(valueEval2 instanceof StringEval)) {
            if (!(valueEval2 instanceof NumericValueEval)) {
                return (valueEval2 instanceof ErrorEval) && (valueEval instanceof ErrorEval) && ((ErrorEval) valueEval2).getErrorCode() == ((ErrorEval) valueEval).getErrorCode();
            }
            double numberValue = ((NumericValueEval) valueEval2).getNumberValue();
            Double numberFromValueEval = getNumberFromValueEval(valueEval);
            return numberFromValueEval != null && numberValue == numberFromValueEval.doubleValue();
        }
        String stringValue = ((StringEval) valueEval2).getStringValue();
        if (stringValue.startsWith("<")) {
            String substring = stringValue.substring(1);
            if (substring.startsWith("=")) {
                return testNumericCondition(valueEval, operator.smallerEqualThan, substring.substring(1));
            }
            return testNumericCondition(valueEval, operator.smallerThan, substring);
        }
        if (stringValue.startsWith(">")) {
            String substring2 = stringValue.substring(1);
            if (substring2.startsWith("=")) {
                return testNumericCondition(valueEval, operator.largerEqualThan, substring2.substring(1));
            }
            return testNumericCondition(valueEval, operator.largerThan, substring2);
        }
        if (!stringValue.startsWith("=")) {
            if (stringValue.isEmpty()) {
                return valueEval instanceof StringEval;
            }
            String lowerCase = (valueEval instanceof BlankEval ? "" : OperandResolver.coerceValueToString(valueEval)).toLowerCase(LocaleUtil.getUserLocale());
            String lowerCase2 = stringValue.toLowerCase(LocaleUtil.getUserLocale());
            Pattern wildCardPattern = Countif.StringMatcher.getWildCardPattern(lowerCase2);
            return wildCardPattern == null ? lowerCase.startsWith(lowerCase2) : wildCardPattern.matcher(lowerCase).matches();
        }
        String substring3 = stringValue.substring(1);
        if (substring3.isEmpty()) {
            return valueEval instanceof BlankEval;
        }
        try {
            try {
                Integer.parseInt(substring3);
            } catch (NumberFormatException unused) {
            }
        } catch (NumberFormatException unused2) {
            Double.parseDouble(substring3);
        }
        z = true;
        if (z) {
            return testNumericCondition(valueEval, operator.equal, substring3);
        }
        return substring3.equalsIgnoreCase(valueEval instanceof BlankEval ? "" : OperandResolver.coerceValueToString(valueEval));
    }

    private static boolean testNumericCondition(ValueEval valueEval, operator operatorVar, String str) throws EvaluationException {
        double parseDouble;
        if (!(valueEval instanceof NumericValueEval)) {
            return false;
        }
        double numberValue = ((NumericValueEval) valueEval).getNumberValue();
        try {
            try {
                parseDouble = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
        } catch (NumberFormatException unused2) {
            parseDouble = Double.parseDouble(str);
        }
        int compare = NumberComparer.compare(numberValue, parseDouble);
        int i = C197331.f111540x203aa51d[operatorVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i == 5 && compare == 0 : compare <= 0 : compare < 0 : compare >= 0 : compare > 0;
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length == 3) {
            return evaluate(i, i2, valueEvalArr[0], valueEvalArr[1], valueEvalArr[2]);
        }
        return ErrorEval.VALUE_INVALID;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // org.apache.poi.ss.formula.functions.Function3Arg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.poi.ss.formula.eval.ValueEval evaluate(int r3, int r4, org.apache.poi.ss.formula.eval.ValueEval r5, org.apache.poi.ss.formula.eval.ValueEval r6, org.apache.poi.ss.formula.eval.ValueEval r7) {
        /*
            r2 = this;
            boolean r0 = r5 instanceof org.apache.poi.ss.formula.eval.AreaEval
            if (r0 == 0) goto L87
            boolean r0 = r7 instanceof org.apache.poi.ss.formula.eval.AreaEval
            if (r0 != 0) goto La
            goto L87
        La:
            org.apache.poi.ss.formula.eval.AreaEval r5 = (org.apache.poi.ss.formula.eval.AreaEval) r5
            org.apache.poi.ss.formula.eval.AreaEval r7 = (org.apache.poi.ss.formula.eval.AreaEval) r7
            org.apache.poi.ss.formula.functions.DStarRunner$DStarAlgorithmEnum r2 = r2.algoType
            org.apache.poi.ss.formula.functions.IDStarAlgorithm r2 = r2.newInstance()
            r0 = -1
            r1 = 1
            org.apache.poi.ss.formula.eval.ValueEval r3 = org.apache.poi.ss.formula.eval.OperandResolver.getSingleValue(r6, r3, r4)     // Catch: java.lang.Exception -> L40 org.apache.poi.ss.formula.eval.EvaluationException -> L4b
            boolean r4 = r3 instanceof org.apache.poi.ss.formula.eval.NumericValueEval     // Catch: java.lang.Exception -> L40 org.apache.poi.ss.formula.eval.EvaluationException -> L4b
            if (r4 == 0) goto L2b
            org.apache.poi.ss.formula.eval.NumericValueEval r3 = (org.apache.poi.ss.formula.eval.NumericValueEval) r3     // Catch: java.lang.Exception -> L40 org.apache.poi.ss.formula.eval.EvaluationException -> L4b
            double r3 = r3.getNumberValue()     // Catch: java.lang.Exception -> L40 org.apache.poi.ss.formula.eval.EvaluationException -> L4b
            long r3 = java.lang.Math.round(r3)     // Catch: java.lang.Exception -> L40 org.apache.poi.ss.formula.eval.EvaluationException -> L4b
            int r3 = (int) r3     // Catch: java.lang.Exception -> L40 org.apache.poi.ss.formula.eval.EvaluationException -> L4b
            int r3 = r3 - r1
            goto L2f
        L2b:
            int r3 = getColumnForName(r3, r5)     // Catch: java.lang.Exception -> L40 org.apache.poi.ss.formula.eval.EvaluationException -> L4b
        L2f:
            if (r3 != r0) goto L57
            boolean r4 = r2.allowEmptyMatchField()     // Catch: java.lang.Exception -> L3a org.apache.poi.ss.formula.eval.EvaluationException -> L3c
            if (r4 != 0) goto L57
            org.apache.poi.ss.formula.eval.ErrorEval r2 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID     // Catch: java.lang.Exception -> L3a org.apache.poi.ss.formula.eval.EvaluationException -> L3c
            return r2
        L3a:
            r0 = r3
            goto L40
        L3c:
            r4 = move-exception
            r0 = r3
            r3 = r4
            goto L4c
        L40:
            boolean r3 = r2.allowEmptyMatchField()
            if (r3 != 0) goto L49
            org.apache.poi.ss.formula.eval.ErrorEval r2 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID
            return r2
        L49:
            r3 = r0
            goto L57
        L4b:
            r3 = move-exception
        L4c:
            boolean r4 = r2.allowEmptyMatchField()
            if (r4 != 0) goto L49
            org.apache.poi.ss.formula.eval.ErrorEval r2 = r3.getErrorEval()
            return r2
        L57:
            int r4 = r5.getHeight()
        L5b:
            if (r1 >= r4) goto L82
            boolean r6 = fulfillsConditions(r5, r1, r7)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L7f
            if (r6 == 0) goto L7c
            org.apache.poi.ss.formula.eval.ValueEval r6 = resolveReference(r5, r1, r3)
            if (r3 >= 0) goto L75
            boolean r0 = r2.allowEmptyMatchField()
            if (r0 == 0) goto L75
            boolean r0 = r6 instanceof org.apache.poi.ss.formula.eval.NumericValueEval
            if (r0 != 0) goto L75
            org.apache.poi.ss.formula.eval.NumberEval r6 = org.apache.poi.ss.formula.eval.NumberEval.ZERO
        L75:
            boolean r6 = r2.processMatch(r6)
            if (r6 != 0) goto L7c
            goto L82
        L7c:
            int r1 = r1 + 1
            goto L5b
        L7f:
            org.apache.poi.ss.formula.eval.ErrorEval r2 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID
            return r2
        L82:
            org.apache.poi.ss.formula.eval.ValueEval r2 = r2.getResult()
            return r2
        L87:
            org.apache.poi.ss.formula.eval.ErrorEval r2 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.functions.DStarRunner.evaluate(int, int, org.apache.poi.ss.formula.eval.ValueEval, org.apache.poi.ss.formula.eval.ValueEval, org.apache.poi.ss.formula.eval.ValueEval):org.apache.poi.ss.formula.eval.ValueEval");
    }
}
