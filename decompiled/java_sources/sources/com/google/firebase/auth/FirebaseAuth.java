package com.google.firebase.auth;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzaak;
import com.google.android.gms.internal.p124firebaseauthapi.zzach;
import com.google.android.gms.internal.p124firebaseauthapi.zzaco;
import com.google.android.gms.internal.p124firebaseauthapi.zzacy;
import com.google.android.gms.internal.p124firebaseauthapi.zzads;
import com.google.android.gms.internal.p124firebaseauthapi.zzaec;
import com.google.android.gms.internal.p124firebaseauthapi.zzafi;
import com.google.android.gms.internal.p124firebaseauthapi.zzafm;
import com.google.android.gms.internal.p124firebaseauthapi.zzafn;
import com.google.android.gms.internal.p124firebaseauthapi.zzaft;
import com.google.android.gms.internal.p124firebaseauthapi.zzagd;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseError;
import com.google.firebase.FirebaseException;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.annotations.concurrent.UiThread;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.auth.internal.zzac;
import com.google.firebase.auth.internal.zzaj;
import com.google.firebase.auth.internal.zzbf;
import com.google.firebase.auth.internal.zzbi;
import com.google.firebase.auth.internal.zzbu;
import com.google.firebase.auth.internal.zzbv;
import com.google.firebase.auth.internal.zzby;
import com.google.firebase.auth.internal.zzbz;
import com.google.firebase.auth.internal.zzcb;
import com.google.firebase.auth.internal.zzi;
import com.google.firebase.auth.internal.zzw;
import com.google.firebase.auth.internal.zzz;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.internal.InternalTokenResult;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.sunia.HTREnginev2.drp;
import com.sunia.HTREnginev2.esp;
import com.sunia.HTREnginev2.grp;
import com.sunia.HTREnginev2.hop;
import com.sunia.HTREnginev2.jrp;
import com.sunia.HTREnginev2.mrp;
import com.sunia.HTREnginev2.ofp;
import com.sunia.HTREnginev2.orp;
import com.sunia.HTREnginev2.zrp;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes6.dex */
public class FirebaseAuth implements InternalAuthProvider {

    /* renamed from: a */
    public final FirebaseApp f35597a;

    /* renamed from: b */
    public final List<IdTokenListener> f35598b;

    /* renamed from: c */
    public final List<com.google.firebase.auth.internal.IdTokenListener> f35599c;

    /* renamed from: d */
    public final List<AuthStateListener> f35600d;

    /* renamed from: e */
    public final zzaak f35601e;

    /* renamed from: f */
    @Nullable
    public FirebaseUser f35602f;

    /* renamed from: g */
    public final zzz f35603g;

    /* renamed from: h */
    public final Object f35604h;

    /* renamed from: i */
    public String f35605i;

    /* renamed from: j */
    public final Object f35606j;

    /* renamed from: k */
    public String f35607k;

    /* renamed from: l */
    public zzbu f35608l;

    /* renamed from: m */
    public final RecaptchaAction f35609m;

    /* renamed from: n */
    public final RecaptchaAction f35610n;

    /* renamed from: o */
    public final RecaptchaAction f35611o;

    /* renamed from: p */
    public final zzbv f35612p;

    /* renamed from: q */
    public final zzcb f35613q;

    /* renamed from: r */
    public final com.google.firebase.auth.internal.zza f35614r;

    /* renamed from: s */
    public final Provider<InteropAppCheckTokenProvider> f35615s;

    /* renamed from: t */
    public final Provider<HeartBeatController> f35616t;

    /* renamed from: u */
    public zzby f35617u;

    /* renamed from: v */
    public final Executor f35618v;

    /* renamed from: w */
    public final Executor f35619w;

    /* renamed from: x */
    public final Executor f35620x;

    /* renamed from: y */
    public String f35621y;

    /* loaded from: classes6.dex */
    public interface AuthStateListener {
        void onAuthStateChanged(@NonNull FirebaseAuth firebaseAuth);
    }

    /* loaded from: classes6.dex */
    public interface IdTokenListener {
        void onIdTokenChanged(@NonNull FirebaseAuth firebaseAuth);
    }

    @VisibleForTesting
    /* renamed from: com.google.firebase.auth.FirebaseAuth$a */
    /* loaded from: classes6.dex */
    public class C6431a implements zzi {
        public C6431a() {
        }

        @Override // com.google.firebase.auth.internal.zzi
        public final void zza(zzafm zzafmVar, FirebaseUser firebaseUser) {
            Preconditions.checkNotNull(zzafmVar);
            Preconditions.checkNotNull(firebaseUser);
            firebaseUser.zza(zzafmVar);
            FirebaseAuth.this.zza(firebaseUser, zzafmVar, true);
        }
    }

    /* renamed from: com.google.firebase.auth.FirebaseAuth$c */
    /* loaded from: classes6.dex */
    public class C6433c extends C6431a implements com.google.firebase.auth.internal.zzar, zzi {
        public C6433c(FirebaseAuth firebaseAuth) {
            super();
        }

        @Override // com.google.firebase.auth.internal.zzar
        public final void zza(Status status) {
        }
    }

    public FirebaseAuth(@NonNull FirebaseApp firebaseApp, @NonNull Provider<InteropAppCheckTokenProvider> provider, @NonNull Provider<HeartBeatController> provider2, @NonNull @Background Executor executor, @NonNull @Blocking Executor executor2, @NonNull @Lightweight Executor executor3, @NonNull @Lightweight ScheduledExecutorService scheduledExecutorService, @NonNull @UiThread Executor executor4) {
        this(firebaseApp, new zzaak(firebaseApp, executor2, scheduledExecutorService), new zzbv(firebaseApp.getApplicationContext(), firebaseApp.getPersistenceKey()), zzcb.zzc(), com.google.firebase.auth.internal.zza.zza(), provider, provider2, executor, executor2, executor3, executor4);
    }

    @NonNull
    @Keep
    public static FirebaseAuth getInstance() {
        return (FirebaseAuth) FirebaseApp.getInstance().get(FirebaseAuth.class);
    }

    /* renamed from: i */
    public static void m27942i(FirebaseAuth firebaseAuth, @Nullable FirebaseUser firebaseUser) {
        if (firebaseUser != null) {
            Log.d("FirebaseAuth", "Notifying auth state listeners about user ( " + firebaseUser.getUid() + " ).");
        } else {
            Log.d("FirebaseAuth", "Notifying auth state listeners about a sign-out event.");
        }
        firebaseAuth.f35620x.execute(new RunnableC6447l(firebaseAuth));
    }

    @VisibleForTesting
    /* renamed from: j */
    public static void m27943j(FirebaseAuth firebaseAuth, FirebaseUser firebaseUser, zzafm zzafmVar, boolean z, boolean z2) {
        boolean z3;
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(zzafmVar);
        boolean z4 = true;
        boolean z5 = firebaseAuth.f35602f != null && firebaseUser.getUid().equals(firebaseAuth.f35602f.getUid());
        if (z5 || !z2) {
            FirebaseUser firebaseUser2 = firebaseAuth.f35602f;
            if (firebaseUser2 == null) {
                z3 = true;
            } else {
                boolean z6 = !z5 || (firebaseUser2.zzc().zzc().equals(zzafmVar.zzc()) ^ true);
                z3 = z5 ? false : true;
                z4 = z6;
            }
            Preconditions.checkNotNull(firebaseUser);
            if (firebaseAuth.f35602f == null || !firebaseUser.getUid().equals(firebaseAuth.getUid())) {
                firebaseAuth.f35602f = firebaseUser;
            } else {
                firebaseAuth.f35602f.zza(firebaseUser.getProviderData());
                if (!firebaseUser.isAnonymous()) {
                    firebaseAuth.f35602f.zzb();
                }
                List<MultiFactorInfo> enrolledFactors = firebaseUser.getMultiFactor().getEnrolledFactors();
                List<zzaft> zzf = firebaseUser.zzf();
                firebaseAuth.f35602f.zzc(enrolledFactors);
                firebaseAuth.f35602f.zzb(zzf);
            }
            if (z) {
                firebaseAuth.f35612p.zzb(firebaseAuth.f35602f);
            }
            if (z4) {
                FirebaseUser firebaseUser3 = firebaseAuth.f35602f;
                if (firebaseUser3 != null) {
                    firebaseUser3.zza(zzafmVar);
                }
                m27945m(firebaseAuth, firebaseAuth.f35602f);
            }
            if (z3) {
                m27942i(firebaseAuth, firebaseAuth.f35602f);
            }
            if (z) {
                firebaseAuth.f35612p.zza(firebaseUser, zzafmVar);
            }
            FirebaseUser firebaseUser4 = firebaseAuth.f35602f;
            if (firebaseUser4 != null) {
                m27953x(firebaseAuth).zza(firebaseUser4.zzc());
            }
        }
    }

    /* renamed from: m */
    public static void m27945m(FirebaseAuth firebaseAuth, @Nullable FirebaseUser firebaseUser) {
        if (firebaseUser != null) {
            Log.d("FirebaseAuth", "Notifying id token listeners about user ( " + firebaseUser.getUid() + " ).");
        } else {
            Log.d("FirebaseAuth", "Notifying id token listeners about a sign-out event.");
        }
        firebaseAuth.f35620x.execute(new RunnableC6446k(firebaseAuth, new InternalTokenResult(firebaseUser != null ? firebaseUser.zzd() : null)));
    }

    /* renamed from: x */
    public static zzby m27953x(FirebaseAuth firebaseAuth) {
        if (firebaseAuth.f35617u == null) {
            firebaseAuth.f35617u = new zzby((FirebaseApp) Preconditions.checkNotNull(firebaseAuth.f35597a));
        }
        return firebaseAuth.f35617u;
    }

    /* renamed from: a */
    public final Task<AuthResult> m27954a(EmailAuthCredential emailAuthCredential, @Nullable FirebaseUser firebaseUser, boolean z) {
        return new C6437c(this, z, firebaseUser, emailAuthCredential).zza(this, this.f35607k, this.f35609m, "EMAIL_PASSWORD_PROVIDER");
    }

    public void addAuthStateListener(@NonNull AuthStateListener authStateListener) {
        this.f35600d.add(authStateListener);
        this.f35620x.execute(new RunnableC6445j(this, authStateListener));
    }

    public void addIdTokenListener(@NonNull IdTokenListener idTokenListener) {
        this.f35598b.add(idTokenListener);
        this.f35620x.execute(new RunnableC6438d(this, idTokenListener));
    }

    @NonNull
    public Task<Void> applyActionCode(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zza(this.f35597a, str, this.f35607k);
    }

    /* renamed from: b */
    public final Task<Void> m27955b(FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential, boolean z) {
        return new C6436b(this, z, firebaseUser, emailAuthCredential).zza(this, this.f35607k, z ? this.f35609m : this.f35610n, "EMAIL_PASSWORD_PROVIDER");
    }

    /* renamed from: c */
    public final Task<Void> m27956c(FirebaseUser firebaseUser, zzbz zzbzVar) {
        Preconditions.checkNotNull(firebaseUser);
        return this.f35601e.zza(this.f35597a, firebaseUser, zzbzVar);
    }

    @NonNull
    public Task<ActionCodeResult> checkActionCode(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zzb(this.f35597a, str, this.f35607k);
    }

    @NonNull
    public Task<Void> confirmPasswordReset(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        return this.f35601e.zza(this.f35597a, str, str2, this.f35607k);
    }

    @NonNull
    public Task<AuthResult> createUserWithEmailAndPassword(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        return new C6442h(this, str, str2).zza(this, this.f35607k, this.f35611o, "EMAIL_PASSWORD_PROVIDER");
    }

    /* renamed from: d */
    public final Task<AuthResult> m27957d(String str, String str2, @Nullable String str3, @Nullable FirebaseUser firebaseUser, boolean z) {
        return new C6435a(this, str, z, firebaseUser, str2, str3).zza(this, str3, this.f35610n, "EMAIL_PASSWORD_PROVIDER");
    }

    @NonNull
    @Deprecated
    public Task<SignInMethodQueryResult> fetchSignInMethodsForEmail(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zzc(this.f35597a, str, this.f35607k);
    }

    @VisibleForTesting
    /* renamed from: g */
    public final PhoneAuthProvider.OnVerificationStateChangedCallbacks m27958g(PhoneAuthOptions phoneAuthOptions, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks) {
        return phoneAuthOptions.zzj() ? onVerificationStateChangedCallbacks : new C6440f(this, phoneAuthOptions, onVerificationStateChangedCallbacks);
    }

    @Override // com.google.firebase.auth.internal.InternalAuthProvider, com.google.firebase.internal.InternalTokenProvider
    @NonNull
    public Task<GetTokenResult> getAccessToken(boolean z) {
        return zza(this.f35602f, z);
    }

    @NonNull
    public FirebaseApp getApp() {
        return this.f35597a;
    }

    @Nullable
    public FirebaseUser getCurrentUser() {
        return this.f35602f;
    }

    @Nullable
    public String getCustomAuthDomain() {
        return this.f35621y;
    }

    @NonNull
    public FirebaseAuthSettings getFirebaseAuthSettings() {
        return this.f35603g;
    }

    @Nullable
    public String getLanguageCode() {
        String str;
        synchronized (this.f35604h) {
            str = this.f35605i;
        }
        return str;
    }

    @Nullable
    public Task<AuthResult> getPendingAuthResult() {
        return this.f35613q.zza();
    }

    @Nullable
    public String getTenantId() {
        String str;
        synchronized (this.f35606j) {
            str = this.f35607k;
        }
        return str;
    }

    @Override // com.google.firebase.auth.internal.InternalAuthProvider, com.google.firebase.internal.InternalTokenProvider
    @Nullable
    public String getUid() {
        FirebaseUser firebaseUser = this.f35602f;
        if (firebaseUser == null) {
            return null;
        }
        return firebaseUser.getUid();
    }

    /* renamed from: h */
    public final PhoneAuthProvider.OnVerificationStateChangedCallbacks m27959h(@Nullable String str, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks) {
        return (this.f35603g.zzd() && str != null && str.equals(this.f35603g.zza())) ? new C6441g(this, onVerificationStateChangedCallbacks) : onVerificationStateChangedCallbacks;
    }

    @NonNull
    public Task<Void> initializeRecaptchaConfig() {
        if (this.f35608l == null) {
            this.f35608l = new zzbu(this.f35597a, this);
        }
        return this.f35608l.zza(this.f35607k, Boolean.FALSE).continueWithTask(new ofp(this));
    }

    public boolean isSignInWithEmailLink(@NonNull String str) {
        return EmailAuthCredential.zza(str);
    }

    @VisibleForTesting
    /* renamed from: k */
    public final void m27960k(FirebaseUser firebaseUser, zzafm zzafmVar, boolean z, boolean z2) {
        m27943j(this, firebaseUser, zzafmVar, true, z2);
    }

    /* renamed from: n */
    public final boolean m27961n(String str) {
        ActionCodeUrl parseLink = ActionCodeUrl.parseLink(str);
        return (parseLink == null || TextUtils.equals(this.f35607k, parseLink.zza())) ? false : true;
    }

    public void removeAuthStateListener(@NonNull AuthStateListener authStateListener) {
        this.f35600d.remove(authStateListener);
    }

    public void removeIdTokenListener(@NonNull IdTokenListener idTokenListener) {
        this.f35598b.remove(idTokenListener);
    }

    @NonNull
    public Task<Void> revokeAccessToken(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        FirebaseUser currentUser = getCurrentUser();
        Preconditions.checkNotNull(currentUser);
        return currentUser.getIdToken(false).continueWithTask(new zrp(this, str));
    }

    @NonNull
    public Task<Void> sendPasswordResetEmail(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return sendPasswordResetEmail(str, null);
    }

    @NonNull
    public Task<Void> sendSignInLinkToEmail(@NonNull String str, @NonNull ActionCodeSettings actionCodeSettings) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(actionCodeSettings);
        if (!actionCodeSettings.canHandleCodeInApp()) {
            throw new IllegalArgumentException("You must set canHandleCodeInApp in your ActionCodeSettings to true for Email-Link Sign-in.");
        }
        String str2 = this.f35605i;
        if (str2 != null) {
            actionCodeSettings.zza(str2);
        }
        return new drp(this, str, actionCodeSettings).zza(this, this.f35607k, this.f35609m, "EMAIL_PASSWORD_PROVIDER");
    }

    public void setCustomAuthDomain(@NonNull String str) {
        String str2;
        Preconditions.checkNotEmpty(str);
        if (str.startsWith("chrome-extension://")) {
            this.f35621y = str;
            return;
        }
        if (str.contains("://")) {
            str2 = str;
        } else {
            str2 = CommonConstant.SCHEME_HTTP + str;
        }
        try {
            this.f35621y = (String) Preconditions.checkNotNull(new URI(str2).getHost());
        } catch (URISyntaxException e) {
            if (Log.isLoggable("FirebaseAuth", 4)) {
                Log.i("FirebaseAuth", "Error parsing URL: '" + str + "', " + e.getMessage());
            }
            this.f35621y = str;
        }
    }

    @NonNull
    public Task<Void> setFirebaseUIVersion(@Nullable String str) {
        return this.f35601e.zza(str);
    }

    public void setLanguageCode(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        synchronized (this.f35604h) {
            this.f35605i = str;
        }
    }

    public void setTenantId(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        synchronized (this.f35606j) {
            this.f35607k = str;
        }
    }

    @NonNull
    public Task<AuthResult> signInAnonymously() {
        FirebaseUser firebaseUser = this.f35602f;
        if (firebaseUser == null || !firebaseUser.isAnonymous()) {
            return this.f35601e.zza(this.f35597a, new C6431a(), this.f35607k);
        }
        zzac zzacVar = (zzac) this.f35602f;
        zzacVar.zza(false);
        return Tasks.forResult(new zzw(zzacVar));
    }

    @NonNull
    public Task<AuthResult> signInWithCredential(@NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(authCredential);
        AuthCredential zza = authCredential.zza();
        if (zza instanceof EmailAuthCredential) {
            EmailAuthCredential emailAuthCredential = (EmailAuthCredential) zza;
            return !emailAuthCredential.zzf() ? m27957d(emailAuthCredential.zzc(), (String) Preconditions.checkNotNull(emailAuthCredential.zzd()), this.f35607k, null, false) : m27961n(Preconditions.checkNotEmpty(emailAuthCredential.zze())) ? Tasks.forException(zzach.zza(new Status(17072))) : m27954a(emailAuthCredential, null, false);
        }
        if (zza instanceof PhoneAuthCredential) {
            return this.f35601e.zza(this.f35597a, (PhoneAuthCredential) zza, this.f35607k, (zzi) new C6431a());
        }
        return this.f35601e.zza(this.f35597a, zza, this.f35607k, new C6431a());
    }

    @NonNull
    public Task<AuthResult> signInWithCustomToken(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zza(this.f35597a, str, this.f35607k, new C6431a());
    }

    @NonNull
    public Task<AuthResult> signInWithEmailAndPassword(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        return m27957d(str, str2, this.f35607k, null, false);
    }

    @NonNull
    public Task<AuthResult> signInWithEmailLink(@NonNull String str, @NonNull String str2) {
        return signInWithCredential(EmailAuthProvider.getCredentialWithLink(str, str2));
    }

    public void signOut() {
        zzh();
        zzby zzbyVar = this.f35617u;
        if (zzbyVar != null) {
            zzbyVar.zza();
        }
    }

    @NonNull
    public Task<AuthResult> startActivityForSignInWithProvider(@NonNull Activity activity, @NonNull FederatedAuthProvider federatedAuthProvider) {
        Preconditions.checkNotNull(federatedAuthProvider);
        Preconditions.checkNotNull(activity);
        TaskCompletionSource<AuthResult> taskCompletionSource = new TaskCompletionSource<>();
        if (!this.f35613q.zza(activity, taskCompletionSource, this)) {
            return Tasks.forException(zzach.zza(new Status(17057)));
        }
        zzbi.zza(activity.getApplicationContext(), this);
        federatedAuthProvider.zzc(activity);
        return taskCompletionSource.getTask();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.firebase.auth.FirebaseAuth$c, com.google.firebase.auth.internal.zzbz] */
    @NonNull
    public Task<Void> updateCurrentUser(@NonNull FirebaseUser firebaseUser) {
        String str;
        if (firebaseUser == null) {
            throw new IllegalArgumentException("Cannot update current user with null user!");
        }
        String tenantId = firebaseUser.getTenantId();
        if ((tenantId != null && !tenantId.equals(this.f35607k)) || ((str = this.f35607k) != null && !str.equals(tenantId))) {
            return Tasks.forException(zzach.zza(new Status(17072)));
        }
        String apiKey = firebaseUser.zza().getOptions().getApiKey();
        String apiKey2 = this.f35597a.getOptions().getApiKey();
        if (!firebaseUser.zzc().zzg() || !apiKey2.equals(apiKey)) {
            return m27956c(firebaseUser, new C6433c(this));
        }
        zza(zzac.zza(this.f35597a, firebaseUser), firebaseUser.zzc(), true);
        return Tasks.forResult(null);
    }

    public void useAppLanguage() {
        synchronized (this.f35604h) {
            this.f35605i = zzacy.zza();
        }
    }

    public void useEmulator(@NonNull String str, int i) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(i >= 0 && i <= 65535, "Port number must be in the range 0-65535");
        zzaec.zza(this.f35597a, str, i);
    }

    @VisibleForTesting
    /* renamed from: v */
    public final boolean m27962v() {
        return zzaco.zza(getApp().getApplicationContext());
    }

    @NonNull
    public Task<String> verifyPasswordResetCode(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zzd(this.f35597a, str, this.f35607k);
    }

    @VisibleForTesting
    /* renamed from: w */
    public final synchronized zzby m27963w() {
        return m27953x(this);
    }

    @NonNull
    public final Task<Void> zza(@NonNull FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(firebaseUser);
        return this.f35601e.zza(firebaseUser, new jrp(this, firebaseUser));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<Void> zzb(@NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(authCredential);
        AuthCredential zza = authCredential.zza();
        if (zza instanceof EmailAuthCredential) {
            EmailAuthCredential emailAuthCredential = (EmailAuthCredential) zza;
            if ("password".equals(emailAuthCredential.getSignInMethod())) {
                return m27955b(firebaseUser, emailAuthCredential, false);
            }
            if (m27961n(Preconditions.checkNotEmpty(emailAuthCredential.zze()))) {
                return Tasks.forException(zzach.zza(new Status(17072)));
            }
            return m27955b(firebaseUser, emailAuthCredential, true);
        }
        if (zza instanceof PhoneAuthCredential) {
            return this.f35601e.zza(this.f35597a, firebaseUser, (PhoneAuthCredential) zza, this.f35607k, (zzbz) new C6432b());
        }
        return this.f35601e.zzb(this.f35597a, firebaseUser, zza, firebaseUser.getTenantId(), (zzbz) new C6432b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<AuthResult> zzc(@NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(authCredential);
        AuthCredential zza = authCredential.zza();
        if (zza instanceof EmailAuthCredential) {
            EmailAuthCredential emailAuthCredential = (EmailAuthCredential) zza;
            if ("password".equals(emailAuthCredential.getSignInMethod())) {
                return m27957d(emailAuthCredential.zzc(), Preconditions.checkNotEmpty(emailAuthCredential.zzd()), firebaseUser.getTenantId(), firebaseUser, true);
            }
            if (m27961n(Preconditions.checkNotEmpty(emailAuthCredential.zze()))) {
                return Tasks.forException(zzach.zza(new Status(17072)));
            }
            return m27954a(emailAuthCredential, firebaseUser, true);
        }
        if (zza instanceof PhoneAuthCredential) {
            return this.f35601e.zzb(this.f35597a, firebaseUser, (PhoneAuthCredential) zza, this.f35607k, (zzbz) new C6432b());
        }
        return this.f35601e.zzc(this.f35597a, firebaseUser, zza, firebaseUser.getTenantId(), new C6432b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<Void> zzd(@NonNull FirebaseUser firebaseUser, @NonNull String str) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zzd(this.f35597a, firebaseUser, str, new C6432b());
    }

    @NonNull
    public final Executor zze() {
        return this.f35618v;
    }

    @NonNull
    public final Executor zzf() {
        return this.f35619w;
    }

    @NonNull
    public final Executor zzg() {
        return this.f35620x;
    }

    public final void zzh() {
        Preconditions.checkNotNull(this.f35612p);
        FirebaseUser firebaseUser = this.f35602f;
        if (firebaseUser != null) {
            zzbv zzbvVar = this.f35612p;
            Preconditions.checkNotNull(firebaseUser);
            zzbvVar.zza(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", firebaseUser.getUid()));
            this.f35602f = null;
        }
        this.f35612p.zza("com.google.firebase.auth.FIREBASE_USER");
        m27945m(this, null);
        m27942i(this, null);
    }

    @Override // com.google.firebase.auth.internal.InternalAuthProvider
    @KeepForSdk
    public void removeIdTokenListener(@NonNull com.google.firebase.auth.internal.IdTokenListener idTokenListener) {
        Preconditions.checkNotNull(idTokenListener);
        this.f35599c.remove(idTokenListener);
        m27963w().zza(this.f35599c.size());
    }

    @NonNull
    @Keep
    public static FirebaseAuth getInstance(@NonNull FirebaseApp firebaseApp) {
        return (FirebaseAuth) firebaseApp.get(FirebaseAuth.class);
    }

    @Override // com.google.firebase.auth.internal.InternalAuthProvider
    @KeepForSdk
    public void addIdTokenListener(@NonNull com.google.firebase.auth.internal.IdTokenListener idTokenListener) {
        Preconditions.checkNotNull(idTokenListener);
        this.f35599c.add(idTokenListener);
        m27963w().zza(this.f35599c.size());
    }

    @NonNull
    public Task<Void> sendPasswordResetEmail(@NonNull String str, @Nullable ActionCodeSettings actionCodeSettings) {
        Preconditions.checkNotEmpty(str);
        if (actionCodeSettings == null) {
            actionCodeSettings = ActionCodeSettings.zzb();
        }
        String str2 = this.f35605i;
        if (str2 != null) {
            actionCodeSettings.zza(str2);
        }
        actionCodeSettings.zza(1);
        return new grp(this, str, actionCodeSettings).zza(this, this.f35607k, this.f35609m, "EMAIL_PASSWORD_PROVIDER");
    }

    @NonNull
    public final Task<Void> zza(@NonNull FirebaseUser firebaseUser, @NonNull MultiFactorAssertion multiFactorAssertion, @Nullable String str) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(multiFactorAssertion);
        if (multiFactorAssertion instanceof PhoneMultiFactorAssertion) {
            return this.f35601e.zza(this.f35597a, (PhoneMultiFactorAssertion) multiFactorAssertion, firebaseUser, str, new C6431a());
        }
        if (multiFactorAssertion instanceof TotpMultiFactorAssertion) {
            return this.f35601e.zza(this.f35597a, (TotpMultiFactorAssertion) multiFactorAssertion, firebaseUser, str, this.f35607k, new C6431a());
        }
        return Tasks.forException(zzach.zza(new Status(FirebaseError.ERROR_INTERNAL_ERROR)));
    }

    @VisibleForTesting
    /* renamed from: com.google.firebase.auth.FirebaseAuth$b */
    /* loaded from: classes6.dex */
    public class C6432b implements com.google.firebase.auth.internal.zzar, zzi {
        public C6432b() {
        }

        @Override // com.google.firebase.auth.internal.zzi
        public final void zza(zzafm zzafmVar, FirebaseUser firebaseUser) {
            Preconditions.checkNotNull(zzafmVar);
            Preconditions.checkNotNull(firebaseUser);
            firebaseUser.zza(zzafmVar);
            FirebaseAuth.this.m27960k(firebaseUser, zzafmVar, true, true);
        }

        @Override // com.google.firebase.auth.internal.zzar
        public final void zza(Status status) {
            if (status.getStatusCode() == 17011 || status.getStatusCode() == 17021 || status.getStatusCode() == 17005 || status.getStatusCode() == 17091) {
                FirebaseAuth.this.signOut();
            }
        }
    }

    @NonNull
    public final Provider<HeartBeatController> zzd() {
        return this.f35616t;
    }

    @VisibleForTesting
    public FirebaseAuth(FirebaseApp firebaseApp, zzaak zzaakVar, zzbv zzbvVar, zzcb zzcbVar, com.google.firebase.auth.internal.zza zzaVar, Provider<InteropAppCheckTokenProvider> provider, Provider<HeartBeatController> provider2, @Background Executor executor, @Blocking Executor executor2, @Lightweight Executor executor3, @UiThread Executor executor4) {
        zzafm zza;
        this.f35598b = new CopyOnWriteArrayList();
        this.f35599c = new CopyOnWriteArrayList();
        this.f35600d = new CopyOnWriteArrayList();
        this.f35604h = new Object();
        this.f35606j = new Object();
        this.f35609m = RecaptchaAction.custom("getOobCode");
        this.f35610n = RecaptchaAction.custom("signInWithPassword");
        this.f35611o = RecaptchaAction.custom("signUpPassword");
        this.f35597a = (FirebaseApp) Preconditions.checkNotNull(firebaseApp);
        this.f35601e = (zzaak) Preconditions.checkNotNull(zzaakVar);
        zzbv zzbvVar2 = (zzbv) Preconditions.checkNotNull(zzbvVar);
        this.f35612p = zzbvVar2;
        this.f35603g = new zzz();
        zzcb zzcbVar2 = (zzcb) Preconditions.checkNotNull(zzcbVar);
        this.f35613q = zzcbVar2;
        this.f35614r = (com.google.firebase.auth.internal.zza) Preconditions.checkNotNull(zzaVar);
        this.f35615s = provider;
        this.f35616t = provider2;
        this.f35618v = executor2;
        this.f35619w = executor3;
        this.f35620x = executor4;
        FirebaseUser zza2 = zzbvVar2.zza();
        this.f35602f = zza2;
        if (zza2 != null && (zza = zzbvVar2.zza(zza2)) != null) {
            m27943j(this, this.f35602f, zza, false, false);
        }
        zzcbVar2.zza(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.internal.zzbz, com.sunia.HTREnginev2.esp] */
    @NonNull
    public final Task<GetTokenResult> zza(@Nullable FirebaseUser firebaseUser, boolean z) {
        if (firebaseUser == null) {
            return Tasks.forException(zzach.zza(new Status(FirebaseError.ERROR_NO_SIGNED_IN_USER)));
        }
        zzafm zzc = firebaseUser.zzc();
        if (zzc.zzg() && !z) {
            return Tasks.forResult(zzbf.zza(zzc.zzc()));
        }
        return this.f35601e.zza(this.f35597a, firebaseUser, zzc.zzd(), (zzbz) new esp(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<Void> zzb(@NonNull FirebaseUser firebaseUser) {
        return m27956c(firebaseUser, new C6432b());
    }

    @NonNull
    public final Task<AuthResult> zzb(@NonNull Activity activity, @NonNull FederatedAuthProvider federatedAuthProvider, @NonNull FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(federatedAuthProvider);
        Preconditions.checkNotNull(firebaseUser);
        TaskCompletionSource<AuthResult> taskCompletionSource = new TaskCompletionSource<>();
        if (!this.f35613q.zza(activity, taskCompletionSource, this, firebaseUser)) {
            return Tasks.forException(zzach.zza(new Status(17057)));
        }
        zzbi.zza(activity.getApplicationContext(), this, firebaseUser);
        federatedAuthProvider.zzb(activity);
        return taskCompletionSource.getTask();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<Void> zzc(@NonNull FirebaseUser firebaseUser, @NonNull String str) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zzc(this.f35597a, firebaseUser, str, new C6432b());
    }

    @NonNull
    public final Task<zzafi> zza() {
        return this.f35601e.zza();
    }

    @NonNull
    public final Task<zzafn> zza(@NonNull String str) {
        return this.f35601e.zza(this.f35607k, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<AuthResult> zza(@NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(authCredential);
        Preconditions.checkNotNull(firebaseUser);
        if (authCredential instanceof EmailAuthCredential) {
            return new C6443i(this, firebaseUser, (EmailAuthCredential) authCredential.zza()).zza(this, firebaseUser.getTenantId(), this.f35611o, "EMAIL_PASSWORD_PROVIDER");
        }
        return this.f35601e.zza(this.f35597a, firebaseUser, authCredential.zza(), (String) null, (zzbz) new C6432b());
    }

    @NonNull
    public final Provider<InteropAppCheckTokenProvider> zzc() {
        return this.f35615s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<AuthResult> zzb(@NonNull FirebaseUser firebaseUser, @NonNull String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(firebaseUser);
        return this.f35601e.zzb(this.f35597a, firebaseUser, str, new C6432b());
    }

    public final Task<AuthResult> zza(MultiFactorAssertion multiFactorAssertion, zzaj zzajVar, @Nullable FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(multiFactorAssertion);
        Preconditions.checkNotNull(zzajVar);
        if (multiFactorAssertion instanceof PhoneMultiFactorAssertion) {
            return this.f35601e.zza(this.f35597a, firebaseUser, (PhoneMultiFactorAssertion) multiFactorAssertion, Preconditions.checkNotEmpty(zzajVar.zzc()), new C6431a());
        }
        if (multiFactorAssertion instanceof TotpMultiFactorAssertion) {
            return this.f35601e.zza(this.f35597a, firebaseUser, (TotpMultiFactorAssertion) multiFactorAssertion, Preconditions.checkNotEmpty(zzajVar.zzc()), this.f35607k, new C6431a());
        }
        throw new IllegalArgumentException("multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion.");
    }

    public final synchronized zzbu zzb() {
        return this.f35608l;
    }

    @NonNull
    public final Task<Void> zza(@Nullable ActionCodeSettings actionCodeSettings, @NonNull String str) {
        Preconditions.checkNotEmpty(str);
        if (this.f35605i != null) {
            if (actionCodeSettings == null) {
                actionCodeSettings = ActionCodeSettings.zzb();
            }
            actionCodeSettings.zza(this.f35605i);
        }
        return this.f35601e.zza(this.f35597a, actionCodeSettings, str);
    }

    @NonNull
    public final Task<AuthResult> zza(@NonNull Activity activity, @NonNull FederatedAuthProvider federatedAuthProvider, @NonNull FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(federatedAuthProvider);
        Preconditions.checkNotNull(firebaseUser);
        TaskCompletionSource<AuthResult> taskCompletionSource = new TaskCompletionSource<>();
        if (!this.f35613q.zza(activity, taskCompletionSource, this, firebaseUser)) {
            return Tasks.forException(zzach.zza(new Status(17057)));
        }
        zzbi.zza(activity.getApplicationContext(), this, firebaseUser);
        federatedAuthProvider.zza(activity);
        return taskCompletionSource.getTask();
    }

    public final Task<TotpSecret> zza(zzaj zzajVar) {
        Preconditions.checkNotNull(zzajVar);
        return this.f35601e.zza(zzajVar, this.f35607k).continueWithTask(new orp(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<Void> zza(@NonNull FirebaseUser firebaseUser, @NonNull String str) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotEmpty(str);
        return this.f35601e.zza(this.f35597a, firebaseUser, str, this.f35607k, (zzbz) new C6432b()).continueWithTask(new mrp(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<Void> zza(@NonNull FirebaseUser firebaseUser, @NonNull PhoneAuthCredential phoneAuthCredential) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(phoneAuthCredential);
        return this.f35601e.zza(this.f35597a, firebaseUser, (PhoneAuthCredential) phoneAuthCredential.zza(), (zzbz) new C6432b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @NonNull
    public final Task<Void> zza(@NonNull FirebaseUser firebaseUser, @NonNull UserProfileChangeRequest userProfileChangeRequest) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(userProfileChangeRequest);
        return this.f35601e.zza(this.f35597a, firebaseUser, userProfileChangeRequest, (zzbz) new C6432b());
    }

    @NonNull
    public final Task<Void> zza(@NonNull String str, @NonNull String str2, @Nullable ActionCodeSettings actionCodeSettings) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        if (actionCodeSettings == null) {
            actionCodeSettings = ActionCodeSettings.zzb();
        }
        String str3 = this.f35605i;
        if (str3 != null) {
            actionCodeSettings.zza(str3);
        }
        return this.f35601e.zza(str, str2, actionCodeSettings);
    }

    public static void zza(@NonNull final FirebaseException firebaseException, @NonNull PhoneAuthOptions phoneAuthOptions, @NonNull String str) {
        Log.e("FirebaseAuth", "Invoking verification failure callback for phone number/uid - " + str);
        final PhoneAuthProvider.OnVerificationStateChangedCallbacks zza = zzads.zza(str, phoneAuthOptions.zze(), null);
        phoneAuthOptions.zzi().execute(new Runnable() { // from class: com.google.firebase.auth.zzj
            @Override // java.lang.Runnable
            public final void run() {
                PhoneAuthProvider.OnVerificationStateChangedCallbacks.this.onVerificationFailed(firebaseException);
            }
        });
    }

    public final synchronized void zza(zzbu zzbuVar) {
        this.f35608l = zzbuVar;
    }

    public final void zza(FirebaseUser firebaseUser, zzafm zzafmVar, boolean z) {
        m27960k(firebaseUser, zzafmVar, true, false);
    }

    public static void zza(@NonNull PhoneAuthOptions phoneAuthOptions) {
        String phoneNumber;
        String str;
        if (phoneAuthOptions.zzl()) {
            FirebaseAuth zzb = phoneAuthOptions.zzb();
            if (((zzaj) Preconditions.checkNotNull(phoneAuthOptions.zzc())).zzd()) {
                phoneNumber = Preconditions.checkNotEmpty(phoneAuthOptions.zzh());
                str = phoneNumber;
            } else {
                PhoneMultiFactorInfo phoneMultiFactorInfo = (PhoneMultiFactorInfo) Preconditions.checkNotNull(phoneAuthOptions.zzf());
                String checkNotEmpty = Preconditions.checkNotEmpty(phoneMultiFactorInfo.getUid());
                phoneNumber = phoneMultiFactorInfo.getPhoneNumber();
                str = checkNotEmpty;
            }
            if (phoneAuthOptions.zzd() == null || !zzads.zza(str, phoneAuthOptions.zze(), phoneAuthOptions.zza(), phoneAuthOptions.zzi())) {
                zzb.f35614r.zza(zzb, phoneNumber, phoneAuthOptions.zza(), zzb.m27962v(), phoneAuthOptions.zzj()).addOnCompleteListener(new C6439e(zzb, phoneAuthOptions, str));
                return;
            }
            return;
        }
        FirebaseAuth zzb2 = phoneAuthOptions.zzb();
        String checkNotEmpty2 = Preconditions.checkNotEmpty(phoneAuthOptions.zzh());
        if ((phoneAuthOptions.zzd() != null) || !zzads.zza(checkNotEmpty2, phoneAuthOptions.zze(), phoneAuthOptions.zza(), phoneAuthOptions.zzi())) {
            zzb2.f35614r.zza(zzb2, checkNotEmpty2, phoneAuthOptions.zza(), zzb2.m27962v(), phoneAuthOptions.zzj()).addOnCompleteListener(new hop(zzb2, phoneAuthOptions, checkNotEmpty2));
        }
    }

    public final void zza(@NonNull PhoneAuthOptions phoneAuthOptions, @Nullable String str, @Nullable String str2) {
        long longValue = phoneAuthOptions.zzg().longValue();
        if (longValue >= 0 && longValue <= 120) {
            String checkNotEmpty = Preconditions.checkNotEmpty(phoneAuthOptions.zzh());
            zzagd zzagdVar = new zzagd(checkNotEmpty, longValue, phoneAuthOptions.zzd() != null, this.f35605i, this.f35607k, str, str2, m27962v());
            PhoneAuthProvider.OnVerificationStateChangedCallbacks m27959h = m27959h(checkNotEmpty, phoneAuthOptions.zze());
            this.f35601e.zza(this.f35597a, zzagdVar, TextUtils.isEmpty(str) ? m27958g(phoneAuthOptions, m27959h) : m27959h, phoneAuthOptions.zza(), phoneAuthOptions.zzi());
            return;
        }
        throw new IllegalArgumentException("We only support 0-120 seconds for sms-auto-retrieval timeout");
    }
}
