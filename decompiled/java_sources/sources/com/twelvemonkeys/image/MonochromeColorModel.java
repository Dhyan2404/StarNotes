package com.twelvemonkeys.image;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.awt.image.IndexColorModel;

/* loaded from: classes10.dex */
public class MonochromeColorModel extends IndexColorModel {

    /* renamed from: e */
    public static final int[] f93960e = {0, 16777215};

    /* renamed from: f */
    public static MonochromeColorModel f93961f = new MonochromeColorModel();

    public MonochromeColorModel() {
        super(1, 2, f93960e, 0, false, -1, 0);
    }

    public static IndexColorModel getInstance() {
        return f93961f;
    }

    @Override // java.awt.image.IndexColorModel, java.awt.image.ColorModel
    public synchronized Object getDataElements(int i, Object obj) {
        byte[] bArr;
        int i2 = (((((i >> 16) & 255) * 222) + (((i >> 8) & 255) * TypedValues.TransitionType.TYPE_TRANSITION_FLAGS)) + ((i & 255) * 71)) / 1000;
        bArr = obj != null ? (byte[]) obj : new byte[1];
        if (i2 <= 128) {
            bArr[0] = 0;
        } else {
            bArr[0] = 1;
        }
        return bArr;
    }
}
