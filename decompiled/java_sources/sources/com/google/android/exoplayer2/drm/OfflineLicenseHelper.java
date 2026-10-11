package com.google.android.exoplayer2.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Map;
import java.util.UUID;

@RequiresApi(18)
/* loaded from: classes5.dex */
public final class OfflineLicenseHelper {

    /* renamed from: e */
    public static final Format f23460e = new Format.Builder().setDrmInitData(new DrmInitData(new DrmInitData.SchemeData[0])).build();

    /* renamed from: a */
    public final ConditionVariable f23461a;

    /* renamed from: b */
    public final DefaultDrmSessionManager f23462b;

    /* renamed from: c */
    public final HandlerThread f23463c;

    /* renamed from: d */
    public final DrmSessionEventListener.EventDispatcher f23464d;

    /* renamed from: com.google.android.exoplayer2.drm.OfflineLicenseHelper$a */
    /* loaded from: classes5.dex */
    public class C4729a implements DrmSessionEventListener {
        public C4729a() {
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysLoaded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            OfflineLicenseHelper.this.f23461a.open();
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRemoved(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            OfflineLicenseHelper.this.f23461a.open();
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRestored(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            OfflineLicenseHelper.this.f23461a.open();
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionManagerError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
            OfflineLicenseHelper.this.f23461a.open();
        }
    }

    @Deprecated
    public OfflineLicenseHelper(UUID uuid, ExoMediaDrm.Provider provider, MediaDrmCallback mediaDrmCallback, @Nullable Map<String, String> map, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this(new DefaultDrmSessionManager.Builder().setUuidAndExoMediaDrmProvider(uuid, provider).setKeyRequestParameters(map).build(mediaDrmCallback), eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, HttpDataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, false, factory, eventDispatcher);
    }

    /* renamed from: b */
    public final byte[] m18754b(int i, @Nullable byte[] bArr, Format format) throws DrmSession.DrmSessionException {
        this.f23462b.setPlayer(this.f23463c.getLooper(), PlayerId.UNSET);
        this.f23462b.prepare();
        DrmSession m18755c = m18755c(i, bArr, format);
        DrmSession.DrmSessionException error = m18755c.getError();
        byte[] offlineLicenseKeySetId = m18755c.getOfflineLicenseKeySetId();
        m18755c.release(this.f23464d);
        this.f23462b.release();
        if (error == null) {
            return (byte[]) Assertions.checkNotNull(offlineLicenseKeySetId);
        }
        throw error;
    }

    /* renamed from: c */
    public final DrmSession m18755c(int i, @Nullable byte[] bArr, Format format) {
        Assertions.checkNotNull(format.drmInitData);
        this.f23462b.setMode(i, bArr);
        this.f23461a.close();
        DrmSession acquireSession = this.f23462b.acquireSession(this.f23464d, format);
        this.f23461a.block();
        return (DrmSession) Assertions.checkNotNull(acquireSession);
    }

    public synchronized byte[] downloadLicense(Format format) throws DrmSession.DrmSessionException {
        Assertions.checkArgument(format.drmInitData != null);
        return m18754b(2, null, format);
    }

    public synchronized Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(bArr);
        this.f23462b.setPlayer(this.f23463c.getLooper(), PlayerId.UNSET);
        this.f23462b.prepare();
        DrmSession m18755c = m18755c(1, bArr, f23460e);
        DrmSession.DrmSessionException error = m18755c.getError();
        Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(m18755c);
        m18755c.release(this.f23464d);
        this.f23462b.release();
        if (error == null) {
            return (Pair) Assertions.checkNotNull(licenseDurationRemainingSec);
        }
        if (!(error.getCause() instanceof KeysExpiredException)) {
            throw error;
        }
        return Pair.create(0L, 0L);
    }

    public void release() {
        this.f23463c.quit();
    }

    public synchronized void releaseLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(bArr);
        m18754b(3, bArr, f23460e);
    }

    public synchronized byte[] renewLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(bArr);
        return m18754b(2, bArr, f23460e);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z, factory, null, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory, @Nullable Map<String, String> map, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new OfflineLicenseHelper(new DefaultDrmSessionManager.Builder().setKeyRequestParameters(map).build(new HttpMediaDrmCallback(str, z, factory)), eventDispatcher);
    }

    public OfflineLicenseHelper(DefaultDrmSessionManager defaultDrmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.f23462b = defaultDrmSessionManager;
        this.f23464d = eventDispatcher;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.f23463c = handlerThread;
        handlerThread.start();
        this.f23461a = new ConditionVariable();
        eventDispatcher.addEventListener(new Handler(handlerThread.getLooper()), new C4729a());
    }
}
