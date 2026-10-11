package com.onyx.harfbuzz.internal.sfnt.tables.cpal;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.onyx.harfbuzz.internal.sfnt.SfntTable;

/* loaded from: classes9.dex */
public final class ColorRecordsArray {

    /* renamed from: a */
    @NonNull
    public final SfntTable f62835a;

    public ColorRecordsArray(@NonNull SfntTable sfntTable) {
        this.f62835a = sfntTable;
    }

    @ColorInt
    public int get(int i) {
        int i2 = i * 4;
        short readUInt8 = this.f62835a.readUInt8(i2);
        short readUInt82 = this.f62835a.readUInt8(i2 + 1);
        return Color.argb((int) this.f62835a.readUInt8(i2 + 3), (int) this.f62835a.readUInt8(i2 + 2), (int) readUInt82, (int) readUInt8);
    }
}
