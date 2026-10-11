package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class SessionDescription {

    /* renamed from: m */
    public static final String f26437m = "0";

    /* renamed from: n */
    public static final String f26438n = "control";

    /* renamed from: o */
    public static final String f26439o = "fmtp";

    /* renamed from: p */
    public static final String f26440p = "length";

    /* renamed from: q */
    public static final String f26441q = "range";

    /* renamed from: r */
    public static final String f26442r = "rtpmap";

    /* renamed from: s */
    public static final String f26443s = "tool";

    /* renamed from: t */
    public static final String f26444t = "type";

    /* renamed from: a */
    public final ImmutableMap<String, String> f26445a;

    /* renamed from: b */
    public final ImmutableList<MediaDescription> f26446b;

    /* renamed from: c */
    public final String f26447c;

    /* renamed from: d */
    public final String f26448d;

    /* renamed from: e */
    public final String f26449e;

    /* renamed from: f */
    public final int f26450f;

    /* renamed from: g */
    @Nullable
    public final Uri f26451g;

    /* renamed from: h */
    @Nullable
    public final String f26452h;

    /* renamed from: i */
    @Nullable
    public final String f26453i;

    /* renamed from: j */
    @Nullable
    public final String f26454j;

    /* renamed from: k */
    @Nullable
    public final String f26455k;

    /* renamed from: l */
    @Nullable
    public final String f26456l;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap<String, String> f26457a = new HashMap<>();

        /* renamed from: b */
        public final ImmutableList.Builder<MediaDescription> f26458b = new ImmutableList.Builder<>();

        /* renamed from: c */
        public int f26459c = -1;

        /* renamed from: d */
        @Nullable
        public String f26460d;

        /* renamed from: e */
        @Nullable
        public String f26461e;

        /* renamed from: f */
        @Nullable
        public String f26462f;

        /* renamed from: g */
        @Nullable
        public Uri f26463g;

        /* renamed from: h */
        @Nullable
        public String f26464h;

        /* renamed from: i */
        @Nullable
        public String f26465i;

        /* renamed from: j */
        @Nullable
        public String f26466j;

        /* renamed from: k */
        @Nullable
        public String f26467k;

        /* renamed from: l */
        @Nullable
        public String f26468l;

        public Builder addAttribute(String str, String str2) {
            this.f26457a.put(str, str2);
            return this;
        }

        public Builder addMediaDescription(MediaDescription mediaDescription) {
            this.f26458b.add((ImmutableList.Builder<MediaDescription>) mediaDescription);
            return this;
        }

        public SessionDescription build() {
            if (this.f26460d == null || this.f26461e == null || this.f26462f == null) {
                throw new IllegalStateException("One of more mandatory SDP fields are not set.");
            }
            return new SessionDescription(this);
        }

        public Builder setBitrate(int i) {
            this.f26459c = i;
            return this;
        }

        public Builder setConnection(String str) {
            this.f26464h = str;
            return this;
        }

        public Builder setEmailAddress(String str) {
            this.f26467k = str;
            return this;
        }

        public Builder setKey(String str) {
            this.f26465i = str;
            return this;
        }

        public Builder setOrigin(String str) {
            this.f26461e = str;
            return this;
        }

        public Builder setPhoneNumber(String str) {
            this.f26468l = str;
            return this;
        }

        public Builder setSessionInfo(String str) {
            this.f26466j = str;
            return this;
        }

        public Builder setSessionName(String str) {
            this.f26460d = str;
            return this;
        }

        public Builder setTiming(String str) {
            this.f26462f = str;
            return this;
        }

        public Builder setUri(Uri uri) {
            this.f26463g = uri;
            return this;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SessionDescription.class != obj.getClass()) {
            return false;
        }
        SessionDescription sessionDescription = (SessionDescription) obj;
        return this.f26450f == sessionDescription.f26450f && this.f26445a.equals(sessionDescription.f26445a) && this.f26446b.equals(sessionDescription.f26446b) && this.f26448d.equals(sessionDescription.f26448d) && this.f26447c.equals(sessionDescription.f26447c) && this.f26449e.equals(sessionDescription.f26449e) && Util.areEqual(this.f26456l, sessionDescription.f26456l) && Util.areEqual(this.f26451g, sessionDescription.f26451g) && Util.areEqual(this.f26454j, sessionDescription.f26454j) && Util.areEqual(this.f26455k, sessionDescription.f26455k) && Util.areEqual(this.f26452h, sessionDescription.f26452h) && Util.areEqual(this.f26453i, sessionDescription.f26453i);
    }

    public int hashCode() {
        int hashCode = (((((((((((217 + this.f26445a.hashCode()) * 31) + this.f26446b.hashCode()) * 31) + this.f26448d.hashCode()) * 31) + this.f26447c.hashCode()) * 31) + this.f26449e.hashCode()) * 31) + this.f26450f) * 31;
        String str = this.f26456l;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Uri uri = this.f26451g;
        int hashCode3 = (hashCode2 + (uri == null ? 0 : uri.hashCode())) * 31;
        String str2 = this.f26454j;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f26455k;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f26452h;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f26453i;
        return hashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public SessionDescription(Builder builder) {
        this.f26445a = ImmutableMap.copyOf((Map) builder.f26457a);
        this.f26446b = builder.f26458b.build();
        this.f26447c = (String) Util.castNonNull(builder.f26460d);
        this.f26448d = (String) Util.castNonNull(builder.f26461e);
        this.f26449e = (String) Util.castNonNull(builder.f26462f);
        this.f26451g = builder.f26463g;
        this.f26452h = builder.f26464h;
        this.f26450f = builder.f26459c;
        this.f26453i = builder.f26465i;
        this.f26454j = builder.f26467k;
        this.f26455k = builder.f26468l;
        this.f26456l = builder.f26466j;
    }
}
