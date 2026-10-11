package com.onyx.harfbuzz.font;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.onyx.harfbuzz.utils.Preconditions;
import java.util.Arrays;

/* loaded from: classes9.dex */
public class NamedStyle {

    /* renamed from: a */
    @NonNull
    public final String f62730a;

    /* renamed from: b */
    @NonNull
    public final float[] f62731b;

    /* renamed from: c */
    @Nullable
    public final String f62732c;

    public NamedStyle(@NonNull String str, @NonNull float[] fArr, @Nullable String str2) {
        this.f62730a = str;
        this.f62731b = fArr;
        this.f62732c = str2;
    }

    @NonNull
    /* renamed from: of */
    public static NamedStyle m52031of(@NonNull String str, @NonNull @Size(min = 1) float[] fArr, @Nullable String str2) {
        Preconditions.checkNotNull(str, "styleName");
        Preconditions.checkNotNull(fArr, "coordinates");
        Preconditions.checkArgument(fArr.length >= 1, "The coordinates array is empty");
        return new NamedStyle(str, fArr, str2);
    }

    @NonNull
    public float[] coordinates() {
        float[] fArr = this.f62731b;
        return Arrays.copyOf(fArr, fArr.length);
    }

    public boolean equals(@Nullable Object obj) {
        String str;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NamedStyle namedStyle = (NamedStyle) obj;
        return (this.f62730a.equals(namedStyle.f62730a) && Arrays.equals(this.f62731b, namedStyle.f62731b) && (str = this.f62732c) != null) ? str.equals(namedStyle.f62732c) : namedStyle.f62732c == null;
    }

    public int hashCode() {
        int hashCode = ((this.f62730a.hashCode() * 31) + Arrays.hashCode(this.f62731b)) * 31;
        String str = this.f62732c;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @Nullable
    public String postScriptName() {
        return this.f62732c;
    }

    @NonNull
    public String styleName() {
        return this.f62730a;
    }
}
