package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.util.XmlPullParserUtil;
import com.google.common.base.Ascii;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.hon;
import com.sunia.HTREnginev2.jon;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.util.ExtUnits;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes5.dex */
public final class TtmlDecoder extends SimpleSubtitleDecoder {

    /* renamed from: E */
    public static final int f27111E = 30;

    /* renamed from: p */
    public static final String f27114p = "TtmlDecoder";

    /* renamed from: q */
    public static final String f27115q = "http://www.w3.org/ns/ttml#parameter";

    /* renamed from: r */
    public static final String f27116r = "begin";

    /* renamed from: s */
    public static final String f27117s = "dur";

    /* renamed from: t */
    public static final String f27118t = "end";

    /* renamed from: u */
    public static final String f27119u = "style";

    /* renamed from: v */
    public static final String f27120v = "region";

    /* renamed from: w */
    public static final String f27121w = "backgroundImage";

    /* renamed from: o */
    public final XmlPullParserFactory f27125o;

    /* renamed from: x */
    public static final Pattern f27122x = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: y */
    public static final Pattern f27123y = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: z */
    public static final Pattern f27124z = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: A */
    public static final Pattern f27107A = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: B */
    public static final Pattern f27108B = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: C */
    public static final Pattern f27109C = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: D */
    public static final Pattern f27110D = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: F */
    public static final C4948b f27112F = new C4948b(30.0f, 1, 1);

    /* renamed from: G */
    public static final C4947a f27113G = new C4947a(32, 15);

    /* renamed from: com.google.android.exoplayer2.text.ttml.TtmlDecoder$a */
    /* loaded from: classes5.dex */
    public static final class C4947a {

        /* renamed from: a */
        public final int f27126a;

        /* renamed from: b */
        public final int f27127b;

        public C4947a(int i, int i2) {
            this.f27126a = i;
            this.f27127b = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.ttml.TtmlDecoder$b */
    /* loaded from: classes5.dex */
    public static final class C4948b {

        /* renamed from: a */
        public final float f27128a;

        /* renamed from: b */
        public final int f27129b;

        /* renamed from: c */
        public final int f27130c;

        public C4948b(float f, int i, int i2) {
            this.f27128a = f;
            this.f27129b = i;
            this.f27130c = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.ttml.TtmlDecoder$c */
    /* loaded from: classes5.dex */
    public static final class C4949c {

        /* renamed from: a */
        public final int f27131a;

        /* renamed from: b */
        public final int f27132b;

        public C4949c(int i, int i2) {
            this.f27131a = i;
            this.f27132b = i2;
        }
    }

    public TtmlDecoder() {
        super(f27114p);
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f27125o = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* renamed from: j */
    public static TtmlStyle m20679j(@Nullable TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    /* renamed from: k */
    public static boolean m20680k(String str) {
        return str.equals(gon.f71287n) || str.equals(gon.f71289o) || str.equals("body") || str.equals(gon.f71293q) || str.equals("p") || str.equals(gon.f71297s) || str.equals("br") || str.equals("style") || str.equals(gon.f71303v) || str.equals(gon.f71305w) || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals(gon.f71248B);
    }

    @Nullable
    /* renamed from: l */
    public static Layout.Alignment m20681l(String str) {
        String lowerCase = Ascii.toLowerCase(str);
        lowerCase.hashCode();
        char c = 65535;
        switch (lowerCase.hashCode()) {
            case -1364013995:
                if (lowerCase.equals("center")) {
                    c = 0;
                    break;
                }
                break;
            case 100571:
                if (lowerCase.equals("end")) {
                    c = 1;
                    break;
                }
                break;
            case 3317767:
                if (lowerCase.equals("left")) {
                    c = 2;
                    break;
                }
                break;
            case 108511772:
                if (lowerCase.equals(gon.f71288n0)) {
                    c = 3;
                    break;
                }
                break;
            case 109757538:
                if (lowerCase.equals(gon.f71290o0)) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return Layout.Alignment.ALIGN_CENTER;
            case 1:
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 2:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    /* renamed from: m */
    public static C4947a m20682m(XmlPullParser xmlPullParser, C4947a c4947a) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue(f27115q, "cellResolution");
        if (attributeValue == null) {
            return c4947a;
        }
        Matcher matcher = f27110D.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.m21493w(f27114p, attributeValue.length() != 0 ? "Ignoring malformed cell resolution: ".concat(attributeValue) : new String("Ignoring malformed cell resolution: "));
            return c4947a;
        }
        try {
            int parseInt = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2)));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C4947a(parseInt, parseInt2);
            }
            StringBuilder sb = new StringBuilder(47);
            sb.append("Invalid cell resolution ");
            sb.append(parseInt);
            sb.append(" ");
            sb.append(parseInt2);
            throw new SubtitleDecoderException(sb.toString());
        } catch (NumberFormatException unused) {
            Log.m21493w(f27114p, attributeValue.length() != 0 ? "Ignoring malformed cell resolution: ".concat(attributeValue) : new String("Ignoring malformed cell resolution: "));
            return c4947a;
        }
    }

    /* renamed from: n */
    public static void m20683n(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String[] split = Util.split(str, "\\s+");
        if (split.length == 1) {
            matcher = f27124z.matcher(str);
        } else {
            if (split.length != 2) {
                int length = split.length;
                StringBuilder sb = new StringBuilder(52);
                sb.append("Invalid number of entries for fontSize: ");
                sb.append(length);
                sb.append(".");
                throw new SubtitleDecoderException(sb.toString());
            }
            matcher = f27124z.matcher(split[1]);
            Log.m21493w(f27114p, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 36);
            sb2.append("Invalid expression for fontSize: '");
            sb2.append(str);
            sb2.append("'.");
            throw new SubtitleDecoderException(sb2.toString());
        }
        String str2 = (String) Assertions.checkNotNull(matcher.group(3));
        str2.hashCode();
        char c = 65535;
        switch (str2.hashCode()) {
            case 37:
                if (str2.equals("%")) {
                    c = 0;
                    break;
                }
                break;
            case 3240:
                if (str2.equals(ExtUnits.UNIT_EM)) {
                    c = 1;
                    break;
                }
                break;
            case 3592:
                if (str2.equals(ExtUnits.UNIT_PX)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                ttmlStyle.m20694A(3);
                break;
            case 1:
                ttmlStyle.m20694A(2);
                break;
            case 2:
                ttmlStyle.m20694A(1);
                break;
            default:
                StringBuilder sb3 = new StringBuilder(str2.length() + 30);
                sb3.append("Invalid unit for fontSize: '");
                sb3.append(str2);
                sb3.append("'.");
                throw new SubtitleDecoderException(sb3.toString());
        }
        ttmlStyle.m20731z(Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1))));
    }

    /* renamed from: o */
    public static C4948b m20684o(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue(f27115q, "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue(f27115q, "frameRateMultiplier");
        if (attributeValue2 != null) {
            if (Util.split(attributeValue2, " ").length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        } else {
            f = 1.0f;
        }
        C4948b c4948b = f27112F;
        int i = c4948b.f27129b;
        String attributeValue3 = xmlPullParser.getAttributeValue(f27115q, "subFrameRate");
        if (attributeValue3 != null) {
            i = Integer.parseInt(attributeValue3);
        }
        int i2 = c4948b.f27130c;
        String attributeValue4 = xmlPullParser.getAttributeValue(f27115q, "tickRate");
        if (attributeValue4 != null) {
            i2 = Integer.parseInt(attributeValue4);
        }
        return new C4948b(parseInt * f, i, i2);
    }

    /* renamed from: p */
    public static Map<String, TtmlStyle> m20685p(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, C4947a c4947a, @Nullable C4949c c4949c, Map<String, hon> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
                TtmlStyle m20690u = m20690u(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    for (String str : m20691v(attributeValue)) {
                        m20690u.m20706a(map.get(str));
                    }
                }
                String m20712g = m20690u.m20712g();
                if (m20712g != null) {
                    map.put(m20712g, m20690u);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "region")) {
                hon m20688s = m20688s(xmlPullParser, c4947a, c4949c);
                if (m20688s != null) {
                    map2.put(m20688s.f72416a, m20688s);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "metadata")) {
                m20686q(xmlPullParser, map3);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, gon.f71289o));
        return map;
    }

    /* renamed from: q */
    public static void m20686q(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
        String attributeValue;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "image") && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "id")) != null) {
                map.put(attributeValue, xmlPullParser.nextText());
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "metadata"));
    }

    /* renamed from: r */
    public static gon m20687r(XmlPullParser xmlPullParser, @Nullable gon gonVar, Map<String, hon> map, C4948b c4948b) throws SubtitleDecoderException {
        long j;
        long j2;
        char c;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle m20690u = m20690u(xmlPullParser, null);
        String[] strArr = null;
        String str = null;
        String str2 = "";
        long j3 = C4649C.TIME_UNSET;
        long j4 = C4649C.TIME_UNSET;
        long j5 = C4649C.TIME_UNSET;
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c = 0;
                        break;
                    }
                    break;
                case 99841:
                    if (attributeName.equals(f27117s)) {
                        c = 1;
                        break;
                    }
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c = 2;
                        break;
                    }
                    break;
                case 93616297:
                    if (attributeName.equals(f27116r)) {
                        c = 3;
                        break;
                    }
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1292595405:
                    if (attributeName.equals(f27121w)) {
                        c = 5;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    if (!map.containsKey(attributeValue)) {
                        break;
                    } else {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j5 = m20692w(attributeValue, c4948b);
                    break;
                case 2:
                    j4 = m20692w(attributeValue, c4948b);
                    break;
                case 3:
                    j3 = m20692w(attributeValue, c4948b);
                    break;
                case 4:
                    String[] m20691v = m20691v(attributeValue);
                    if (m20691v.length > 0) {
                        strArr = m20691v;
                        break;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (gonVar != null) {
            long j6 = gonVar.f71316d;
            j = C4649C.TIME_UNSET;
            if (j6 != C4649C.TIME_UNSET) {
                if (j3 != C4649C.TIME_UNSET) {
                    j3 += j6;
                }
                if (j4 != C4649C.TIME_UNSET) {
                    j4 += j6;
                }
            }
        } else {
            j = C4649C.TIME_UNSET;
        }
        long j7 = j3;
        if (j4 == j) {
            if (j5 != j) {
                j2 = j7 + j5;
            } else if (gonVar != null) {
                long j8 = gonVar.f71317e;
                if (j8 != j) {
                    j2 = j8;
                }
            }
            return gon.m54317c(xmlPullParser.getName(), j7, j2, m20690u, strArr, str2, str, gonVar);
        }
        j2 = j4;
        return gon.m54317c(xmlPullParser.getName(), j7, j2, m20690u, strArr, str2, str, gonVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01ad, code lost:
    
        if (r0.equals(com.sunia.HTREnginev2.gon.f71298s0) == false) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0180  */
    @androidx.annotation.Nullable
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.sunia.HTREnginev2.hon m20688s(org.xmlpull.v1.XmlPullParser r17, com.google.android.exoplayer2.text.ttml.TtmlDecoder.C4947a r18, @androidx.annotation.Nullable com.google.android.exoplayer2.text.ttml.TtmlDecoder.C4949c r19) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.m20688s(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlDecoder$a, com.google.android.exoplayer2.text.ttml.TtmlDecoder$c):com.sunia.HTREnginev2.hon");
    }

    /* renamed from: t */
    public static float m20689t(String str) {
        Matcher matcher = f27107A.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            Log.m21493w(f27114p, valueOf.length() != 0 ? "Invalid value for shear: ".concat(valueOf) : new String("Invalid value for shear: "));
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1)))));
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.m21494w(f27114p, valueOf2.length() != 0 ? "Failed to parse shear: ".concat(valueOf2) : new String("Failed to parse shear: "), e);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ef, code lost:
    
        if (r3.equals("text") == false) goto L112;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:93:0x0286. Please report as an issue. */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.ttml.TtmlStyle m20690u(org.xmlpull.v1.XmlPullParser r12, com.google.android.exoplayer2.text.ttml.TtmlStyle r13) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.m20690u(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlStyle):com.google.android.exoplayer2.text.ttml.TtmlStyle");
    }

    /* renamed from: v */
    public static String[] m20691v(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : Util.split(trim, "\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bc, code lost:
    
        if (r13.equals(io.opencensus.contrib.http.util.HttpMeasureConstants.f94668b) == false) goto L21;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m20692w(java.lang.String r13, com.google.android.exoplayer2.text.ttml.TtmlDecoder.C4948b r14) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.m20692w(java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlDecoder$b):long");
    }

    @Nullable
    /* renamed from: x */
    public static C4949c m20693x(XmlPullParser xmlPullParser) {
        String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, gon.f71253F);
        if (attributeValue == null) {
            return null;
        }
        Matcher matcher = f27109C.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.m21493w(f27114p, attributeValue.length() != 0 ? "Ignoring non-pixel tts extent: ".concat(attributeValue) : new String("Ignoring non-pixel tts extent: "));
            return null;
        }
        try {
            return new C4949c(Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2))));
        } catch (NumberFormatException unused) {
            Log.m21493w(f27114p, attributeValue.length() != 0 ? "Ignoring malformed tts extent: ".concat(attributeValue) : new String("Ignoring malformed tts extent: "));
            return null;
        }
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        C4948b c4948b;
        try {
            XmlPullParser newPullParser = this.f27125o.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new hon(""));
            C4949c c4949c = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            C4948b c4948b2 = f27112F;
            C4947a c4947a = f27113G;
            int i2 = 0;
            jon jonVar = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                gon gonVar = (gon) arrayDeque.peek();
                if (i2 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (gon.f71287n.equals(name)) {
                            c4948b2 = m20684o(newPullParser);
                            c4947a = m20682m(newPullParser, f27113G);
                            c4949c = m20693x(newPullParser);
                        }
                        C4949c c4949c2 = c4949c;
                        C4948b c4948b3 = c4948b2;
                        C4947a c4947a2 = c4947a;
                        if (m20680k(name)) {
                            if (gon.f71289o.equals(name)) {
                                c4948b = c4948b3;
                                m20685p(newPullParser, hashMap, c4947a2, c4949c2, hashMap2, hashMap3);
                            } else {
                                c4948b = c4948b3;
                                try {
                                    gon m20687r = m20687r(newPullParser, gonVar, hashMap2, c4948b);
                                    arrayDeque.push(m20687r);
                                    if (gonVar != null) {
                                        gonVar.m54321a(m20687r);
                                    }
                                } catch (SubtitleDecoderException e) {
                                    Log.m21494w(f27114p, "Suppressing parser error", e);
                                    i2++;
                                }
                            }
                            c4948b2 = c4948b;
                        } else {
                            String valueOf = String.valueOf(newPullParser.getName());
                            Log.m21491i(f27114p, valueOf.length() != 0 ? "Ignoring unsupported tag: ".concat(valueOf) : new String("Ignoring unsupported tag: "));
                            i2++;
                            c4948b2 = c4948b3;
                        }
                        c4949c = c4949c2;
                        c4947a = c4947a2;
                    } else if (eventType == 4) {
                        ((gon) Assertions.checkNotNull(gonVar)).m54321a(gon.m54318d(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals(gon.f71287n)) {
                            jonVar = new jon((gon) Assertions.checkNotNull((gon) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i2++;
                } else if (eventType == 3) {
                    i2--;
                }
                newPullParser.next();
            }
            if (jonVar != null) {
                return jonVar;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new SubtitleDecoderException("Unable to decode source", e3);
        }
    }
}
