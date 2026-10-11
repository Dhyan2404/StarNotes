package androidx.biometric;

import android.annotation.SuppressLint;
import android.os.Build;
import android.security.identity.IdentityCredential;
import android.security.identity.PresentationSession;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.security.Signature;
import java.util.concurrent.Executor;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* loaded from: classes3.dex */
public class BiometricPrompt {
    public static final int AUTHENTICATION_RESULT_TYPE_BIOMETRIC = 2;
    public static final int AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL = 1;
    public static final int AUTHENTICATION_RESULT_TYPE_UNKNOWN = -1;
    public static final int ERROR_CANCELED = 5;
    public static final int ERROR_HW_NOT_PRESENT = 12;
    public static final int ERROR_HW_UNAVAILABLE = 1;
    public static final int ERROR_LOCKOUT = 7;
    public static final int ERROR_LOCKOUT_PERMANENT = 9;
    public static final int ERROR_NEGATIVE_BUTTON = 13;
    public static final int ERROR_NO_BIOMETRICS = 11;
    public static final int ERROR_NO_DEVICE_CREDENTIAL = 14;
    public static final int ERROR_NO_SPACE = 4;
    public static final int ERROR_SECURITY_UPDATE_REQUIRED = 15;
    public static final int ERROR_TIMEOUT = 3;
    public static final int ERROR_UNABLE_TO_PROCESS = 2;
    public static final int ERROR_USER_CANCELED = 10;
    public static final int ERROR_VENDOR = 8;

    /* renamed from: c */
    public static final String f2207c = "BiometricPromptCompat";

    /* renamed from: d */
    public static final int f2208d = 0;

    /* renamed from: e */
    @VisibleForTesting
    public static final String f2209e = "androidx.biometric.BiometricFragment";

    /* renamed from: a */
    @Nullable
    public FragmentManager f2210a;

    /* renamed from: b */
    public boolean f2211b;

    /* loaded from: classes3.dex */
    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int i, @NonNull CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationSucceeded(@NonNull AuthenticationResult authenticationResult) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface AuthenticationError {
    }

    /* loaded from: classes3.dex */
    public static class AuthenticationResult {

        /* renamed from: a */
        public final CryptoObject f2212a;

        /* renamed from: b */
        public final int f2213b;

        public AuthenticationResult(CryptoObject cryptoObject, int i) {
            this.f2212a = cryptoObject;
            this.f2213b = i;
        }

        public int getAuthenticationType() {
            return this.f2213b;
        }

        @Nullable
        public CryptoObject getCryptoObject() {
            return this.f2212a;
        }
    }

    /* loaded from: classes3.dex */
    public static class PromptInfo {

        /* renamed from: a */
        @NonNull
        public final CharSequence f2219a;

        /* renamed from: b */
        @Nullable
        public final CharSequence f2220b;

        /* renamed from: c */
        @Nullable
        public final CharSequence f2221c;

        /* renamed from: d */
        @Nullable
        public final CharSequence f2222d;

        /* renamed from: e */
        public final boolean f2223e;

        /* renamed from: f */
        public final boolean f2224f;

        /* renamed from: g */
        public final int f2225g;

        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: a */
            @Nullable
            public CharSequence f2226a = null;

            /* renamed from: b */
            @Nullable
            public CharSequence f2227b = null;

            /* renamed from: c */
            @Nullable
            public CharSequence f2228c = null;

            /* renamed from: d */
            @Nullable
            public CharSequence f2229d = null;

            /* renamed from: e */
            public boolean f2230e = true;

            /* renamed from: f */
            public boolean f2231f = false;

            /* renamed from: g */
            public int f2232g = 0;

            @NonNull
            public PromptInfo build() {
                if (TextUtils.isEmpty(this.f2226a)) {
                    throw new IllegalArgumentException("Title must be set and non-empty.");
                }
                if (!C0344b.m1193f(this.f2232g)) {
                    throw new IllegalArgumentException("Authenticator combination is unsupported on API " + Build.VERSION.SDK_INT + ": " + C0344b.m1188a(this.f2232g));
                }
                int i = this.f2232g;
                boolean m1191d = i != 0 ? C0344b.m1191d(i) : this.f2231f;
                if (TextUtils.isEmpty(this.f2229d) && !m1191d) {
                    throw new IllegalArgumentException("Negative text must be set and non-empty.");
                }
                if (TextUtils.isEmpty(this.f2229d) || !m1191d) {
                    return new PromptInfo(this.f2226a, this.f2227b, this.f2228c, this.f2229d, this.f2230e, this.f2231f, this.f2232g);
                }
                throw new IllegalArgumentException("Negative text must not be set if device credential authentication is allowed.");
            }

            @NonNull
            public Builder setAllowedAuthenticators(int i) {
                this.f2232g = i;
                return this;
            }

            @NonNull
            public Builder setConfirmationRequired(boolean z) {
                this.f2230e = z;
                return this;
            }

            @NonNull
            public Builder setDescription(@Nullable CharSequence charSequence) {
                this.f2228c = charSequence;
                return this;
            }

            @NonNull
            @Deprecated
            public Builder setDeviceCredentialAllowed(boolean z) {
                this.f2231f = z;
                return this;
            }

            @NonNull
            public Builder setNegativeButtonText(@NonNull CharSequence charSequence) {
                this.f2229d = charSequence;
                return this;
            }

            @NonNull
            public Builder setSubtitle(@Nullable CharSequence charSequence) {
                this.f2227b = charSequence;
                return this;
            }

            @NonNull
            public Builder setTitle(@NonNull CharSequence charSequence) {
                this.f2226a = charSequence;
                return this;
            }
        }

        public PromptInfo(@NonNull CharSequence charSequence, @Nullable CharSequence charSequence2, @Nullable CharSequence charSequence3, @Nullable CharSequence charSequence4, boolean z, boolean z2, int i) {
            this.f2219a = charSequence;
            this.f2220b = charSequence2;
            this.f2221c = charSequence3;
            this.f2222d = charSequence4;
            this.f2223e = z;
            this.f2224f = z2;
            this.f2225g = i;
        }

        public int getAllowedAuthenticators() {
            return this.f2225g;
        }

        @Nullable
        public CharSequence getDescription() {
            return this.f2221c;
        }

        @NonNull
        public CharSequence getNegativeButtonText() {
            CharSequence charSequence = this.f2222d;
            return charSequence != null ? charSequence : "";
        }

        @Nullable
        public CharSequence getSubtitle() {
            return this.f2220b;
        }

        @NonNull
        public CharSequence getTitle() {
            return this.f2219a;
        }

        public boolean isConfirmationRequired() {
            return this.f2223e;
        }

        @Deprecated
        public boolean isDeviceCredentialAllowed() {
            return this.f2224f;
        }
    }

    /* loaded from: classes3.dex */
    public static class ResetCallbackObserver implements DefaultLifecycleObserver {

        /* renamed from: e */
        @NonNull
        public final WeakReference<BiometricViewModel> f2233e;

        public ResetCallbackObserver(@NonNull BiometricViewModel biometricViewModel) {
            this.f2233e = new WeakReference<>(biometricViewModel);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
            if (this.f2233e.get() != null) {
                this.f2233e.get().m1107H();
            }
        }
    }

    public BiometricPrompt(@NonNull FragmentActivity fragmentActivity, @NonNull AuthenticationCallback authenticationCallback) {
        if (fragmentActivity == null) {
            throw new IllegalArgumentException("FragmentActivity must not be null.");
        }
        if (authenticationCallback != null) {
            m1098f(true, fragmentActivity.getSupportFragmentManager(), (BiometricViewModel) new ViewModelProvider(fragmentActivity).get(BiometricViewModel.class), null, authenticationCallback);
            return;
        }
        throw new IllegalArgumentException("AuthenticationCallback must not be null.");
    }

    /* renamed from: a */
    public static void m1093a(@NonNull Fragment fragment, @NonNull BiometricViewModel biometricViewModel) {
        fragment.getLifecycle().addObserver(new ResetCallbackObserver(biometricViewModel));
    }

    @Nullable
    /* renamed from: c */
    public static BiometricFragment m1094c(@NonNull FragmentManager fragmentManager) {
        return (BiometricFragment) fragmentManager.findFragmentByTag(f2209e);
    }

    @NonNull
    /* renamed from: e */
    public static BiometricViewModel m1095e(@NonNull Fragment fragment, boolean z) {
        ViewModelStoreOwner activity = z ? fragment.getActivity() : null;
        if (activity == null) {
            activity = fragment.getParentFragment();
        }
        if (activity != null) {
            return (BiometricViewModel) new ViewModelProvider(activity).get(BiometricViewModel.class);
        }
        throw new IllegalStateException("view model not found");
    }

    public void authenticate(@NonNull PromptInfo promptInfo, @NonNull CryptoObject cryptoObject) {
        if (promptInfo == null) {
            throw new IllegalArgumentException("PromptInfo cannot be null.");
        }
        if (cryptoObject != null) {
            int m1190c = C0344b.m1190c(promptInfo, cryptoObject);
            if (!C0344b.m1194g(m1190c)) {
                if (Build.VERSION.SDK_INT < 30 && C0344b.m1191d(m1190c)) {
                    throw new IllegalArgumentException("Crypto-based authentication is not supported for device credential prior to API 30.");
                }
                m1096b(promptInfo, cryptoObject);
                return;
            }
            throw new IllegalArgumentException("Crypto-based authentication is not supported for Class 2 (Weak) biometrics.");
        }
        throw new IllegalArgumentException("CryptoObject cannot be null.");
    }

    /* renamed from: b */
    public final void m1096b(@NonNull PromptInfo promptInfo, @Nullable CryptoObject cryptoObject) {
        FragmentManager fragmentManager = this.f2210a;
        if (fragmentManager == null) {
            Log.e(f2207c, "Unable to start authentication. Client fragment manager was null.");
        } else if (fragmentManager.isStateSaved()) {
            Log.e(f2207c, "Unable to start authentication. Called after onSaveInstanceState().");
        } else {
            m1097d().m1052v0(promptInfo, cryptoObject);
        }
    }

    public void cancelAuthentication() {
        FragmentManager fragmentManager = this.f2210a;
        if (fragmentManager == null) {
            Log.e(f2207c, "Unable to start authentication. Client fragment manager was null.");
            return;
        }
        BiometricFragment m1094c = m1094c(fragmentManager);
        if (m1094c == null) {
            Log.e(f2207c, "Unable to cancel authentication. BiometricFragment not found.");
        } else {
            m1094c.m1055y0(3);
        }
    }

    @NonNull
    /* renamed from: d */
    public final BiometricFragment m1097d() {
        BiometricFragment m1094c = m1094c(this.f2210a);
        if (m1094c != null) {
            return m1094c;
        }
        BiometricFragment m1007d1 = BiometricFragment.m1007d1(this.f2211b);
        this.f2210a.beginTransaction().add(m1007d1, f2209e).commitAllowingStateLoss();
        this.f2210a.executePendingTransactions();
        return m1007d1;
    }

    /* renamed from: f */
    public final void m1098f(boolean z, @NonNull FragmentManager fragmentManager, @NonNull BiometricViewModel biometricViewModel, @Nullable Executor executor, @NonNull AuthenticationCallback authenticationCallback) {
        this.f2211b = z;
        this.f2210a = fragmentManager;
        if (executor != null) {
            biometricViewModel.m1116Q(executor);
        }
        biometricViewModel.m1115P(authenticationCallback);
    }

    /* loaded from: classes3.dex */
    public static class CryptoObject {

        /* renamed from: a */
        @Nullable
        public final Signature f2214a;

        /* renamed from: b */
        @Nullable
        public final Cipher f2215b;

        /* renamed from: c */
        @Nullable
        public final Mac f2216c;

        /* renamed from: d */
        @Nullable
        public final IdentityCredential f2217d;

        /* renamed from: e */
        @Nullable
        public final PresentationSession f2218e;

        public CryptoObject(@NonNull Signature signature) {
            this.f2214a = signature;
            this.f2215b = null;
            this.f2216c = null;
            this.f2217d = null;
            this.f2218e = null;
        }

        @Nullable
        public Cipher getCipher() {
            return this.f2215b;
        }

        @Nullable
        @RequiresApi(30)
        public IdentityCredential getIdentityCredential() {
            return this.f2217d;
        }

        @Nullable
        public Mac getMac() {
            return this.f2216c;
        }

        @Nullable
        @RequiresApi(33)
        public PresentationSession getPresentationSession() {
            return this.f2218e;
        }

        @Nullable
        public Signature getSignature() {
            return this.f2214a;
        }

        public CryptoObject(@NonNull Cipher cipher) {
            this.f2214a = null;
            this.f2215b = cipher;
            this.f2216c = null;
            this.f2217d = null;
            this.f2218e = null;
        }

        public CryptoObject(@NonNull Mac mac) {
            this.f2214a = null;
            this.f2215b = null;
            this.f2216c = mac;
            this.f2217d = null;
            this.f2218e = null;
        }

        @RequiresApi(30)
        public CryptoObject(@NonNull IdentityCredential identityCredential) {
            this.f2214a = null;
            this.f2215b = null;
            this.f2216c = null;
            this.f2217d = identityCredential;
            this.f2218e = null;
        }

        @RequiresApi(33)
        public CryptoObject(@NonNull PresentationSession presentationSession) {
            this.f2214a = null;
            this.f2215b = null;
            this.f2216c = null;
            this.f2217d = null;
            this.f2218e = presentationSession;
        }
    }

    public BiometricPrompt(@NonNull Fragment fragment, @NonNull AuthenticationCallback authenticationCallback) {
        if (fragment == null) {
            throw new IllegalArgumentException("Fragment must not be null.");
        }
        if (authenticationCallback != null) {
            FragmentManager childFragmentManager = fragment.getChildFragmentManager();
            BiometricViewModel biometricViewModel = (BiometricViewModel) new ViewModelProvider(fragment).get(BiometricViewModel.class);
            m1093a(fragment, biometricViewModel);
            m1098f(false, childFragmentManager, biometricViewModel, null, authenticationCallback);
            return;
        }
        throw new IllegalArgumentException("AuthenticationCallback must not be null.");
    }

    public void authenticate(@NonNull PromptInfo promptInfo) {
        if (promptInfo != null) {
            m1096b(promptInfo, null);
            return;
        }
        throw new IllegalArgumentException("PromptInfo cannot be null.");
    }

    @SuppressLint({"LambdaLast"})
    public BiometricPrompt(@NonNull FragmentActivity fragmentActivity, @NonNull Executor executor, @NonNull AuthenticationCallback authenticationCallback) {
        if (fragmentActivity == null) {
            throw new IllegalArgumentException("FragmentActivity must not be null.");
        }
        if (executor == null) {
            throw new IllegalArgumentException("Executor must not be null.");
        }
        if (authenticationCallback != null) {
            m1098f(true, fragmentActivity.getSupportFragmentManager(), (BiometricViewModel) new ViewModelProvider(fragmentActivity).get(BiometricViewModel.class), executor, authenticationCallback);
            return;
        }
        throw new IllegalArgumentException("AuthenticationCallback must not be null.");
    }

    @SuppressLint({"LambdaLast"})
    public BiometricPrompt(@NonNull Fragment fragment, @NonNull Executor executor, @NonNull AuthenticationCallback authenticationCallback) {
        if (fragment == null) {
            throw new IllegalArgumentException("Fragment must not be null.");
        }
        if (executor == null) {
            throw new IllegalArgumentException("Executor must not be null.");
        }
        if (authenticationCallback != null) {
            FragmentManager childFragmentManager = fragment.getChildFragmentManager();
            BiometricViewModel biometricViewModel = (BiometricViewModel) new ViewModelProvider(fragment).get(BiometricViewModel.class);
            m1093a(fragment, biometricViewModel);
            m1098f(false, childFragmentManager, biometricViewModel, executor, authenticationCallback);
            return;
        }
        throw new IllegalArgumentException("AuthenticationCallback must not be null.");
    }
}
