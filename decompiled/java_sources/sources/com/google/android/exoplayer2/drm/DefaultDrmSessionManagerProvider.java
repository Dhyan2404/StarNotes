package com.google.android.exoplayer2.drm;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Ints;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.Map;

/* loaded from: classes5.dex */
public final class DefaultDrmSessionManagerProvider implements DrmSessionManagerProvider {

    /* renamed from: a */
    public final Object f23429a = new Object();

    /* renamed from: b */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public MediaItem.DrmConfiguration f23430b;

    /* renamed from: c */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public DrmSessionManager f23431c;

    /* renamed from: d */
    @Nullable
    public HttpDataSource.Factory f23432d;

    /* renamed from: e */
    @Nullable
    public String f23433e;

    @RequiresApi(18)
    /* renamed from: a */
    public final DrmSessionManager m18709a(MediaItem.DrmConfiguration drmConfiguration) {
        HttpDataSource.Factory factory = this.f23432d;
        if (factory == null) {
            factory = new DefaultHttpDataSource.Factory().setUserAgent(this.f23433e);
        }
        Uri uri = drmConfiguration.licenseUri;
        HttpMediaDrmCallback httpMediaDrmCallback = new HttpMediaDrmCallback(uri == null ? null : uri.toString(), drmConfiguration.forceDefaultLicenseUri, factory);
        UnmodifiableIterator<Map.Entry<String, String>> it2 = drmConfiguration.licenseRequestHeaders.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, String> next = it2.next();
            httpMediaDrmCallback.setKeyRequestProperty(next.getKey(), next.getValue());
        }
        DefaultDrmSessionManager build = new DefaultDrmSessionManager.Builder().setUuidAndExoMediaDrmProvider(drmConfiguration.scheme, FrameworkMediaDrm.DEFAULT_PROVIDER).setMultiSession(drmConfiguration.multiSession).setPlayClearSamplesWithoutKeys(drmConfiguration.playClearContentWithoutKey).setUseDrmSessionsForClearContent(Ints.toArray(drmConfiguration.forcedSessionTrackTypes)).build(httpMediaDrmCallback);
        build.setMode(0, drmConfiguration.getKeySetId());
        return build;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
    public DrmSessionManager get(MediaItem mediaItem) {
        DrmSessionManager drmSessionManager;
        Assertions.checkNotNull(mediaItem.localConfiguration);
        MediaItem.DrmConfiguration drmConfiguration = mediaItem.localConfiguration.drmConfiguration;
        if (drmConfiguration == null || Util.SDK_INT < 18) {
            return DrmSessionManager.DRM_UNSUPPORTED;
        }
        synchronized (this.f23429a) {
            if (!Util.areEqual(drmConfiguration, this.f23430b)) {
                this.f23430b = drmConfiguration;
                this.f23431c = m18709a(drmConfiguration);
            }
            drmSessionManager = (DrmSessionManager) Assertions.checkNotNull(this.f23431c);
        }
        return drmSessionManager;
    }

    public void setDrmHttpDataSourceFactory(@Nullable HttpDataSource.Factory factory) {
        this.f23432d = factory;
    }

    public void setDrmUserAgent(@Nullable String str) {
        this.f23433e = str;
    }
}
