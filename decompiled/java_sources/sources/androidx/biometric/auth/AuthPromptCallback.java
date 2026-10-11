package androidx.biometric.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.biometric.BiometricPrompt;
import androidx.fragment.app.FragmentActivity;

/* loaded from: classes3.dex */
public abstract class AuthPromptCallback {
    public void onAuthenticationError(@Nullable FragmentActivity fragmentActivity, int i, @NonNull CharSequence charSequence) {
    }

    public void onAuthenticationFailed(@Nullable FragmentActivity fragmentActivity) {
    }

    public void onAuthenticationSucceeded(@Nullable FragmentActivity fragmentActivity, @NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
    }
}
