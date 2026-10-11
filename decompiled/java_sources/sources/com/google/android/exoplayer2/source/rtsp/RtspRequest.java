package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes5.dex */
public final class RtspRequest {

    /* renamed from: e */
    public static final int f26420e = 0;

    /* renamed from: f */
    public static final int f26421f = 1;

    /* renamed from: g */
    public static final int f26422g = 2;

    /* renamed from: h */
    public static final int f26423h = 3;

    /* renamed from: i */
    public static final int f26424i = 4;

    /* renamed from: j */
    public static final int f26425j = 5;

    /* renamed from: k */
    public static final int f26426k = 6;

    /* renamed from: l */
    public static final int f26427l = 7;

    /* renamed from: m */
    public static final int f26428m = 8;

    /* renamed from: n */
    public static final int f26429n = 9;

    /* renamed from: o */
    public static final int f26430o = 10;

    /* renamed from: p */
    public static final int f26431p = 11;

    /* renamed from: q */
    public static final int f26432q = 12;

    /* renamed from: a */
    public final Uri f26433a;

    /* renamed from: b */
    public final int f26434b;

    /* renamed from: c */
    public final RtspHeaders f26435c;

    /* renamed from: d */
    public final String f26436d;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Method {
    }

    public RtspRequest(Uri uri, int i, RtspHeaders rtspHeaders, String str) {
        this.f26433a = uri;
        this.f26434b = i;
        this.f26435c = rtspHeaders;
        this.f26436d = str;
    }
}
