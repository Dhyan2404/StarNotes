package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes5.dex */
public final class TtmlStyle {

    /* renamed from: A */
    public static final int f27133A = 2;

    /* renamed from: B */
    public static final int f27134B = 3;

    /* renamed from: C */
    public static final int f27135C = 0;

    /* renamed from: D */
    public static final int f27136D = 1;

    /* renamed from: E */
    public static final int f27137E = 1;

    /* renamed from: F */
    public static final int f27138F = 2;

    /* renamed from: G */
    public static final int f27139G = 3;

    /* renamed from: H */
    public static final int f27140H = 4;

    /* renamed from: t */
    public static final int f27141t = -1;

    /* renamed from: u */
    public static final float f27142u = Float.MAX_VALUE;

    /* renamed from: v */
    public static final int f27143v = 0;

    /* renamed from: w */
    public static final int f27144w = 1;

    /* renamed from: x */
    public static final int f27145x = 2;

    /* renamed from: y */
    public static final int f27146y = 3;

    /* renamed from: z */
    public static final int f27147z = 1;

    /* renamed from: a */
    @Nullable
    public String f27148a;

    /* renamed from: b */
    public int f27149b;

    /* renamed from: c */
    public boolean f27150c;

    /* renamed from: d */
    public int f27151d;

    /* renamed from: e */
    public boolean f27152e;

    /* renamed from: k */
    public float f27158k;

    /* renamed from: l */
    @Nullable
    public String f27159l;

    /* renamed from: o */
    @Nullable
    public Layout.Alignment f27162o;

    /* renamed from: p */
    @Nullable
    public Layout.Alignment f27163p;

    /* renamed from: r */
    @Nullable
    public TextEmphasis f27165r;

    /* renamed from: f */
    public int f27153f = -1;

    /* renamed from: g */
    public int f27154g = -1;

    /* renamed from: h */
    public int f27155h = -1;

    /* renamed from: i */
    public int f27156i = -1;

    /* renamed from: j */
    public int f27157j = -1;

    /* renamed from: m */
    public int f27160m = -1;

    /* renamed from: n */
    public int f27161n = -1;

    /* renamed from: q */
    public int f27164q = -1;

    /* renamed from: s */
    public float f27166s = Float.MAX_VALUE;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface FontSizeUnit {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface RubyType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface StyleFlags {
    }

    /* renamed from: A */
    public TtmlStyle m20694A(int i) {
        this.f27157j = i;
        return this;
    }

    /* renamed from: B */
    public TtmlStyle m20695B(@Nullable String str) {
        this.f27159l = str;
        return this;
    }

    /* renamed from: C */
    public TtmlStyle m20696C(boolean z) {
        this.f27156i = z ? 1 : 0;
        return this;
    }

    /* renamed from: D */
    public TtmlStyle m20697D(boolean z) {
        this.f27153f = z ? 1 : 0;
        return this;
    }

    /* renamed from: E */
    public TtmlStyle m20698E(@Nullable Layout.Alignment alignment) {
        this.f27163p = alignment;
        return this;
    }

    /* renamed from: F */
    public TtmlStyle m20699F(int i) {
        this.f27161n = i;
        return this;
    }

    /* renamed from: G */
    public TtmlStyle m20700G(int i) {
        this.f27160m = i;
        return this;
    }

    /* renamed from: H */
    public TtmlStyle m20701H(float f) {
        this.f27166s = f;
        return this;
    }

    /* renamed from: I */
    public TtmlStyle m20702I(@Nullable Layout.Alignment alignment) {
        this.f27162o = alignment;
        return this;
    }

    /* renamed from: J */
    public TtmlStyle m20703J(boolean z) {
        this.f27164q = z ? 1 : 0;
        return this;
    }

    /* renamed from: K */
    public TtmlStyle m20704K(@Nullable TextEmphasis textEmphasis) {
        this.f27165r = textEmphasis;
        return this;
    }

    /* renamed from: L */
    public TtmlStyle m20705L(boolean z) {
        this.f27154g = z ? 1 : 0;
        return this;
    }

    /* renamed from: a */
    public TtmlStyle m20706a(@Nullable TtmlStyle ttmlStyle) {
        return m20724s(ttmlStyle, true);
    }

    /* renamed from: b */
    public int m20707b() {
        if (this.f27152e) {
            return this.f27151d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    /* renamed from: c */
    public int m20708c() {
        if (this.f27150c) {
            return this.f27149b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    @Nullable
    /* renamed from: d */
    public String m20709d() {
        return this.f27148a;
    }

    /* renamed from: e */
    public float m20710e() {
        return this.f27158k;
    }

    /* renamed from: f */
    public int m20711f() {
        return this.f27157j;
    }

    @Nullable
    /* renamed from: g */
    public String m20712g() {
        return this.f27159l;
    }

    @Nullable
    /* renamed from: h */
    public Layout.Alignment m20713h() {
        return this.f27163p;
    }

    /* renamed from: i */
    public int m20714i() {
        return this.f27161n;
    }

    /* renamed from: j */
    public int m20715j() {
        return this.f27160m;
    }

    /* renamed from: k */
    public float m20716k() {
        return this.f27166s;
    }

    /* renamed from: l */
    public int m20717l() {
        int i = this.f27155h;
        if (i == -1 && this.f27156i == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.f27156i == 1 ? 2 : 0);
    }

    @Nullable
    /* renamed from: m */
    public Layout.Alignment m20718m() {
        return this.f27162o;
    }

    /* renamed from: n */
    public boolean m20719n() {
        return this.f27164q == 1;
    }

    @Nullable
    /* renamed from: o */
    public TextEmphasis m20720o() {
        return this.f27165r;
    }

    /* renamed from: p */
    public boolean m20721p() {
        return this.f27152e;
    }

    /* renamed from: q */
    public boolean m20722q() {
        return this.f27150c;
    }

    /* renamed from: r */
    public TtmlStyle m20723r(@Nullable TtmlStyle ttmlStyle) {
        return m20724s(ttmlStyle, false);
    }

    /* renamed from: s */
    public final TtmlStyle m20724s(@Nullable TtmlStyle ttmlStyle, boolean z) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (ttmlStyle != null) {
            if (!this.f27150c && ttmlStyle.f27150c) {
                m20729x(ttmlStyle.f27149b);
            }
            if (this.f27155h == -1) {
                this.f27155h = ttmlStyle.f27155h;
            }
            if (this.f27156i == -1) {
                this.f27156i = ttmlStyle.f27156i;
            }
            if (this.f27148a == null && (str = ttmlStyle.f27148a) != null) {
                this.f27148a = str;
            }
            if (this.f27153f == -1) {
                this.f27153f = ttmlStyle.f27153f;
            }
            if (this.f27154g == -1) {
                this.f27154g = ttmlStyle.f27154g;
            }
            if (this.f27161n == -1) {
                this.f27161n = ttmlStyle.f27161n;
            }
            if (this.f27162o == null && (alignment2 = ttmlStyle.f27162o) != null) {
                this.f27162o = alignment2;
            }
            if (this.f27163p == null && (alignment = ttmlStyle.f27163p) != null) {
                this.f27163p = alignment;
            }
            if (this.f27164q == -1) {
                this.f27164q = ttmlStyle.f27164q;
            }
            if (this.f27157j == -1) {
                this.f27157j = ttmlStyle.f27157j;
                this.f27158k = ttmlStyle.f27158k;
            }
            if (this.f27165r == null) {
                this.f27165r = ttmlStyle.f27165r;
            }
            if (this.f27166s == Float.MAX_VALUE) {
                this.f27166s = ttmlStyle.f27166s;
            }
            if (z && !this.f27152e && ttmlStyle.f27152e) {
                m20727v(ttmlStyle.f27151d);
            }
            if (z && this.f27160m == -1 && (i = ttmlStyle.f27160m) != -1) {
                this.f27160m = i;
            }
        }
        return this;
    }

    /* renamed from: t */
    public boolean m20725t() {
        return this.f27153f == 1;
    }

    /* renamed from: u */
    public boolean m20726u() {
        return this.f27154g == 1;
    }

    /* renamed from: v */
    public TtmlStyle m20727v(int i) {
        this.f27151d = i;
        this.f27152e = true;
        return this;
    }

    /* renamed from: w */
    public TtmlStyle m20728w(boolean z) {
        this.f27155h = z ? 1 : 0;
        return this;
    }

    /* renamed from: x */
    public TtmlStyle m20729x(int i) {
        this.f27149b = i;
        this.f27150c = true;
        return this;
    }

    /* renamed from: y */
    public TtmlStyle m20730y(@Nullable String str) {
        this.f27148a = str;
        return this;
    }

    /* renamed from: z */
    public TtmlStyle m20731z(float f) {
        this.f27158k = f;
        return this;
    }
}
