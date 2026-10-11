package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import com.google.android.exoplayer2.upstream.DataSourceInputStream;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.StatsDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes5.dex */
public final class HttpMediaDrmCallback implements MediaDrmCallback {

    /* renamed from: e */
    public static final int f23454e = 5;

    /* renamed from: a */
    public final HttpDataSource.Factory f23455a;

    /* renamed from: b */
    @Nullable
    public final String f23456b;

    /* renamed from: c */
    public final boolean f23457c;

    /* renamed from: d */
    public final Map<String, String> f23458d;

    public HttpMediaDrmCallback(@Nullable String str, HttpDataSource.Factory factory) {
        this(str, false, factory);
    }

    /* renamed from: a */
    public static byte[] m18751a(HttpDataSource.Factory factory, String str, @Nullable byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        StatsDataSource statsDataSource = new StatsDataSource(factory.createDataSource());
        DataSpec build = new DataSpec.Builder().setUri(str).setHttpRequestHeaders(map).setHttpMethod(2).setHttpBody(bArr).setFlags(1).build();
        int i = 0;
        DataSpec dataSpec = build;
        while (true) {
            try {
                DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(statsDataSource, dataSpec);
                try {
                    return Util.toByteArray(dataSourceInputStream);
                } catch (HttpDataSource.InvalidResponseCodeException e) {
                    String m18752b = m18752b(e, i);
                    if (m18752b == null) {
                        throw e;
                    }
                    i++;
                    dataSpec = dataSpec.buildUpon().setUri(m18752b).build();
                } finally {
                    Util.closeQuietly(dataSourceInputStream);
                }
            } catch (Exception e2) {
                throw new MediaDrmCallbackException(build, (Uri) Assertions.checkNotNull(statsDataSource.getLastOpenedUri()), statsDataSource.getResponseHeaders(), statsDataSource.getBytesRead(), e2);
            }
        }
    }

    @Nullable
    /* renamed from: b */
    public static String m18752b(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i) {
        Map<String, List<String>> map;
        List<String> list;
        int i2 = invalidResponseCodeException.responseCode;
        if (!((i2 == 307 || i2 == 308) && i < 5) || (map = invalidResponseCodeException.headerFields) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public void clearAllKeyRequestProperties() {
        synchronized (this.f23458d) {
            this.f23458d.clear();
        }
    }

    public void clearKeyRequestProperty(String str) {
        Assertions.checkNotNull(str);
        synchronized (this.f23458d) {
            this.f23458d.remove(str);
        }
    }

    @Override // com.google.android.exoplayer2.drm.MediaDrmCallback
    public byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) throws MediaDrmCallbackException {
        String licenseServerUrl = keyRequest.getLicenseServerUrl();
        if (this.f23457c || TextUtils.isEmpty(licenseServerUrl)) {
            licenseServerUrl = this.f23456b;
        }
        if (TextUtils.isEmpty(licenseServerUrl)) {
            throw new MediaDrmCallbackException(new DataSpec.Builder().setUri(Uri.EMPTY).build(), Uri.EMPTY, ImmutableMap.m26185of(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap hashMap = new HashMap();
        UUID uuid2 = C4649C.PLAYREADY_UUID;
        hashMap.put("Content-Type", uuid2.equals(uuid) ? "text/xml" : C4649C.CLEARKEY_UUID.equals(uuid) ? "application/json" : "application/octet-stream");
        if (uuid2.equals(uuid)) {
            hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.f23458d) {
            hashMap.putAll(this.f23458d);
        }
        return m18751a(this.f23455a, licenseServerUrl, keyRequest.getData(), hashMap);
    }

    @Override // com.google.android.exoplayer2.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws MediaDrmCallbackException {
        String defaultUrl = provisionRequest.getDefaultUrl();
        String fromUtf8Bytes = Util.fromUtf8Bytes(provisionRequest.getData());
        StringBuilder sb = new StringBuilder(String.valueOf(defaultUrl).length() + 15 + String.valueOf(fromUtf8Bytes).length());
        sb.append(defaultUrl);
        sb.append("&signedRequest=");
        sb.append(fromUtf8Bytes);
        return m18751a(this.f23455a, sb.toString(), null, Collections.emptyMap());
    }

    public void setKeyRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        synchronized (this.f23458d) {
            this.f23458d.put(str, str2);
        }
    }

    public HttpMediaDrmCallback(@Nullable String str, boolean z, HttpDataSource.Factory factory) {
        Assertions.checkArgument((z && TextUtils.isEmpty(str)) ? false : true);
        this.f23455a = factory;
        this.f23456b = str;
        this.f23457c = z;
        this.f23458d = new HashMap();
    }
}
