package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* loaded from: classes3.dex */
public class GlideUrl implements Key {

    /* renamed from: h */
    public static final String f14874h = "@#&=*+-_.,:!?()/~'%;$";

    /* renamed from: a */
    public final Headers f14875a;

    /* renamed from: b */
    @Nullable
    public final URL f14876b;

    /* renamed from: c */
    @Nullable
    public final String f14877c;

    /* renamed from: d */
    @Nullable
    public String f14878d;

    /* renamed from: e */
    @Nullable
    public URL f14879e;

    /* renamed from: f */
    @Nullable
    public volatile byte[] f14880f;

    /* renamed from: g */
    public int f14881g;

    public GlideUrl(URL url) {
        this(url, Headers.DEFAULT);
    }

    /* renamed from: a */
    public final byte[] m8883a() {
        if (this.f14880f == null) {
            this.f14880f = getCacheKey().getBytes(Key.CHARSET);
        }
        return this.f14880f;
    }

    /* renamed from: b */
    public final String m8884b() {
        if (TextUtils.isEmpty(this.f14878d)) {
            String str = this.f14877c;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) Preconditions.checkNotNull(this.f14876b)).toString();
            }
            this.f14878d = Uri.encode(str, f14874h);
        }
        return this.f14878d;
    }

    /* renamed from: c */
    public final URL m8885c() throws MalformedURLException {
        if (this.f14879e == null) {
            this.f14879e = new URL(m8884b());
        }
        return this.f14879e;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof GlideUrl)) {
            return false;
        }
        GlideUrl glideUrl = (GlideUrl) obj;
        return getCacheKey().equals(glideUrl.getCacheKey()) && this.f14875a.equals(glideUrl.f14875a);
    }

    public String getCacheKey() {
        String str = this.f14877c;
        return str != null ? str : ((URL) Preconditions.checkNotNull(this.f14876b)).toString();
    }

    public Map<String, String> getHeaders() {
        return this.f14875a.getHeaders();
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.f14881g == 0) {
            int hashCode = getCacheKey().hashCode();
            this.f14881g = hashCode;
            this.f14881g = (hashCode * 31) + this.f14875a.hashCode();
        }
        return this.f14881g;
    }

    public String toString() {
        return getCacheKey();
    }

    public String toStringUrl() {
        return m8884b();
    }

    public URL toURL() throws MalformedURLException {
        return m8885c();
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(m8883a());
    }

    public GlideUrl(String str) {
        this(str, Headers.DEFAULT);
    }

    public GlideUrl(URL url, Headers headers) {
        this.f14876b = (URL) Preconditions.checkNotNull(url);
        this.f14877c = null;
        this.f14875a = (Headers) Preconditions.checkNotNull(headers);
    }

    public GlideUrl(String str, Headers headers) {
        this.f14876b = null;
        this.f14877c = Preconditions.checkNotEmpty(str);
        this.f14875a = (Headers) Preconditions.checkNotNull(headers);
    }
}
