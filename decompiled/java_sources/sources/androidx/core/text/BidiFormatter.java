package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class BidiFormatter {

    /* renamed from: d */
    public static final TextDirectionHeuristicCompat f5635d;

    /* renamed from: e */
    public static final char f5636e = 8234;

    /* renamed from: f */
    public static final char f5637f = 8235;

    /* renamed from: g */
    public static final char f5638g = 8236;

    /* renamed from: h */
    public static final char f5639h = 8206;

    /* renamed from: i */
    public static final char f5640i = 8207;

    /* renamed from: j */
    public static final String f5641j;

    /* renamed from: k */
    public static final String f5642k;

    /* renamed from: l */
    public static final String f5643l = "";

    /* renamed from: m */
    public static final int f5644m = 2;

    /* renamed from: n */
    public static final int f5645n = 2;

    /* renamed from: o */
    public static final BidiFormatter f5646o;

    /* renamed from: p */
    public static final BidiFormatter f5647p;

    /* renamed from: q */
    public static final int f5648q = -1;

    /* renamed from: r */
    public static final int f5649r = 0;

    /* renamed from: s */
    public static final int f5650s = 1;

    /* renamed from: a */
    public final boolean f5651a;

    /* renamed from: b */
    public final int f5652b;

    /* renamed from: c */
    public final TextDirectionHeuristicCompat f5653c;

    /* renamed from: androidx.core.text.BidiFormatter$a */
    /* loaded from: classes3.dex */
    public static class C0735a {

        /* renamed from: f */
        public static final int f5657f = 1792;

        /* renamed from: g */
        public static final byte[] f5658g = new byte[1792];

        /* renamed from: a */
        public final CharSequence f5659a;

        /* renamed from: b */
        public final boolean f5660b;

        /* renamed from: c */
        public final int f5661c;

        /* renamed from: d */
        public int f5662d;

        /* renamed from: e */
        public char f5663e;

        static {
            for (int i = 0; i < 1792; i++) {
                f5658g[i] = Character.getDirectionality(i);
            }
        }

        public C0735a(CharSequence charSequence, boolean z) {
            this.f5659a = charSequence;
            this.f5660b = z;
            this.f5661c = charSequence.length();
        }

        /* renamed from: c */
        public static byte m3207c(char c) {
            return c < 1792 ? f5658g[c] : Character.getDirectionality(c);
        }

        /* renamed from: a */
        public byte m3208a() {
            char charAt = this.f5659a.charAt(this.f5662d - 1);
            this.f5663e = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f5659a, this.f5662d);
                this.f5662d -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f5662d--;
            byte m3207c = m3207c(this.f5663e);
            if (!this.f5660b) {
                return m3207c;
            }
            char c = this.f5663e;
            return c == '>' ? m3214h() : c == ';' ? m3212f() : m3207c;
        }

        /* renamed from: b */
        public byte m3209b() {
            char charAt = this.f5659a.charAt(this.f5662d);
            this.f5663e = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f5659a, this.f5662d);
                this.f5662d += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f5662d++;
            byte m3207c = m3207c(this.f5663e);
            if (!this.f5660b) {
                return m3207c;
            }
            char c = this.f5663e;
            return c == '<' ? m3215i() : c == '&' ? m3213g() : m3207c;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:46:0x0045. Please report as an issue. */
        /* renamed from: d */
        public int m3210d() {
            this.f5662d = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f5662d < this.f5661c && i == 0) {
                byte m3209b = m3209b();
                if (m3209b != 0) {
                    if (m3209b == 1 || m3209b == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (m3209b != 9) {
                        switch (m3209b) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                continue;
                            case 16:
                            case 17:
                                i3++;
                                i2 = 1;
                                continue;
                            case 18:
                                i3--;
                                i2 = 0;
                                continue;
                        }
                    }
                } else if (i3 == 0) {
                    return -1;
                }
                i = i3;
            }
            if (i == 0) {
                return 0;
            }
            if (i2 != 0) {
                return i2;
            }
            while (this.f5662d > 0) {
                switch (m3208a()) {
                    case 14:
                    case 15:
                        if (i == i3) {
                            return -1;
                        }
                        i3--;
                    case 16:
                    case 17:
                        if (i == i3) {
                            return 1;
                        }
                        i3--;
                    case 18:
                        i3++;
                }
            }
            return 0;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:33:0x001c. Please report as an issue. */
        /* renamed from: e */
        public int m3211e() {
            this.f5662d = this.f5661c;
            int i = 0;
            while (true) {
                int i2 = i;
                while (this.f5662d > 0) {
                    byte m3208a = m3208a();
                    if (m3208a != 0) {
                        if (m3208a == 1 || m3208a == 2) {
                            if (i == 0) {
                                return 1;
                            }
                            if (i2 == 0) {
                                break;
                            }
                        } else if (m3208a != 9) {
                            switch (m3208a) {
                                case 14:
                                case 15:
                                    if (i2 == i) {
                                        return -1;
                                    }
                                    i--;
                                    break;
                                case 16:
                                case 17:
                                    if (i2 == i) {
                                        return 1;
                                    }
                                    i--;
                                    break;
                                case 18:
                                    i++;
                                    break;
                                default:
                                    if (i2 != 0) {
                                        break;
                                    } else {
                                        break;
                                    }
                            }
                        } else {
                            continue;
                        }
                    } else {
                        if (i == 0) {
                            return -1;
                        }
                        if (i2 == 0) {
                            break;
                        }
                    }
                }
                return 0;
            }
        }

        /* renamed from: f */
        public final byte m3212f() {
            char charAt;
            int i = this.f5662d;
            do {
                int i2 = this.f5662d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f5659a;
                int i3 = i2 - 1;
                this.f5662d = i3;
                charAt = charSequence.charAt(i3);
                this.f5663e = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.f5662d = i;
            this.f5663e = ';';
            return (byte) 13;
        }

        /* renamed from: g */
        public final byte m3213g() {
            char charAt;
            do {
                int i = this.f5662d;
                if (i >= this.f5661c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f5659a;
                this.f5662d = i + 1;
                charAt = charSequence.charAt(i);
                this.f5663e = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        /* renamed from: h */
        public final byte m3214h() {
            char charAt;
            int i = this.f5662d;
            while (true) {
                int i2 = this.f5662d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f5659a;
                int i3 = i2 - 1;
                this.f5662d = i3;
                char charAt2 = charSequence.charAt(i3);
                this.f5663e = charAt2;
                if (charAt2 == '<') {
                    return (byte) 12;
                }
                if (charAt2 == '>') {
                    break;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i4 = this.f5662d;
                        if (i4 > 0) {
                            CharSequence charSequence2 = this.f5659a;
                            int i5 = i4 - 1;
                            this.f5662d = i5;
                            charAt = charSequence2.charAt(i5);
                            this.f5663e = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
            this.f5662d = i;
            this.f5663e = '>';
            return (byte) 13;
        }

        /* renamed from: i */
        public final byte m3215i() {
            char charAt;
            int i = this.f5662d;
            while (true) {
                int i2 = this.f5662d;
                if (i2 >= this.f5661c) {
                    this.f5662d = i;
                    this.f5663e = '<';
                    return (byte) 13;
                }
                CharSequence charSequence = this.f5659a;
                this.f5662d = i2 + 1;
                char charAt2 = charSequence.charAt(i2);
                this.f5663e = charAt2;
                if (charAt2 == '>') {
                    return (byte) 12;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i3 = this.f5662d;
                        if (i3 < this.f5661c) {
                            CharSequence charSequence2 = this.f5659a;
                            this.f5662d = i3 + 1;
                            charAt = charSequence2.charAt(i3);
                            this.f5663e = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
        }
    }

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        f5635d = textDirectionHeuristicCompat;
        f5641j = Character.toString(f5639h);
        f5642k = Character.toString(f5640i);
        f5646o = new BidiFormatter(false, 2, textDirectionHeuristicCompat);
        f5647p = new BidiFormatter(true, 2, textDirectionHeuristicCompat);
    }

    public BidiFormatter(boolean z, int i, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.f5651a = z;
        this.f5652b = i;
        this.f5653c = textDirectionHeuristicCompat;
    }

    /* renamed from: a */
    public static int m3200a(CharSequence charSequence) {
        return new C0735a(charSequence, false).m3210d();
    }

    /* renamed from: b */
    public static int m3201b(CharSequence charSequence) {
        return new C0735a(charSequence, false).m3211e();
    }

    /* renamed from: c */
    public static boolean m3202c(Locale locale) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    /* renamed from: d */
    public final String m3203d(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        return (this.f5651a || !(isRtl || m3201b(charSequence) == 1)) ? this.f5651a ? (!isRtl || m3201b(charSequence) == -1) ? f5642k : "" : "" : f5641j;
    }

    /* renamed from: e */
    public final String m3204e(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        return (this.f5651a || !(isRtl || m3200a(charSequence) == 1)) ? this.f5651a ? (!isRtl || m3200a(charSequence) == -1) ? f5642k : "" : "" : f5641j;
    }

    public boolean getStereoReset() {
        return (this.f5652b & 2) != 0;
    }

    public boolean isRtl(String str) {
        return isRtl((CharSequence) str);
    }

    public boolean isRtlContext() {
        return this.f5651a;
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (str == null) {
            return null;
        }
        return unicodeWrap((CharSequence) str, textDirectionHeuristicCompat, z).toString();
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public boolean f5654a;

        /* renamed from: b */
        public int f5655b;

        /* renamed from: c */
        public TextDirectionHeuristicCompat f5656c;

        public Builder() {
            m3206b(BidiFormatter.m3202c(Locale.getDefault()));
        }

        /* renamed from: a */
        public static BidiFormatter m3205a(boolean z) {
            return z ? BidiFormatter.f5647p : BidiFormatter.f5646o;
        }

        /* renamed from: b */
        public final void m3206b(boolean z) {
            this.f5654a = z;
            this.f5656c = BidiFormatter.f5635d;
            this.f5655b = 2;
        }

        public BidiFormatter build() {
            return (this.f5655b == 2 && this.f5656c == BidiFormatter.f5635d) ? m3205a(this.f5654a) : new BidiFormatter(this.f5654a, this.f5655b, this.f5656c);
        }

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
            this.f5656c = textDirectionHeuristicCompat;
            return this;
        }

        public Builder stereoReset(boolean z) {
            if (z) {
                this.f5655b |= 2;
            } else {
                this.f5655b &= -3;
            }
            return this;
        }

        public Builder(boolean z) {
            m3206b(z);
        }

        public Builder(Locale locale) {
            m3206b(BidiFormatter.m3202c(locale));
        }
    }

    public static BidiFormatter getInstance(boolean z) {
        return new Builder(z).build();
    }

    public boolean isRtl(CharSequence charSequence) {
        return this.f5653c.isRtl(charSequence, 0, charSequence.length());
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (getStereoReset() && z) {
            spannableStringBuilder.append((CharSequence) m3204e(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        if (isRtl != this.f5651a) {
            spannableStringBuilder.append(isRtl ? f5637f : f5636e);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(f5638g);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) m3203d(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        return spannableStringBuilder;
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(str, textDirectionHeuristicCompat, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(charSequence, textDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String str, boolean z) {
        return unicodeWrap(str, this.f5653c, z);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, boolean z) {
        return unicodeWrap(charSequence, this.f5653c, z);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.f5653c, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence) {
        return unicodeWrap(charSequence, this.f5653c, true);
    }
}
