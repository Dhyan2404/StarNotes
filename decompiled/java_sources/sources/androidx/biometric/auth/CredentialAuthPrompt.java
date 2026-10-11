package androidx.biometric.auth;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.biometric.BiometricPrompt;
import com.sunia.HTREnginev2.C14546vi;
import java.util.concurrent.Executor;

@RequiresApi(30)
/* loaded from: classes3.dex */
public class CredentialAuthPrompt {

    /* renamed from: a */
    @NonNull
    public final BiometricPrompt.PromptInfo f2312a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @NonNull
        public final CharSequence f2313a;

        /* renamed from: b */
        @Nullable
        public CharSequence f2314b = null;

        @SuppressLint({"ExecutorRegistration"})
        public Builder(@NonNull CharSequence charSequence) {
            this.f2313a = charSequence;
        }

        @NonNull
        public CredentialAuthPrompt build() {
            return new CredentialAuthPrompt(new BiometricPrompt.PromptInfo.Builder().setTitle(this.f2313a).setDescription(this.f2314b).setAllowedAuthenticators(32768).build());
        }

        @NonNull
        public Builder setDescription(@NonNull CharSequence charSequence) {
            this.f2314b = charSequence;
            return this;
        }
    }

    public CredentialAuthPrompt(@NonNull BiometricPrompt.PromptInfo promptInfo) {
        this.f2312a = promptInfo;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.f2312a.getDescription();
    }

    @NonNull
    public CharSequence getTitle() {
        return this.f2312a.getTitle();
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2312a, cryptoObject, null, authPromptCallback);
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NonNull Executor executor, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2312a, cryptoObject, executor, authPromptCallback);
    }
}
