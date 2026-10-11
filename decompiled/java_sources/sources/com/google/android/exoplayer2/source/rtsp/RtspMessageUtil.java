package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.UnmodifiableIterator;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.sunia.HTREnginev2.ztl;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes5.dex */
public final class RtspMessageUtil {

    /* renamed from: a */
    public static final long f26410a = 60000;

    /* renamed from: h */
    public static final String f26417h = "RTSP/1.0";

    /* renamed from: b */
    public static final Pattern f26411b = Pattern.compile("([A-Z_]+) (.*) RTSP/1\\.0");

    /* renamed from: c */
    public static final Pattern f26412c = Pattern.compile("RTSP/1\\.0 (\\d+) (.+)");

    /* renamed from: d */
    public static final Pattern f26413d = Pattern.compile("Content-Length:\\s?(\\d+)", 2);

    /* renamed from: e */
    public static final Pattern f26414e = Pattern.compile("([\\w$\\-_.+]+)(?:;\\s?timeout=(\\d+))?");

    /* renamed from: f */
    public static final Pattern f26415f = Pattern.compile("Digest realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\",\\s?(?:domain=\"(.+)\",\\s?)?nonce=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"(?:,\\s?opaque=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\")?");

    /* renamed from: g */
    public static final Pattern f26416g = Pattern.compile("Basic realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"");

    /* renamed from: i */
    public static final String f26418i = new String(new byte[]{10});

    /* renamed from: j */
    public static final String f26419j = new String(new byte[]{13, 10});

    /* loaded from: classes5.dex */
    public static final class RtspAuthUserInfo {
        public final String password;
        public final String username;

        public RtspAuthUserInfo(String str, String str2) {
            this.username = str;
            this.password = str2;
        }
    }

    /* loaded from: classes5.dex */
    public static final class RtspSessionHeader {
        public final String sessionId;
        public final long timeoutMs;

        public RtspSessionHeader(String str, long j) {
            this.sessionId = str;
            this.timeoutMs = j;
        }
    }

    /* renamed from: a */
    public static byte[] m20387a(List<String> list) {
        return Joiner.m25799on(f26419j).join(list).getBytes(RtspMessageChannel.f26385k);
    }

    /* renamed from: b */
    public static String m20388b(int i) {
        if (i == 200) {
            return HttpStatus.f114656OK;
        }
        if (i == 461) {
            return "Unsupported Transport";
        }
        if (i == 500) {
            return HttpStatus.Internal_Server_Error;
        }
        if (i == 505) {
            return "RTSP Version Not Supported";
        }
        if (i == 301) {
            return "Move Permanently";
        }
        if (i == 302) {
            return "Move Temporarily";
        }
        if (i == 400) {
            return HttpStatus.Bad_Request;
        }
        if (i == 401) {
            return "Unauthorized";
        }
        if (i == 404) {
            return HttpStatus.Not_Found;
        }
        if (i == 405) {
            return HttpStatus.Method_Not_Allowed;
        }
        switch (i) {
            case 454:
                return "Session Not Found";
            case 455:
                return "Method Not Valid In This State";
            case ContentException.CLOUD_SPACE_NOT_ENOUGH /* 456 */:
                return "Header Field Not Valid";
            case 457:
                return "Invalid Range";
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: c */
    public static byte[] m20389c(String str) {
        return str.getBytes(RtspMessageChannel.f26385k);
    }

    /* renamed from: d */
    public static boolean m20390d(List<String> list) {
        return f26412c.matcher(list.get(0)).matches();
    }

    /* renamed from: e */
    public static boolean m20391e(String str) {
        return f26411b.matcher(str).matches() || f26412c.matcher(str).matches();
    }

    /* renamed from: f */
    public static long m20392f(String str) throws ParserException {
        try {
            Matcher matcher = f26413d.matcher(str);
            if (matcher.find()) {
                return Long.parseLong((String) Assertions.checkNotNull(matcher.group(1)));
            }
            return -1L;
        } catch (NumberFormatException e) {
            throw ParserException.createForMalformedManifest(str, e);
        }
    }

    /* renamed from: g */
    public static int m20393g(String str) throws ParserException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            throw ParserException.createForMalformedManifest(str, e);
        }
    }

    /* renamed from: h */
    public static int m20394h(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1881579439:
                if (str.equals("RECORD")) {
                    c = 0;
                    break;
                }
                break;
            case -880847356:
                if (str.equals("TEARDOWN")) {
                    c = 1;
                    break;
                }
                break;
            case -702888512:
                if (str.equals("GET_PARAMETER")) {
                    c = 2;
                    break;
                }
                break;
            case -531492226:
                if (str.equals("OPTIONS")) {
                    c = 3;
                    break;
                }
                break;
            case -84360524:
                if (str.equals("PLAY_NOTIFY")) {
                    c = 4;
                    break;
                }
                break;
            case 2458420:
                if (str.equals("PLAY")) {
                    c = 5;
                    break;
                }
                break;
            case 6481884:
                if (str.equals("REDIRECT")) {
                    c = 6;
                    break;
                }
                break;
            case 71242700:
                if (str.equals("SET_PARAMETER")) {
                    c = 7;
                    break;
                }
                break;
            case 75902422:
                if (str.equals("PAUSE")) {
                    c = '\b';
                    break;
                }
                break;
            case 78791261:
                if (str.equals("SETUP")) {
                    c = '\t';
                    break;
                }
                break;
            case 133006441:
                if (str.equals("ANNOUNCE")) {
                    c = '\n';
                    break;
                }
                break;
            case 1800840907:
                if (str.equals("DESCRIBE")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 8;
            case 1:
                return 12;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 7;
            case 5:
                return 6;
            case 6:
                return 9;
            case 7:
                return 11;
            case '\b':
                return 5;
            case '\t':
                return 10;
            case '\n':
                return 1;
            case 11:
                return 2;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: i */
    public static ImmutableList<Integer> m20395i(@Nullable String str) {
        if (str == null) {
            return ImmutableList.m26161of();
        }
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (String str2 : Util.split(str, ",\\s?")) {
            builder.add((ImmutableList.Builder) Integer.valueOf(m20394h(str2)));
        }
        return builder.build();
    }

    /* renamed from: j */
    public static RtspRequest m20396j(List<String> list) {
        Matcher matcher = f26411b.matcher(list.get(0));
        Assertions.checkArgument(matcher.matches());
        int m20394h = m20394h((String) Assertions.checkNotNull(matcher.group(1)));
        Uri parse = Uri.parse((String) Assertions.checkNotNull(matcher.group(2)));
        int indexOf = list.indexOf("");
        Assertions.checkArgument(indexOf > 0);
        return new RtspRequest(parse, m20394h, new RtspHeaders.Builder().addAll(list.subList(1, indexOf)).build(), Joiner.m25799on(f26419j).join(list.subList(indexOf + 1, list.size())));
    }

    /* renamed from: k */
    public static ztl m20397k(List<String> list) {
        Matcher matcher = f26412c.matcher(list.get(0));
        Assertions.checkArgument(matcher.matches());
        int parseInt = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)));
        int indexOf = list.indexOf("");
        Assertions.checkArgument(indexOf > 0);
        return new ztl(parseInt, new RtspHeaders.Builder().addAll(list.subList(1, indexOf)).build(), Joiner.m25799on(f26419j).join(list.subList(indexOf + 1, list.size())));
    }

    /* renamed from: l */
    public static RtspSessionHeader m20398l(String str) throws ParserException {
        long parseInt;
        Matcher matcher = f26414e.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedManifest(str, null);
        }
        String str2 = (String) Assertions.checkNotNull(matcher.group(1));
        if (matcher.group(2) != null) {
            try {
                parseInt = Integer.parseInt(r0) * 1000;
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(str, e);
            }
        } else {
            parseInt = 60000;
        }
        return new RtspSessionHeader(str2, parseInt);
    }

    @Nullable
    /* renamed from: m */
    public static RtspAuthUserInfo m20399m(Uri uri) {
        String userInfo = uri.getUserInfo();
        if (userInfo == null || !userInfo.contains(":")) {
            return null;
        }
        String[] splitAtFirst = Util.splitAtFirst(userInfo, ":");
        return new RtspAuthUserInfo(splitAtFirst[0], splitAtFirst[1]);
    }

    /* renamed from: n */
    public static C4917a m20400n(String str) throws ParserException {
        Matcher matcher = f26415f.matcher(str);
        if (matcher.find()) {
            return new C4917a(2, (String) Assertions.checkNotNull(matcher.group(1)), (String) Assertions.checkNotNull(matcher.group(3)), Strings.nullToEmpty(matcher.group(4)));
        }
        Matcher matcher2 = f26416g.matcher(str);
        if (matcher2.matches()) {
            return new C4917a(1, (String) Assertions.checkNotNull(matcher2.group(1)), "", "");
        }
        String valueOf = String.valueOf(str);
        throw ParserException.createForMalformedManifest(valueOf.length() != 0 ? "Invalid WWW-Authenticate header ".concat(valueOf) : new String("Invalid WWW-Authenticate header "), null);
    }

    /* renamed from: o */
    public static Uri m20401o(Uri uri) {
        if (uri.getUserInfo() == null) {
            return uri;
        }
        String str = (String) Assertions.checkNotNull(uri.getAuthority());
        Assertions.checkArgument(str.contains("@"));
        return uri.buildUpon().encodedAuthority(Util.split(str, "@")[1]).build();
    }

    /* renamed from: p */
    public static ImmutableList<String> m20402p(RtspRequest rtspRequest) {
        Assertions.checkArgument(rtspRequest.f26435c.m20357e(RtspHeaders.f26355o) != null);
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.add((ImmutableList.Builder) Util.formatInvariant("%s %s %s", m20405s(rtspRequest.f26434b), rtspRequest.f26433a, f26417h));
        ImmutableListMultimap<String, String> m20355b = rtspRequest.f26435c.m20355b();
        UnmodifiableIterator<String> it2 = m20355b.keySet().iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            ImmutableList<String> immutableList = m20355b.get((ImmutableListMultimap<String, String>) next);
            for (int i = 0; i < immutableList.size(); i++) {
                builder.add((ImmutableList.Builder) Util.formatInvariant("%s: %s", next, immutableList.get(i)));
            }
        }
        builder.add((ImmutableList.Builder) "");
        builder.add((ImmutableList.Builder) rtspRequest.f26436d);
        return builder.build();
    }

    /* renamed from: q */
    public static ImmutableList<String> m20403q(ztl ztlVar) {
        Assertions.checkArgument(ztlVar.f92196b.m20357e(RtspHeaders.f26355o) != null);
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.add((ImmutableList.Builder) Util.formatInvariant("%s %s %s", f26417h, Integer.valueOf(ztlVar.f92195a), m20388b(ztlVar.f92195a)));
        ImmutableListMultimap<String, String> m20355b = ztlVar.f92196b.m20355b();
        UnmodifiableIterator<String> it2 = m20355b.keySet().iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            ImmutableList<String> immutableList = m20355b.get((ImmutableListMultimap<String, String>) next);
            for (int i = 0; i < immutableList.size(); i++) {
                builder.add((ImmutableList.Builder) Util.formatInvariant("%s: %s", next, immutableList.get(i)));
            }
        }
        builder.add((ImmutableList.Builder) "");
        builder.add((ImmutableList.Builder) ztlVar.f92197c);
        return builder.build();
    }

    /* renamed from: r */
    public static String[] m20404r(String str) {
        String str2 = f26419j;
        if (!str.contains(str2)) {
            str2 = f26418i;
        }
        return Util.split(str, str2);
    }

    /* renamed from: s */
    public static String m20405s(int i) {
        switch (i) {
            case 1:
                return "ANNOUNCE";
            case 2:
                return "DESCRIBE";
            case 3:
                return "GET_PARAMETER";
            case 4:
                return "OPTIONS";
            case 5:
                return "PAUSE";
            case 6:
                return "PLAY";
            case 7:
                return "PLAY_NOTIFY";
            case 8:
                return "RECORD";
            case 9:
                return "REDIRECT";
            case 10:
                return "SETUP";
            case 11:
                return "SET_PARAMETER";
            case 12:
                return "TEARDOWN";
            default:
                throw new IllegalStateException();
        }
    }
}
