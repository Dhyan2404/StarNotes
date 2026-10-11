package androidx.biometric.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.biometric.BiometricPrompt;
import com.sunia.HTREnginev2.C14546vi;
import java.util.concurrent.Executor;

@RequiresApi(30)
/* loaded from: classes3.dex */
public class Class3BiometricOrCredentialAuthPrompt {

    /* renamed from: a */
    @NonNull
    public final BiometricPrompt.PromptInfo f2306a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @NonNull
        public final CharSequence f2307a;

        /* renamed from: b */
        @Nullable
        public CharSequence f2308b = null;

        /* renamed from: c */
        @Nullable
        public CharSequence f2309c = null;

        /* renamed from: d */
        public boolean f2310d = true;

        public Builder(@NonNull CharSequence charSequence) {
            this.f2307a = charSequence;
        }

        @NonNull
        public Class3BiometricOrCredentialAuthPrompt build() {
            return new Class3BiometricOrCredentialAuthPrompt(new BiometricPrompt.PromptInfo.Builder().setTitle(this.f2307a).setSubtitle(this.f2308b).setDescription(this.f2309c).setConfirmationRequired(this.f2310d).setAllowedAuthenticators(32783).build());
        }

        @NonNull
        public Builder setConfirmationRequired(boolean z) {
            this.f2310d = z;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull CharSequence charSequence) {
            this.f2309c = charSequence;
            return this;
        }

        @NonNull
        public Builder setSubtitle(@NonNull CharSequence charSequence) {
            this.f2308b = charSequence;
            return this;
        }
    }

    public Class3BiometricOrCredentialAuthPrompt(@NonNull BiometricPrompt.PromptInfo promptInfo) {
        this.f2306a = promptInfo;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.f2306a.getDescription();
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.f2306a.getSubtitle();
    }

    @NonNull
    public CharSequence getTitle() {
        return this.f2306a.getTitle();
    }

    public boolean isConfirmationRequired() {
        return this.f2306a.isConfirmationRequired();
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2306a, cryptoObject, null, authPromptCallback);
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NonNull Executor executor, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2306a, cryptoObject, executor, authPromptCallback);
    }
}
