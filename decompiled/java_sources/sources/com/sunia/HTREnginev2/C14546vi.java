package com.sunia.HTREnginev2;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.BiometricViewModel;
import androidx.biometric.auth.AuthPrompt;
import androidx.biometric.auth.AuthPromptCallback;
import androidx.biometric.auth.AuthPromptHost;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* renamed from: com.sunia.HTREnginev2.vi */
/* loaded from: classes3.dex */
public class C14546vi {

    /* renamed from: com.sunia.HTREnginev2.vi$a */
    /* loaded from: classes3.dex */
    public static class a implements AuthPrompt {

        /* renamed from: a */
        @NonNull
        public final WeakReference<BiometricPrompt> f87521a;

        public a(@NonNull BiometricPrompt biometricPrompt) {
            this.f87521a = new WeakReference<>(biometricPrompt);
        }

        @Override // androidx.biometric.auth.AuthPrompt
        public void cancelAuthentication() {
            if (this.f87521a.get() != null) {
                this.f87521a.get().cancelAuthentication();
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vi$b */
    /* loaded from: classes3.dex */
    public static class b extends BiometricPrompt.AuthenticationCallback {

        /* renamed from: a */
        @NonNull
        public final AuthPromptCallback f87522a;

        /* renamed from: b */
        @NonNull
        public final WeakReference<BiometricViewModel> f87523b;

        public b(@NonNull AuthPromptCallback authPromptCallback, @NonNull BiometricViewModel biometricViewModel) {
            this.f87522a = authPromptCallback;
            this.f87523b = new WeakReference<>(biometricViewModel);
        }

        @Nullable
        /* renamed from: a */
        public static FragmentActivity m57803a(@NonNull WeakReference<BiometricViewModel> weakReference) {
            if (weakReference.get() != null) {
                return weakReference.get().getClientActivity();
            }
            return null;
        }

        @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
        public void onAuthenticationError(int i, @NonNull CharSequence charSequence) {
            this.f87522a.onAuthenticationError(m57803a(this.f87523b), i, charSequence);
        }

        @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
        public void onAuthenticationFailed() {
            this.f87522a.onAuthenticationFailed(m57803a(this.f87523b));
        }

        @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
        public void onAuthenticationSucceeded(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
            this.f87522a.onAuthenticationSucceeded(m57803a(this.f87523b), authenticationResult);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vi$c */
    /* loaded from: classes3.dex */
    public static class c implements Executor {

        /* renamed from: e */
        public final Handler f87524e = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f87524e.post(runnable);
        }
    }

    @NonNull
    /* renamed from: a */
    public static BiometricPrompt m57800a(@NonNull AuthPromptHost authPromptHost, @Nullable Executor executor, @NonNull AuthPromptCallback authPromptCallback) {
        if (executor == null) {
            executor = new c();
        }
        if (authPromptHost.getActivity() != null) {
            return new BiometricPrompt(authPromptHost.getActivity(), executor, m57802c(authPromptCallback, new ViewModelProvider(authPromptHost.getActivity())));
        }
        if (authPromptHost.getFragment() == null || authPromptHost.getFragment().getActivity() == null) {
            throw new IllegalArgumentException("AuthPromptHost must contain a FragmentActivity or an attached Fragment.");
        }
        return new BiometricPrompt(authPromptHost.getFragment(), executor, m57802c(authPromptCallback, new ViewModelProvider(authPromptHost.getFragment().getActivity())));
    }

    @NonNull
    /* renamed from: b */
    public static AuthPrompt m57801b(@NonNull AuthPromptHost authPromptHost, @NonNull BiometricPrompt.PromptInfo promptInfo, @Nullable BiometricPrompt.CryptoObject cryptoObject, @Nullable Executor executor, @NonNull AuthPromptCallback authPromptCallback) {
        BiometricPrompt m57800a = m57800a(authPromptHost, executor, authPromptCallback);
        if (cryptoObject == null) {
            m57800a.authenticate(promptInfo);
        } else {
            m57800a.authenticate(promptInfo, cryptoObject);
        }
        return new a(m57800a);
    }

    /* renamed from: c */
    public static b m57802c(@NonNull AuthPromptCallback authPromptCallback, @NonNull ViewModelProvider viewModelProvider) {
        return new b(authPromptCallback, (BiometricViewModel) viewModelProvider.get(BiometricViewModel.class));
    }
}
