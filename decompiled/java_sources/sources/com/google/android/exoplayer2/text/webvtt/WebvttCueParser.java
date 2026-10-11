package com.google.android.exoplayer2.text.webvtt;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.span.HorizontalTextInVerticalContextSpan;
import com.google.android.exoplayer2.text.span.RubySpan;
import com.google.android.exoplayer2.text.span.SpanUtil;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class WebvttCueParser {

    /* renamed from: A */
    public static final float f27217A = 0.5f;

    /* renamed from: B */
    public static final String f27218B = "WebvttCueParser";

    /* renamed from: C */
    public static final Map<String, Integer> f27219C;

    /* renamed from: D */
    public static final Map<String, Integer> f27220D;

    /* renamed from: a */
    public static final int f27221a = 1;

    /* renamed from: b */
    public static final int f27222b = 2;

    /* renamed from: c */
    public static final int f27223c = 3;

    /* renamed from: d */
    public static final int f27224d = 4;

    /* renamed from: e */
    public static final int f27225e = 5;

    /* renamed from: g */
    public static final char f27227g = '<';

    /* renamed from: h */
    public static final char f27228h = '>';

    /* renamed from: i */
    public static final char f27229i = '/';

    /* renamed from: j */
    public static final char f27230j = '&';

    /* renamed from: k */
    public static final char f27231k = ';';

    /* renamed from: l */
    public static final char f27232l = ' ';

    /* renamed from: m */
    public static final String f27233m = "lt";

    /* renamed from: n */
    public static final String f27234n = "gt";

    /* renamed from: o */
    public static final String f27235o = "amp";

    /* renamed from: p */
    public static final String f27236p = "nbsp";

    /* renamed from: q */
    public static final String f27237q = "b";

    /* renamed from: r */
    public static final String f27238r = "c";

    /* renamed from: s */
    public static final String f27239s = "i";

    /* renamed from: t */
    public static final String f27240t = "lang";

    /* renamed from: u */
    public static final String f27241u = "ruby";

    /* renamed from: v */
    public static final String f27242v = "rt";

    /* renamed from: w */
    public static final String f27243w = "u";

    /* renamed from: x */
    public static final String f27244x = "v";

    /* renamed from: y */
    public static final int f27245y = 1;

    /* renamed from: z */
    public static final int f27246z = 2;
    public static final Pattern CUE_HEADER_PATTERN = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: f */
    public static final Pattern f27226f = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: com.google.android.exoplayer2.text.webvtt.WebvttCueParser$b */
    /* loaded from: classes5.dex */
    public static class C4951b {

        /* renamed from: c */
        public static final Comparator<C4951b> f27247c = new Comparator() { // from class: com.sunia.HTREnginev2.p6o
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m20766e;
                m20766e = WebvttCueParser.C4951b.m20766e((WebvttCueParser.C4951b) obj, (WebvttCueParser.C4951b) obj2);
                return m20766e;
            }
        };

        /* renamed from: a */
        public final C4952c f27248a;

        /* renamed from: b */
        public final int f27249b;

        /* renamed from: e */
        public static /* synthetic */ int m20766e(C4951b c4951b, C4951b c4951b2) {
            return Integer.compare(c4951b.f27248a.f27251b, c4951b2.f27248a.f27251b);
        }

        public C4951b(C4952c c4952c, int i) {
            this.f27248a = c4952c;
            this.f27249b = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.webvtt.WebvttCueParser$c */
    /* loaded from: classes5.dex */
    public static final class C4952c {

        /* renamed from: a */
        public final String f27250a;

        /* renamed from: b */
        public final int f27251b;

        /* renamed from: c */
        public final String f27252c;

        /* renamed from: d */
        public final Set<String> f27253d;

        public C4952c(String str, int i, String str2, Set<String> set) {
            this.f27251b = i;
            this.f27250a = str;
            this.f27252c = str2;
            this.f27253d = set;
        }

        /* renamed from: a */
        public static C4952c m20767a(String str, int i) {
            String str2;
            String trim = str.trim();
            Assertions.checkArgument(!trim.isEmpty());
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                String trim2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
                str2 = trim2;
            }
            String[] split = Util.split(trim, "\\.");
            String str3 = split[0];
            HashSet hashSet = new HashSet();
            for (int i2 = 1; i2 < split.length; i2++) {
                hashSet.add(split[i2]);
            }
            return new C4952c(str3, i, str2, hashSet);
        }

        /* renamed from: b */
        public static C4952c m20768b() {
            return new C4952c("", 0, "", Collections.emptySet());
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.webvtt.WebvttCueParser$d */
    /* loaded from: classes5.dex */
    public static final class C4953d implements Comparable<C4953d> {

        /* renamed from: e */
        public final int f27254e;

        /* renamed from: f */
        public final WebvttCssStyle f27255f;

        public C4953d(int i, WebvttCssStyle webvttCssStyle) {
            this.f27254e = i;
            this.f27255f = webvttCssStyle;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C4953d c4953d) {
            return Integer.compare(this.f27254e, c4953d.f27254e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.webvtt.WebvttCueParser$e */
    /* loaded from: classes5.dex */
    public static final class C4954e {

        /* renamed from: c */
        public CharSequence f27258c;

        /* renamed from: a */
        public long f27256a = 0;

        /* renamed from: b */
        public long f27257b = 0;

        /* renamed from: d */
        public int f27259d = 2;

        /* renamed from: e */
        public float f27260e = -3.4028235E38f;

        /* renamed from: f */
        public int f27261f = 1;

        /* renamed from: g */
        public int f27262g = 0;

        /* renamed from: h */
        public float f27263h = -3.4028235E38f;

        /* renamed from: i */
        public int f27264i = Integer.MIN_VALUE;

        /* renamed from: j */
        public float f27265j = 1.0f;

        /* renamed from: k */
        public int f27266k = Integer.MIN_VALUE;

        /* renamed from: b */
        public static float m20770b(float f, int i) {
            if (f == -3.4028235E38f || i != 0 || (f >= 0.0f && f <= 1.0f)) {
                return f != -3.4028235E38f ? f : i == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        @Nullable
        /* renamed from: c */
        public static Layout.Alignment m20771c(int i) {
            if (i != 1) {
                if (i == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            StringBuilder sb = new StringBuilder(34);
                            sb.append("Unknown textAlignment: ");
                            sb.append(i);
                            Log.m21493w(WebvttCueParser.f27218B, sb.toString());
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        /* renamed from: d */
        public static float m20772d(int i, float f) {
            if (i == 0) {
                return 1.0f - f;
            }
            if (i == 1) {
                return f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
            }
            if (i == 2) {
                return f;
            }
            throw new IllegalStateException(String.valueOf(i));
        }

        /* renamed from: e */
        public static float m20773e(int i) {
            if (i != 4) {
                return i != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        /* renamed from: f */
        public static int m20774f(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        /* renamed from: a */
        public WebvttCueInfo m20775a() {
            return new WebvttCueInfo(m20776g().build(), this.f27256a, this.f27257b);
        }

        /* renamed from: g */
        public Cue.Builder m20776g() {
            float f = this.f27263h;
            if (f == -3.4028235E38f) {
                f = m20773e(this.f27259d);
            }
            int i = this.f27264i;
            if (i == Integer.MIN_VALUE) {
                i = m20774f(this.f27259d);
            }
            Cue.Builder verticalType = new Cue.Builder().setTextAlignment(m20771c(this.f27259d)).setLine(m20770b(this.f27260e, this.f27261f), this.f27261f).setLineAnchor(this.f27262g).setPosition(f).setPositionAnchor(i).setSize(Math.min(this.f27265j, m20772d(i, f))).setVerticalType(this.f27266k);
            CharSequence charSequence = this.f27258c;
            if (charSequence != null) {
                verticalType.setText(charSequence);
            }
            return verticalType;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f27219C = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f27220D = Collections.unmodifiableMap(hashMap2);
    }

    /* renamed from: a */
    public static void m20740a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        for (String str : set) {
            Map<String, Integer> map = f27219C;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i, i2, 33);
            } else {
                Map<String, Integer> map2 = f27220D;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i, i2, 33);
                }
            }
        }
    }

    /* renamed from: b */
    public static void m20741b(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals(f27234n)) {
                    c = 0;
                    break;
                }
                break;
            case 3464:
                if (str.equals(f27233m)) {
                    c = 1;
                    break;
                }
                break;
            case 96708:
                if (str.equals(f27235o)) {
                    c = 2;
                    break;
                }
                break;
            case 3374865:
                if (str.equals("nbsp")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                spannableStringBuilder.append('>');
                return;
            case 1:
                spannableStringBuilder.append('<');
                return;
            case 2:
                spannableStringBuilder.append('&');
                return;
            case 3:
                spannableStringBuilder.append(' ');
                return;
            default:
                StringBuilder sb = new StringBuilder(str.length() + 33);
                sb.append("ignoring unsupported entity: '&");
                sb.append(str);
                sb.append(";'");
                Log.m21493w(f27218B, sb.toString());
                return;
        }
    }

    /* renamed from: c */
    public static void m20742c(SpannableStringBuilder spannableStringBuilder, @Nullable String str, C4952c c4952c, List<C4951b> list, List<WebvttCssStyle> list2) {
        int m20748i = m20748i(list2, str, c4952c);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, C4951b.f27247c);
        int i = c4952c.f27251b;
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (f27242v.equals(((C4951b) arrayList.get(i3)).f27248a.f27250a)) {
                C4951b c4951b = (C4951b) arrayList.get(i3);
                int m20746g = m20746g(m20748i(list2, str, c4951b.f27248a), m20748i, 1);
                int i4 = c4951b.f27248a.f27251b - i2;
                int i5 = c4951b.f27249b - i2;
                CharSequence subSequence = spannableStringBuilder.subSequence(i4, i5);
                spannableStringBuilder.delete(i4, i5);
                spannableStringBuilder.setSpan(new RubySpan(subSequence.toString(), m20746g), i, i4, 33);
                i2 += subSequence.length();
                i = i4;
            }
        }
    }

    /* renamed from: d */
    public static void m20743d(@Nullable String str, C4952c c4952c, List<C4951b> list, SpannableStringBuilder spannableStringBuilder, List<WebvttCssStyle> list2) {
        int i = c4952c.f27251b;
        int length = spannableStringBuilder.length();
        String str2 = c4952c.f27250a;
        str2.hashCode();
        char c = 65535;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c = 0;
                    break;
                }
                break;
            case 98:
                if (str2.equals("b")) {
                    c = 1;
                    break;
                }
                break;
            case 99:
                if (str2.equals("c")) {
                    c = 2;
                    break;
                }
                break;
            case 105:
                if (str2.equals("i")) {
                    c = 3;
                    break;
                }
                break;
            case 117:
                if (str2.equals("u")) {
                    c = 4;
                    break;
                }
                break;
            case 118:
                if (str2.equals("v")) {
                    c = 5;
                    break;
                }
                break;
            case 3314158:
                if (str2.equals("lang")) {
                    c = 6;
                    break;
                }
                break;
            case 3511770:
                if (str2.equals("ruby")) {
                    c = 7;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 5:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case 2:
                m20740a(spannableStringBuilder, c4952c.f27253d, i, length);
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case 7:
                m20742c(spannableStringBuilder, str, c4952c, list, list2);
                break;
            default:
                return;
        }
        List<C4953d> m20747h = m20747h(list2, str, c4952c);
        for (int i2 = 0; i2 < m20747h.size(); i2++) {
            m20744e(spannableStringBuilder, m20747h.get(i2).f27255f, i, length);
        }
    }

    /* renamed from: e */
    public static void m20744e(SpannableStringBuilder spannableStringBuilder, WebvttCssStyle webvttCssStyle, int i, int i2) {
        if (webvttCssStyle == null) {
            return;
        }
        if (webvttCssStyle.getStyle() != -1) {
            SpanUtil.addOrReplaceSpan(spannableStringBuilder, new StyleSpan(webvttCssStyle.getStyle()), i, i2, 33);
        }
        if (webvttCssStyle.isLinethrough()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (webvttCssStyle.isUnderline()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (webvttCssStyle.hasFontColor()) {
            SpanUtil.addOrReplaceSpan(spannableStringBuilder, new ForegroundColorSpan(webvttCssStyle.getFontColor()), i, i2, 33);
        }
        if (webvttCssStyle.hasBackgroundColor()) {
            SpanUtil.addOrReplaceSpan(spannableStringBuilder, new BackgroundColorSpan(webvttCssStyle.getBackgroundColor()), i, i2, 33);
        }
        if (webvttCssStyle.getFontFamily() != null) {
            SpanUtil.addOrReplaceSpan(spannableStringBuilder, new TypefaceSpan(webvttCssStyle.getFontFamily()), i, i2, 33);
        }
        int fontSizeUnit = webvttCssStyle.getFontSizeUnit();
        if (fontSizeUnit == 1) {
            SpanUtil.addOrReplaceSpan(spannableStringBuilder, new AbsoluteSizeSpan((int) webvttCssStyle.getFontSize(), true), i, i2, 33);
        } else if (fontSizeUnit == 2) {
            SpanUtil.addOrReplaceSpan(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.getFontSize()), i, i2, 33);
        } else if (fontSizeUnit == 3) {
            SpanUtil.addOrReplaceSpan(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.getFontSize() / 100.0f), i, i2, 33);
        }
        if (webvttCssStyle.getCombineUpright()) {
            spannableStringBuilder.setSpan(new HorizontalTextInVerticalContextSpan(), i, i2, 33);
        }
    }

    /* renamed from: f */
    public static int m20745f(String str, int i) {
        int indexOf = str.indexOf(62, i);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    /* renamed from: g */
    public static int m20746g(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: h */
    public static List<C4953d> m20747h(List<WebvttCssStyle> list, @Nullable String str, C4952c c4952c) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            WebvttCssStyle webvttCssStyle = list.get(i);
            int specificityScore = webvttCssStyle.getSpecificityScore(str, c4952c.f27250a, c4952c.f27253d, c4952c.f27252c);
            if (specificityScore > 0) {
                arrayList.add(new C4953d(specificityScore, webvttCssStyle));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: i */
    public static int m20748i(List<WebvttCssStyle> list, @Nullable String str, C4952c c4952c) {
        List<C4953d> m20747h = m20747h(list, str, c4952c);
        for (int i = 0; i < m20747h.size(); i++) {
            WebvttCssStyle webvttCssStyle = m20747h.get(i).f27255f;
            if (webvttCssStyle.getRubyPosition() != -1) {
                return webvttCssStyle.getRubyPosition();
            }
        }
        return -1;
    }

    /* renamed from: j */
    public static String m20749j(String str) {
        String trim = str.trim();
        Assertions.checkArgument(!trim.isEmpty());
        return Util.splitAtFirst(trim, "[ \\.]")[0];
    }

    /* renamed from: k */
    public static boolean m20750k(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 98:
                if (str.equals("b")) {
                    c = 0;
                    break;
                }
                break;
            case 99:
                if (str.equals("c")) {
                    c = 1;
                    break;
                }
                break;
            case 105:
                if (str.equals("i")) {
                    c = 2;
                    break;
                }
                break;
            case 117:
                if (str.equals("u")) {
                    c = 3;
                    break;
                }
                break;
            case 118:
                if (str.equals("v")) {
                    c = 4;
                    break;
                }
                break;
            case 3650:
                if (str.equals(f27242v)) {
                    c = 5;
                    break;
                }
                break;
            case 3314158:
                if (str.equals("lang")) {
                    c = 6;
                    break;
                }
                break;
            case 3511770:
                if (str.equals("ruby")) {
                    c = 7;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: l */
    public static Cue m20751l(CharSequence charSequence) {
        C4954e c4954e = new C4954e();
        c4954e.f27258c = charSequence;
        return c4954e.m20776g().build();
    }

    @Nullable
    /* renamed from: m */
    public static WebvttCueInfo m20752m(@Nullable String str, Matcher matcher, ParsableByteArray parsableByteArray, List<WebvttCssStyle> list) {
        C4954e c4954e = new C4954e();
        try {
            c4954e.f27256a = WebvttParserUtil.parseTimestampUs((String) Assertions.checkNotNull(matcher.group(1)));
            c4954e.f27257b = WebvttParserUtil.parseTimestampUs((String) Assertions.checkNotNull(matcher.group(2)));
            m20754o((String) Assertions.checkNotNull(matcher.group(3)), c4954e);
            StringBuilder sb = new StringBuilder();
            String readLine = parsableByteArray.readLine();
            while (!TextUtils.isEmpty(readLine)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(readLine.trim());
                readLine = parsableByteArray.readLine();
            }
            c4954e.f27258c = m20755p(str, sb.toString(), list);
            return c4954e.m20775a();
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(matcher.group());
            Log.m21493w(f27218B, valueOf.length() != 0 ? "Skipping cue with bad header: ".concat(valueOf) : new String("Skipping cue with bad header: "));
            return null;
        }
    }

    /* renamed from: n */
    public static Cue.Builder m20753n(String str) {
        C4954e c4954e = new C4954e();
        m20754o(str, c4954e);
        return c4954e.m20776g();
    }

    /* renamed from: o */
    public static void m20754o(String str, C4954e c4954e) {
        Matcher matcher = f27226f.matcher(str);
        while (matcher.find()) {
            String str2 = (String) Assertions.checkNotNull(matcher.group(1));
            String str3 = (String) Assertions.checkNotNull(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    m20757r(str3, c4954e);
                } else if ("align".equals(str2)) {
                    c4954e.f27259d = m20760u(str3);
                } else if ("position".equals(str2)) {
                    m20759t(str3, c4954e);
                } else if ("size".equals(str2)) {
                    c4954e.f27265j = WebvttParserUtil.parsePercentage(str3);
                } else if ("vertical".equals(str2)) {
                    c4954e.f27266k = m20761v(str3);
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 21 + String.valueOf(str3).length());
                    sb.append("Unknown cue setting ");
                    sb.append(str2);
                    sb.append(":");
                    sb.append(str3);
                    Log.m21493w(f27218B, sb.toString());
                }
            } catch (NumberFormatException unused) {
                String valueOf = String.valueOf(matcher.group());
                Log.m21493w(f27218B, valueOf.length() != 0 ? "Skipping bad cue setting: ".concat(valueOf) : new String("Skipping bad cue setting: "));
            }
        }
    }

    /* renamed from: p */
    public static SpannedString m20755p(@Nullable String str, String str2, List<WebvttCssStyle> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            if (charAt == '&') {
                i++;
                int indexOf = str2.indexOf(59, i);
                int indexOf2 = str2.indexOf(32, i);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    m20741b(str2.substring(i, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i++;
            } else {
                int i2 = i + 1;
                if (i2 < str2.length()) {
                    boolean z = str2.charAt(i2) == '/';
                    i2 = m20745f(str2, i2);
                    int i3 = i2 - 2;
                    boolean z2 = str2.charAt(i3) == '/';
                    int i4 = i + (z ? 2 : 1);
                    if (!z2) {
                        i3 = i2 - 1;
                    }
                    String substring = str2.substring(i4, i3);
                    if (!substring.trim().isEmpty()) {
                        String m20749j = m20749j(substring);
                        if (m20750k(m20749j)) {
                            if (!z) {
                                if (!z2) {
                                    arrayDeque.push(C4952c.m20767a(substring, spannableStringBuilder.length()));
                                }
                            }
                            while (!arrayDeque.isEmpty()) {
                                C4952c c4952c = (C4952c) arrayDeque.pop();
                                m20743d(str, c4952c, arrayList, spannableStringBuilder, list);
                                if (arrayDeque.isEmpty()) {
                                    arrayList.clear();
                                } else {
                                    arrayList.add(new C4951b(c4952c, spannableStringBuilder.length()));
                                }
                                if (c4952c.f27250a.equals(m20749j)) {
                                    break;
                                }
                            }
                        }
                    }
                }
                i = i2;
            }
        }
        while (!arrayDeque.isEmpty()) {
            m20743d(str, (C4952c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        m20743d(str, C4952c.m20768b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    @Nullable
    public static WebvttCueInfo parseCue(ParsableByteArray parsableByteArray, List<WebvttCssStyle> list) {
        String readLine = parsableByteArray.readLine();
        if (readLine == null) {
            return null;
        }
        Pattern pattern = CUE_HEADER_PATTERN;
        Matcher matcher = pattern.matcher(readLine);
        if (matcher.matches()) {
            return m20752m(null, matcher, parsableByteArray, list);
        }
        String readLine2 = parsableByteArray.readLine();
        if (readLine2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(readLine2);
        if (matcher2.matches()) {
            return m20752m(readLine.trim(), matcher2, parsableByteArray, list);
        }
        return null;
    }

    /* renamed from: q */
    public static int m20756q(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c = 2;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(gon.f71290o0)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 0;
            default:
                Log.m21493w(f27218B, str.length() != 0 ? "Invalid anchor value: ".concat(str) : new String("Invalid anchor value: "));
                return Integer.MIN_VALUE;
        }
    }

    /* renamed from: r */
    public static void m20757r(String str, C4954e c4954e) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            c4954e.f27262g = m20756q(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            c4954e.f27260e = WebvttParserUtil.parsePercentage(str);
            c4954e.f27261f = 0;
        } else {
            c4954e.f27260e = Integer.parseInt(str);
            c4954e.f27261f = 1;
        }
    }

    /* renamed from: s */
    public static int m20758s(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals("line-left")) {
                    c = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals("center")) {
                    c = 1;
                    break;
                }
                break;
            case -1276788989:
                if (str.equals("line-right")) {
                    c = 2;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c = 3;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(gon.f71290o0)) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 5:
                return 0;
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                Log.m21493w(f27218B, str.length() != 0 ? "Invalid anchor value: ".concat(str) : new String("Invalid anchor value: "));
                return Integer.MIN_VALUE;
        }
    }

    /* renamed from: t */
    public static void m20759t(String str, C4954e c4954e) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            c4954e.f27264i = m20758s(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        c4954e.f27263h = WebvttParserUtil.parsePercentage(str);
    }

    /* renamed from: u */
    public static int m20760u(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c = 2;
                    break;
                }
                break;
            case 3317767:
                if (str.equals("left")) {
                    c = 3;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(gon.f71288n0)) {
                    c = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(gon.f71290o0)) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 1;
            default:
                Log.m21493w(f27218B, str.length() != 0 ? "Invalid alignment value: ".concat(str) : new String("Invalid alignment value: "));
                return 2;
        }
    }

    /* renamed from: v */
    public static int m20761v(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        Log.m21493w(f27218B, str.length() != 0 ? "Invalid 'vertical' value: ".concat(str) : new String("Invalid 'vertical' value: "));
        return Integer.MIN_VALUE;
    }
}
