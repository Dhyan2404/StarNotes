package com.google.android.exoplayer2.source.rtsp;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableMap;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class MediaDescription {

    /* renamed from: k */
    public static final String f26255k = "audio";

    /* renamed from: l */
    public static final String f26256l = "video";

    /* renamed from: m */
    public static final String f26257m = "RTP/AVP";

    /* renamed from: a */
    public final String f26258a;

    /* renamed from: b */
    public final int f26259b;

    /* renamed from: c */
    public final String f26260c;

    /* renamed from: d */
    public final int f26261d;

    /* renamed from: e */
    public final int f26262e;

    /* renamed from: f */
    @Nullable
    public final String f26263f;

    /* renamed from: g */
    @Nullable
    public final String f26264g;

    /* renamed from: h */
    @Nullable
    public final String f26265h;

    /* renamed from: i */
    public final ImmutableMap<String, String> f26266i;

    /* renamed from: j */
    public final RtpMapAttribute f26267j;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final String f26268a;

        /* renamed from: b */
        public final int f26269b;

        /* renamed from: c */
        public final String f26270c;

        /* renamed from: d */
        public final int f26271d;

        /* renamed from: e */
        public final HashMap<String, String> f26272e = new HashMap<>();

        /* renamed from: f */
        public int f26273f = -1;

        /* renamed from: g */
        @Nullable
        public String f26274g;

        /* renamed from: h */
        @Nullable
        public String f26275h;

        /* renamed from: i */
        @Nullable
        public String f26276i;

        public Builder(String str, int i, String str2, int i2) {
            this.f26268a = str;
            this.f26269b = i;
            this.f26270c = str2;
            this.f26271d = i2;
        }

        public Builder addAttribute(String str, String str2) {
            this.f26272e.put(str, str2);
            return this;
        }

        public MediaDescription build() {
            try {
                Assertions.checkState(this.f26272e.containsKey(SessionDescription.f26442r));
                return new MediaDescription(this, ImmutableMap.copyOf((Map) this.f26272e), RtpMapAttribute.parse((String) Util.castNonNull(this.f26272e.get(SessionDescription.f26442r))));
            } catch (ParserException e) {
                throw new IllegalStateException(e);
            }
        }

        public Builder setBitrate(int i) {
            this.f26273f = i;
            return this;
        }

        public Builder setConnection(String str) {
            this.f26275h = str;
            return this;
        }

        public Builder setKey(String str) {
            this.f26276i = str;
            return this;
        }

        public Builder setMediaTitle(String str) {
            this.f26274g = str;
            return this;
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface MediaType {
    }

    /* loaded from: classes5.dex */
    public static final class RtpMapAttribute {
        public final int clockRate;
        public final int encodingParameters;
        public final String mediaEncoding;
        public final int payloadType;

        public RtpMapAttribute(int i, String str, int i2, int i3) {
            this.payloadType = i;
            this.mediaEncoding = str;
            this.clockRate = i2;
            this.encodingParameters = i3;
        }

        public static RtpMapAttribute parse(String str) throws ParserException {
            String[] splitAtFirst = Util.splitAtFirst(str, " ");
            Assertions.checkArgument(splitAtFirst.length == 2);
            int m20393g = RtspMessageUtil.m20393g(splitAtFirst[0]);
            String[] split = Util.split(splitAtFirst[1].trim(), "/");
            Assertions.checkArgument(split.length >= 2);
            return new RtpMapAttribute(m20393g, split[0], RtspMessageUtil.m20393g(split[1]), split.length == 3 ? RtspMessageUtil.m20393g(split[2]) : -1);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || RtpMapAttribute.class != obj.getClass()) {
                return false;
            }
            RtpMapAttribute rtpMapAttribute = (RtpMapAttribute) obj;
            return this.payloadType == rtpMapAttribute.payloadType && this.mediaEncoding.equals(rtpMapAttribute.mediaEncoding) && this.clockRate == rtpMapAttribute.clockRate && this.encodingParameters == rtpMapAttribute.encodingParameters;
        }

        public int hashCode() {
            return ((((((217 + this.payloadType) * 31) + this.mediaEncoding.hashCode()) * 31) + this.clockRate) * 31) + this.encodingParameters;
        }
    }

    /* renamed from: a */
    public ImmutableMap<String, String> m20264a() {
        String str = this.f26266i.get(SessionDescription.f26439o);
        if (str == null) {
            return ImmutableMap.m26185of();
        }
        String[] splitAtFirst = Util.splitAtFirst(str, " ");
        Assertions.checkArgument(splitAtFirst.length == 2, str);
        String[] split = splitAtFirst[1].split(";\\s?", 0);
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        for (String str2 : split) {
            String[] splitAtFirst2 = Util.splitAtFirst(str2, "=");
            builder.put(splitAtFirst2[0], splitAtFirst2[1]);
        }
        return builder.buildOrThrow();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MediaDescription.class != obj.getClass()) {
            return false;
        }
        MediaDescription mediaDescription = (MediaDescription) obj;
        return this.f26258a.equals(mediaDescription.f26258a) && this.f26259b == mediaDescription.f26259b && this.f26260c.equals(mediaDescription.f26260c) && this.f26261d == mediaDescription.f26261d && this.f26262e == mediaDescription.f26262e && this.f26266i.equals(mediaDescription.f26266i) && this.f26267j.equals(mediaDescription.f26267j) && Util.areEqual(this.f26263f, mediaDescription.f26263f) && Util.areEqual(this.f26264g, mediaDescription.f26264g) && Util.areEqual(this.f26265h, mediaDescription.f26265h);
    }

    public int hashCode() {
        int hashCode = (((((((((((((217 + this.f26258a.hashCode()) * 31) + this.f26259b) * 31) + this.f26260c.hashCode()) * 31) + this.f26261d) * 31) + this.f26262e) * 31) + this.f26266i.hashCode()) * 31) + this.f26267j.hashCode()) * 31;
        String str = this.f26263f;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f26264g;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f26265h;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public MediaDescription(Builder builder, ImmutableMap<String, String> immutableMap, RtpMapAttribute rtpMapAttribute) {
        this.f26258a = builder.f26268a;
        this.f26259b = builder.f26269b;
        this.f26260c = builder.f26270c;
        this.f26261d = builder.f26271d;
        this.f26263f = builder.f26274g;
        this.f26264g = builder.f26275h;
        this.f26262e = builder.f26273f;
        this.f26265h = builder.f26276i;
        this.f26266i = immutableMap;
        this.f26267j = rtpMapAttribute;
    }
}
