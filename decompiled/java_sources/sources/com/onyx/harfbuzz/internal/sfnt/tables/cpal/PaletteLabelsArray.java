package com.onyx.harfbuzz.internal.sfnt.tables.cpal;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.internal.sfnt.SfntTable;

/* loaded from: classes9.dex */
public final class PaletteLabelsArray {

    /* renamed from: a */
    @NonNull
    public final SfntTable f62836a;

    public PaletteLabelsArray(@NonNull SfntTable sfntTable) {
        this.f62836a = sfntTable;
    }

    public int get(int i) {
        return this.f62836a.readUInt16(i * 2);
    }
}
