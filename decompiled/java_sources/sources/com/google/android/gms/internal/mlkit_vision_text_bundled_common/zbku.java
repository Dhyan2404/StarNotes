package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zbku extends zbkr {
    public zbku() {
        super(4);
    }

    public final zbku zba(Object obj) {
        int i = this.zbb + 1;
        Object[] objArr = this.zba;
        int length = objArr.length;
        if (length < i) {
            int i2 = length + (length >> 1) + 1;
            if (i2 < i) {
                int highestOneBit = Integer.highestOneBit(i - 1);
                i2 = highestOneBit + highestOneBit;
            }
            if (i2 < 0) {
                i2 = Integer.MAX_VALUE;
            }
            this.zba = Arrays.copyOf(objArr, i2);
            this.zbc = false;
        } else if (this.zbc) {
            this.zba = (Object[]) objArr.clone();
            this.zbc = false;
        }
        Object[] objArr2 = this.zba;
        int i3 = this.zbb;
        this.zbb = i3 + 1;
        objArr2[i3] = obj;
        return this;
    }

    public final zbkx zbb() {
        this.zbc = true;
        return zbkx.zbg(this.zba, this.zbb);
    }
}
