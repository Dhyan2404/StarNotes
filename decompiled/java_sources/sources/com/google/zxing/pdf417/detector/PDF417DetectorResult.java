package com.google.zxing.pdf417.detector;

import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.List;

/* loaded from: classes4.dex */
public final class PDF417DetectorResult {

    /* renamed from: a */
    public final BitMatrix f38715a;

    /* renamed from: b */
    public final List<ResultPoint[]> f38716b;

    public PDF417DetectorResult(BitMatrix bitMatrix, List<ResultPoint[]> list) {
        this.f38715a = bitMatrix;
        this.f38716b = list;
    }

    public BitMatrix getBits() {
        return this.f38715a;
    }

    public List<ResultPoint[]> getPoints() {
        return this.f38716b;
    }
}
