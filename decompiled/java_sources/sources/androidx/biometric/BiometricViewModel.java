package androidx.biometric;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.C0343a;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.sunia.HTREnginev2.C14153nr;
import com.sunia.HTREnginev2.end;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class BiometricViewModel extends ViewModel {

    /* renamed from: J */
    @Nullable
    public MutableLiveData<Boolean> f2234J;

    /* renamed from: O */
    @Nullable
    public MutableLiveData<Boolean> f2235O;

    /* renamed from: Z */
    @Nullable
    public MutableLiveData<Boolean> f2237Z;

    /* renamed from: h */
    @Nullable
    public Executor f2238h;

    /* renamed from: i */
    @Nullable
    public BiometricPrompt.AuthenticationCallback f2239i;

    /* renamed from: j */
    @Nullable
    public WeakReference<FragmentActivity> f2240j;

    /* renamed from: k */
    @Nullable
    public BiometricPrompt.PromptInfo f2241k;

    /* renamed from: l */
    @Nullable
    public BiometricPrompt.CryptoObject f2243l;

    /* renamed from: m */
    @Nullable
    public C0343a f2244m;

    /* renamed from: n */
    @Nullable
    public end f2245n;

    /* renamed from: o */
    @Nullable
    public DialogInterface.OnClickListener f2246o;

    /* renamed from: p */
    @Nullable
    public CharSequence f2247p;

    /* renamed from: q0 */
    @Nullable
    public MutableLiveData<Integer> f2249q0;

    /* renamed from: r */
    public boolean f2250r;

    /* renamed from: s */
    public boolean f2251s;

    /* renamed from: t */
    public boolean f2252t;

    /* renamed from: t0 */
    @Nullable
    public MutableLiveData<CharSequence> f2253t0;

    /* renamed from: u */
    public boolean f2254u;

    /* renamed from: v */
    public boolean f2255v;

    /* renamed from: w */
    public boolean f2256w;

    /* renamed from: x */
    @Nullable
    public MutableLiveData<BiometricPrompt.AuthenticationResult> f2257x;

    /* renamed from: y */
    @Nullable
    public MutableLiveData<C14153nr> f2258y;

    /* renamed from: z */
    @Nullable
    public MutableLiveData<CharSequence> f2259z;

    /* renamed from: q */
    public int f2248q = 0;

    /* renamed from: Q */
    public boolean f2236Q = true;

    /* renamed from: k0 */
    public int f2242k0 = 0;

    /* renamed from: androidx.biometric.BiometricViewModel$a */
    /* loaded from: classes3.dex */
    public class C0332a extends BiometricPrompt.AuthenticationCallback {
        public C0332a() {
        }
    }

    /* renamed from: androidx.biometric.BiometricViewModel$b */
    /* loaded from: classes3.dex */
    public static final class C0333b extends C0343a.d {

        /* renamed from: a */
        @NonNull
        public final WeakReference<BiometricViewModel> f2261a;

        public C0333b(@Nullable BiometricViewModel biometricViewModel) {
            this.f2261a = new WeakReference<>(biometricViewModel);
        }

        @Override // androidx.biometric.C0343a.d
        /* renamed from: a */
        public void mo1154a(int i, @Nullable CharSequence charSequence) {
            if (this.f2261a.get() == null || this.f2261a.get().m1153z() || !this.f2261a.get().m1151x()) {
                return;
            }
            this.f2261a.get().m1108I(new C14153nr(i, charSequence));
        }

        @Override // androidx.biometric.C0343a.d
        /* renamed from: b */
        public void mo1155b() {
            if (this.f2261a.get() == null || !this.f2261a.get().m1151x()) {
                return;
            }
            this.f2261a.get().m1109J(true);
        }

        @Override // androidx.biometric.C0343a.d
        /* renamed from: c */
        public void mo1156c(@Nullable CharSequence charSequence) {
            if (this.f2261a.get() != null) {
                this.f2261a.get().m1110K(charSequence);
            }
        }

        @Override // androidx.biometric.C0343a.d
        /* renamed from: d */
        public void mo1157d(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
            if (this.f2261a.get() == null || !this.f2261a.get().m1151x()) {
                return;
            }
            if (authenticationResult.getAuthenticationType() == -1) {
                authenticationResult = new BiometricPrompt.AuthenticationResult(authenticationResult.getCryptoObject(), this.f2261a.get().m1145r());
            }
            this.f2261a.get().m1111L(authenticationResult);
        }
    }

    /* renamed from: androidx.biometric.BiometricViewModel$c */
    /* loaded from: classes3.dex */
    public static class ExecutorC0334c implements Executor {

        /* renamed from: e */
        public final Handler f2262e = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f2262e.post(runnable);
        }
    }

    /* renamed from: androidx.biometric.BiometricViewModel$d */
    /* loaded from: classes3.dex */
    public static class DialogInterfaceOnClickListenerC0335d implements DialogInterface.OnClickListener {

        /* renamed from: e */
        @NonNull
        public final WeakReference<BiometricViewModel> f2263e;

        public DialogInterfaceOnClickListenerC0335d(@Nullable BiometricViewModel biometricViewModel) {
            this.f2263e = new WeakReference<>(biometricViewModel);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.f2263e.get() != null) {
                this.f2263e.get().m1126a0(true);
            }
        }
    }

    /* renamed from: f0 */
    public static <T> void m1099f0(MutableLiveData<T> mutableLiveData, T t) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            mutableLiveData.setValue(t);
        } else {
            mutableLiveData.postValue(t);
        }
    }

    /* renamed from: A */
    public boolean m1100A() {
        return this.f2254u;
    }

    @NonNull
    /* renamed from: B */
    public LiveData<Boolean> m1101B() {
        if (this.f2237Z == null) {
            this.f2237Z = new MutableLiveData<>();
        }
        return this.f2237Z;
    }

    /* renamed from: C */
    public boolean m1102C() {
        return this.f2236Q;
    }

    /* renamed from: D */
    public boolean m1103D() {
        return this.f2255v;
    }

    @NonNull
    /* renamed from: E */
    public LiveData<Boolean> m1104E() {
        if (this.f2235O == null) {
            this.f2235O = new MutableLiveData<>();
        }
        return this.f2235O;
    }

    /* renamed from: F */
    public boolean m1105F() {
        return this.f2250r;
    }

    /* renamed from: G */
    public boolean m1106G() {
        return this.f2256w;
    }

    /* renamed from: H */
    public void m1107H() {
        this.f2239i = null;
    }

    /* renamed from: I */
    public void m1108I(@Nullable C14153nr c14153nr) {
        if (this.f2258y == null) {
            this.f2258y = new MutableLiveData<>();
        }
        m1099f0(this.f2258y, c14153nr);
    }

    /* renamed from: J */
    public void m1109J(boolean z) {
        if (this.f2234J == null) {
            this.f2234J = new MutableLiveData<>();
        }
        m1099f0(this.f2234J, Boolean.valueOf(z));
    }

    /* renamed from: K */
    public void m1110K(@Nullable CharSequence charSequence) {
        if (this.f2259z == null) {
            this.f2259z = new MutableLiveData<>();
        }
        m1099f0(this.f2259z, charSequence);
    }

    /* renamed from: L */
    public void m1111L(@Nullable BiometricPrompt.AuthenticationResult authenticationResult) {
        if (this.f2257x == null) {
            this.f2257x = new MutableLiveData<>();
        }
        m1099f0(this.f2257x, authenticationResult);
    }

    /* renamed from: M */
    public void m1112M(boolean z) {
        this.f2251s = z;
    }

    /* renamed from: N */
    public void m1113N(int i) {
        this.f2248q = i;
    }

    /* renamed from: O */
    public void m1114O(@NonNull FragmentActivity fragmentActivity) {
        this.f2240j = new WeakReference<>(fragmentActivity);
    }

    /* renamed from: P */
    public void m1115P(@NonNull BiometricPrompt.AuthenticationCallback authenticationCallback) {
        this.f2239i = authenticationCallback;
    }

    /* renamed from: Q */
    public void m1116Q(@NonNull Executor executor) {
        this.f2238h = executor;
    }

    /* renamed from: R */
    public void m1117R(boolean z) {
        this.f2252t = z;
    }

    /* renamed from: S */
    public void m1118S(@Nullable BiometricPrompt.CryptoObject cryptoObject) {
        this.f2243l = cryptoObject;
    }

    /* renamed from: T */
    public void m1119T(boolean z) {
        this.f2254u = z;
    }

    /* renamed from: U */
    public void m1120U(boolean z) {
        if (this.f2237Z == null) {
            this.f2237Z = new MutableLiveData<>();
        }
        m1099f0(this.f2237Z, Boolean.valueOf(z));
    }

    /* renamed from: V */
    public void m1121V(boolean z) {
        this.f2236Q = z;
    }

    /* renamed from: W */
    public void m1122W(@NonNull CharSequence charSequence) {
        if (this.f2253t0 == null) {
            this.f2253t0 = new MutableLiveData<>();
        }
        m1099f0(this.f2253t0, charSequence);
    }

    /* renamed from: X */
    public void m1123X(int i) {
        this.f2242k0 = i;
    }

    /* renamed from: Y */
    public void m1124Y(int i) {
        if (this.f2249q0 == null) {
            this.f2249q0 = new MutableLiveData<>();
        }
        m1099f0(this.f2249q0, Integer.valueOf(i));
    }

    /* renamed from: Z */
    public void m1125Z(boolean z) {
        this.f2255v = z;
    }

    /* renamed from: a0 */
    public void m1126a0(boolean z) {
        if (this.f2235O == null) {
            this.f2235O = new MutableLiveData<>();
        }
        m1099f0(this.f2235O, Boolean.valueOf(z));
    }

    /* renamed from: b0 */
    public void m1127b0(@Nullable CharSequence charSequence) {
        this.f2247p = charSequence;
    }

    /* renamed from: c0 */
    public void m1128c0(@Nullable BiometricPrompt.PromptInfo promptInfo) {
        this.f2241k = promptInfo;
    }

    /* renamed from: d */
    public int m1129d() {
        BiometricPrompt.PromptInfo promptInfo = this.f2241k;
        if (promptInfo != null) {
            return C0344b.m1190c(promptInfo, this.f2243l);
        }
        return 0;
    }

    /* renamed from: d0 */
    public void m1130d0(boolean z) {
        this.f2250r = z;
    }

    @NonNull
    /* renamed from: e */
    public C0343a m1131e() {
        if (this.f2244m == null) {
            this.f2244m = new C0343a(new C0333b(this));
        }
        return this.f2244m;
    }

    /* renamed from: e0 */
    public void m1132e0(boolean z) {
        this.f2256w = z;
    }

    @NonNull
    /* renamed from: f */
    public MutableLiveData<C14153nr> m1133f() {
        if (this.f2258y == null) {
            this.f2258y = new MutableLiveData<>();
        }
        return this.f2258y;
    }

    @NonNull
    /* renamed from: g */
    public LiveData<CharSequence> m1134g() {
        if (this.f2259z == null) {
            this.f2259z = new MutableLiveData<>();
        }
        return this.f2259z;
    }

    @Nullable
    public FragmentActivity getClientActivity() {
        WeakReference<FragmentActivity> weakReference = this.f2240j;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NonNull
    /* renamed from: h */
    public LiveData<BiometricPrompt.AuthenticationResult> m1135h() {
        if (this.f2257x == null) {
            this.f2257x = new MutableLiveData<>();
        }
        return this.f2257x;
    }

    /* renamed from: i */
    public int m1136i() {
        return this.f2248q;
    }

    @NonNull
    /* renamed from: j */
    public end m1137j() {
        if (this.f2245n == null) {
            this.f2245n = new end();
        }
        return this.f2245n;
    }

    @NonNull
    /* renamed from: k */
    public BiometricPrompt.AuthenticationCallback m1138k() {
        if (this.f2239i == null) {
            this.f2239i = new C0332a();
        }
        return this.f2239i;
    }

    @NonNull
    /* renamed from: l */
    public Executor m1139l() {
        Executor executor = this.f2238h;
        return executor != null ? executor : new ExecutorC0334c();
    }

    @Nullable
    /* renamed from: m */
    public BiometricPrompt.CryptoObject m1140m() {
        return this.f2243l;
    }

    @Nullable
    /* renamed from: n */
    public CharSequence m1141n() {
        BiometricPrompt.PromptInfo promptInfo = this.f2241k;
        if (promptInfo != null) {
            return promptInfo.getDescription();
        }
        return null;
    }

    @NonNull
    /* renamed from: o */
    public LiveData<CharSequence> m1142o() {
        if (this.f2253t0 == null) {
            this.f2253t0 = new MutableLiveData<>();
        }
        return this.f2253t0;
    }

    /* renamed from: p */
    public int m1143p() {
        return this.f2242k0;
    }

    @NonNull
    /* renamed from: q */
    public LiveData<Integer> m1144q() {
        if (this.f2249q0 == null) {
            this.f2249q0 = new MutableLiveData<>();
        }
        return this.f2249q0;
    }

    /* renamed from: r */
    public int m1145r() {
        int m1129d = m1129d();
        return (!C0344b.m1192e(m1129d) || C0344b.m1191d(m1129d)) ? -1 : 2;
    }

    @NonNull
    /* renamed from: s */
    public DialogInterface.OnClickListener m1146s() {
        if (this.f2246o == null) {
            this.f2246o = new DialogInterfaceOnClickListenerC0335d(this);
        }
        return this.f2246o;
    }

    @Nullable
    /* renamed from: t */
    public CharSequence m1147t() {
        CharSequence charSequence = this.f2247p;
        if (charSequence != null) {
            return charSequence;
        }
        BiometricPrompt.PromptInfo promptInfo = this.f2241k;
        if (promptInfo != null) {
            return promptInfo.getNegativeButtonText();
        }
        return null;
    }

    @Nullable
    /* renamed from: u */
    public CharSequence m1148u() {
        BiometricPrompt.PromptInfo promptInfo = this.f2241k;
        if (promptInfo != null) {
            return promptInfo.getSubtitle();
        }
        return null;
    }

    @Nullable
    /* renamed from: v */
    public CharSequence m1149v() {
        BiometricPrompt.PromptInfo promptInfo = this.f2241k;
        if (promptInfo != null) {
            return promptInfo.getTitle();
        }
        return null;
    }

    @NonNull
    /* renamed from: w */
    public LiveData<Boolean> m1150w() {
        if (this.f2234J == null) {
            this.f2234J = new MutableLiveData<>();
        }
        return this.f2234J;
    }

    /* renamed from: x */
    public boolean m1151x() {
        return this.f2251s;
    }

    /* renamed from: y */
    public boolean m1152y() {
        BiometricPrompt.PromptInfo promptInfo = this.f2241k;
        return promptInfo == null || promptInfo.isConfirmationRequired();
    }

    /* renamed from: z */
    public boolean m1153z() {
        return this.f2252t;
    }
}
