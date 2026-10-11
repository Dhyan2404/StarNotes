package com.onyx.harfbuzz.font;

import androidx.annotation.NonNull;
import androidx.annotation.Size;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.harfbuzz.utils.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* loaded from: classes9.dex */
public final class ColorPalette {
    public static final int USABLE_WITH_DARK_BACKGROUND = 2;
    public static final int USABLE_WITH_LIGHT_BACKGROUND = 1;

    /* renamed from: a */
    @NonNull
    public final String f62723a;

    /* renamed from: b */
    public final int f62724b;

    /* renamed from: c */
    @NonNull
    public final int[] f62725c;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes9.dex */
    public @interface Flags {
    }

    public ColorPalette(@NonNull String str, int i, @NonNull int[] iArr) {
        this.f62723a = str;
        this.f62724b = i;
        this.f62725c = iArr;
    }

    @NonNull
    /* renamed from: of */
    public static ColorPalette m52028of(@NonNull String str, int i, @NonNull @Size(min = 1) int[] iArr) {
        Preconditions.checkNotNull(str, "name");
        Preconditions.checkNotNull(iArr, CouchFieldKey.KEY_COLORS);
        Preconditions.checkArgument(iArr.length >= 1, "The colors array is empty");
        return new ColorPalette(str, i, Arrays.copyOf(iArr, iArr.length));
    }

    @NonNull
    public int[] colors() {
        int[] iArr = this.f62725c;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ColorPalette.class != obj.getClass()) {
            return false;
        }
        ColorPalette colorPalette = (ColorPalette) obj;
        return this.f62723a.equals(colorPalette.f62723a) && this.f62724b == colorPalette.f62724b && Arrays.equals(this.f62725c, colorPalette.f62725c);
    }

    public int flags() {
        return this.f62724b;
    }

    public int hashCode() {
        return (((this.f62723a.hashCode() * 31) + this.f62724b) * 31) + Arrays.hashCode(this.f62725c);
    }

    @NonNull
    public String name() {
        return this.f62723a;
    }
}
