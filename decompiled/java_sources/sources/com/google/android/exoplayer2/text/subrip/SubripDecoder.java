package com.google.android.exoplayer2.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.onegravity.rteditor.utils.Constants;
import com.sunia.HTREnginev2.f5n;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class SubripDecoder extends SimpleSubtitleDecoder {

    /* renamed from: A */
    public static final String f27078A = "{\\an3}";

    /* renamed from: B */
    public static final String f27079B = "{\\an4}";

    /* renamed from: C */
    public static final String f27080C = "{\\an5}";

    /* renamed from: D */
    public static final String f27081D = "{\\an6}";

    /* renamed from: E */
    public static final String f27082E = "{\\an7}";

    /* renamed from: F */
    public static final String f27083F = "{\\an8}";

    /* renamed from: G */
    public static final String f27084G = "{\\an9}";

    /* renamed from: q */
    public static final float f27085q = 0.08f;

    /* renamed from: r */
    public static final float f27086r = 0.92f;

    /* renamed from: s */
    public static final float f27087s = 0.5f;

    /* renamed from: t */
    public static final String f27088t = "SubripDecoder";

    /* renamed from: u */
    public static final String f27089u = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?";

    /* renamed from: v */
    public static final Pattern f27090v = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: w */
    public static final Pattern f27091w = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: x */
    public static final String f27092x = "\\{\\\\an[1-9]\\}";

    /* renamed from: y */
    public static final String f27093y = "{\\an1}";

    /* renamed from: z */
    public static final String f27094z = "{\\an2}";

    /* renamed from: o */
    public final StringBuilder f27095o;

    /* renamed from: p */
    public final ArrayList<String> f27096p;

    public SubripDecoder() {
        super(f27088t);
        this.f27095o = new StringBuilder();
        this.f27096p = new ArrayList<>();
    }

    /* renamed from: k */
    public static float m20673k(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: l */
    public static long m20674l(Matcher matcher, int i) {
        String group = matcher.group(i + 1);
        long parseLong = (group != null ? Long.parseLong(group) * 60 * 60 * 1000 : 0L) + (Long.parseLong((String) Assertions.checkNotNull(matcher.group(i + 2))) * 60 * 1000) + (Long.parseLong((String) Assertions.checkNotNull(matcher.group(i + 3))) * 1000);
        String group2 = matcher.group(i + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        LongArray longArray = new LongArray();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
        while (true) {
            String readLine = parsableByteArray.readLine();
            int i2 = 0;
            if (readLine == null) {
                break;
            }
            if (readLine.length() != 0) {
                try {
                    Integer.parseInt(readLine);
                    String readLine2 = parsableByteArray.readLine();
                    if (readLine2 == null) {
                        Log.m21493w(f27088t, "Unexpected end");
                        break;
                    }
                    Matcher matcher = f27090v.matcher(readLine2);
                    if (matcher.matches()) {
                        longArray.add(m20674l(matcher, 1));
                        longArray.add(m20674l(matcher, 6));
                        this.f27095o.setLength(0);
                        this.f27096p.clear();
                        for (String readLine3 = parsableByteArray.readLine(); !TextUtils.isEmpty(readLine3); readLine3 = parsableByteArray.readLine()) {
                            if (this.f27095o.length() > 0) {
                                this.f27095o.append(Constants.TAG_BR_INVALID);
                            }
                            this.f27095o.append(m20676m(readLine3, this.f27096p));
                        }
                        Spanned fromHtml = Html.fromHtml(this.f27095o.toString());
                        while (true) {
                            if (i2 >= this.f27096p.size()) {
                                str = null;
                                break;
                            }
                            str = this.f27096p.get(i2);
                            if (str.matches(f27092x)) {
                                break;
                            }
                            i2++;
                        }
                        arrayList.add(m20675j(fromHtml, str));
                        arrayList.add(Cue.EMPTY);
                    } else {
                        Log.m21493w(f27088t, readLine2.length() != 0 ? "Skipping invalid timing: ".concat(readLine2) : new String("Skipping invalid timing: "));
                    }
                } catch (NumberFormatException unused) {
                    Log.m21493w(f27088t, readLine.length() != 0 ? "Skipping invalid index: ".concat(readLine) : new String("Skipping invalid index: "));
                }
            }
        }
        return new f5n((Cue[]) arrayList.toArray(new Cue[0]), longArray.toArray());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: j */
    public final Cue m20675j(Spanned spanned, @Nullable String str) {
        char c;
        char c2;
        Cue.Builder text = new Cue.Builder().setText(spanned);
        if (str == null) {
            return text.build();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals(f27093y)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -685620679:
                if (str.equals(f27094z)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -685620648:
                if (str.equals(f27078A)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -685620617:
                if (str.equals(f27079B)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -685620586:
                if (str.equals(f27080C)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -685620555:
                if (str.equals(f27081D)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -685620524:
                if (str.equals(f27082E)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -685620493:
                if (str.equals(f27083F)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -685620462:
                if (str.equals(f27084G)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0 || c == 1 || c == 2) {
            text.setPositionAnchor(0);
        } else if (c == 3 || c == 4 || c == 5) {
            text.setPositionAnchor(2);
        } else {
            text.setPositionAnchor(1);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals(f27093y)) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -685620679:
                if (str.equals(f27094z)) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -685620648:
                if (str.equals(f27078A)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -685620617:
                if (str.equals(f27079B)) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -685620586:
                if (str.equals(f27080C)) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -685620555:
                if (str.equals(f27081D)) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -685620524:
                if (str.equals(f27082E)) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -685620493:
                if (str.equals(f27083F)) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -685620462:
                if (str.equals(f27084G)) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0 || c2 == 1 || c2 == 2) {
            text.setLineAnchor(2);
        } else if (c2 == 3 || c2 == 4 || c2 == 5) {
            text.setLineAnchor(0);
        } else {
            text.setLineAnchor(1);
        }
        return text.setPosition(m20673k(text.getPositionAnchor())).setLine(m20673k(text.getLineAnchor()), 0).build();
    }

    /* renamed from: m */
    public final String m20676m(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f27091w.matcher(trim);
        int i = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i;
            int length = group.length();
            sb.replace(start, start + length, "");
            i += length;
        }
        return sb.toString();
    }
}
