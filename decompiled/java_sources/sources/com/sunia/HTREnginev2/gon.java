package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.ttml.TtmlStyle;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes5.dex */
public final class gon {

    /* renamed from: A */
    public static final String f71246A = "data";

    /* renamed from: A0 */
    public static final String f71247A0 = "filled";

    /* renamed from: B */
    public static final String f71248B = "information";

    /* renamed from: B0 */
    public static final String f71249B0 = "open";

    /* renamed from: C */
    public static final String f71250C = "";

    /* renamed from: D */
    public static final String f71251D = "id";

    /* renamed from: E */
    public static final String f71252E = "origin";

    /* renamed from: F */
    public static final String f71253F = "extent";

    /* renamed from: G */
    public static final String f71254G = "displayAlign";

    /* renamed from: H */
    public static final String f71255H = "backgroundColor";

    /* renamed from: I */
    public static final String f71256I = "fontStyle";

    /* renamed from: J */
    public static final String f71257J = "fontSize";

    /* renamed from: K */
    public static final String f71258K = "fontFamily";

    /* renamed from: L */
    public static final String f71259L = "fontWeight";

    /* renamed from: M */
    public static final String f71260M = "color";

    /* renamed from: N */
    public static final String f71261N = "ruby";

    /* renamed from: O */
    public static final String f71262O = "rubyPosition";

    /* renamed from: P */
    public static final String f71263P = "textDecoration";

    /* renamed from: Q */
    public static final String f71264Q = "textAlign";

    /* renamed from: R */
    public static final String f71265R = "textCombine";

    /* renamed from: S */
    public static final String f71266S = "textEmphasis";

    /* renamed from: T */
    public static final String f71267T = "writingMode";

    /* renamed from: U */
    public static final String f71268U = "shear";

    /* renamed from: V */
    public static final String f71269V = "multiRowAlign";

    /* renamed from: W */
    public static final String f71270W = "container";

    /* renamed from: X */
    public static final String f71271X = "base";

    /* renamed from: Y */
    public static final String f71272Y = "baseContainer";

    /* renamed from: Z */
    public static final String f71273Z = "text";

    /* renamed from: a0 */
    public static final String f71274a0 = "textContainer";

    /* renamed from: b0 */
    public static final String f71275b0 = "delimiter";

    /* renamed from: c0 */
    public static final String f71276c0 = "before";

    /* renamed from: d0 */
    public static final String f71277d0 = "after";

    /* renamed from: e0 */
    public static final String f71278e0 = "outside";

    /* renamed from: f0 */
    public static final String f71279f0 = "linethrough";

    /* renamed from: g0 */
    public static final String f71280g0 = "nolinethrough";

    /* renamed from: h0 */
    public static final String f71281h0 = "underline";

    /* renamed from: i0 */
    public static final String f71282i0 = "nounderline";

    /* renamed from: j0 */
    public static final String f71283j0 = "italic";

    /* renamed from: k0 */
    public static final String f71284k0 = "bold";

    /* renamed from: l0 */
    public static final String f71285l0 = "left";

    /* renamed from: m0 */
    public static final String f71286m0 = "center";

    /* renamed from: n */
    public static final String f71287n = "tt";

    /* renamed from: n0 */
    public static final String f71288n0 = "right";

    /* renamed from: o */
    public static final String f71289o = "head";

    /* renamed from: o0 */
    public static final String f71290o0 = "start";

    /* renamed from: p */
    public static final String f71291p = "body";

    /* renamed from: p0 */
    public static final String f71292p0 = "end";

    /* renamed from: q */
    public static final String f71293q = "div";

    /* renamed from: q0 */
    public static final String f71294q0 = "none";

    /* renamed from: r */
    public static final String f71295r = "p";

    /* renamed from: r0 */
    public static final String f71296r0 = "all";

    /* renamed from: s */
    public static final String f71297s = "span";

    /* renamed from: s0 */
    public static final String f71298s0 = "tb";

    /* renamed from: t */
    public static final String f71299t = "br";

    /* renamed from: t0 */
    public static final String f71300t0 = "tblr";

    /* renamed from: u */
    public static final String f71301u = "style";

    /* renamed from: u0 */
    public static final String f71302u0 = "tbrl";

    /* renamed from: v */
    public static final String f71303v = "styling";

    /* renamed from: v0 */
    public static final String f71304v0 = "none";

    /* renamed from: w */
    public static final String f71305w = "layout";

    /* renamed from: w0 */
    public static final String f71306w0 = "auto";

    /* renamed from: x */
    public static final String f71307x = "region";

    /* renamed from: x0 */
    public static final String f71308x0 = "dot";

    /* renamed from: y */
    public static final String f71309y = "metadata";

    /* renamed from: y0 */
    public static final String f71310y0 = "sesame";

    /* renamed from: z */
    public static final String f71311z = "image";

    /* renamed from: z0 */
    public static final String f71312z0 = "circle";

    /* renamed from: a */
    @Nullable
    public final String f71313a;

    /* renamed from: b */
    @Nullable
    public final String f71314b;

    /* renamed from: c */
    public final boolean f71315c;

    /* renamed from: d */
    public final long f71316d;

    /* renamed from: e */
    public final long f71317e;

    /* renamed from: f */
    @Nullable
    public final TtmlStyle f71318f;

    /* renamed from: g */
    @Nullable
    public final String[] f71319g;

    /* renamed from: h */
    public final String f71320h;

    /* renamed from: i */
    @Nullable
    public final String f71321i;

    /* renamed from: j */
    @Nullable
    public final gon f71322j;

    /* renamed from: k */
    public final HashMap<String, Integer> f71323k;

    /* renamed from: l */
    public final HashMap<String, Integer> f71324l;

    /* renamed from: m */
    public List<gon> f71325m;

    public gon(@Nullable String str, @Nullable String str2, long j, long j2, @Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable gon gonVar) {
        this.f71313a = str;
        this.f71314b = str2;
        this.f71321i = str4;
        this.f71318f = ttmlStyle;
        this.f71319g = strArr;
        this.f71315c = str2 != null;
        this.f71316d = j;
        this.f71317e = j2;
        this.f71320h = (String) Assertions.checkNotNull(str3);
        this.f71322j = gonVar;
        this.f71323k = new HashMap<>();
        this.f71324l = new HashMap<>();
    }

    /* renamed from: c */
    public static gon m54317c(@Nullable String str, long j, long j2, @Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable gon gonVar) {
        return new gon(str, null, j, j2, ttmlStyle, strArr, str2, str3, gonVar);
    }

    /* renamed from: d */
    public static gon m54318d(String str) {
        return new gon(null, ion.m54739b(str), C4649C.TIME_UNSET, C4649C.TIME_UNSET, null, null, "", null, null);
    }

    /* renamed from: e */
    public static void m54319e(SpannableStringBuilder spannableStringBuilder) {
        for (o3f o3fVar : (o3f[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), o3f.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(o3fVar), spannableStringBuilder.getSpanEnd(o3fVar), "");
        }
        for (int i = 0; i < spannableStringBuilder.length(); i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                int i3 = i2;
                while (i3 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i3) == ' ') {
                    i3++;
                }
                int i4 = i3 - i2;
                if (i4 > 0) {
                    spannableStringBuilder.delete(i, i4 + i);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i5 = 0; i5 < spannableStringBuilder.length() - 1; i5++) {
            if (spannableStringBuilder.charAt(i5) == '\n') {
                int i6 = i5 + 1;
                if (spannableStringBuilder.charAt(i6) == ' ') {
                    spannableStringBuilder.delete(i6, i5 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i7 = 0; i7 < spannableStringBuilder.length() - 1; i7++) {
            if (spannableStringBuilder.charAt(i7) == ' ') {
                int i8 = i7 + 1;
                if (spannableStringBuilder.charAt(i8) == '\n') {
                    spannableStringBuilder.delete(i7, i8);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    /* renamed from: k */
    public static SpannableStringBuilder m54320k(String str, Map<String, Cue.Builder> map) {
        if (!map.containsKey(str)) {
            Cue.Builder builder = new Cue.Builder();
            builder.setText(new SpannableStringBuilder());
            map.put(str, builder);
        }
        return (SpannableStringBuilder) Assertions.checkNotNull(map.get(str).getText());
    }

    /* renamed from: a */
    public void m54321a(gon gonVar) {
        if (this.f71325m == null) {
            this.f71325m = new ArrayList();
        }
        this.f71325m.add(gonVar);
    }

    /* renamed from: b */
    public final void m54322b(Map<String, TtmlStyle> map, Cue.Builder builder, int i, int i2, int i3) {
        TtmlStyle m54743f = ion.m54743f(this.f71318f, this.f71319g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) builder.getText();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            builder.setText(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (m54743f != null) {
            ion.m54738a(spannableStringBuilder2, i, i2, m54743f, this.f71322j, map, i3);
            if ("p".equals(this.f71313a)) {
                if (m54743f.m20716k() != Float.MAX_VALUE) {
                    builder.setShearDegrees((m54743f.m20716k() * (-90.0f)) / 100.0f);
                }
                if (m54743f.m20718m() != null) {
                    builder.setTextAlignment(m54743f.m20718m());
                }
                if (m54743f.m20713h() != null) {
                    builder.setMultiRowAlignment(m54743f.m20713h());
                }
            }
        }
    }

    /* renamed from: f */
    public gon m54323f(int i) {
        List<gon> list = this.f71325m;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: g */
    public int m54324g() {
        List<gon> list = this.f71325m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: h */
    public List<Cue> m54325h(long j, Map<String, TtmlStyle> map, Map<String, hon> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        m54330n(j, this.f71320h, arrayList);
        TreeMap treeMap = new TreeMap();
        m54332p(j, false, this.f71320h, treeMap);
        m54331o(j, map, map2, this.f71320h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                hon honVar = (hon) Assertions.checkNotNull(map2.get(pair.first));
                arrayList2.add(new Cue.Builder().setBitmap(decodeByteArray).setPosition(honVar.f72417b).setPositionAnchor(0).setLine(honVar.f72418c, 0).setLineAnchor(honVar.f72420e).setSize(honVar.f72421f).setBitmapHeight(honVar.f72422g).setVerticalType(honVar.f72425j).build());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            hon honVar2 = (hon) Assertions.checkNotNull(map2.get(entry.getKey()));
            Cue.Builder builder = (Cue.Builder) entry.getValue();
            m54319e((SpannableStringBuilder) Assertions.checkNotNull(builder.getText()));
            builder.setLine(honVar2.f72418c, honVar2.f72419d);
            builder.setLineAnchor(honVar2.f72420e);
            builder.setPosition(honVar2.f72417b);
            builder.setSize(honVar2.f72421f);
            builder.setTextSize(honVar2.f72424i, honVar2.f72423h);
            builder.setVerticalType(honVar2.f72425j);
            arrayList2.add(builder.build());
        }
        return arrayList2;
    }

    /* renamed from: i */
    public final void m54326i(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f71313a);
        boolean equals2 = f71293q.equals(this.f71313a);
        if (z || equals || (equals2 && this.f71321i != null)) {
            long j = this.f71316d;
            if (j != C4649C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f71317e;
            if (j2 != C4649C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.f71325m == null) {
            return;
        }
        for (int i = 0; i < this.f71325m.size(); i++) {
            this.f71325m.get(i).m54326i(treeSet, z || equals);
        }
    }

    /* renamed from: j */
    public long[] m54327j() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        m54326i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it2 = treeSet.iterator();
        while (it2.hasNext()) {
            jArr[i] = it2.next().longValue();
            i++;
        }
        return jArr;
    }

    @Nullable
    /* renamed from: l */
    public String[] m54328l() {
        return this.f71319g;
    }

    /* renamed from: m */
    public boolean m54329m(long j) {
        long j2 = this.f71316d;
        return (j2 == C4649C.TIME_UNSET && this.f71317e == C4649C.TIME_UNSET) || (j2 <= j && this.f71317e == C4649C.TIME_UNSET) || ((j2 == C4649C.TIME_UNSET && j < this.f71317e) || (j2 <= j && j < this.f71317e));
    }

    /* renamed from: n */
    public final void m54330n(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f71320h)) {
            str = this.f71320h;
        }
        if (m54329m(j) && f71293q.equals(this.f71313a) && this.f71321i != null) {
            list.add(new Pair<>(str, this.f71321i));
            return;
        }
        for (int i = 0; i < m54324g(); i++) {
            m54323f(i).m54330n(j, str, list);
        }
    }

    /* renamed from: o */
    public final void m54331o(long j, Map<String, TtmlStyle> map, Map<String, hon> map2, String str, Map<String, Cue.Builder> map3) {
        int i;
        if (m54329m(j)) {
            String str2 = "".equals(this.f71320h) ? str : this.f71320h;
            Iterator<Map.Entry<String, Integer>> it2 = this.f71324l.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it2.next();
                String key = next.getKey();
                int intValue = this.f71323k.containsKey(key) ? this.f71323k.get(key).intValue() : 0;
                int intValue2 = next.getValue().intValue();
                if (intValue != intValue2) {
                    m54322b(map, (Cue.Builder) Assertions.checkNotNull(map3.get(key)), intValue, intValue2, ((hon) Assertions.checkNotNull(map2.get(str2))).f72425j);
                }
            }
            while (i < m54324g()) {
                m54323f(i).m54331o(j, map, map2, str2, map3);
                i++;
            }
        }
    }

    /* renamed from: p */
    public final void m54332p(long j, boolean z, String str, Map<String, Cue.Builder> map) {
        this.f71323k.clear();
        this.f71324l.clear();
        if ("metadata".equals(this.f71313a)) {
            return;
        }
        if (!"".equals(this.f71320h)) {
            str = this.f71320h;
        }
        if (this.f71315c && z) {
            m54320k(str, map).append((CharSequence) Assertions.checkNotNull(this.f71314b));
            return;
        }
        if ("br".equals(this.f71313a) && z) {
            m54320k(str, map).append('\n');
            return;
        }
        if (m54329m(j)) {
            for (Map.Entry<String, Cue.Builder> entry : map.entrySet()) {
                this.f71323k.put(entry.getKey(), Integer.valueOf(((CharSequence) Assertions.checkNotNull(entry.getValue().getText())).length()));
            }
            boolean equals = "p".equals(this.f71313a);
            for (int i = 0; i < m54324g(); i++) {
                m54323f(i).m54332p(j, z || equals, str, map);
            }
            if (equals) {
                ion.m54740c(m54320k(str, map));
            }
            for (Map.Entry<String, Cue.Builder> entry2 : map.entrySet()) {
                this.f71324l.put(entry2.getKey(), Integer.valueOf(((CharSequence) Assertions.checkNotNull(entry2.getValue().getText())).length()));
            }
        }
    }
}
