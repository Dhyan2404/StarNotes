package com.google.zxing.common;

import com.google.zxing.ResultPoint;

/* loaded from: classes4.dex */
public class DetectorResult {

    /* renamed from: a */
    public final BitMatrix f38389a;

    /* renamed from: b */
    public final ResultPoint[] f38390b;

    public DetectorResult(BitMatrix bitMatrix, ResultPoint[] resultPointArr) {
        this.f38389a = bitMatrix;
        this.f38390b = resultPointArr;
    }

    public final BitMatrix getBits() {
        return this.f38389a;
    }

    public final ResultPoint[] getPoints() {
        return this.f38390b;
    }
}
