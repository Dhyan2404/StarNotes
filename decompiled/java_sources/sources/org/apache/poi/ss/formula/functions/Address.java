package org.apache.poi.ss.formula.functions;

/* loaded from: classes13.dex */
public class Address implements Function {
    public static final int REF_ABSOLUTE = 1;
    public static final int REF_RELATIVE = 4;
    public static final int REF_ROW_ABSOLUTE_COLUMN_RELATIVE = 2;
    public static final int REF_ROW_RELATIVE_RELATIVE_ABSOLUTE = 3;

    /* JADX WARN: Removed duplicated region for block: B:28:0x0068 A[Catch: EvaluationException -> 0x0081, TryCatch #0 {EvaluationException -> 0x0081, blocks: (B:7:0x000b, B:9:0x001d, B:11:0x0023, B:20:0x0044, B:22:0x0048, B:25:0x0053, B:26:0x0058, B:28:0x0068, B:29:0x0070, B:32:0x0035, B:33:0x003c), top: B:6:0x000b }] */
    @Override // org.apache.poi.ss.formula.functions.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.poi.ss.formula.eval.ValueEval evaluate(org.apache.poi.ss.formula.eval.ValueEval[] r9, int r10, int r11) {
        /*
            r8 = this;
            int r8 = r9.length
            r0 = 2
            if (r8 < r0) goto L87
            int r8 = r9.length
            r1 = 5
            if (r8 <= r1) goto La
            goto L87
        La:
            r8 = 0
            r2 = r9[r8]     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            double r2 = org.apache.poi.ss.formula.functions.NumericFunction.singleOperandEvaluate(r2, r10, r11)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            int r2 = (int) r2     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r3 = 1
            r4 = r9[r3]     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            double r4 = org.apache.poi.ss.formula.functions.NumericFunction.singleOperandEvaluate(r4, r10, r11)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            int r4 = (int) r4     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            int r5 = r9.length     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            if (r5 <= r0) goto L29
            r5 = r9[r0]     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            org.apache.poi.ss.formula.eval.MissingArgEval r6 = org.apache.poi.ss.formula.eval.MissingArgEval.instance     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            if (r5 == r6) goto L29
            double r5 = org.apache.poi.ss.formula.functions.NumericFunction.singleOperandEvaluate(r5, r10, r11)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            int r5 = (int) r5     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            goto L2a
        L29:
            r5 = r3
        L2a:
            r6 = 4
            if (r5 == r3) goto L42
            if (r5 == r0) goto L3f
            r0 = 3
            if (r5 == r0) goto L3d
            if (r5 != r6) goto L35
            goto L43
        L35:
            org.apache.poi.ss.formula.eval.EvaluationException r8 = new org.apache.poi.ss.formula.eval.EvaluationException     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            org.apache.poi.ss.formula.eval.ErrorEval r9 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r8.<init>(r9)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            throw r8     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
        L3d:
            r0 = r3
            goto L44
        L3f:
            r0 = r8
            r8 = r3
            goto L44
        L42:
            r8 = r3
        L43:
            r0 = r8
        L44:
            int r5 = r9.length     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r7 = 0
            if (r5 != r1) goto L58
            r9 = r9[r6]     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            org.apache.poi.ss.formula.eval.ValueEval r9 = org.apache.poi.ss.formula.eval.OperandResolver.getSingleValue(r9, r10, r11)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            org.apache.poi.ss.formula.eval.MissingArgEval r10 = org.apache.poi.ss.formula.eval.MissingArgEval.instance     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            if (r9 != r10) goto L53
            goto L58
        L53:
            java.lang.String r9 = org.apache.poi.ss.formula.eval.OperandResolver.coerceValueToString(r9)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r7 = r9
        L58:
            org.apache.poi.ss.util.CellReference r9 = new org.apache.poi.ss.util.CellReference     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            int r2 = r2 - r3
            int r4 = r4 - r3
            r9.<init>(r2, r4, r8, r0)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r10 = 32
            r8.<init>(r10)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            if (r7 == 0) goto L70
            org.apache.poi.ss.formula.SheetNameFormatter.appendFormat(r8, r7)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r10 = 33
            r8.append(r10)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
        L70:
            java.lang.String r9 = r9.formatAsString()     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r8.append(r9)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            org.apache.poi.ss.formula.eval.StringEval r9 = new org.apache.poi.ss.formula.eval.StringEval     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            java.lang.String r8 = r8.toString()     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            r9.<init>(r8)     // Catch: org.apache.poi.ss.formula.eval.EvaluationException -> L81
            return r9
        L81:
            r8 = move-exception
            org.apache.poi.ss.formula.eval.ErrorEval r8 = r8.getErrorEval()
            return r8
        L87:
            org.apache.poi.ss.formula.eval.ErrorEval r8 = org.apache.poi.ss.formula.eval.ErrorEval.VALUE_INVALID
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.functions.Address.evaluate(org.apache.poi.ss.formula.eval.ValueEval[], int, int):org.apache.poi.ss.formula.eval.ValueEval");
    }
}
