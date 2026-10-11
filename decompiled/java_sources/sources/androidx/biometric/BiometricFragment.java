package androidx.biometric;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.hardware.biometrics.BiometricPrompt;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.biometric.BiometricFragment;
import androidx.biometric.BiometricPrompt;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import com.sunia.HTREnginev2.C14153nr;
import com.sunia.HTREnginev2.kui;
import com.sunia.HTREnginev2.srk;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class BiometricFragment extends Fragment {

    /* renamed from: e1 */
    public static final String f2171e1 = "BiometricFragment";

    /* renamed from: f1 */
    public static final String f2172f1 = "host_activity";

    /* renamed from: g1 */
    public static final String f2173g1 = "has_fingerprint";

    /* renamed from: h1 */
    public static final String f2174h1 = "has_face";

    /* renamed from: i1 */
    public static final String f2175i1 = "has_iris";

    /* renamed from: j1 */
    public static final int f2176j1 = 0;

    /* renamed from: k1 */
    public static final int f2177k1 = 1;

    /* renamed from: l1 */
    public static final int f2178l1 = 2;

    /* renamed from: m1 */
    public static final int f2179m1 = 3;

    /* renamed from: n1 */
    public static final String f2180n1 = "androidx.biometric.FingerprintDialogFragment";

    /* renamed from: o1 */
    public static final int f2181o1 = 500;

    /* renamed from: p1 */
    public static final int f2182p1 = 2000;

    /* renamed from: q1 */
    public static final int f2183q1 = 600;

    /* renamed from: r1 */
    public static final int f2184r1 = 1;

    /* renamed from: c1 */
    @Nullable
    public BiometricViewModel f2185c1;

    /* renamed from: d1 */
    @NonNull
    public Handler f2186d1 = new Handler(Looper.getMainLooper());

    @RequiresApi(21)
    /* renamed from: androidx.biometric.BiometricFragment$a */
    /* loaded from: classes3.dex */
    public static class C0318a {
        private C0318a() {
        }

        @Nullable
        /* renamed from: a */
        public static Intent m1056a(@NonNull KeyguardManager keyguardManager, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
            return keyguardManager.createConfirmDeviceCredentialIntent(charSequence, charSequence2);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.biometric.BiometricFragment$b */
    /* loaded from: classes3.dex */
    public static class C0319b {
        private C0319b() {
        }

        /* renamed from: a */
        public static void m1057a(@NonNull android.hardware.biometrics.BiometricPrompt biometricPrompt, @NonNull BiometricPrompt.CryptoObject cryptoObject, @NonNull CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull BiometricPrompt.AuthenticationCallback authenticationCallback) {
            biometricPrompt.authenticate(cryptoObject, cancellationSignal, executor, authenticationCallback);
        }

        /* renamed from: b */
        public static void m1058b(@NonNull android.hardware.biometrics.BiometricPrompt biometricPrompt, @NonNull CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull BiometricPrompt.AuthenticationCallback authenticationCallback) {
            biometricPrompt.authenticate(cancellationSignal, executor, authenticationCallback);
        }

        @NonNull
        /* renamed from: c */
        public static android.hardware.biometrics.BiometricPrompt m1059c(@NonNull BiometricPrompt.Builder builder) {
            return builder.build();
        }

        @NonNull
        /* renamed from: d */
        public static BiometricPrompt.Builder m1060d(@NonNull Context context) {
            return new BiometricPrompt.Builder(context);
        }

        /* renamed from: e */
        public static void m1061e(@NonNull BiometricPrompt.Builder builder, @NonNull CharSequence charSequence) {
            builder.setDescription(charSequence);
        }

        /* renamed from: f */
        public static void m1062f(@NonNull BiometricPrompt.Builder builder, @NonNull CharSequence charSequence, @NonNull Executor executor, @NonNull DialogInterface.OnClickListener onClickListener) {
            builder.setNegativeButton(charSequence, executor, onClickListener);
        }

        /* renamed from: g */
        public static void m1063g(@NonNull BiometricPrompt.Builder builder, @NonNull CharSequence charSequence) {
            builder.setSubtitle(charSequence);
        }

        /* renamed from: h */
        public static void m1064h(@NonNull BiometricPrompt.Builder builder, @NonNull CharSequence charSequence) {
            builder.setTitle(charSequence);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.biometric.BiometricFragment$c */
    /* loaded from: classes3.dex */
    public static class C0320c {
        private C0320c() {
        }

        /* renamed from: a */
        public static void m1065a(@NonNull BiometricPrompt.Builder builder, boolean z) {
            builder.setConfirmationRequired(z);
        }

        /* renamed from: b */
        public static void m1066b(@NonNull BiometricPrompt.Builder builder, boolean z) {
            builder.setDeviceCredentialAllowed(z);
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.biometric.BiometricFragment$d */
    /* loaded from: classes3.dex */
    public static class C0321d {
        private C0321d() {
        }

        /* renamed from: a */
        public static void m1067a(@NonNull BiometricPrompt.Builder builder, int i) {
            builder.setAllowedAuthenticators(i);
        }
    }

    /* renamed from: androidx.biometric.BiometricFragment$e */
    /* loaded from: classes3.dex */
    public static class ExecutorC0322e implements Executor {

        /* renamed from: e */
        public final Handler f2187e = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f2187e.post(runnable);
        }
    }

    /* renamed from: androidx.biometric.BiometricFragment$f */
    /* loaded from: classes3.dex */
    public static class RunnableC0323f implements Runnable {

        /* renamed from: e */
        @NonNull
        public final WeakReference<BiometricFragment> f2188e;

        public RunnableC0323f(@Nullable BiometricFragment biometricFragment) {
            this.f2188e = new WeakReference<>(biometricFragment);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2188e.get() != null) {
                this.f2188e.get().m1051s1();
            }
        }
    }

    /* renamed from: androidx.biometric.BiometricFragment$g */
    /* loaded from: classes3.dex */
    public static class RunnableC0324g implements Runnable {

        /* renamed from: e */
        @NonNull
        public final WeakReference<BiometricViewModel> f2189e;

        public RunnableC0324g(@Nullable BiometricViewModel biometricViewModel) {
            this.f2189e = new WeakReference<>(biometricViewModel);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2189e.get() != null) {
                this.f2189e.get().m1119T(false);
            }
        }
    }

    /* renamed from: androidx.biometric.BiometricFragment$h */
    /* loaded from: classes3.dex */
    public static class RunnableC0325h implements Runnable {

        /* renamed from: e */
        @NonNull
        public final WeakReference<BiometricViewModel> f2190e;

        public RunnableC0325h(@Nullable BiometricViewModel biometricViewModel) {
            this.f2190e = new WeakReference<>(biometricViewModel);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2190e.get() != null) {
                this.f2190e.get().m1125Z(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q0 */
    public /* synthetic */ void m995Q0(BiometricPrompt.AuthenticationResult authenticationResult) {
        if (authenticationResult != null) {
            m1040h1(authenticationResult);
            this.f2185c1.m1111L(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R0 */
    public /* synthetic */ void m996R0(C14153nr c14153nr) {
        if (c14153nr != null) {
            m1037e1(c14153nr.m55788b(), c14153nr.m55789c());
            this.f2185c1.m1108I(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S0 */
    public /* synthetic */ void m997S0(CharSequence charSequence) {
        if (charSequence != null) {
            m1039g1(charSequence);
            this.f2185c1.m1108I(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T0 */
    public /* synthetic */ void m998T0(Boolean bool) {
        if (bool.booleanValue()) {
            m1038f1();
            this.f2185c1.m1109J(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U0 */
    public /* synthetic */ void m999U0(Boolean bool) {
        if (bool.booleanValue()) {
            if (m1034O0()) {
                m1042j1();
            } else {
                m1041i1();
            }
            this.f2185c1.m1126a0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V0 */
    public /* synthetic */ void m1000V0(Boolean bool) {
        if (bool.booleanValue()) {
            m1055y0(1);
            dismiss();
            this.f2185c1.m1120U(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X0 */
    public /* synthetic */ void m1002X0(int i, CharSequence charSequence) {
        this.f2185c1.m1138k().onAuthenticationError(i, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y0 */
    public /* synthetic */ void m1003Y0() {
        this.f2185c1.m1138k().onAuthenticationFailed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z0 */
    public /* synthetic */ void m1004Z0(BiometricPrompt.AuthenticationResult authenticationResult) {
        this.f2185c1.m1138k().onAuthenticationSucceeded(authenticationResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a1 */
    public /* synthetic */ void m1005a1() {
        this.f2185c1.m1121V(false);
    }

    @VisibleForTesting
    /* renamed from: c1 */
    public static BiometricFragment m1006c1(@NonNull Handler handler, @NonNull BiometricViewModel biometricViewModel, boolean z, boolean z2, boolean z3, boolean z4) {
        BiometricFragment biometricFragment = new BiometricFragment();
        Bundle bundle = new Bundle();
        biometricFragment.f2186d1 = handler;
        biometricFragment.f2185c1 = biometricViewModel;
        bundle.putBoolean("host_activity", z);
        bundle.putBoolean(f2173g1, z2);
        bundle.putBoolean(f2174h1, z3);
        bundle.putBoolean(f2175i1, z4);
        biometricFragment.setArguments(bundle);
        return biometricFragment;
    }

    /* renamed from: d1 */
    public static BiometricFragment m1007d1(boolean z) {
        BiometricFragment biometricFragment = new BiometricFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("host_activity", z);
        biometricFragment.setArguments(bundle);
        return biometricFragment;
    }

    /* renamed from: z0 */
    public static int m1019z0(FingerprintManagerCompat fingerprintManagerCompat) {
        if (fingerprintManagerCompat.isHardwareDetected()) {
            return !fingerprintManagerCompat.hasEnrolledFingerprints() ? 11 : 0;
        }
        return 12;
    }

    /* renamed from: A0 */
    public final void m1020A0() {
        this.f2185c1.m1114O(getActivity());
        this.f2185c1.m1135h().observe(this, new Observer() { // from class: com.sunia.HTREnginev2.tr
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BiometricFragment.this.m995Q0((BiometricPrompt.AuthenticationResult) obj);
            }
        });
        this.f2185c1.m1133f().observe(this, new Observer() { // from class: com.sunia.HTREnginev2.ur
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BiometricFragment.this.m996R0((C14153nr) obj);
            }
        });
        this.f2185c1.m1134g().observe(this, new Observer() { // from class: com.sunia.HTREnginev2.vr
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BiometricFragment.this.m997S0((CharSequence) obj);
            }
        });
        this.f2185c1.m1150w().observe(this, new Observer() { // from class: com.sunia.HTREnginev2.wr
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BiometricFragment.this.m998T0((Boolean) obj);
            }
        });
        this.f2185c1.m1104E().observe(this, new Observer() { // from class: com.sunia.HTREnginev2.xr
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BiometricFragment.this.m999U0((Boolean) obj);
            }
        });
        this.f2185c1.m1101B().observe(this, new Observer() { // from class: com.sunia.HTREnginev2.yr
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BiometricFragment.this.m1000V0((Boolean) obj);
            }
        });
    }

    /* renamed from: B0 */
    public final void m1021B0() {
        this.f2185c1.m1130d0(false);
        if (isAdded()) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            FingerprintDialogFragment fingerprintDialogFragment = (FingerprintDialogFragment) parentFragmentManager.findFragmentByTag(f2180n1);
            if (fingerprintDialogFragment != null) {
                if (fingerprintDialogFragment.isAdded()) {
                    fingerprintDialogFragment.dismissAllowingStateLoss();
                } else {
                    parentFragmentManager.beginTransaction().remove(fingerprintDialogFragment).commitAllowingStateLoss();
                }
            }
        }
    }

    /* renamed from: C0 */
    public final int m1022C0() {
        Context context = getContext();
        return (context == null || !C0346d.m1220f(context, Build.MODEL)) ? 2000 : 0;
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: D0 */
    public BiometricViewModel m1023D0() {
        return this.f2185c1;
    }

    /* renamed from: E0 */
    public final void m1024E0(int i) {
        int i2 = -1;
        if (i != -1) {
            m1001W0(10, getString(C0342R.string.generic_error_user_canceled));
            return;
        }
        if (this.f2185c1.m1106G()) {
            this.f2185c1.m1132e0(false);
        } else {
            i2 = 1;
        }
        m1046n1(new BiometricPrompt.AuthenticationResult(null, i2));
    }

    /* renamed from: F0 */
    public final boolean m1025F0() {
        return getArguments().getBoolean(f2174h1, srk.m57248a(getContext()));
    }

    /* renamed from: G0 */
    public final boolean m1026G0() {
        return getArguments().getBoolean(f2173g1, srk.m57249b(getContext()));
    }

    /* renamed from: H0 */
    public final boolean m1027H0() {
        return getArguments().getBoolean(f2175i1, srk.m57250c(getContext()));
    }

    /* renamed from: I0 */
    public final boolean m1028I0() {
        FragmentActivity activity = getActivity();
        return activity != null && activity.isChangingConfigurations();
    }

    /* renamed from: J0 */
    public final boolean m1029J0() {
        Context context = getContext();
        return (context == null || this.f2185c1.m1140m() == null || !C0346d.m1221g(context, Build.MANUFACTURER, Build.MODEL)) ? false : true;
    }

    /* renamed from: K0 */
    public final boolean m1030K0() {
        return false;
    }

    /* renamed from: L0 */
    public final boolean m1031L0() {
        return getArguments().getBoolean("host_activity", true);
    }

    /* renamed from: M0 */
    public final boolean m1032M0() {
        Context context = getContext();
        if (context == null || !C0346d.m1222h(context, Build.MANUFACTURER)) {
            return false;
        }
        int m1129d = this.f2185c1.m1129d();
        if (!C0344b.m1194g(m1129d) || !C0344b.m1191d(m1129d)) {
            return false;
        }
        this.f2185c1.m1132e0(true);
        return true;
    }

    /* renamed from: N0 */
    public final boolean m1033N0() {
        Context context = getContext();
        if (Build.VERSION.SDK_INT != 29 || m1026G0() || m1025F0() || m1027H0()) {
            return m1034O0() && BiometricManager.from(context).canAuthenticate(255) != 0;
        }
        return true;
    }

    /* renamed from: O0 */
    public boolean m1034O0() {
        return false;
    }

    /* renamed from: P0 */
    public final boolean m1035P0() {
        return m1029J0() || m1030K0();
    }

    @RequiresApi(21)
    /* renamed from: b1 */
    public final void m1036b1() {
        Context context = getContext();
        KeyguardManager m55321a = context != null ? kui.m55321a(context) : null;
        if (m55321a == null) {
            m1001W0(12, getString(C0342R.string.generic_error_no_keyguard));
            return;
        }
        CharSequence m1149v = this.f2185c1.m1149v();
        CharSequence m1148u = this.f2185c1.m1148u();
        CharSequence m1141n = this.f2185c1.m1141n();
        if (m1148u == null) {
            m1148u = m1141n;
        }
        Intent m1056a = C0318a.m1056a(m55321a, m1149v, m1148u);
        if (m1056a == null) {
            m1001W0(14, getString(C0342R.string.generic_error_no_device_credential));
            return;
        }
        this.f2185c1.m1117R(true);
        if (m1035P0()) {
            m1021B0();
        }
        m1056a.setFlags(134742016);
        startActivityForResult(m1056a, 1);
    }

    public void dismiss() {
        m1021B0();
        this.f2185c1.m1130d0(false);
        if (!this.f2185c1.m1153z() && isAdded()) {
            getParentFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
        Context context = getContext();
        if (context == null || !C0346d.m1219e(context, Build.MODEL)) {
            return;
        }
        this.f2185c1.m1119T(true);
        this.f2186d1.postDelayed(new RunnableC0324g(this.f2185c1), 600L);
    }

    @VisibleForTesting
    /* renamed from: e1 */
    public void m1037e1(final int i, @Nullable final CharSequence charSequence) {
        if (!C0347e.m1224b(i)) {
            i = 8;
        }
        getContext();
        if (!m1035P0()) {
            if (charSequence == null) {
                charSequence = getString(C0342R.string.default_error_msg) + " " + i;
            }
            m1001W0(i, charSequence);
            return;
        }
        if (charSequence == null) {
            charSequence = C0347e.m1223a(getContext(), i);
        }
        if (i == 5) {
            int m1136i = this.f2185c1.m1136i();
            if (m1136i == 0 || m1136i == 3) {
                m1044l1(i, charSequence);
            }
            dismiss();
            return;
        }
        if (this.f2185c1.m1102C()) {
            m1001W0(i, charSequence);
        } else {
            m1050r1(charSequence);
            this.f2186d1.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.or
                @Override // java.lang.Runnable
                public final void run() {
                    BiometricFragment.this.m1001W0(i, charSequence);
                }
            }, m1022C0());
        }
        this.f2185c1.m1121V(true);
    }

    /* renamed from: f1 */
    public void m1038f1() {
        if (m1035P0()) {
            m1050r1(getString(C0342R.string.fingerprint_not_recognized));
        }
        m1045m1();
    }

    /* renamed from: g1 */
    public void m1039g1(@NonNull CharSequence charSequence) {
        if (m1035P0()) {
            m1050r1(charSequence);
        }
    }

    @VisibleForTesting
    /* renamed from: h1 */
    public void m1040h1(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
        m1046n1(authenticationResult);
    }

    /* renamed from: i1 */
    public void m1041i1() {
        CharSequence m1147t = this.f2185c1.m1147t();
        if (m1147t == null) {
            m1147t = getString(C0342R.string.default_error_msg);
        }
        m1001W0(13, m1147t);
        m1055y0(2);
    }

    /* renamed from: j1 */
    public void m1042j1() {
        m1036b1();
    }

    /* renamed from: k1, reason: merged with bridge method [inline-methods] */
    public void m1001W0(int i, @NonNull CharSequence charSequence) {
        m1044l1(i, charSequence);
        dismiss();
    }

    /* renamed from: l1 */
    public final void m1044l1(final int i, @NonNull final CharSequence charSequence) {
        if (this.f2185c1.m1153z()) {
            Log.v(f2171e1, "Error not sent to client. User is confirming their device credential.");
        } else if (!this.f2185c1.m1151x()) {
            Log.w(f2171e1, "Error not sent to client. Client is not awaiting a result.");
        } else {
            this.f2185c1.m1112M(false);
            this.f2185c1.m1139l().execute(new Runnable() { // from class: com.sunia.HTREnginev2.rr
                @Override // java.lang.Runnable
                public final void run() {
                    BiometricFragment.this.m1002X0(i, charSequence);
                }
            });
        }
    }

    /* renamed from: m1 */
    public final void m1045m1() {
        if (this.f2185c1.m1151x()) {
            this.f2185c1.m1139l().execute(new Runnable() { // from class: com.sunia.HTREnginev2.pr
                @Override // java.lang.Runnable
                public final void run() {
                    BiometricFragment.this.m1003Y0();
                }
            });
        } else {
            Log.w(f2171e1, "Failure not sent to client. Client is not awaiting a result.");
        }
    }

    /* renamed from: n1 */
    public final void m1046n1(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
        m1047o1(authenticationResult);
        dismiss();
    }

    /* renamed from: o1 */
    public final void m1047o1(@NonNull final BiometricPrompt.AuthenticationResult authenticationResult) {
        if (!this.f2185c1.m1151x()) {
            Log.w(f2171e1, "Success not sent to client. Client is not awaiting a result.");
        } else {
            this.f2185c1.m1112M(false);
            this.f2185c1.m1139l().execute(new Runnable() { // from class: com.sunia.HTREnginev2.sr
                @Override // java.lang.Runnable
                public final void run() {
                    BiometricFragment.this.m1004Z0(authenticationResult);
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            this.f2185c1.m1117R(false);
            m1024E0(i2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (this.f2185c1 == null) {
            this.f2185c1 = BiometricPrompt.m1095e(this, m1031L0());
        }
        m1020A0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (Build.VERSION.SDK_INT == 29 && C0344b.m1191d(this.f2185c1.m1129d())) {
            this.f2185c1.m1125Z(true);
            this.f2186d1.postDelayed(new RunnableC0325h(this.f2185c1), 250L);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @RequiresApi(28)
    /* renamed from: p1 */
    public final void m1048p1() {
        BiometricPrompt.Builder m1060d = C0319b.m1060d(requireContext().getApplicationContext());
        CharSequence m1149v = this.f2185c1.m1149v();
        CharSequence m1148u = this.f2185c1.m1148u();
        CharSequence m1141n = this.f2185c1.m1141n();
        if (m1149v != null) {
            C0319b.m1064h(m1060d, m1149v);
        }
        if (m1148u != null) {
            C0319b.m1063g(m1060d, m1148u);
        }
        if (m1141n != null) {
            C0319b.m1061e(m1060d, m1141n);
        }
        CharSequence m1147t = this.f2185c1.m1147t();
        if (!TextUtils.isEmpty(m1147t)) {
            C0319b.m1062f(m1060d, m1147t, this.f2185c1.m1139l(), this.f2185c1.m1146s());
        }
        int i = Build.VERSION.SDK_INT;
        C0320c.m1065a(m1060d, this.f2185c1.m1152y());
        int m1129d = this.f2185c1.m1129d();
        if (i >= 30) {
            C0321d.m1067a(m1060d, m1129d);
        } else {
            C0320c.m1066b(m1060d, C0344b.m1191d(m1129d));
        }
        m1053w0(C0319b.m1059c(m1060d), getContext());
    }

    /* renamed from: q1 */
    public final void m1049q1() {
        Context applicationContext = requireContext().getApplicationContext();
        FingerprintManagerCompat from = FingerprintManagerCompat.from(applicationContext);
        int m1019z0 = m1019z0(from);
        if (m1019z0 != 0) {
            m1001W0(m1019z0, C0347e.m1223a(applicationContext, m1019z0));
            return;
        }
        if (isAdded()) {
            this.f2185c1.m1121V(true);
            if (!C0346d.m1220f(applicationContext, Build.MODEL)) {
                this.f2186d1.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.qr
                    @Override // java.lang.Runnable
                    public final void run() {
                        BiometricFragment.this.m1005a1();
                    }
                }, 500L);
                FingerprintDialogFragment.m1158v0(m1031L0()).show(getParentFragmentManager(), f2180n1);
            }
            this.f2185c1.m1113N(0);
            m1054x0(from, applicationContext);
        }
    }

    /* renamed from: r1 */
    public final void m1050r1(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = getString(C0342R.string.default_error_msg);
        }
        this.f2185c1.m1124Y(2);
        this.f2185c1.m1122W(charSequence);
    }

    /* renamed from: s1 */
    public void m1051s1() {
        if (this.f2185c1.m1105F()) {
            return;
        }
        if (getContext() == null) {
            Log.w(f2171e1, "Not showing biometric prompt. Context is null.");
            return;
        }
        this.f2185c1.m1130d0(true);
        this.f2185c1.m1112M(true);
        if (m1032M0()) {
            m1036b1();
        } else if (m1035P0()) {
            m1049q1();
        } else {
            m1048p1();
        }
    }

    /* renamed from: v0 */
    public void m1052v0(@NonNull BiometricPrompt.PromptInfo promptInfo, @Nullable BiometricPrompt.CryptoObject cryptoObject) {
        this.f2185c1.m1128c0(promptInfo);
        int m1190c = C0344b.m1190c(promptInfo, cryptoObject);
        if (Build.VERSION.SDK_INT < 30 && m1190c == 15 && cryptoObject == null) {
            this.f2185c1.m1118S(C0345c.m1195a());
        } else {
            this.f2185c1.m1118S(cryptoObject);
        }
        if (m1034O0()) {
            this.f2185c1.m1127b0(getString(C0342R.string.confirm_device_credential_password));
        } else {
            this.f2185c1.m1127b0(null);
        }
        if (m1033N0()) {
            this.f2185c1.m1112M(true);
            m1036b1();
        } else if (this.f2185c1.m1100A()) {
            this.f2186d1.postDelayed(new RunnableC0323f(this), 600L);
        } else {
            m1051s1();
        }
    }

    @RequiresApi(28)
    @VisibleForTesting
    /* renamed from: w0 */
    public void m1053w0(@NonNull android.hardware.biometrics.BiometricPrompt biometricPrompt, @Nullable Context context) {
        BiometricPrompt.CryptoObject m1198d = C0345c.m1198d(this.f2185c1.m1140m());
        CancellationSignal m53982b = this.f2185c1.m1137j().m53982b();
        ExecutorC0322e executorC0322e = new ExecutorC0322e();
        BiometricPrompt.AuthenticationCallback m1172a = this.f2185c1.m1131e().m1172a();
        try {
            if (m1198d == null) {
                C0319b.m1058b(biometricPrompt, m53982b, executorC0322e, m1172a);
            } else {
                C0319b.m1057a(biometricPrompt, m1198d, m53982b, executorC0322e, m1172a);
            }
        } catch (NullPointerException e) {
            Log.e(f2171e1, "Got NPE while authenticating with biometric prompt.", e);
            m1001W0(1, context != null ? context.getString(C0342R.string.default_error_msg) : "");
        }
    }

    @VisibleForTesting
    /* renamed from: x0 */
    public void m1054x0(@NonNull FingerprintManagerCompat fingerprintManagerCompat, @NonNull Context context) {
        try {
            fingerprintManagerCompat.authenticate(C0345c.m1199e(this.f2185c1.m1140m()), 0, this.f2185c1.m1137j().m53983c(), this.f2185c1.m1131e().m1173b(), (Handler) null);
        } catch (NullPointerException e) {
            Log.e(f2171e1, "Got NPE while authenticating with fingerprint.", e);
            m1001W0(1, C0347e.m1223a(context, 1));
        }
    }

    /* renamed from: y0 */
    public void m1055y0(int i) {
        if (i == 3 || !this.f2185c1.m1103D()) {
            if (m1035P0()) {
                this.f2185c1.m1113N(i);
                if (i == 1) {
                    m1044l1(10, C0347e.m1223a(getContext(), 10));
                }
            }
            this.f2185c1.m1137j().m53981a();
        }
    }
}
