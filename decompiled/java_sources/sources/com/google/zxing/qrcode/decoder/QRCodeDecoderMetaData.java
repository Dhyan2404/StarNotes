package com.google.zxing.qrcode.decoder;

import com.google.zxing.ResultPoint;

/* loaded from: classes4.dex */
public final class QRCodeDecoderMetaData {

    /* renamed from: a */
    public final boolean f38747a;

    public QRCodeDecoderMetaData(boolean z) {
        this.f38747a = z;
    }

    public void applyMirroredCorrection(ResultPoint[] resultPointArr) {
        if (!this.f38747a || resultPointArr == null || resultPointArr.length < 3) {
            return;
        }
        ResultPoint resultPoint = resultPointArr[0];
        resultPointArr[0] = resultPointArr[2];
        resultPointArr[2] = resultPoint;
    }

    public boolean isMirrored() {
        return this.f38747a;
    }
}
