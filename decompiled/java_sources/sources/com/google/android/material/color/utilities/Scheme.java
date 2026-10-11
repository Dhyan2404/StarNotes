package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;

@CheckReturnValue
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class Scheme {

    /* renamed from: A */
    public int f30976A;

    /* renamed from: B */
    public int f30977B;

    /* renamed from: C */
    public int f30978C;

    /* renamed from: a */
    public int f30979a;

    /* renamed from: b */
    public int f30980b;

    /* renamed from: c */
    public int f30981c;

    /* renamed from: d */
    public int f30982d;

    /* renamed from: e */
    public int f30983e;

    /* renamed from: f */
    public int f30984f;

    /* renamed from: g */
    public int f30985g;

    /* renamed from: h */
    public int f30986h;

    /* renamed from: i */
    public int f30987i;

    /* renamed from: j */
    public int f30988j;

    /* renamed from: k */
    public int f30989k;

    /* renamed from: l */
    public int f30990l;

    /* renamed from: m */
    public int f30991m;

    /* renamed from: n */
    public int f30992n;

    /* renamed from: o */
    public int f30993o;

    /* renamed from: p */
    public int f30994p;

    /* renamed from: q */
    public int f30995q;

    /* renamed from: r */
    public int f30996r;

    /* renamed from: s */
    public int f30997s;

    /* renamed from: t */
    public int f30998t;

    /* renamed from: u */
    public int f30999u;

    /* renamed from: v */
    public int f31000v;

    /* renamed from: w */
    public int f31001w;

    /* renamed from: x */
    public int f31002x;

    /* renamed from: y */
    public int f31003y;

    /* renamed from: z */
    public int f31004z;

    public Scheme() {
    }

    /* renamed from: a */
    public static Scheme m23903a(CorePalette corePalette) {
        return new Scheme().withPrimary(corePalette.f30937a1.tone(80)).withOnPrimary(corePalette.f30937a1.tone(20)).withPrimaryContainer(corePalette.f30937a1.tone(30)).withOnPrimaryContainer(corePalette.f30937a1.tone(90)).withSecondary(corePalette.f30938a2.tone(80)).withOnSecondary(corePalette.f30938a2.tone(20)).withSecondaryContainer(corePalette.f30938a2.tone(30)).withOnSecondaryContainer(corePalette.f30938a2.tone(90)).withTertiary(corePalette.f30939a3.tone(80)).withOnTertiary(corePalette.f30939a3.tone(20)).withTertiaryContainer(corePalette.f30939a3.tone(30)).withOnTertiaryContainer(corePalette.f30939a3.tone(90)).withError(corePalette.error.tone(80)).withOnError(corePalette.error.tone(20)).withErrorContainer(corePalette.error.tone(30)).withOnErrorContainer(corePalette.error.tone(80)).withBackground(corePalette.f30940n1.tone(10)).withOnBackground(corePalette.f30940n1.tone(90)).withSurface(corePalette.f30940n1.tone(10)).withOnSurface(corePalette.f30940n1.tone(90)).withSurfaceVariant(corePalette.f30941n2.tone(30)).withOnSurfaceVariant(corePalette.f30941n2.tone(80)).withOutline(corePalette.f30941n2.tone(60)).withOutlineVariant(corePalette.f30941n2.tone(30)).withShadow(corePalette.f30940n1.tone(0)).withScrim(corePalette.f30940n1.tone(0)).withInverseSurface(corePalette.f30940n1.tone(90)).withInverseOnSurface(corePalette.f30940n1.tone(20)).withInversePrimary(corePalette.f30937a1.tone(40));
    }

    /* renamed from: b */
    public static Scheme m23904b(CorePalette corePalette) {
        return new Scheme().withPrimary(corePalette.f30937a1.tone(40)).withOnPrimary(corePalette.f30937a1.tone(100)).withPrimaryContainer(corePalette.f30937a1.tone(90)).withOnPrimaryContainer(corePalette.f30937a1.tone(10)).withSecondary(corePalette.f30938a2.tone(40)).withOnSecondary(corePalette.f30938a2.tone(100)).withSecondaryContainer(corePalette.f30938a2.tone(90)).withOnSecondaryContainer(corePalette.f30938a2.tone(10)).withTertiary(corePalette.f30939a3.tone(40)).withOnTertiary(corePalette.f30939a3.tone(100)).withTertiaryContainer(corePalette.f30939a3.tone(90)).withOnTertiaryContainer(corePalette.f30939a3.tone(10)).withError(corePalette.error.tone(40)).withOnError(corePalette.error.tone(100)).withErrorContainer(corePalette.error.tone(90)).withOnErrorContainer(corePalette.error.tone(10)).withBackground(corePalette.f30940n1.tone(99)).withOnBackground(corePalette.f30940n1.tone(10)).withSurface(corePalette.f30940n1.tone(99)).withOnSurface(corePalette.f30940n1.tone(10)).withSurfaceVariant(corePalette.f30941n2.tone(90)).withOnSurfaceVariant(corePalette.f30941n2.tone(30)).withOutline(corePalette.f30941n2.tone(50)).withOutlineVariant(corePalette.f30941n2.tone(80)).withShadow(corePalette.f30940n1.tone(0)).withScrim(corePalette.f30940n1.tone(0)).withInverseSurface(corePalette.f30940n1.tone(20)).withInverseOnSurface(corePalette.f30940n1.tone(95)).withInversePrimary(corePalette.f30937a1.tone(80));
    }

    public static Scheme dark(int i) {
        return m23903a(CorePalette.m23539of(i));
    }

    public static Scheme darkContent(int i) {
        return m23903a(CorePalette.contentOf(i));
    }

    public static Scheme light(int i) {
        return m23904b(CorePalette.m23539of(i));
    }

    public static Scheme lightContent(int i) {
        return m23904b(CorePalette.contentOf(i));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scheme) || !super.equals(obj)) {
            return false;
        }
        Scheme scheme = (Scheme) obj;
        return this.f30979a == scheme.f30979a && this.f30980b == scheme.f30980b && this.f30981c == scheme.f30981c && this.f30982d == scheme.f30982d && this.f30983e == scheme.f30983e && this.f30984f == scheme.f30984f && this.f30985g == scheme.f30985g && this.f30986h == scheme.f30986h && this.f30987i == scheme.f30987i && this.f30988j == scheme.f30988j && this.f30989k == scheme.f30989k && this.f30990l == scheme.f30990l && this.f30991m == scheme.f30991m && this.f30992n == scheme.f30992n && this.f30993o == scheme.f30993o && this.f30994p == scheme.f30994p && this.f30995q == scheme.f30995q && this.f30996r == scheme.f30996r && this.f30997s == scheme.f30997s && this.f30998t == scheme.f30998t && this.f30999u == scheme.f30999u && this.f31000v == scheme.f31000v && this.f31001w == scheme.f31001w && this.f31002x == scheme.f31002x && this.f31003y == scheme.f31003y && this.f31004z == scheme.f31004z && this.f30976A == scheme.f30976A && this.f30977B == scheme.f30977B && this.f30978C == scheme.f30978C;
    }

    public int getBackground() {
        return this.f30995q;
    }

    public int getError() {
        return this.f30991m;
    }

    public int getErrorContainer() {
        return this.f30993o;
    }

    public int getInverseOnSurface() {
        return this.f30977B;
    }

    public int getInversePrimary() {
        return this.f30978C;
    }

    public int getInverseSurface() {
        return this.f30976A;
    }

    public int getOnBackground() {
        return this.f30996r;
    }

    public int getOnError() {
        return this.f30992n;
    }

    public int getOnErrorContainer() {
        return this.f30994p;
    }

    public int getOnPrimary() {
        return this.f30980b;
    }

    public int getOnPrimaryContainer() {
        return this.f30982d;
    }

    public int getOnSecondary() {
        return this.f30984f;
    }

    public int getOnSecondaryContainer() {
        return this.f30986h;
    }

    public int getOnSurface() {
        return this.f30998t;
    }

    public int getOnSurfaceVariant() {
        return this.f31000v;
    }

    public int getOnTertiary() {
        return this.f30988j;
    }

    public int getOnTertiaryContainer() {
        return this.f30990l;
    }

    public int getOutline() {
        return this.f31001w;
    }

    public int getOutlineVariant() {
        return this.f31002x;
    }

    public int getPrimary() {
        return this.f30979a;
    }

    public int getPrimaryContainer() {
        return this.f30981c;
    }

    public int getScrim() {
        return this.f31004z;
    }

    public int getSecondary() {
        return this.f30983e;
    }

    public int getSecondaryContainer() {
        return this.f30985g;
    }

    public int getShadow() {
        return this.f31003y;
    }

    public int getSurface() {
        return this.f30997s;
    }

    public int getSurfaceVariant() {
        return this.f30999u;
    }

    public int getTertiary() {
        return this.f30987i;
    }

    public int getTertiaryContainer() {
        return this.f30989k;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f30979a) * 31) + this.f30980b) * 31) + this.f30981c) * 31) + this.f30982d) * 31) + this.f30983e) * 31) + this.f30984f) * 31) + this.f30985g) * 31) + this.f30986h) * 31) + this.f30987i) * 31) + this.f30988j) * 31) + this.f30989k) * 31) + this.f30990l) * 31) + this.f30991m) * 31) + this.f30992n) * 31) + this.f30993o) * 31) + this.f30994p) * 31) + this.f30995q) * 31) + this.f30996r) * 31) + this.f30997s) * 31) + this.f30998t) * 31) + this.f30999u) * 31) + this.f31000v) * 31) + this.f31001w) * 31) + this.f31002x) * 31) + this.f31003y) * 31) + this.f31004z) * 31) + this.f30976A) * 31) + this.f30977B) * 31) + this.f30978C;
    }

    public void setBackground(int i) {
        this.f30995q = i;
    }

    public void setError(int i) {
        this.f30991m = i;
    }

    public void setErrorContainer(int i) {
        this.f30993o = i;
    }

    public void setInverseOnSurface(int i) {
        this.f30977B = i;
    }

    public void setInversePrimary(int i) {
        this.f30978C = i;
    }

    public void setInverseSurface(int i) {
        this.f30976A = i;
    }

    public void setOnBackground(int i) {
        this.f30996r = i;
    }

    public void setOnError(int i) {
        this.f30992n = i;
    }

    public void setOnErrorContainer(int i) {
        this.f30994p = i;
    }

    public void setOnPrimary(int i) {
        this.f30980b = i;
    }

    public void setOnPrimaryContainer(int i) {
        this.f30982d = i;
    }

    public void setOnSecondary(int i) {
        this.f30984f = i;
    }

    public void setOnSecondaryContainer(int i) {
        this.f30986h = i;
    }

    public void setOnSurface(int i) {
        this.f30998t = i;
    }

    public void setOnSurfaceVariant(int i) {
        this.f31000v = i;
    }

    public void setOnTertiary(int i) {
        this.f30988j = i;
    }

    public void setOnTertiaryContainer(int i) {
        this.f30990l = i;
    }

    public void setOutline(int i) {
        this.f31001w = i;
    }

    public void setOutlineVariant(int i) {
        this.f31002x = i;
    }

    public void setPrimary(int i) {
        this.f30979a = i;
    }

    public void setPrimaryContainer(int i) {
        this.f30981c = i;
    }

    public void setScrim(int i) {
        this.f31004z = i;
    }

    public void setSecondary(int i) {
        this.f30983e = i;
    }

    public void setSecondaryContainer(int i) {
        this.f30985g = i;
    }

    public void setShadow(int i) {
        this.f31003y = i;
    }

    public void setSurface(int i) {
        this.f30997s = i;
    }

    public void setSurfaceVariant(int i) {
        this.f30999u = i;
    }

    public void setTertiary(int i) {
        this.f30987i = i;
    }

    public void setTertiaryContainer(int i) {
        this.f30989k = i;
    }

    public String toString() {
        return "Scheme{primary=" + this.f30979a + ", onPrimary=" + this.f30980b + ", primaryContainer=" + this.f30981c + ", onPrimaryContainer=" + this.f30982d + ", secondary=" + this.f30983e + ", onSecondary=" + this.f30984f + ", secondaryContainer=" + this.f30985g + ", onSecondaryContainer=" + this.f30986h + ", tertiary=" + this.f30987i + ", onTertiary=" + this.f30988j + ", tertiaryContainer=" + this.f30989k + ", onTertiaryContainer=" + this.f30990l + ", error=" + this.f30991m + ", onError=" + this.f30992n + ", errorContainer=" + this.f30993o + ", onErrorContainer=" + this.f30994p + ", background=" + this.f30995q + ", onBackground=" + this.f30996r + ", surface=" + this.f30997s + ", onSurface=" + this.f30998t + ", surfaceVariant=" + this.f30999u + ", onSurfaceVariant=" + this.f31000v + ", outline=" + this.f31001w + ", outlineVariant=" + this.f31002x + ", shadow=" + this.f31003y + ", scrim=" + this.f31004z + ", inverseSurface=" + this.f30976A + ", inverseOnSurface=" + this.f30977B + ", inversePrimary=" + this.f30978C + '}';
    }

    @CanIgnoreReturnValue
    public Scheme withBackground(int i) {
        this.f30995q = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withError(int i) {
        this.f30991m = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withErrorContainer(int i) {
        this.f30993o = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withInverseOnSurface(int i) {
        this.f30977B = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withInversePrimary(int i) {
        this.f30978C = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withInverseSurface(int i) {
        this.f30976A = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnBackground(int i) {
        this.f30996r = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnError(int i) {
        this.f30992n = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnErrorContainer(int i) {
        this.f30994p = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnPrimary(int i) {
        this.f30980b = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnPrimaryContainer(int i) {
        this.f30982d = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSecondary(int i) {
        this.f30984f = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSecondaryContainer(int i) {
        this.f30986h = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSurface(int i) {
        this.f30998t = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSurfaceVariant(int i) {
        this.f31000v = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnTertiary(int i) {
        this.f30988j = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnTertiaryContainer(int i) {
        this.f30990l = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOutline(int i) {
        this.f31001w = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOutlineVariant(int i) {
        this.f31002x = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withPrimary(int i) {
        this.f30979a = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withPrimaryContainer(int i) {
        this.f30981c = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withScrim(int i) {
        this.f31004z = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSecondary(int i) {
        this.f30983e = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSecondaryContainer(int i) {
        this.f30985g = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withShadow(int i) {
        this.f31003y = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSurface(int i) {
        this.f30997s = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSurfaceVariant(int i) {
        this.f30999u = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withTertiary(int i) {
        this.f30987i = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withTertiaryContainer(int i) {
        this.f30989k = i;
        return this;
    }

    public Scheme(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28, int i29) {
        this.f30979a = i;
        this.f30980b = i2;
        this.f30981c = i3;
        this.f30982d = i4;
        this.f30983e = i5;
        this.f30984f = i6;
        this.f30985g = i7;
        this.f30986h = i8;
        this.f30987i = i9;
        this.f30988j = i10;
        this.f30989k = i11;
        this.f30990l = i12;
        this.f30991m = i13;
        this.f30992n = i14;
        this.f30993o = i15;
        this.f30994p = i16;
        this.f30995q = i17;
        this.f30996r = i18;
        this.f30997s = i19;
        this.f30998t = i20;
        this.f30999u = i21;
        this.f31000v = i22;
        this.f31001w = i23;
        this.f31002x = i24;
        this.f31003y = i25;
        this.f31004z = i26;
        this.f30976A = i27;
        this.f30977B = i28;
        this.f30978C = i29;
    }
}
