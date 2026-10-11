package com.sun.org.apache.xalan.internal.xsltc.runtime;

/* loaded from: classes10.dex */
public final class Operators {

    /* renamed from: EQ */
    public static final int f64105EQ = 0;

    /* renamed from: GE */
    public static final int f64106GE = 4;

    /* renamed from: GT */
    public static final int f64107GT = 2;

    /* renamed from: LE */
    public static final int f64108LE = 5;

    /* renamed from: LT */
    public static final int f64109LT = 3;

    /* renamed from: NE */
    public static final int f64110NE = 1;
    private static final String[] names = {"=", "!=", ">", "<", ">=", "<="};
    private static final int[] swapOpArray = {0, 1, 3, 2, 5, 4};

    public static final String getOpNames(int i) {
        return names[i];
    }

    public static final int swapOp(int i) {
        return swapOpArray[i];
    }
}
