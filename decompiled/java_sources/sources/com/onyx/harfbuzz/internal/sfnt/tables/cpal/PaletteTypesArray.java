package com.onyx.harfbuzz.internal.sfnt.tables.cpal;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.internal.sfnt.SfntTable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes9.dex */
public final class PaletteTypesArray {
    public static final int USABLE_WITH_DARK_BACKGROUND = 2;
    public static final int USABLE_WITH_LIGHT_BACKGROUND = 1;

    /* renamed from: a */
    @NonNull
    public final SfntTable f62837a;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes9.dex */
    public @interface Flags {
    }

    public PaletteTypesArray(@NonNull SfntTable sfntTable) {
        this.f62837a = sfntTable;
    }

    public int get(int i) {
        return this.f62837a.readInt32(i * 4);
    }
}
