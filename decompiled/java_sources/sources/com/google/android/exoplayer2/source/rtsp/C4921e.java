package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.rtsp.MediaDescription;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.util.Assertions;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.google.android.exoplayer2.source.rtsp.e */
/* loaded from: classes5.dex */
public final class C4921e {

    /* renamed from: a */
    public static final Pattern f26524a = Pattern.compile("([a-z])=\\s?(.+)");

    /* renamed from: b */
    public static final Pattern f26525b = Pattern.compile("([\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2e\\x30-\\x39\\x41-\\x5a\\x5e-\\x7e]+)(?::(.*))?");

    /* renamed from: c */
    public static final Pattern f26526c = Pattern.compile("(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)");

    /* renamed from: d */
    public static final String f26527d = "v";

    /* renamed from: e */
    public static final String f26528e = "o";

    /* renamed from: f */
    public static final String f26529f = "s";

    /* renamed from: g */
    public static final String f26530g = "i";

    /* renamed from: h */
    public static final String f26531h = "u";

    /* renamed from: i */
    public static final String f26532i = "e";

    /* renamed from: j */
    public static final String f26533j = "p";

    /* renamed from: k */
    public static final String f26534k = "c";

    /* renamed from: l */
    public static final String f26535l = "b";

    /* renamed from: m */
    public static final String f26536m = "t";

    /* renamed from: n */
    public static final String f26537n = "k";

    /* renamed from: o */
    public static final String f26538o = "a";

    /* renamed from: p */
    public static final String f26539p = "m";

    /* renamed from: q */
    public static final String f26540q = "r";

    /* renamed from: r */
    public static final String f26541r = "z";

    /* renamed from: a */
    public static void m20492a(SessionDescription.Builder builder, MediaDescription.Builder builder2) throws ParserException {
        try {
            builder.addMediaDescription(builder2.build());
        } catch (IllegalArgumentException | IllegalStateException e) {
            throw ParserException.createForMalformedManifest(null, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x01d2, code lost:
    
        continue;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.source.rtsp.SessionDescription m20493b(java.lang.String r12) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.rtsp.C4921e.m20493b(java.lang.String):com.google.android.exoplayer2.source.rtsp.SessionDescription");
    }

    /* renamed from: c */
    public static MediaDescription.Builder m20494c(String str) throws ParserException {
        Matcher matcher = f26526c.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            throw ParserException.createForMalformedManifest(valueOf.length() != 0 ? "Malformed SDP media description line: ".concat(valueOf) : new String("Malformed SDP media description line: "), null);
        }
        try {
            return new MediaDescription.Builder((String) Assertions.checkNotNull(matcher.group(1)), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2))), (String) Assertions.checkNotNull(matcher.group(3)), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(4))));
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            throw ParserException.createForMalformedManifest(valueOf2.length() != 0 ? "Malformed SDP media description line: ".concat(valueOf2) : new String("Malformed SDP media description line: "), e);
        }
    }
}
