package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.exoplayer2.util.CopyOnWriteMultiset;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

@RequiresApi(18)
/* loaded from: classes5.dex */
public class DefaultDrmSession implements DrmSession {

    /* renamed from: A */
    public static final int f23351A = 1;

    /* renamed from: B */
    public static final int f23352B = 60;

    /* renamed from: y */
    public static final String f23353y = "DefaultDrmSession";

    /* renamed from: z */
    public static final int f23354z = 0;

    /* renamed from: a */
    @Nullable
    public final List<DrmInitData.SchemeData> f23355a;

    /* renamed from: b */
    public final ExoMediaDrm f23356b;

    /* renamed from: c */
    public final ProvisioningManager f23357c;

    /* renamed from: d */
    public final ReferenceCountListener f23358d;

    /* renamed from: e */
    public final int f23359e;

    /* renamed from: f */
    public final boolean f23360f;

    /* renamed from: g */
    public final boolean f23361g;

    /* renamed from: h */
    public final HashMap<String, String> f23362h;

    /* renamed from: i */
    public final CopyOnWriteMultiset<DrmSessionEventListener.EventDispatcher> f23363i;

    /* renamed from: j */
    public final LoadErrorHandlingPolicy f23364j;

    /* renamed from: k */
    public final PlayerId f23365k;

    /* renamed from: l */
    public final MediaDrmCallback f23366l;

    /* renamed from: m */
    public final UUID f23367m;

    /* renamed from: n */
    public final HandlerC4714c f23368n;

    /* renamed from: o */
    public int f23369o;

    /* renamed from: p */
    public int f23370p;

    /* renamed from: q */
    @Nullable
    public HandlerThread f23371q;

    /* renamed from: r */
    @Nullable
    public HandlerC4712a f23372r;

    /* renamed from: s */
    @Nullable
    public CryptoConfig f23373s;

    /* renamed from: t */
    @Nullable
    public DrmSession.DrmSessionException f23374t;

    /* renamed from: u */
    @Nullable
    public byte[] f23375u;

    /* renamed from: v */
    public byte[] f23376v;

    /* renamed from: w */
    @Nullable
    public ExoMediaDrm.KeyRequest f23377w;

    /* renamed from: x */
    @Nullable
    public ExoMediaDrm.ProvisionRequest f23378x;

    /* loaded from: classes5.dex */
    public interface ProvisioningManager {
        void onProvisionCompleted();

        void onProvisionError(Exception exc, boolean z);

        void provisionRequired(DefaultDrmSession defaultDrmSession);
    }

    /* loaded from: classes5.dex */
    public interface ReferenceCountListener {
        void onReferenceCountDecremented(DefaultDrmSession defaultDrmSession, int i);

        void onReferenceCountIncremented(DefaultDrmSession defaultDrmSession, int i);
    }

    /* loaded from: classes5.dex */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th) {
            super(th);
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$a */
    /* loaded from: classes5.dex */
    public class HandlerC4712a extends Handler {

        /* renamed from: a */
        @GuardedBy("this")
        public boolean f23379a;

        public HandlerC4712a(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final boolean m18671a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            C4713b c4713b = (C4713b) message.obj;
            if (!c4713b.f23382b) {
                return false;
            }
            int i = c4713b.f23385e + 1;
            c4713b.f23385e = i;
            if (i > DefaultDrmSession.this.f23364j.getMinimumLoadableRetryCount(3)) {
                return false;
            }
            long retryDelayMsFor = DefaultDrmSession.this.f23364j.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(new LoadEventInfo(c4713b.f23381a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - c4713b.f23383c, mediaDrmCallbackException.bytesLoaded), new MediaLoadData(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), c4713b.f23385e));
            if (retryDelayMsFor == C4649C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                if (this.f23379a) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), retryDelayMsFor);
                return true;
            }
        }

        /* renamed from: b */
        public void m18672b(int i, Object obj, boolean z) {
            obtainMessage(i, new C4713b(LoadEventInfo.getNewId(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        /* renamed from: c */
        public synchronized void m18673c() {
            removeCallbacksAndMessages(null);
            this.f23379a = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Throwable th;
            C4713b c4713b = (C4713b) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    th = defaultDrmSession.f23366l.executeProvisionRequest(defaultDrmSession.f23367m, (ExoMediaDrm.ProvisionRequest) c4713b.f23384d);
                } else {
                    if (i != 1) {
                        throw new RuntimeException();
                    }
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    th = defaultDrmSession2.f23366l.executeKeyRequest(defaultDrmSession2.f23367m, (ExoMediaDrm.KeyRequest) c4713b.f23384d);
                }
            } catch (MediaDrmCallbackException e) {
                boolean m18671a = m18671a(message, e);
                th = e;
                if (m18671a) {
                    return;
                }
            } catch (Exception e2) {
                Log.m21494w(DefaultDrmSession.f23353y, "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
                th = e2;
            }
            DefaultDrmSession.this.f23364j.onLoadTaskConcluded(c4713b.f23381a);
            synchronized (this) {
                if (!this.f23379a) {
                    DefaultDrmSession.this.f23368n.obtainMessage(message.what, Pair.create(c4713b.f23384d, th)).sendToTarget();
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$b */
    /* loaded from: classes5.dex */
    public static final class C4713b {

        /* renamed from: a */
        public final long f23381a;

        /* renamed from: b */
        public final boolean f23382b;

        /* renamed from: c */
        public final long f23383c;

        /* renamed from: d */
        public final Object f23384d;

        /* renamed from: e */
        public int f23385e;

        public C4713b(long j, boolean z, long j2, Object obj) {
            this.f23381a = j;
            this.f23382b = z;
            this.f23383c = j2;
            this.f23384d = obj;
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$c */
    /* loaded from: classes5.dex */
    public class HandlerC4714c extends Handler {
        public HandlerC4714c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession.this.m18666t(obj, obj2);
            } else {
                if (i != 1) {
                    return;
                }
                DefaultDrmSession.this.m18660n(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, ExoMediaDrm exoMediaDrm, ProvisioningManager provisioningManager, ReferenceCountListener referenceCountListener, @Nullable List<DrmInitData.SchemeData> list, int i, boolean z, boolean z2, @Nullable byte[] bArr, HashMap<String, String> hashMap, MediaDrmCallback mediaDrmCallback, Looper looper, LoadErrorHandlingPolicy loadErrorHandlingPolicy, PlayerId playerId) {
        if (i == 1 || i == 3) {
            Assertions.checkNotNull(bArr);
        }
        this.f23367m = uuid;
        this.f23357c = provisioningManager;
        this.f23358d = referenceCountListener;
        this.f23356b = exoMediaDrm;
        this.f23359e = i;
        this.f23360f = z;
        this.f23361g = z2;
        if (bArr != null) {
            this.f23376v = bArr;
            this.f23355a = null;
        } else {
            this.f23355a = Collections.unmodifiableList((List) Assertions.checkNotNull(list));
        }
        this.f23362h = hashMap;
        this.f23366l = mediaDrmCallback;
        this.f23363i = new CopyOnWriteMultiset<>();
        this.f23364j = loadErrorHandlingPolicy;
        this.f23365k = playerId;
        this.f23369o = 2;
        this.f23368n = new HandlerC4714c(looper);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void acquire(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        int i = this.f23370p;
        if (i < 0) {
            StringBuilder sb = new StringBuilder(51);
            sb.append("Session reference count less than zero: ");
            sb.append(i);
            Log.m21489e(f23353y, sb.toString());
            this.f23370p = 0;
        }
        if (eventDispatcher != null) {
            this.f23363i.add(eventDispatcher);
        }
        int i2 = this.f23370p + 1;
        this.f23370p = i2;
        if (i2 == 1) {
            Assertions.checkState(this.f23369o == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f23371q = handlerThread;
            handlerThread.start();
            this.f23372r = new HandlerC4712a(this.f23371q.getLooper());
            if (m18667u()) {
                m18655g(true);
            }
        } else if (eventDispatcher != null && m18658j() && this.f23363i.count(eventDispatcher) == 1) {
            eventDispatcher.drmSessionAcquired(this.f23369o);
        }
        this.f23358d.onReferenceCountIncremented(this, this.f23370p);
    }

    /* renamed from: f */
    public final void m18654f(Consumer<DrmSessionEventListener.EventDispatcher> consumer) {
        Iterator<DrmSessionEventListener.EventDispatcher> it2 = this.f23363i.elementSet().iterator();
        while (it2.hasNext()) {
            consumer.accept(it2.next());
        }
    }

    @RequiresNonNull({"sessionId"})
    /* renamed from: g */
    public final void m18655g(boolean z) {
        if (this.f23361g) {
            return;
        }
        byte[] bArr = (byte[]) Util.castNonNull(this.f23375u);
        int i = this.f23359e;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.f23376v == null || m18670x()) {
                    m18668v(bArr, 2, z);
                    return;
                }
                return;
            }
            if (i != 3) {
                return;
            }
            Assertions.checkNotNull(this.f23376v);
            Assertions.checkNotNull(this.f23375u);
            m18668v(this.f23376v, 3, z);
            return;
        }
        if (this.f23376v == null) {
            m18668v(bArr, 1, z);
            return;
        }
        if (this.f23369o == 4 || m18670x()) {
            long m18656h = m18656h();
            if (this.f23359e != 0 || m18656h > 60) {
                if (m18656h <= 0) {
                    m18659m(new KeysExpiredException(), 2);
                    return;
                } else {
                    this.f23369o = 4;
                    m18654f(new Consumer() { // from class: com.sunia.HTREnginev2.dze
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            ((DrmSessionEventListener.EventDispatcher) obj).drmKeysRestored();
                        }
                    });
                    return;
                }
            }
            StringBuilder sb = new StringBuilder(88);
            sb.append("Offline license has expired or will expire soon. Remaining seconds: ");
            sb.append(m18656h);
            Log.m21487d(f23353y, sb.toString());
            m18668v(bArr, 2, z);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final CryptoConfig getCryptoConfig() {
        return this.f23373s;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final DrmSession.DrmSessionException getError() {
        if (this.f23369o == 1) {
            return this.f23374t;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public byte[] getOfflineLicenseKeySetId() {
        return this.f23376v;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID getSchemeUuid() {
        return this.f23367m;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.f23369o;
    }

    /* renamed from: h */
    public final long m18656h() {
        if (!C4649C.WIDEVINE_UUID.equals(this.f23367m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) Assertions.checkNotNull(WidevineUtil.getLicenseDurationRemainingSec(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    /* renamed from: i */
    public boolean m18657i(byte[] bArr) {
        return Arrays.equals(this.f23375u, bArr);
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: j */
    public final boolean m18658j() {
        int i = this.f23369o;
        return i == 3 || i == 4;
    }

    /* renamed from: m */
    public final void m18659m(final Exception exc, int i) {
        this.f23374t = new DrmSession.DrmSessionException(exc, DrmUtil.getErrorCodeForMediaDrmException(exc, i));
        Log.m21490e(f23353y, "DRM session error", exc);
        m18654f(new Consumer() { // from class: com.sunia.HTREnginev2.cze
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ((DrmSessionEventListener.EventDispatcher) obj).drmSessionManagerError(exc);
            }
        });
        if (this.f23369o != 4) {
            this.f23369o = 1;
        }
    }

    /* renamed from: n */
    public final void m18660n(Object obj, Object obj2) {
        if (obj == this.f23377w && m18658j()) {
            this.f23377w = null;
            if (obj2 instanceof Exception) {
                m18661o((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f23359e == 3) {
                    this.f23356b.provideKeyResponse((byte[]) Util.castNonNull(this.f23376v), bArr);
                    m18654f(new Consumer() { // from class: com.sunia.HTREnginev2.zye
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj3) {
                            ((DrmSessionEventListener.EventDispatcher) obj3).drmKeysRemoved();
                        }
                    });
                    return;
                }
                byte[] provideKeyResponse = this.f23356b.provideKeyResponse(this.f23375u, bArr);
                int i = this.f23359e;
                if ((i == 2 || (i == 0 && this.f23376v != null)) && provideKeyResponse != null && provideKeyResponse.length != 0) {
                    this.f23376v = provideKeyResponse;
                }
                this.f23369o = 4;
                m18654f(new Consumer() { // from class: com.sunia.HTREnginev2.aze
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj3) {
                        ((DrmSessionEventListener.EventDispatcher) obj3).drmKeysLoaded();
                    }
                });
            } catch (Exception e) {
                m18661o(e, true);
            }
        }
    }

    /* renamed from: o */
    public final void m18661o(Exception exc, boolean z) {
        if (exc instanceof NotProvisionedException) {
            this.f23357c.provisionRequired(this);
        } else {
            m18659m(exc, z ? 1 : 2);
        }
    }

    /* renamed from: p */
    public final void m18662p() {
        if (this.f23359e == 0 && this.f23369o == 4) {
            Util.castNonNull(this.f23375u);
            m18655g(false);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean playClearSamplesWithoutKeys() {
        return this.f23360f;
    }

    /* renamed from: q */
    public void m18663q(int i) {
        if (i != 2) {
            return;
        }
        m18662p();
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        byte[] bArr = this.f23375u;
        if (bArr == null) {
            return null;
        }
        return this.f23356b.queryKeyStatus(bArr);
    }

    /* renamed from: r */
    public void m18664r() {
        if (m18667u()) {
            m18655g(true);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void release(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        int i = this.f23370p;
        if (i <= 0) {
            Log.m21489e(f23353y, "release() called on a session that's already fully released.");
            return;
        }
        int i2 = i - 1;
        this.f23370p = i2;
        if (i2 == 0) {
            this.f23369o = 0;
            ((HandlerC4714c) Util.castNonNull(this.f23368n)).removeCallbacksAndMessages(null);
            ((HandlerC4712a) Util.castNonNull(this.f23372r)).m18673c();
            this.f23372r = null;
            ((HandlerThread) Util.castNonNull(this.f23371q)).quit();
            this.f23371q = null;
            this.f23373s = null;
            this.f23374t = null;
            this.f23377w = null;
            this.f23378x = null;
            byte[] bArr = this.f23375u;
            if (bArr != null) {
                this.f23356b.closeSession(bArr);
                this.f23375u = null;
            }
        }
        if (eventDispatcher != null) {
            this.f23363i.remove(eventDispatcher);
            if (this.f23363i.count(eventDispatcher) == 0) {
                eventDispatcher.drmSessionReleased();
            }
        }
        this.f23358d.onReferenceCountDecremented(this, this.f23370p);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean requiresSecureDecoder(String str) {
        return this.f23356b.requiresSecureDecoder((byte[]) Assertions.checkStateNotNull(this.f23375u), str);
    }

    /* renamed from: s */
    public void m18665s(Exception exc, boolean z) {
        m18659m(exc, z ? 1 : 3);
    }

    /* renamed from: t */
    public final void m18666t(Object obj, Object obj2) {
        if (obj == this.f23378x) {
            if (this.f23369o == 2 || m18658j()) {
                this.f23378x = null;
                if (obj2 instanceof Exception) {
                    this.f23357c.onProvisionError((Exception) obj2, false);
                    return;
                }
                try {
                    this.f23356b.provideProvisionResponse((byte[]) obj2);
                    this.f23357c.onProvisionCompleted();
                } catch (Exception e) {
                    this.f23357c.onProvisionError(e, true);
                }
            }
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: u */
    public final boolean m18667u() {
        if (m18658j()) {
            return true;
        }
        try {
            byte[] openSession = this.f23356b.openSession();
            this.f23375u = openSession;
            this.f23356b.setPlayerIdForSession(openSession, this.f23365k);
            this.f23373s = this.f23356b.createCryptoConfig(this.f23375u);
            final int i = 3;
            this.f23369o = 3;
            m18654f(new Consumer() { // from class: com.sunia.HTREnginev2.bze
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ((DrmSessionEventListener.EventDispatcher) obj).drmSessionAcquired(i);
                }
            });
            Assertions.checkNotNull(this.f23375u);
            return true;
        } catch (NotProvisionedException unused) {
            this.f23357c.provisionRequired(this);
            return false;
        } catch (Exception e) {
            m18659m(e, 1);
            return false;
        }
    }

    /* renamed from: v */
    public final void m18668v(byte[] bArr, int i, boolean z) {
        try {
            this.f23377w = this.f23356b.getKeyRequest(bArr, this.f23355a, i, this.f23362h);
            ((HandlerC4712a) Util.castNonNull(this.f23372r)).m18672b(1, Assertions.checkNotNull(this.f23377w), z);
        } catch (Exception e) {
            m18661o(e, true);
        }
    }

    /* renamed from: w */
    public void m18669w() {
        this.f23378x = this.f23356b.getProvisionRequest();
        ((HandlerC4712a) Util.castNonNull(this.f23372r)).m18672b(0, Assertions.checkNotNull(this.f23378x), true);
    }

    @RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    /* renamed from: x */
    public final boolean m18670x() {
        try {
            this.f23356b.restoreKeys(this.f23375u, this.f23376v);
            return true;
        } catch (Exception e) {
            m18659m(e, 1);
            return false;
        }
    }
}
