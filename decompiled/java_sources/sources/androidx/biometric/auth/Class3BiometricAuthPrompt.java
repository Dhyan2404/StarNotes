package androidx.biometric.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.biometric.BiometricPrompt;
import com.sunia.HTREnginev2.C14546vi;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class Class3BiometricAuthPrompt {

    /* renamed from: a */
    @NonNull
    public final BiometricPrompt.PromptInfo f2300a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @NonNull
        public final CharSequence f2301a;

        /* renamed from: b */
        @NonNull
        public final CharSequence f2302b;

        /* renamed from: c */
        @Nullable
        public CharSequence f2303c = null;

        /* renamed from: d */
        @Nullable
        public CharSequence f2304d = null;

        /* renamed from: e */
        public boolean f2305e = true;

        public Builder(@NonNull CharSequence charSequence, @NonNull CharSequence charSequence2) {
            this.f2301a = charSequence;
            this.f2302b = charSequence2;
        }

        @NonNull
        public Class3BiometricAuthPrompt build() {
            return new Class3BiometricAuthPrompt(new BiometricPrompt.PromptInfo.Builder().setTitle(this.f2301a).setSubtitle(this.f2303c).setDescription(this.f2304d).setNegativeButtonText(this.f2302b).setConfirmationRequired(this.f2305e).setAllowedAuthenticators(15).build());
        }

        @NonNull
        public Builder setConfirmationRequired(boolean z) {
            this.f2305e = z;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull CharSequence charSequence) {
            this.f2304d = charSequence;
            return this;
        }

        @NonNull
        public Builder setSubtitle(@NonNull CharSequence charSequence) {
            this.f2303c = charSequence;
            return this;
        }
    }

    public Class3BiometricAuthPrompt(@NonNull BiometricPrompt.PromptInfo promptInfo) {
        this.f2300a = promptInfo;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.f2300a.getDescription();
    }

    @NonNull
    public CharSequence getNegativeButtonText() {
        return this.f2300a.getTitle();
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.f2300a.getSubtitle();
    }

    @NonNull
    public CharSequence getTitle() {
        return this.f2300a.getTitle();
    }

    public boolean isConfirmationRequired() {
        return this.f2300a.isConfirmationRequired();
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2300a, cryptoObject, null, authPromptCallback);
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NonNull Executor executor, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2300a, cryptoObject, executor, authPromptCallback);
    }
}
