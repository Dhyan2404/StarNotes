package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class aul {

    /* renamed from: c */
    public static final aul f65108c = new aul(0, C4649C.TIME_UNSET);

    /* renamed from: d */
    public static final Pattern f65109d = Pattern.compile("npt=([.\\d]+|now)\\s?-\\s?([.\\d]+)?");

    /* renamed from: e */
    public static final String f65110e = "npt=%.3f-";

    /* renamed from: f */
    public static final long f65111f = 0;

    /* renamed from: a */
    public final long f65112a;

    /* renamed from: b */
    public final long f65113b;

    public aul(long j, long j2) {
        this.f65112a = j;
        this.f65113b = j2;
    }

    /* renamed from: b */
    public static String m53098b(long j) {
        return Util.formatInvariant(f65110e, Double.valueOf(j / 1000.0d));
    }

    /* renamed from: d */
    public static aul m53099d(String str) throws ParserException {
        long parseFloat;
        Matcher matcher = f65109d.matcher(str);
        Assertions.checkArgument(matcher.matches());
        long parseFloat2 = ((String) Assertions.checkNotNull(matcher.group(1))).equals("now") ? 0L : Float.parseFloat(r1) * 1000.0f;
        String group = matcher.group(2);
        if (group != null) {
            try {
                parseFloat = Float.parseFloat(group) * 1000.0f;
                Assertions.checkArgument(parseFloat > parseFloat2);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(group, e);
            }
        } else {
            parseFloat = C4649C.TIME_UNSET;
        }
        return new aul(parseFloat2, parseFloat);
    }

    /* renamed from: a */
    public long m53100a() {
        return this.f65113b - this.f65112a;
    }

    /* renamed from: c */
    public boolean m53101c() {
        return this.f65113b == C4649C.TIME_UNSET;
    }
}
