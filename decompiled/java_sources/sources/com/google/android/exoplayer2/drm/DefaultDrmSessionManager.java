package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DefaultDrmSession;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@RequiresApi(18)
/* loaded from: classes5.dex */
public class DefaultDrmSessionManager implements DrmSessionManager {
    public static final long DEFAULT_SESSION_KEEPALIVE_MS = 300000;
    public static final int INITIAL_DRM_REQUEST_RETRY_COUNT = 3;
    public static final int MODE_DOWNLOAD = 2;
    public static final int MODE_PLAYBACK = 0;
    public static final int MODE_QUERY = 1;
    public static final int MODE_RELEASE = 3;
    public static final String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";

    /* renamed from: y */
    public static final String f23387y = "DefaultDrmSessionMgr";

    /* renamed from: a */
    public final UUID f23388a;

    /* renamed from: b */
    public final ExoMediaDrm.Provider f23389b;

    /* renamed from: c */
    public final MediaDrmCallback f23390c;

    /* renamed from: d */
    public final HashMap<String, String> f23391d;

    /* renamed from: e */
    public final boolean f23392e;

    /* renamed from: f */
    public final int[] f23393f;

    /* renamed from: g */
    public final boolean f23394g;

    /* renamed from: h */
    public final C4719e f23395h;

    /* renamed from: i */
    public final LoadErrorHandlingPolicy f23396i;

    /* renamed from: j */
    public final C4720f f23397j;

    /* renamed from: k */
    public final long f23398k;

    /* renamed from: l */
    public final List<DefaultDrmSession> f23399l;

    /* renamed from: m */
    public final Set<C4718d> f23400m;

    /* renamed from: n */
    public final Set<DefaultDrmSession> f23401n;

    /* renamed from: o */
    public int f23402o;

    /* renamed from: p */
    @Nullable
    public ExoMediaDrm f23403p;

    /* renamed from: q */
    @Nullable
    public DefaultDrmSession f23404q;

    /* renamed from: r */
    @Nullable
    public DefaultDrmSession f23405r;

    /* renamed from: s */
    public Looper f23406s;

    /* renamed from: t */
    public Handler f23407t;

    /* renamed from: u */
    public int f23408u;

    /* renamed from: v */
    @Nullable
    public byte[] f23409v;

    /* renamed from: w */
    public PlayerId f23410w;

    /* renamed from: x */
    @Nullable
    public volatile HandlerC4717c f23411x;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: d */
        public boolean f23415d;

        /* renamed from: f */
        public boolean f23417f;

        /* renamed from: a */
        public final HashMap<String, String> f23412a = new HashMap<>();

        /* renamed from: b */
        public UUID f23413b = C4649C.WIDEVINE_UUID;

        /* renamed from: c */
        public ExoMediaDrm.Provider f23414c = FrameworkMediaDrm.DEFAULT_PROVIDER;

        /* renamed from: g */
        public LoadErrorHandlingPolicy f23418g = new DefaultLoadErrorHandlingPolicy();

        /* renamed from: e */
        public int[] f23416e = new int[0];

        /* renamed from: h */
        public long f23419h = 300000;

        public DefaultDrmSessionManager build(MediaDrmCallback mediaDrmCallback) {
            return new DefaultDrmSessionManager(this.f23413b, this.f23414c, mediaDrmCallback, this.f23412a, this.f23415d, this.f23416e, this.f23417f, this.f23418g, this.f23419h);
        }

        public Builder setKeyRequestParameters(@Nullable Map<String, String> map) {
            this.f23412a.clear();
            if (map != null) {
                this.f23412a.putAll(map);
            }
            return this;
        }

        public Builder setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.f23418g = (LoadErrorHandlingPolicy) Assertions.checkNotNull(loadErrorHandlingPolicy);
            return this;
        }

        public Builder setMultiSession(boolean z) {
            this.f23415d = z;
            return this;
        }

        public Builder setPlayClearSamplesWithoutKeys(boolean z) {
            this.f23417f = z;
            return this;
        }

        public Builder setSessionKeepaliveMs(long j) {
            Assertions.checkArgument(j > 0 || j == C4649C.TIME_UNSET);
            this.f23419h = j;
            return this;
        }

        public Builder setUseDrmSessionsForClearContent(int... iArr) {
            for (int i : iArr) {
                boolean z = true;
                if (i != 2 && i != 1) {
                    z = false;
                }
                Assertions.checkArgument(z);
            }
            this.f23416e = (int[]) iArr.clone();
            return this;
        }

        public Builder setUuidAndExoMediaDrmProvider(UUID uuid, ExoMediaDrm.Provider provider) {
            this.f23413b = (UUID) Assertions.checkNotNull(uuid);
            this.f23414c = (ExoMediaDrm.Provider) Assertions.checkNotNull(provider);
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public static final class MissingSchemeDataException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private MissingSchemeDataException(java.util.UUID r3) {
            /*
                r2 = this;
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r0 = r3.length()
                int r0 = r0 + 29
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                java.lang.String r0 = "Media does not support uuid: "
                r1.append(r0)
                r1.append(r3)
                java.lang.String r3 = r1.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MissingSchemeDataException.<init>(java.util.UUID):void");
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Mode {
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$b */
    /* loaded from: classes5.dex */
    public class C4716b implements ExoMediaDrm.OnEventListener {
        public C4716b() {
        }

        @Override // com.google.android.exoplayer2.drm.ExoMediaDrm.OnEventListener
        public void onEvent(ExoMediaDrm exoMediaDrm, @Nullable byte[] bArr, int i, int i2, @Nullable byte[] bArr2) {
            ((HandlerC4717c) Assertions.checkNotNull(DefaultDrmSessionManager.this.f23411x)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$c */
    /* loaded from: classes5.dex */
    public class HandlerC4717c extends Handler {
        public HandlerC4717c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f23399l) {
                if (defaultDrmSession.m18657i(bArr)) {
                    defaultDrmSession.m18663q(message.what);
                    return;
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$d */
    /* loaded from: classes5.dex */
    public class C4718d implements DrmSessionManager.DrmSessionReference {

        /* renamed from: a */
        @Nullable
        public final DrmSessionEventListener.EventDispatcher f23422a;

        /* renamed from: b */
        @Nullable
        public DrmSession f23423b;

        /* renamed from: c */
        public boolean f23424c;

        public C4718d(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
            this.f23422a = eventDispatcher;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m18703f(Format format) {
            if (DefaultDrmSessionManager.this.f23402o == 0 || this.f23424c) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.f23423b = defaultDrmSessionManager.m18691o((Looper) Assertions.checkNotNull(defaultDrmSessionManager.f23406s), this.f23422a, format, false);
            DefaultDrmSessionManager.this.f23400m.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m18704g() {
            if (this.f23424c) {
                return;
            }
            DrmSession drmSession = this.f23423b;
            if (drmSession != null) {
                drmSession.release(this.f23422a);
            }
            DefaultDrmSessionManager.this.f23400m.remove(this);
            this.f23424c = true;
        }

        /* renamed from: e */
        public void m18705e(final Format format) {
            ((Handler) Assertions.checkNotNull(DefaultDrmSessionManager.this.f23407t)).post(new Runnable() { // from class: com.sunia.HTREnginev2.fze
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.C4718d.this.m18703f(format);
                }
            });
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference
        public void release() {
            Util.postOrRun((Handler) Assertions.checkNotNull(DefaultDrmSessionManager.this.f23407t), new Runnable() { // from class: com.sunia.HTREnginev2.eze
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.C4718d.this.m18704g();
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$e */
    /* loaded from: classes5.dex */
    public class C4719e implements DefaultDrmSession.ProvisioningManager {

        /* renamed from: a */
        public final Set<DefaultDrmSession> f23426a = new HashSet();

        /* renamed from: b */
        @Nullable
        public DefaultDrmSession f23427b;

        public C4719e(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        /* renamed from: a */
        public void m18706a(DefaultDrmSession defaultDrmSession) {
            this.f23426a.remove(defaultDrmSession);
            if (this.f23427b == defaultDrmSession) {
                this.f23427b = null;
                if (this.f23426a.isEmpty()) {
                    return;
                }
                DefaultDrmSession next = this.f23426a.iterator().next();
                this.f23427b = next;
                next.m18669w();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager
        public void onProvisionCompleted() {
            this.f23427b = null;
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f23426a);
            this.f23426a.clear();
            UnmodifiableIterator it2 = copyOf.iterator();
            while (it2.hasNext()) {
                ((DefaultDrmSession) it2.next()).m18664r();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager
        public void onProvisionError(Exception exc, boolean z) {
            this.f23427b = null;
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f23426a);
            this.f23426a.clear();
            UnmodifiableIterator it2 = copyOf.iterator();
            while (it2.hasNext()) {
                ((DefaultDrmSession) it2.next()).m18665s(exc, z);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager
        public void provisionRequired(DefaultDrmSession defaultDrmSession) {
            this.f23426a.add(defaultDrmSession);
            if (this.f23427b != null) {
                return;
            }
            this.f23427b = defaultDrmSession;
            defaultDrmSession.m18669w();
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$f */
    /* loaded from: classes5.dex */
    public class C4720f implements DefaultDrmSession.ReferenceCountListener {
        public C4720f() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ReferenceCountListener
        public void onReferenceCountDecremented(final DefaultDrmSession defaultDrmSession, int i) {
            if (i == 1 && DefaultDrmSessionManager.this.f23402o > 0 && DefaultDrmSessionManager.this.f23398k != C4649C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f23401n.add(defaultDrmSession);
                ((Handler) Assertions.checkNotNull(DefaultDrmSessionManager.this.f23407t)).postAtTime(new Runnable() { // from class: com.sunia.HTREnginev2.gze
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultDrmSession.this.release(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f23398k);
            } else if (i == 0) {
                DefaultDrmSessionManager.this.f23399l.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f23404q == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f23404q = null;
                }
                if (DefaultDrmSessionManager.this.f23405r == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f23405r = null;
                }
                DefaultDrmSessionManager.this.f23395h.m18706a(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f23398k != C4649C.TIME_UNSET) {
                    ((Handler) Assertions.checkNotNull(DefaultDrmSessionManager.this.f23407t)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f23401n.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.m18698x();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ReferenceCountListener
        public void onReferenceCountIncremented(DefaultDrmSession defaultDrmSession, int i) {
            if (DefaultDrmSessionManager.this.f23398k != C4649C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f23401n.remove(defaultDrmSession);
                ((Handler) Assertions.checkNotNull(DefaultDrmSessionManager.this.f23407t)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }
    }

    /* renamed from: p */
    public static boolean m18688p(DrmSession drmSession) {
        return drmSession.getState() == 1 && (Util.SDK_INT < 19 || (((DrmSession.DrmSessionException) Assertions.checkNotNull(drmSession.getError())).getCause() instanceof ResourceBusyException));
    }

    /* renamed from: t */
    public static List<DrmInitData.SchemeData> m18689t(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (C4649C.CLEARKEY_UUID.equals(uuid) && schemeData.matches(C4649C.COMMON_PSSH_UUID))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    /* renamed from: A */
    public final void m18690A(DrmSession drmSession, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        drmSession.release(eventDispatcher);
        if (this.f23398k != C4649C.TIME_UNSET) {
            drmSession.release(null);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    @Nullable
    public DrmSession acquireSession(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
        Assertions.checkState(this.f23402o > 0);
        Assertions.checkStateNotNull(this.f23406s);
        return m18691o(this.f23406s, eventDispatcher, format, true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public int getCryptoType(Format format) {
        int cryptoType = ((ExoMediaDrm) Assertions.checkNotNull(this.f23403p)).getCryptoType();
        DrmInitData drmInitData = format.drmInitData;
        if (drmInitData != null) {
            if (m18692q(drmInitData)) {
                return cryptoType;
            }
            return 1;
        }
        if (Util.linearSearch(this.f23393f, MimeTypes.getTrackType(format.sampleMimeType)) != -1) {
            return cryptoType;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: o */
    public final DrmSession m18691o(Looper looper, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format, boolean z) {
        List<DrmInitData.SchemeData> list;
        m18697w(looper);
        DrmInitData drmInitData = format.drmInitData;
        if (drmInitData == null) {
            return m18696v(MimeTypes.getTrackType(format.sampleMimeType), z);
        }
        DefaultDrmSession defaultDrmSession = null;
        Object[] objArr = 0;
        if (this.f23409v == null) {
            list = m18689t((DrmInitData) Assertions.checkNotNull(drmInitData), this.f23388a, false);
            if (list.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f23388a);
                Log.m21490e(f23387y, "DRM error", missingSchemeDataException);
                if (eventDispatcher != null) {
                    eventDispatcher.drmSessionManagerError(missingSchemeDataException);
                }
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            list = null;
        }
        if (this.f23392e) {
            Iterator<DefaultDrmSession> it2 = this.f23399l.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DefaultDrmSession next = it2.next();
                if (Util.areEqual(next.f23355a, list)) {
                    defaultDrmSession = next;
                    break;
                }
            }
        } else {
            defaultDrmSession = this.f23405r;
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = m18694s(list, false, eventDispatcher, z);
            if (!this.f23392e) {
                this.f23405r = defaultDrmSession;
            }
            this.f23399l.add(defaultDrmSession);
        } else {
            defaultDrmSession.acquire(eventDispatcher);
        }
        return defaultDrmSession;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public DrmSessionManager.DrmSessionReference preacquireSession(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
        Assertions.checkState(this.f23402o > 0);
        Assertions.checkStateNotNull(this.f23406s);
        C4718d c4718d = new C4718d(eventDispatcher);
        c4718d.m18705e(format);
        return c4718d;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public final void prepare() {
        int i = this.f23402o;
        this.f23402o = i + 1;
        if (i != 0) {
            return;
        }
        if (this.f23403p == null) {
            ExoMediaDrm acquireExoMediaDrm = this.f23389b.acquireExoMediaDrm(this.f23388a);
            this.f23403p = acquireExoMediaDrm;
            acquireExoMediaDrm.setOnEventListener(new C4716b());
        } else if (this.f23398k != C4649C.TIME_UNSET) {
            for (int i2 = 0; i2 < this.f23399l.size(); i2++) {
                this.f23399l.get(i2).acquire(null);
            }
        }
    }

    /* renamed from: q */
    public final boolean m18692q(DrmInitData drmInitData) {
        if (this.f23409v != null) {
            return true;
        }
        if (m18689t(drmInitData, this.f23388a, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(C4649C.COMMON_PSSH_UUID)) {
                return false;
            }
            String valueOf = String.valueOf(this.f23388a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 72);
            sb.append("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sb.append(valueOf);
            Log.m21493w(f23387y, sb.toString());
        }
        String str = drmInitData.schemeType;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        return C4649C.CENC_TYPE_cbcs.equals(str) ? Util.SDK_INT >= 25 : (C4649C.CENC_TYPE_cbc1.equals(str) || C4649C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    /* renamed from: r */
    public final DefaultDrmSession m18693r(@Nullable List<DrmInitData.SchemeData> list, boolean z, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        Assertions.checkNotNull(this.f23403p);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f23388a, this.f23403p, this.f23395h, this.f23397j, list, this.f23408u, this.f23394g | z, z, this.f23409v, this.f23391d, this.f23390c, (Looper) Assertions.checkNotNull(this.f23406s), this.f23396i, (PlayerId) Assertions.checkNotNull(this.f23410w));
        defaultDrmSession.acquire(eventDispatcher);
        if (this.f23398k != C4649C.TIME_UNSET) {
            defaultDrmSession.acquire(null);
        }
        return defaultDrmSession;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public final void release() {
        int i = this.f23402o - 1;
        this.f23402o = i;
        if (i != 0) {
            return;
        }
        if (this.f23398k != C4649C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.f23399l);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((DefaultDrmSession) arrayList.get(i2)).release(null);
            }
        }
        m18700z();
        m18698x();
    }

    /* renamed from: s */
    public final DefaultDrmSession m18694s(@Nullable List<DrmInitData.SchemeData> list, boolean z, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, boolean z2) {
        DefaultDrmSession m18693r = m18693r(list, z, eventDispatcher);
        if (m18688p(m18693r) && !this.f23401n.isEmpty()) {
            m18699y();
            m18690A(m18693r, eventDispatcher);
            m18693r = m18693r(list, z, eventDispatcher);
        }
        if (!m18688p(m18693r) || !z2 || this.f23400m.isEmpty()) {
            return m18693r;
        }
        m18700z();
        if (!this.f23401n.isEmpty()) {
            m18699y();
        }
        m18690A(m18693r, eventDispatcher);
        return m18693r(list, z, eventDispatcher);
    }

    public void setMode(int i, @Nullable byte[] bArr) {
        Assertions.checkState(this.f23399l.isEmpty());
        if (i == 1 || i == 3) {
            Assertions.checkNotNull(bArr);
        }
        this.f23408u = i;
        this.f23409v = bArr;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public void setPlayer(Looper looper, PlayerId playerId) {
        m18695u(looper);
        this.f23410w = playerId;
    }

    @EnsuresNonNull({"this.playbackLooper", "this.playbackHandler"})
    /* renamed from: u */
    public final synchronized void m18695u(Looper looper) {
        Looper looper2 = this.f23406s;
        if (looper2 == null) {
            this.f23406s = looper;
            this.f23407t = new Handler(looper);
        } else {
            Assertions.checkState(looper2 == looper);
            Assertions.checkNotNull(this.f23407t);
        }
    }

    @Nullable
    /* renamed from: v */
    public final DrmSession m18696v(int i, boolean z) {
        ExoMediaDrm exoMediaDrm = (ExoMediaDrm) Assertions.checkNotNull(this.f23403p);
        if ((exoMediaDrm.getCryptoType() == 2 && FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC) || Util.linearSearch(this.f23393f, i) == -1 || exoMediaDrm.getCryptoType() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f23404q;
        if (defaultDrmSession == null) {
            DefaultDrmSession m18694s = m18694s(ImmutableList.m26161of(), true, null, z);
            this.f23399l.add(m18694s);
            this.f23404q = m18694s;
        } else {
            defaultDrmSession.acquire(null);
        }
        return this.f23404q;
    }

    /* renamed from: w */
    public final void m18697w(Looper looper) {
        if (this.f23411x == null) {
            this.f23411x = new HandlerC4717c(looper);
        }
    }

    /* renamed from: x */
    public final void m18698x() {
        if (this.f23403p != null && this.f23402o == 0 && this.f23399l.isEmpty() && this.f23400m.isEmpty()) {
            ((ExoMediaDrm) Assertions.checkNotNull(this.f23403p)).release();
            this.f23403p = null;
        }
    }

    /* renamed from: y */
    public final void m18699y() {
        UnmodifiableIterator it2 = ImmutableSet.copyOf((Collection) this.f23401n).iterator();
        while (it2.hasNext()) {
            ((DrmSession) it2.next()).release(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: z */
    public final void m18700z() {
        UnmodifiableIterator it2 = ImmutableSet.copyOf((Collection) this.f23400m).iterator();
        while (it2.hasNext()) {
            ((C4718d) it2.next()).release();
        }
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm exoMediaDrm, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap) {
        this(uuid, exoMediaDrm, mediaDrmCallback, hashMap == null ? new HashMap<>() : hashMap, false, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm exoMediaDrm, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap, boolean z) {
        this(uuid, exoMediaDrm, mediaDrmCallback, hashMap == null ? new HashMap<>() : hashMap, z, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm exoMediaDrm, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap, boolean z, int i) {
        this(uuid, new ExoMediaDrm.AppManagedProvider(exoMediaDrm), mediaDrmCallback, hashMap == null ? new HashMap<>() : hashMap, z, new int[0], false, new DefaultLoadErrorHandlingPolicy(i), 300000L);
    }

    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm.Provider provider, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, boolean z, int[] iArr, boolean z2, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j) {
        Assertions.checkNotNull(uuid);
        Assertions.checkArgument(!C4649C.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f23388a = uuid;
        this.f23389b = provider;
        this.f23390c = mediaDrmCallback;
        this.f23391d = hashMap;
        this.f23392e = z;
        this.f23393f = iArr;
        this.f23394g = z2;
        this.f23396i = loadErrorHandlingPolicy;
        this.f23395h = new C4719e(this);
        this.f23397j = new C4720f();
        this.f23408u = 0;
        this.f23399l = new ArrayList();
        this.f23400m = Sets.newIdentityHashSet();
        this.f23401n = Sets.newIdentityHashSet();
        this.f23398k = j;
    }
}
