package com.google.zxing.aztec;

import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;

/* loaded from: classes4.dex */
public final class AztecDetectorResult extends DetectorResult {

    /* renamed from: c */
    public final boolean f38226c;

    /* renamed from: d */
    public final int f38227d;

    /* renamed from: e */
    public final int f38228e;

    public AztecDetectorResult(BitMatrix bitMatrix, ResultPoint[] resultPointArr, boolean z, int i, int i2) {
        super(bitMatrix, resultPointArr);
        this.f38226c = z;
        this.f38227d = i;
        this.f38228e = i2;
    }

    public int getNbDatablocks() {
        return this.f38227d;
    }

    public int getNbLayers() {
        return this.f38228e;
    }

    public boolean isCompact() {
        return this.f38226c;
    }
}
