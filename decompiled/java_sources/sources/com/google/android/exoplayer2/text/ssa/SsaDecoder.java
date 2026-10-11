package com.google.android.exoplayer2.text.ssa;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.ssa.SsaStyle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.bxm;
import com.sunia.HTREnginev2.cxm;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.convert.htmlgen.Constants;

/* loaded from: classes5.dex */
public final class SsaDecoder extends SimpleSubtitleDecoder {

    /* renamed from: t */
    public static final String f27031t = "SsaDecoder";

    /* renamed from: u */
    public static final Pattern f27032u = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: v */
    public static final String f27033v = "Format:";

    /* renamed from: w */
    public static final String f27034w = "Style:";

    /* renamed from: x */
    public static final String f27035x = "Dialogue:";

    /* renamed from: y */
    public static final float f27036y = 0.05f;

    /* renamed from: o */
    public final boolean f27037o;

    /* renamed from: p */
    @Nullable
    public final bxm f27038p;

    /* renamed from: q */
    public Map<String, SsaStyle> f27039q;

    /* renamed from: r */
    public float f27040r;

    /* renamed from: s */
    public float f27041s;

    public SsaDecoder() {
        this(null);
    }

    /* renamed from: j */
    public static int m20649j(long j, List<Long> list, List<List<Cue>> list2) {
        int i;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (list.get(size).longValue() == j) {
                return size;
            }
            if (list.get(size).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList(list2.get(i - 1)));
        return i;
    }

    /* renamed from: k */
    public static float m20650k(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    /* renamed from: l */
    public static Cue m20651l(String str, @Nullable SsaStyle ssaStyle, SsaStyle.C4946b c4946b, float f, float f2) {
        SpannableString spannableString = new SpannableString(str);
        Cue.Builder text = new Cue.Builder().setText(spannableString);
        if (ssaStyle != null) {
            if (ssaStyle.f27055c != null) {
                spannableString.setSpan(new ForegroundColorSpan(ssaStyle.f27055c.intValue()), 0, spannableString.length(), 33);
            }
            float f3 = ssaStyle.f27056d;
            if (f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                text.setTextSize(f3 / f2, 1);
            }
            boolean z = ssaStyle.f27057e;
            if (z && ssaStyle.f27058f) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (ssaStyle.f27058f) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (ssaStyle.f27059g) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (ssaStyle.f27060h) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i = c4946b.f27076a;
        if (i == -1) {
            i = ssaStyle != null ? ssaStyle.f27054b : -1;
        }
        text.setTextAlignment(m20656u(i)).setPositionAnchor(m20655t(i)).setLineAnchor(m20654s(i));
        PointF pointF = c4946b.f27077b;
        if (pointF == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
            text.setPosition(m20650k(text.getPositionAnchor()));
            text.setLine(m20650k(text.getLineAnchor()), 0);
        } else {
            text.setPosition(pointF.x / f);
            text.setLine(c4946b.f27077b.y / f2, 0);
        }
        return text.build();
    }

    /* renamed from: q */
    public static Map<String, SsaStyle> m20652q(ParsableByteArray parsableByteArray) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SsaStyle.C4945a c4945a = null;
        while (true) {
            String readLine = parsableByteArray.readLine();
            if (readLine == null || (parsableByteArray.bytesLeft() != 0 && parsableByteArray.peekUnsignedByte() == 91)) {
                break;
            }
            if (readLine.startsWith(f27033v)) {
                c4945a = SsaStyle.C4945a.m20668a(readLine);
            } else if (readLine.startsWith(f27034w)) {
                if (c4945a == null) {
                    Log.m21493w(f27031t, readLine.length() != 0 ? "Skipping 'Style:' line before 'Format:' line: ".concat(readLine) : new String("Skipping 'Style:' line before 'Format:' line: "));
                } else {
                    SsaStyle m20662b = SsaStyle.m20662b(readLine, c4945a);
                    if (m20662b != null) {
                        linkedHashMap.put(m20662b.f27053a, m20662b);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    /* renamed from: r */
    public static long m20653r(String str) {
        Matcher matcher = f27032u.matcher(str.trim());
        return !matcher.matches() ? C4649C.TIME_UNSET : (Long.parseLong((String) Util.castNonNull(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) Util.castNonNull(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) Util.castNonNull(matcher.group(3))) * 1000000) + (Long.parseLong((String) Util.castNonNull(matcher.group(4))) * 10000);
    }

    /* renamed from: s */
    public static int m20654s(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                StringBuilder sb = new StringBuilder(30);
                sb.append("Unknown alignment: ");
                sb.append(i);
                Log.m21493w(f27031t, sb.toString());
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    /* renamed from: t */
    public static int m20655t(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                StringBuilder sb = new StringBuilder(30);
                sb.append("Unknown alignment: ");
                sb.append(i);
                Log.m21493w(f27031t, sb.toString());
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    @Nullable
    /* renamed from: u */
    public static Layout.Alignment m20656u(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                StringBuilder sb = new StringBuilder(30);
                sb.append("Unknown alignment: ");
                sb.append(i);
                Log.m21493w(f27031t, sb.toString());
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
        if (!this.f27037o) {
            m20659o(parsableByteArray);
        }
        m20658n(parsableByteArray, arrayList, arrayList2);
        return new cxm(arrayList, arrayList2);
    }

    /* renamed from: m */
    public final void m20657m(String str, bxm bxmVar, List<List<Cue>> list, List<Long> list2) {
        int i;
        Assertions.checkArgument(str.startsWith(f27035x));
        String[] split = str.substring(9).split(",", bxmVar.f66226e);
        if (split.length != bxmVar.f66226e) {
            Log.m21493w(f27031t, str.length() != 0 ? "Skipping dialogue line with fewer columns than format: ".concat(str) : new String("Skipping dialogue line with fewer columns than format: "));
            return;
        }
        long m20653r = m20653r(split[bxmVar.f66222a]);
        if (m20653r == C4649C.TIME_UNSET) {
            Log.m21493w(f27031t, str.length() != 0 ? "Skipping invalid timing: ".concat(str) : new String("Skipping invalid timing: "));
            return;
        }
        long m20653r2 = m20653r(split[bxmVar.f66223b]);
        if (m20653r2 == C4649C.TIME_UNSET) {
            Log.m21493w(f27031t, str.length() != 0 ? "Skipping invalid timing: ".concat(str) : new String("Skipping invalid timing: "));
            return;
        }
        Map<String, SsaStyle> map = this.f27039q;
        SsaStyle ssaStyle = (map == null || (i = bxmVar.f66224c) == -1) ? null : map.get(split[i].trim());
        String str2 = split[bxmVar.f66225d];
        Cue m20651l = m20651l(SsaStyle.C4946b.m20672d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", Constants.UNICODECHAR_NO_BREAK_SPACE), ssaStyle, SsaStyle.C4946b.m20670b(str2), this.f27040r, this.f27041s);
        int m20649j = m20649j(m20653r2, list2, list);
        for (int m20649j2 = m20649j(m20653r, list2, list); m20649j2 < m20649j; m20649j2++) {
            list.get(m20649j2).add(m20651l);
        }
    }

    /* renamed from: n */
    public final void m20658n(ParsableByteArray parsableByteArray, List<List<Cue>> list, List<Long> list2) {
        bxm bxmVar = this.f27037o ? this.f27038p : null;
        while (true) {
            String readLine = parsableByteArray.readLine();
            if (readLine == null) {
                return;
            }
            if (readLine.startsWith(f27033v)) {
                bxmVar = bxm.m53349a(readLine);
            } else if (readLine.startsWith(f27035x)) {
                if (bxmVar == null) {
                    Log.m21493w(f27031t, readLine.length() != 0 ? "Skipping dialogue line before complete format: ".concat(readLine) : new String("Skipping dialogue line before complete format: "));
                } else {
                    m20657m(readLine, bxmVar, list, list2);
                }
            }
        }
    }

    /* renamed from: o */
    public final void m20659o(ParsableByteArray parsableByteArray) {
        while (true) {
            String readLine = parsableByteArray.readLine();
            if (readLine == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(readLine)) {
                m20660p(parsableByteArray);
            } else if ("[V4+ Styles]".equalsIgnoreCase(readLine)) {
                this.f27039q = m20652q(parsableByteArray);
            } else if ("[V4 Styles]".equalsIgnoreCase(readLine)) {
                Log.m21491i(f27031t, "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(readLine)) {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:3:0x0006  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20660p(com.google.android.exoplayer2.util.ParsableByteArray r5) {
        /*
            r4 = this;
        L0:
            java.lang.String r0 = r5.readLine()
            if (r0 == 0) goto L59
            int r1 = r5.bytesLeft()
            if (r1 == 0) goto L14
            int r1 = r5.peekUnsignedByte()
            r2 = 91
            if (r1 == r2) goto L59
        L14:
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 2
            if (r1 == r2) goto L1f
            goto L0
        L1f:
            r1 = 0
            r1 = r0[r1]
            java.lang.String r1 = r1.trim()
            java.lang.String r1 = com.google.common.base.Ascii.toLowerCase(r1)
            r1.hashCode()
            java.lang.String r2 = "playresx"
            boolean r2 = r1.equals(r2)
            r3 = 1
            if (r2 != 0) goto L4c
            java.lang.String r2 = "playresy"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3f
            goto L0
        L3f:
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f27041s = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L4c:
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f27040r = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ssa.SsaDecoder.m20660p(com.google.android.exoplayer2.util.ParsableByteArray):void");
    }

    public SsaDecoder(@Nullable List<byte[]> list) {
        super(f27031t);
        this.f27040r = -3.4028235E38f;
        this.f27041s = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.f27037o = true;
            String fromUtf8Bytes = Util.fromUtf8Bytes(list.get(0));
            Assertions.checkArgument(fromUtf8Bytes.startsWith(f27033v));
            this.f27038p = (bxm) Assertions.checkNotNull(bxm.m53349a(fromUtf8Bytes));
            m20659o(new ParsableByteArray(list.get(1)));
            return;
        }
        this.f27037o = false;
        this.f27038p = null;
    }
}
