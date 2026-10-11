package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.rtsp.RtspMessageUtil;
import com.google.android.exoplayer2.util.Util;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.google.android.exoplayer2.source.rtsp.a */
/* loaded from: classes5.dex */
public final class C4917a {

    /* renamed from: e */
    public static final int f26469e = 1;

    /* renamed from: f */
    public static final int f26470f = 2;

    /* renamed from: g */
    public static final String f26471g = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\"";

    /* renamed from: h */
    public static final String f26472h = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\"";

    /* renamed from: i */
    public static final String f26473i = "MD5";

    /* renamed from: a */
    public final int f26474a;

    /* renamed from: b */
    public final String f26475b;

    /* renamed from: c */
    public final String f26476c;

    /* renamed from: d */
    public final String f26477d;

    public C4917a(int i, String str, String str2, String str3) {
        this.f26474a = i;
        this.f26475b = str;
        this.f26476c = str2;
        this.f26477d = str3;
    }

    /* renamed from: a */
    public String m20418a(RtspMessageUtil.RtspAuthUserInfo rtspAuthUserInfo, Uri uri, int i) throws ParserException {
        int i2 = this.f26474a;
        if (i2 == 1) {
            return m20419b(rtspAuthUserInfo);
        }
        if (i2 == 2) {
            return m20420c(rtspAuthUserInfo, uri, i);
        }
        throw ParserException.createForManifestWithUnsupportedFeature(null, new UnsupportedOperationException());
    }

    /* renamed from: b */
    public final String m20419b(RtspMessageUtil.RtspAuthUserInfo rtspAuthUserInfo) {
        String str = rtspAuthUserInfo.username;
        String str2 = rtspAuthUserInfo.password;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return Base64.encodeToString(RtspMessageUtil.m20389c(sb.toString()), 0);
    }

    /* renamed from: c */
    public final String m20420c(RtspMessageUtil.RtspAuthUserInfo rtspAuthUserInfo, Uri uri, int i) throws ParserException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            String m20405s = RtspMessageUtil.m20405s(i);
            String str = rtspAuthUserInfo.username;
            String str2 = this.f26475b;
            String str3 = rtspAuthUserInfo.password;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length() + String.valueOf(str3).length());
            sb.append(str);
            sb.append(":");
            sb.append(str2);
            sb.append(":");
            sb.append(str3);
            String hexString = Util.toHexString(messageDigest.digest(RtspMessageUtil.m20389c(sb.toString())));
            String valueOf = String.valueOf(uri);
            StringBuilder sb2 = new StringBuilder(String.valueOf(m20405s).length() + 1 + valueOf.length());
            sb2.append(m20405s);
            sb2.append(":");
            sb2.append(valueOf);
            String hexString2 = Util.toHexString(messageDigest.digest(RtspMessageUtil.m20389c(sb2.toString())));
            String str4 = this.f26476c;
            StringBuilder sb3 = new StringBuilder(String.valueOf(hexString).length() + 2 + String.valueOf(str4).length() + String.valueOf(hexString2).length());
            sb3.append(hexString);
            sb3.append(":");
            sb3.append(str4);
            sb3.append(":");
            sb3.append(hexString2);
            String hexString3 = Util.toHexString(messageDigest.digest(RtspMessageUtil.m20389c(sb3.toString())));
            return this.f26477d.isEmpty() ? Util.formatInvariant(f26471g, rtspAuthUserInfo.username, this.f26475b, this.f26476c, uri, hexString3) : Util.formatInvariant(f26472h, rtspAuthUserInfo.username, this.f26475b, this.f26476c, uri, hexString3, this.f26477d);
        } catch (NoSuchAlgorithmException e) {
            throw ParserException.createForManifestWithUnsupportedFeature(null, e);
        }
    }
}
