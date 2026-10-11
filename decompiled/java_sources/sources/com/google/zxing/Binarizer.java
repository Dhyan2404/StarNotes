package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes4.dex */
public abstract class Binarizer {

    /* renamed from: a */
    public final LuminanceSource f38195a;

    public Binarizer(LuminanceSource luminanceSource) {
        this.f38195a = luminanceSource;
    }

    public abstract Binarizer createBinarizer(LuminanceSource luminanceSource);

    public abstract BitMatrix getBlackMatrix() throws NotFoundException;

    public abstract BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException;

    public final int getHeight() {
        return this.f38195a.getHeight();
    }

    public final LuminanceSource getLuminanceSource() {
        return this.f38195a;
    }

    public final int getWidth() {
        return this.f38195a.getWidth();
    }
}
