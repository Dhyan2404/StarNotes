package com.twelvemonkeys.image;

import java.awt.image.IndexColorModel;

/* loaded from: classes10.dex */
public class GrayColorModel extends IndexColorModel {

    /* renamed from: e */
    public static final byte[] f93937e = m60350a();

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GrayColorModel() {
        /*
            r6 = this;
            r1 = 8
            byte[] r5 = com.twelvemonkeys.image.GrayColorModel.f93937e
            int r2 = r5.length
            r0 = r6
            r3 = r5
            r4 = r5
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.image.GrayColorModel.<init>():void");
    }

    /* renamed from: a */
    public static byte[] m60350a() {
        byte[] bArr = new byte[256];
        for (int i = 0; i < 256; i++) {
            bArr[i] = (byte) i;
        }
        return bArr;
    }
}
