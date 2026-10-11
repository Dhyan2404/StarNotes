package com.sunia.HTREnginev2;

import java.math.BigInteger;

/* loaded from: classes10.dex */
public final class lin {

    /* renamed from: a */
    public static final long f76507a = 315576000000L;

    /* renamed from: b */
    public static final int f76508b = 999999999;

    /* renamed from: c */
    public static final long f76509c = 1000;

    /* renamed from: d */
    public static final long f76510d = 1000000;

    /* renamed from: e */
    public static final long f76511e = 1000000000;

    /* renamed from: f */
    public static final BigInteger f76512f = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: g */
    public static final BigInteger f76513g = BigInteger.valueOf(Long.MIN_VALUE);

    /* renamed from: a */
    public static long m55438a(long j, long j2) {
        BigInteger add = BigInteger.valueOf(j).add(BigInteger.valueOf(j2));
        if (add.compareTo(f76512f) <= 0 && add.compareTo(f76513g) >= 0) {
            return j + j2;
        }
        throw new ArithmeticException("Long sum overflow: x=" + j + ", y=" + j2);
    }

    /* renamed from: b */
    public static int m55439b(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
