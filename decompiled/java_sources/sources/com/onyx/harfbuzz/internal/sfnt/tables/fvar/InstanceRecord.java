package com.onyx.harfbuzz.internal.sfnt.tables.fvar;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.internal.sfnt.SfntTable;

/* loaded from: classes9.dex */
public final class InstanceRecord {

    /* renamed from: d */
    public static final int f62847d = 0;

    /* renamed from: e */
    public static final int f62848e = 2;

    /* renamed from: f */
    public static final int f62849f = 4;

    /* renamed from: a */
    @NonNull
    public final SfntTable f62850a;

    /* renamed from: b */
    public final int f62851b;

    /* renamed from: c */
    public final int f62852c;

    public InstanceRecord(@NonNull SfntTable sfntTable, int i, int i2) {
        int i3 = (i * 4) + 4;
        this.f62850a = sfntTable;
        this.f62851b = i;
        this.f62852c = i2 - i3 < 2 ? -1 : i3;
    }

    public static boolean checkBounds(int i, int i2, int i3) {
        return ((i + 4) + (i2 * 4)) + 4 < i3;
    }

    @NonNull
    public float[] coordinates() {
        float[] fArr = new float[this.f62851b];
        for (int i = 0; i < this.f62851b; i++) {
            fArr[i] = this.f62850a.readFixed((i * 4) + 4);
        }
        return fArr;
    }

    public int flags() {
        return this.f62850a.readUInt16(2);
    }

    public int postScriptNameID() {
        if (this.f62852c != -1) {
            return this.f62850a.readInt32((this.f62851b * 4) + 4);
        }
        return -1;
    }

    public int subfamilyNameID() {
        return this.f62850a.readUInt16(0);
    }
}
