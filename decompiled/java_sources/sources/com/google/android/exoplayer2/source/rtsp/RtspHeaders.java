package com.google.android.exoplayer2.source.rtsp;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.Iterables;
import com.google.common.collect.Multimap;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class RtspHeaders {

    /* renamed from: A */
    public static final String f26334A = "Speed";

    /* renamed from: B */
    public static final String f26335B = "Supported";

    /* renamed from: C */
    public static final String f26336C = "Timestamp";

    /* renamed from: D */
    public static final String f26337D = "Transport";

    /* renamed from: E */
    public static final String f26338E = "User-Agent";

    /* renamed from: F */
    public static final String f26339F = "Via";

    /* renamed from: G */
    public static final String f26340G = "WWW-Authenticate";

    /* renamed from: H */
    public static final RtspHeaders f26341H = new Builder().build();

    /* renamed from: b */
    public static final String f26342b = "Accept";

    /* renamed from: c */
    public static final String f26343c = "Allow";

    /* renamed from: d */
    public static final String f26344d = "Authorization";

    /* renamed from: e */
    public static final String f26345e = "Bandwidth";

    /* renamed from: f */
    public static final String f26346f = "Blocksize";

    /* renamed from: g */
    public static final String f26347g = "Cache-Control";

    /* renamed from: h */
    public static final String f26348h = "Connection";

    /* renamed from: i */
    public static final String f26349i = "Content-Base";

    /* renamed from: j */
    public static final String f26350j = "Content-Encoding";

    /* renamed from: k */
    public static final String f26351k = "Content-Language";

    /* renamed from: l */
    public static final String f26352l = "Content-Length";

    /* renamed from: m */
    public static final String f26353m = "Content-Location";

    /* renamed from: n */
    public static final String f26354n = "Content-Type";

    /* renamed from: o */
    public static final String f26355o = "CSeq";

    /* renamed from: p */
    public static final String f26356p = "Date";

    /* renamed from: q */
    public static final String f26357q = "Expires";

    /* renamed from: r */
    public static final String f26358r = "Location";

    /* renamed from: s */
    public static final String f26359s = "Proxy-Authenticate";

    /* renamed from: t */
    public static final String f26360t = "Proxy-Require";

    /* renamed from: u */
    public static final String f26361u = "Public";

    /* renamed from: v */
    public static final String f26362v = "Range";

    /* renamed from: w */
    public static final String f26363w = "RTP-Info";

    /* renamed from: x */
    public static final String f26364x = "RTCP-Interval";

    /* renamed from: y */
    public static final String f26365y = "Scale";

    /* renamed from: z */
    public static final String f26366z = "Session";

    /* renamed from: a */
    public final ImmutableListMultimap<String, String> f26367a;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final ImmutableListMultimap.Builder<String, String> f26368a;

        public Builder add(String str, String str2) {
            this.f26368a.put((ImmutableListMultimap.Builder<String, String>) RtspHeaders.m20354d(str.trim()), str2.trim());
            return this;
        }

        public Builder addAll(List<String> list) {
            for (int i = 0; i < list.size(); i++) {
                String[] splitAtFirst = Util.splitAtFirst(list.get(i), ":\\s?");
                if (splitAtFirst.length == 2) {
                    add(splitAtFirst[0], splitAtFirst[1]);
                }
            }
            return this;
        }

        public RtspHeaders build() {
            return new RtspHeaders(this);
        }

        public Builder() {
            this.f26368a = new ImmutableListMultimap.Builder<>();
        }

        public Builder(String str, @Nullable String str2, int i) {
            this();
            add("User-Agent", str);
            add(RtspHeaders.f26355o, String.valueOf(i));
            if (str2 != null) {
                add("Session", str2);
            }
        }

        public Builder addAll(Map<String, String> map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                add(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Builder(ImmutableListMultimap.Builder<String, String> builder) {
            this.f26368a = builder;
        }
    }

    /* renamed from: d */
    public static String m20354d(String str) {
        return Ascii.equalsIgnoreCase(str, "Accept") ? "Accept" : Ascii.equalsIgnoreCase(str, "Allow") ? "Allow" : Ascii.equalsIgnoreCase(str, "Authorization") ? "Authorization" : Ascii.equalsIgnoreCase(str, "Bandwidth") ? "Bandwidth" : Ascii.equalsIgnoreCase(str, f26346f) ? f26346f : Ascii.equalsIgnoreCase(str, "Cache-Control") ? "Cache-Control" : Ascii.equalsIgnoreCase(str, "Connection") ? "Connection" : Ascii.equalsIgnoreCase(str, "Content-Base") ? "Content-Base" : Ascii.equalsIgnoreCase(str, "Content-Encoding") ? "Content-Encoding" : Ascii.equalsIgnoreCase(str, "Content-Language") ? "Content-Language" : Ascii.equalsIgnoreCase(str, "Content-Length") ? "Content-Length" : Ascii.equalsIgnoreCase(str, "Content-Location") ? "Content-Location" : Ascii.equalsIgnoreCase(str, "Content-Type") ? "Content-Type" : Ascii.equalsIgnoreCase(str, f26355o) ? f26355o : Ascii.equalsIgnoreCase(str, "Date") ? "Date" : Ascii.equalsIgnoreCase(str, "Expires") ? "Expires" : Ascii.equalsIgnoreCase(str, "Location") ? "Location" : Ascii.equalsIgnoreCase(str, "Proxy-Authenticate") ? "Proxy-Authenticate" : Ascii.equalsIgnoreCase(str, f26360t) ? f26360t : Ascii.equalsIgnoreCase(str, f26361u) ? f26361u : Ascii.equalsIgnoreCase(str, "Range") ? "Range" : Ascii.equalsIgnoreCase(str, f26363w) ? f26363w : Ascii.equalsIgnoreCase(str, f26364x) ? f26364x : Ascii.equalsIgnoreCase(str, f26365y) ? f26365y : Ascii.equalsIgnoreCase(str, "Session") ? "Session" : Ascii.equalsIgnoreCase(str, f26334A) ? f26334A : Ascii.equalsIgnoreCase(str, f26335B) ? f26335B : Ascii.equalsIgnoreCase(str, f26336C) ? f26336C : Ascii.equalsIgnoreCase(str, f26337D) ? f26337D : Ascii.equalsIgnoreCase(str, "User-Agent") ? "User-Agent" : Ascii.equalsIgnoreCase(str, "Via") ? "Via" : Ascii.equalsIgnoreCase(str, "WWW-Authenticate") ? "WWW-Authenticate" : str;
    }

    /* renamed from: b */
    public ImmutableListMultimap<String, String> m20355b() {
        return this.f26367a;
    }

    /* renamed from: c */
    public Builder m20356c() {
        ImmutableListMultimap.Builder builder = new ImmutableListMultimap.Builder();
        builder.putAll((Multimap) this.f26367a);
        return new Builder(builder);
    }

    @Nullable
    /* renamed from: e */
    public String m20357e(String str) {
        ImmutableList<String> m20358f = m20358f(str);
        if (m20358f.isEmpty()) {
            return null;
        }
        return (String) Iterables.getLast(m20358f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RtspHeaders) {
            return this.f26367a.equals(((RtspHeaders) obj).f26367a);
        }
        return false;
    }

    /* renamed from: f */
    public ImmutableList<String> m20358f(String str) {
        return this.f26367a.get((ImmutableListMultimap<String, String>) m20354d(str));
    }

    public int hashCode() {
        return this.f26367a.hashCode();
    }

    public RtspHeaders(Builder builder) {
        this.f26367a = builder.f26368a.build();
    }
}
