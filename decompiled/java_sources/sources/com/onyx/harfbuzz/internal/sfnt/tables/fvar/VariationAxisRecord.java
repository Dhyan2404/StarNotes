package com.onyx.harfbuzz.internal.sfnt.tables.fvar;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.internal.sfnt.SfntTable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes9.dex */
public final class VariationAxisRecord {
    public static final int FLAG_HIDDEN_AXIS = 1;

    /* renamed from: b */
    public static final int f62853b = 0;

    /* renamed from: c */
    public static final int f62854c = 4;

    /* renamed from: d */
    public static final int f62855d = 8;

    /* renamed from: e */
    public static final int f62856e = 12;

    /* renamed from: f */
    public static final int f62857f = 16;

    /* renamed from: g */
    public static final int f62858g = 18;

    /* renamed from: a */
    @NonNull
    public final SfntTable f62859a;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes9.dex */
    public @interface Flags {
    }

    public VariationAxisRecord(@NonNull SfntTable sfntTable) {
        this.f62859a = sfntTable;
    }

    public int axisNameId() {
        return this.f62859a.readUInt16(18);
    }

    public int axisTag() {
        return this.f62859a.readInt32(0);
    }

    public float defaultValue() {
        return this.f62859a.readFixed(8);
    }

    public int flags() {
        return this.f62859a.readUInt16(16);
    }

    public float maxValue() {
        return this.f62859a.readFixed(12);
    }

    public float minValue() {
        return this.f62859a.readFixed(4);
    }
}
