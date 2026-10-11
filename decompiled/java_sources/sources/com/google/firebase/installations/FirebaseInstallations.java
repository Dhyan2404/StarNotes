package com.google.firebase.installations;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Lazy;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;
import com.google.firebase.installations.local.IidStore;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.fym;
import com.sunia.HTREnginev2.l2h;
import com.sunia.HTREnginev2.mie;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes6.dex */
public class FirebaseInstallations implements FirebaseInstallationsApi {

    /* renamed from: n */
    public static final String f35894n = "generatefid.lock";

    /* renamed from: o */
    public static final String f35895o = "CHIME_ANDROID_SDK";

    /* renamed from: p */
    public static final int f35896p = 0;

    /* renamed from: q */
    public static final int f35897q = 1;

    /* renamed from: r */
    public static final long f35898r = 30;

    /* renamed from: t */
    public static final String f35900t = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.";

    /* renamed from: u */
    public static final String f35901u = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";

    /* renamed from: v */
    public static final String f35902v = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";

    /* renamed from: w */
    public static final String f35903w = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request.";

    /* renamed from: a */
    public final FirebaseApp f35904a;

    /* renamed from: b */
    public final FirebaseInstallationServiceClient f35905b;

    /* renamed from: c */
    public final PersistedInstallation f35906c;

    /* renamed from: d */
    public final Utils f35907d;

    /* renamed from: e */
    public final Lazy<IidStore> f35908e;

    /* renamed from: f */
    public final RandomFidGenerator f35909f;

    /* renamed from: g */
    public final Object f35910g;

    /* renamed from: h */
    public final ExecutorService f35911h;

    /* renamed from: i */
    public final Executor f35912i;

    /* renamed from: j */
    @GuardedBy("this")
    public String f35913j;

    /* renamed from: k */
    @GuardedBy("FirebaseInstallations.this")
    public Set<FidListener> f35914k;

    /* renamed from: l */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final List<fym> f35915l;

    /* renamed from: m */
    public static final Object f35893m = new Object();

    /* renamed from: s */
    public static final ThreadFactory f35899s = new ThreadFactoryC6465a();

    /* renamed from: com.google.firebase.installations.FirebaseInstallations$a */
    /* loaded from: classes6.dex */
    public class ThreadFactoryC6465a implements ThreadFactory {

        /* renamed from: e */
        public final AtomicInteger f35916e = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        @SuppressLint({"ThreadPoolCreation"})
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f35916e.getAndIncrement())));
        }
    }

    /* renamed from: com.google.firebase.installations.FirebaseInstallations$b */
    /* loaded from: classes6.dex */
    public class C6466b implements FidListenerHandle {

        /* renamed from: a */
        public final /* synthetic */ FidListener f35917a;

        public C6466b(FidListener fidListener) {
            this.f35917a = fidListener;
        }

        @Override // com.google.firebase.installations.internal.FidListenerHandle
        public void unregister() {
            synchronized (FirebaseInstallations.this) {
                FirebaseInstallations.this.f35914k.remove(this.f35917a);
            }
        }
    }

    /* renamed from: com.google.firebase.installations.FirebaseInstallations$c */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6467c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f35919a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f35920b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f35920b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35920b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35920b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f35919a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35919a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    public FirebaseInstallations(final FirebaseApp firebaseApp, @NonNull Provider<HeartBeatController> provider, @NonNull ExecutorService executorService, @NonNull Executor executor) {
        this(executorService, executor, firebaseApp, new FirebaseInstallationServiceClient(firebaseApp.getApplicationContext(), provider), new PersistedInstallation(firebaseApp), Utils.getInstance(), new Lazy(new Provider() { // from class: com.sunia.HTREnginev2.wmg
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                IidStore m28130z;
                m28130z = FirebaseInstallations.m28130z(FirebaseApp.this);
                return m28130z;
            }
        }), new RandomFidGenerator());
    }

    @NonNull
    public static FirebaseInstallations getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m28128x() {
        m28129y(false);
    }

    /* renamed from: z */
    public static /* synthetic */ IidStore m28130z(FirebaseApp firebaseApp) {
        return new IidStore(firebaseApp);
    }

    /* renamed from: A */
    public final void m28131A() {
        Preconditions.checkNotEmpty(m28146o(), f35901u);
        Preconditions.checkNotEmpty(m28152u(), f35902v);
        Preconditions.checkNotEmpty(m28145n(), f35900t);
        Preconditions.checkArgument(Utils.m28158b(m28146o()), f35901u);
        Preconditions.checkArgument(Utils.m28157a(m28145n()), f35900t);
    }

    /* renamed from: B */
    public final String m28132B(PersistedInstallationEntry persistedInstallationEntry) {
        if ((!this.f35904a.getName().equals(f35895o) && !this.f35904a.isDefaultApp()) || !persistedInstallationEntry.shouldAttemptMigration()) {
            return this.f35909f.createRandomFid();
        }
        String readIid = m28148q().readIid();
        return TextUtils.isEmpty(readIid) ? this.f35909f.createRandomFid() : readIid;
    }

    /* renamed from: C */
    public final PersistedInstallationEntry m28133C(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        InstallationResponse createFirebaseInstallation = this.f35905b.createFirebaseInstallation(m28145n(), persistedInstallationEntry.getFirebaseInstallationId(), m28152u(), m28146o(), (persistedInstallationEntry.getFirebaseInstallationId() == null || persistedInstallationEntry.getFirebaseInstallationId().length() != 11) ? null : m28148q().readToken());
        int i = C6467c.f35919a[createFirebaseInstallation.getResponseCode().ordinal()];
        if (i == 1) {
            return persistedInstallationEntry.withRegisteredFid(createFirebaseInstallation.getFid(), createFirebaseInstallation.getRefreshToken(), this.f35907d.currentTimeInSecs(), createFirebaseInstallation.getAuthToken().getToken(), createFirebaseInstallation.getAuthToken().getTokenExpirationTimestamp());
        }
        if (i == 2) {
            return persistedInstallationEntry.withFisError("BAD CONFIG");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: D */
    public final void m28134D(Exception exc) {
        synchronized (this.f35910g) {
            Iterator<fym> it2 = this.f35915l.iterator();
            while (it2.hasNext()) {
                if (it2.next().onException(exc)) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: E */
    public final void m28135E(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (this.f35910g) {
            Iterator<fym> it2 = this.f35915l.iterator();
            while (it2.hasNext()) {
                if (it2.next().mo28159a(persistedInstallationEntry)) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: F */
    public final synchronized void m28136F(String str) {
        this.f35913j = str;
    }

    /* renamed from: G */
    public final synchronized void m28137G(PersistedInstallationEntry persistedInstallationEntry, PersistedInstallationEntry persistedInstallationEntry2) {
        if (this.f35914k.size() != 0 && !TextUtils.equals(persistedInstallationEntry.getFirebaseInstallationId(), persistedInstallationEntry2.getFirebaseInstallationId())) {
            Iterator<FidListener> it2 = this.f35914k.iterator();
            while (it2.hasNext()) {
                it2.next().onFidChanged(persistedInstallationEntry2.getFirebaseInstallationId());
            }
        }
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    @NonNull
    public Task<Void> delete() {
        return Tasks.call(this.f35911h, new Callable() { // from class: com.sunia.HTREnginev2.tmg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void m28141j;
                m28141j = FirebaseInstallations.this.m28141j();
                return m28141j;
            }
        });
    }

    /* renamed from: g */
    public final Task<InstallationTokenResult> m28138g() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m28140i(new C6470b(this.f35907d, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    @NonNull
    public Task<String> getId() {
        m28131A();
        String m28147p = m28147p();
        if (m28147p != null) {
            return Tasks.forResult(m28147p);
        }
        Task<String> m28139h = m28139h();
        this.f35911h.execute(new Runnable() { // from class: com.sunia.HTREnginev2.vmg
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseInstallations.this.m28128x();
            }
        });
        return m28139h;
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    @NonNull
    public Task<InstallationTokenResult> getToken(final boolean z) {
        m28131A();
        Task<InstallationTokenResult> m28138g = m28138g();
        this.f35911h.execute(new Runnable() { // from class: com.sunia.HTREnginev2.umg
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseInstallations.this.m28129y(z);
            }
        });
        return m28138g;
    }

    /* renamed from: h */
    public final Task<String> m28139h() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m28140i(new l2h(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    /* renamed from: i */
    public final void m28140i(fym fymVar) {
        synchronized (this.f35910g) {
            this.f35915l.add(fymVar);
        }
    }

    /* renamed from: j */
    public final Void m28141j() throws FirebaseInstallationsException {
        m28136F(null);
        PersistedInstallationEntry m28149r = m28149r();
        if (m28149r.isRegistered()) {
            this.f35905b.deleteFirebaseInstallation(m28145n(), m28149r.getFirebaseInstallationId(), m28152u(), m28149r.getRefreshToken());
        }
        m28153v(m28149r.withNoGeneratedFid());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m28127w(boolean r3) {
        /*
            r2 = this;
            com.google.firebase.installations.local.PersistedInstallationEntry r0 = r2.m28149r()
            boolean r1 = r0.isErrored()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            if (r1 != 0) goto L22
            boolean r1 = r0.isUnregistered()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            if (r1 == 0) goto L11
            goto L22
        L11:
            if (r3 != 0) goto L1d
            com.google.firebase.installations.Utils r3 = r2.f35907d     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            boolean r3 = r3.isAuthTokenExpired(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            return
        L1d:
            com.google.firebase.installations.local.PersistedInstallationEntry r3 = r2.m28144m(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            goto L26
        L22:
            com.google.firebase.installations.local.PersistedInstallationEntry r3 = r2.m28133C(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
        L26:
            r2.m28153v(r3)
            r2.m28137G(r0, r3)
            boolean r0 = r3.isRegistered()
            if (r0 == 0) goto L39
            java.lang.String r0 = r3.getFirebaseInstallationId()
            r2.m28136F(r0)
        L39:
            boolean r0 = r3.isErrored()
            if (r0 == 0) goto L4a
            com.google.firebase.installations.FirebaseInstallationsException r3 = new com.google.firebase.installations.FirebaseInstallationsException
            com.google.firebase.installations.FirebaseInstallationsException$Status r0 = com.google.firebase.installations.FirebaseInstallationsException.Status.BAD_CONFIG
            r3.<init>(r0)
            r2.m28134D(r3)
            goto L5e
        L4a:
            boolean r0 = r3.isNotGenerated()
            if (r0 == 0) goto L5b
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r3.<init>(r0)
            r2.m28134D(r3)
            goto L5e
        L5b:
            r2.m28135E(r3)
        L5e:
            return
        L5f:
            r3 = move-exception
            r2.m28134D(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.FirebaseInstallations.m28127w(boolean):void");
    }

    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final void m28129y(final boolean z) {
        PersistedInstallationEntry m28151t = m28151t();
        if (z) {
            m28151t = m28151t.withClearedAuthToken();
        }
        m28135E(m28151t);
        this.f35912i.execute(new Runnable() { // from class: com.sunia.HTREnginev2.smg
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseInstallations.this.m28127w(z);
            }
        });
    }

    /* renamed from: m */
    public final PersistedInstallationEntry m28144m(@NonNull PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        TokenResult generateAuthToken = this.f35905b.generateAuthToken(m28145n(), persistedInstallationEntry.getFirebaseInstallationId(), m28152u(), persistedInstallationEntry.getRefreshToken());
        int i = C6467c.f35920b[generateAuthToken.getResponseCode().ordinal()];
        if (i == 1) {
            return persistedInstallationEntry.withAuthToken(generateAuthToken.getToken(), generateAuthToken.getTokenExpirationTimestamp(), this.f35907d.currentTimeInSecs());
        }
        if (i == 2) {
            return persistedInstallationEntry.withFisError("BAD CONFIG");
        }
        if (i != 3) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        m28136F(null);
        return persistedInstallationEntry.withNoGeneratedFid();
    }

    @Nullable
    /* renamed from: n */
    public String m28145n() {
        return this.f35904a.getOptions().getApiKey();
    }

    @VisibleForTesting
    /* renamed from: o */
    public String m28146o() {
        return this.f35904a.getOptions().getApplicationId();
    }

    /* renamed from: p */
    public final synchronized String m28147p() {
        return this.f35913j;
    }

    /* renamed from: q */
    public final IidStore m28148q() {
        return this.f35908e.get();
    }

    /* renamed from: r */
    public final PersistedInstallationEntry m28149r() {
        PersistedInstallationEntry readPersistedInstallationEntryValue;
        synchronized (f35893m) {
            mie m55624a = mie.m55624a(this.f35904a.getApplicationContext(), f35894n);
            try {
                readPersistedInstallationEntryValue = this.f35906c.readPersistedInstallationEntryValue();
            } finally {
                if (m55624a != null) {
                    m55624a.m55625b();
                }
            }
        }
        return readPersistedInstallationEntryValue;
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    @NonNull
    public synchronized FidListenerHandle registerFidListener(@NonNull FidListener fidListener) {
        this.f35914k.add(fidListener);
        return new C6466b(fidListener);
    }

    @VisibleForTesting
    /* renamed from: s */
    public String m28150s() {
        return this.f35904a.getName();
    }

    /* renamed from: t */
    public final PersistedInstallationEntry m28151t() {
        PersistedInstallationEntry readPersistedInstallationEntryValue;
        synchronized (f35893m) {
            mie m55624a = mie.m55624a(this.f35904a.getApplicationContext(), f35894n);
            try {
                readPersistedInstallationEntryValue = this.f35906c.readPersistedInstallationEntryValue();
                if (readPersistedInstallationEntryValue.isNotGenerated()) {
                    readPersistedInstallationEntryValue = this.f35906c.insertOrUpdatePersistedInstallationEntry(readPersistedInstallationEntryValue.withUnregisteredFid(m28132B(readPersistedInstallationEntryValue)));
                }
            } finally {
                if (m55624a != null) {
                    m55624a.m55625b();
                }
            }
        }
        return readPersistedInstallationEntryValue;
    }

    @Nullable
    /* renamed from: u */
    public String m28152u() {
        return this.f35904a.getOptions().getProjectId();
    }

    /* renamed from: v */
    public final void m28153v(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (f35893m) {
            mie m55624a = mie.m55624a(this.f35904a.getApplicationContext(), f35894n);
            try {
                this.f35906c.insertOrUpdatePersistedInstallationEntry(persistedInstallationEntry);
            } finally {
                if (m55624a != null) {
                    m55624a.m55625b();
                }
            }
        }
    }

    @NonNull
    public static FirebaseInstallations getInstance(@NonNull FirebaseApp firebaseApp) {
        Preconditions.checkArgument(firebaseApp != null, "Null is not a valid value of FirebaseApp.");
        return (FirebaseInstallations) firebaseApp.get(FirebaseInstallationsApi.class);
    }

    @SuppressLint({"ThreadPoolCreation"})
    public FirebaseInstallations(ExecutorService executorService, Executor executor, FirebaseApp firebaseApp, FirebaseInstallationServiceClient firebaseInstallationServiceClient, PersistedInstallation persistedInstallation, Utils utils, Lazy<IidStore> lazy, RandomFidGenerator randomFidGenerator) {
        this.f35910g = new Object();
        this.f35914k = new HashSet();
        this.f35915l = new ArrayList();
        this.f35904a = firebaseApp;
        this.f35905b = firebaseInstallationServiceClient;
        this.f35906c = persistedInstallation;
        this.f35907d = utils;
        this.f35908e = lazy;
        this.f35909f = randomFidGenerator;
        this.f35911h = executorService;
        this.f35912i = executor;
    }
}
