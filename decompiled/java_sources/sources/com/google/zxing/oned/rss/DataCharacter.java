package com.google.zxing.oned.rss;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes4.dex */
public class DataCharacter {

    /* renamed from: a */
    public final int f38626a;

    /* renamed from: b */
    public final int f38627b;

    public DataCharacter(int i, int i2) {
        this.f38626a = i;
        this.f38627b = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DataCharacter)) {
            return false;
        }
        DataCharacter dataCharacter = (DataCharacter) obj;
        return this.f38626a == dataCharacter.f38626a && this.f38627b == dataCharacter.f38627b;
    }

    public final int getChecksumPortion() {
        return this.f38627b;
    }

    public final int getValue() {
        return this.f38626a;
    }

    public final int hashCode() {
        return this.f38627b ^ this.f38626a;
    }

    public final String toString() {
        return this.f38626a + MotionUtils.f31761c + this.f38627b + ')';
    }
}
