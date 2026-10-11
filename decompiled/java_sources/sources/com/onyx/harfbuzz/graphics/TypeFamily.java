package com.onyx.harfbuzz.graphics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.onyx.harfbuzz.utils.Preconditions;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes9.dex */
public class TypeFamily {

    /* renamed from: a */
    @NonNull
    public final String f62783a;

    /* renamed from: b */
    @NonNull
    @Size(min = 1)
    public final List<HBTypeface> f62784b;

    public TypeFamily(@NonNull String str, @NonNull @Size(min = 1) List<HBTypeface> list) {
        Preconditions.checkNotNull(str, "familyName");
        Preconditions.checkNotNull(list, "typefaces");
        Preconditions.checkArgument(!list.isEmpty(), "Typefaces list cannot be empty");
        this.f62783a = str;
        this.f62784b = list;
    }

    /* renamed from: a */
    public static int m52074a(@NonNull TypeSlope typeSlope, @NonNull TypeSlope typeSlope2) {
        return new int[]{0, 2, 1, 2, 0, 1, 2, 1, 0}[(typeSlope.ordinal() * 3) + typeSlope2.ordinal()];
    }

    /* renamed from: b */
    public static int m52075b(@NonNull TypeWeight typeWeight, @NonNull TypeWeight typeWeight2) {
        return new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 1, 0, 2, 3, 4, 5, 6, 7, 8, 2, 1, 0, 3, 4, 5, 6, 7, 8, 4, 3, 2, 0, 1, 5, 6, 7, 8, 4, 3, 2, 1, 0, 5, 6, 7, 8, 8, 7, 6, 5, 4, 0, 1, 2, 3, 8, 7, 6, 5, 4, 3, 0, 1, 2, 8, 7, 6, 5, 4, 3, 2, 0, 1, 8, 7, 6, 5, 4, 3, 2, 1, 0}[(typeWeight.ordinal() * 9) + typeWeight2.ordinal()];
    }

    /* renamed from: c */
    public static int m52076c(@NonNull TypeWidth typeWidth, @NonNull TypeWidth typeWidth2) {
        return Math.abs(typeWidth.ordinal() - typeWidth2.ordinal());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TypeFamily typeFamily = (TypeFamily) obj;
            if (this.f62783a.equals(typeFamily.f62783a) && this.f62784b.equals(typeFamily.f62784b)) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    public String getFamilyName() {
        return this.f62783a;
    }

    @NonNull
    public HBTypeface getTypefaceByStyle(@NonNull TypeWidth typeWidth, @NonNull TypeWeight typeWeight, @NonNull TypeSlope typeSlope) {
        Preconditions.checkNotNull(typeWidth, "typeWidth");
        Preconditions.checkNotNull(typeWeight, "typeWeight");
        Preconditions.checkNotNull(typeSlope, "typeSlope");
        Iterator<HBTypeface> it2 = this.f62784b.iterator();
        HBTypeface next = it2.next();
        while (it2.hasNext()) {
            HBTypeface next2 = it2.next();
            if (m52076c(typeWidth, next2.getWidth()) - m52076c(typeWidth, next.getWidth()) <= 0 && m52074a(typeSlope, next2.getSlope()) - m52074a(typeSlope, next.getSlope()) <= 0 && m52075b(typeWeight, next2.getWeight()) - m52075b(typeWeight, next.getWeight()) <= 0) {
                next = next2;
            }
        }
        return next;
    }

    @NonNull
    public List<HBTypeface> getTypefaces() {
        return this.f62784b;
    }

    public int hashCode() {
        return (this.f62783a.hashCode() * 31) + this.f62784b.hashCode();
    }

    public String toString() {
        return "TypeFamily{familyName=" + this.f62783a + ", typefaces=" + this.f62784b + "}";
    }
}
