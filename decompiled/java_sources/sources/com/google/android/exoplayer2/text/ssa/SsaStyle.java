package com.google.android.exoplayer2.text.ssa;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.google.common.primitives.Ints;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.ss.util.CellUtil;

/* loaded from: classes5.dex */
public final class SsaStyle {

    /* renamed from: i */
    public static final String f27042i = "SsaStyle";

    /* renamed from: j */
    public static final int f27043j = -1;

    /* renamed from: k */
    public static final int f27044k = 1;

    /* renamed from: l */
    public static final int f27045l = 2;

    /* renamed from: m */
    public static final int f27046m = 3;

    /* renamed from: n */
    public static final int f27047n = 4;

    /* renamed from: o */
    public static final int f27048o = 5;

    /* renamed from: p */
    public static final int f27049p = 6;

    /* renamed from: q */
    public static final int f27050q = 7;

    /* renamed from: r */
    public static final int f27051r = 8;

    /* renamed from: s */
    public static final int f27052s = 9;

    /* renamed from: a */
    public final String f27053a;

    /* renamed from: b */
    public final int f27054b;

    /* renamed from: c */
    @Nullable
    @ColorInt
    public final Integer f27055c;

    /* renamed from: d */
    public final float f27056d;

    /* renamed from: e */
    public final boolean f27057e;

    /* renamed from: f */
    public final boolean f27058f;

    /* renamed from: g */
    public final boolean f27059g;

    /* renamed from: h */
    public final boolean f27060h;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface SsaAlignment {
    }

    /* renamed from: com.google.android.exoplayer2.text.ssa.SsaStyle$a */
    /* loaded from: classes5.dex */
    public static final class C4945a {

        /* renamed from: a */
        public final int f27061a;

        /* renamed from: b */
        public final int f27062b;

        /* renamed from: c */
        public final int f27063c;

        /* renamed from: d */
        public final int f27064d;

        /* renamed from: e */
        public final int f27065e;

        /* renamed from: f */
        public final int f27066f;

        /* renamed from: g */
        public final int f27067g;

        /* renamed from: h */
        public final int f27068h;

        /* renamed from: i */
        public final int f27069i;

        public C4945a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f27061a = i;
            this.f27062b = i2;
            this.f27063c = i3;
            this.f27064d = i4;
            this.f27065e = i5;
            this.f27066f = i6;
            this.f27067g = i7;
            this.f27068h = i8;
            this.f27069i = i9;
        }

        @Nullable
        /* renamed from: a */
        public static C4945a m20668a(String str) {
            char c;
            String[] split = TextUtils.split(str.substring(7), ",");
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            for (int i9 = 0; i9 < split.length; i9++) {
                String lowerCase = Ascii.toLowerCase(split[i9].trim());
                lowerCase.hashCode();
                switch (lowerCase.hashCode()) {
                    case -1178781136:
                        if (lowerCase.equals("italic")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1026963764:
                        if (lowerCase.equals("underline")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -192095652:
                        if (lowerCase.equals("strikeout")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -70925746:
                        if (lowerCase.equals("primarycolour")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3029637:
                        if (lowerCase.equals("bold")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 3373707:
                        if (lowerCase.equals("name")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 366554320:
                        if (lowerCase.equals("fontsize")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1767875043:
                        if (lowerCase.equals(CellUtil.ALIGNMENT)) {
                            c = 7;
                            break;
                        }
                        break;
                }
                c = 65535;
                switch (c) {
                    case 0:
                        i6 = i9;
                        break;
                    case 1:
                        i7 = i9;
                        break;
                    case 2:
                        i8 = i9;
                        break;
                    case 3:
                        i3 = i9;
                        break;
                    case 4:
                        i5 = i9;
                        break;
                    case 5:
                        i = i9;
                        break;
                    case 6:
                        i4 = i9;
                        break;
                    case 7:
                        i2 = i9;
                        break;
                }
            }
            if (i != -1) {
                return new C4945a(i, i2, i3, i4, i5, i6, i7, i8, split.length);
            }
            return null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.ssa.SsaStyle$b */
    /* loaded from: classes5.dex */
    public static final class C4946b {

        /* renamed from: c */
        public static final String f27070c = "SsaStyle.Overrides";

        /* renamed from: d */
        public static final Pattern f27071d = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: e */
        public static final String f27072e = "\\s*\\d+(?:\\.\\d+)?\\s*";

        /* renamed from: f */
        public static final Pattern f27073f = Pattern.compile(Util.formatInvariant("\\\\pos\\((%1$s),(%1$s)\\)", f27072e));

        /* renamed from: g */
        public static final Pattern f27074g = Pattern.compile(Util.formatInvariant("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", f27072e));

        /* renamed from: h */
        public static final Pattern f27075h = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a */
        public final int f27076a;

        /* renamed from: b */
        @Nullable
        public final PointF f27077b;

        public C4946b(int i, @Nullable PointF pointF) {
            this.f27076a = i;
            this.f27077b = pointF;
        }

        /* renamed from: a */
        public static int m20669a(String str) {
            Matcher matcher = f27075h.matcher(str);
            if (matcher.find()) {
                return SsaStyle.m20664d((String) Assertions.checkNotNull(matcher.group(1)));
            }
            return -1;
        }

        /* renamed from: b */
        public static C4946b m20670b(String str) {
            Matcher matcher = f27071d.matcher(str);
            PointF pointF = null;
            int i = -1;
            while (matcher.find()) {
                String str2 = (String) Assertions.checkNotNull(matcher.group(1));
                try {
                    PointF m20671c = m20671c(str2);
                    if (m20671c != null) {
                        pointF = m20671c;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int m20669a = m20669a(str2);
                    if (m20669a != -1) {
                        i = m20669a;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new C4946b(i, pointF);
        }

        @Nullable
        /* renamed from: c */
        public static PointF m20671c(String str) {
            String group;
            String group2;
            Matcher matcher = f27073f.matcher(str);
            Matcher matcher2 = f27074g.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                if (find2) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 82);
                    sb.append("Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='");
                    sb.append(str);
                    sb.append(CloudStorageConstants.SINGLE_QUOTES);
                    Log.m21491i(f27070c, sb.toString());
                }
                group = matcher.group(1);
                group2 = matcher.group(2);
            } else {
                if (!find2) {
                    return null;
                }
                group = matcher2.group(1);
                group2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) Assertions.checkNotNull(group)).trim()), Float.parseFloat(((String) Assertions.checkNotNull(group2)).trim()));
        }

        /* renamed from: d */
        public static String m20672d(String str) {
            return f27071d.matcher(str).replaceAll("");
        }
    }

    public SsaStyle(String str, int i, @Nullable @ColorInt Integer num, float f, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f27053a = str;
        this.f27054b = i;
        this.f27055c = num;
        this.f27056d = f;
        this.f27057e = z;
        this.f27058f = z2;
        this.f27059g = z3;
        this.f27060h = z4;
    }

    @Nullable
    /* renamed from: b */
    public static SsaStyle m20662b(String str, C4945a c4945a) {
        Assertions.checkArgument(str.startsWith(SsaDecoder.f27034w));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i = c4945a.f27069i;
        if (length != i) {
            Log.m21493w(f27042i, Util.formatInvariant("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            String trim = split[c4945a.f27061a].trim();
            int i2 = c4945a.f27062b;
            int m20664d = i2 != -1 ? m20664d(split[i2].trim()) : -1;
            int i3 = c4945a.f27063c;
            Integer m20666f = i3 != -1 ? m20666f(split[i3].trim()) : null;
            int i4 = c4945a.f27064d;
            float m20667g = i4 != -1 ? m20667g(split[i4].trim()) : -3.4028235E38f;
            int i5 = c4945a.f27065e;
            boolean z = i5 != -1 && m20665e(split[i5].trim());
            int i6 = c4945a.f27066f;
            boolean z2 = i6 != -1 && m20665e(split[i6].trim());
            int i7 = c4945a.f27067g;
            boolean z3 = i7 != -1 && m20665e(split[i7].trim());
            int i8 = c4945a.f27068h;
            return new SsaStyle(trim, m20664d, m20666f, m20667g, z, z2, z3, i8 != -1 && m20665e(split[i8].trim()));
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder(str.length() + 36);
            sb.append("Skipping malformed 'Style:' line: '");
            sb.append(str);
            sb.append(CloudStorageConstants.SINGLE_QUOTES);
            Log.m21494w(f27042i, sb.toString(), e);
            return null;
        }
    }

    /* renamed from: c */
    public static boolean m20663c(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: d */
    public static int m20664d(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (m20663c(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        String valueOf = String.valueOf(str);
        Log.m21493w(f27042i, valueOf.length() != 0 ? "Ignoring unknown alignment: ".concat(valueOf) : new String("Ignoring unknown alignment: "));
        return -1;
    }

    /* renamed from: e */
    public static boolean m20665e(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
            sb.append("Failed to parse boolean value: '");
            sb.append(str);
            sb.append(CloudStorageConstants.SINGLE_QUOTES);
            Log.m21494w(f27042i, sb.toString(), e);
            return false;
        }
    }

    @Nullable
    @ColorInt
    /* renamed from: f */
    public static Integer m20666f(String str) {
        try {
            long parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            Assertions.checkArgument(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(Ints.checkedCast(((parseLong >> 24) & 255) ^ 255), Ints.checkedCast(parseLong & 255), Ints.checkedCast((parseLong >> 8) & 255), Ints.checkedCast((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36);
            sb.append("Failed to parse color expression: '");
            sb.append(str);
            sb.append(CloudStorageConstants.SINGLE_QUOTES);
            Log.m21494w(f27042i, sb.toString(), e);
            return null;
        }
    }

    /* renamed from: g */
    public static float m20667g(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 29);
            sb.append("Failed to parse font size: '");
            sb.append(str);
            sb.append(CloudStorageConstants.SINGLE_QUOTES);
            Log.m21494w(f27042i, sb.toString(), e);
            return -3.4028235E38f;
        }
    }
}
