package androidx.biometric.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.biometric.BiometricPrompt;
import com.sunia.HTREnginev2.C14546vi;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class Class2BiometricAuthPrompt {

    /* renamed from: a */
    @NonNull
    public final BiometricPrompt.PromptInfo f2289a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @NonNull
        public final CharSequence f2290a;

        /* renamed from: b */
        @NonNull
        public final CharSequence f2291b;

        /* renamed from: c */
        @Nullable
        public CharSequence f2292c = null;

        /* renamed from: d */
        @Nullable
        public CharSequence f2293d = null;

        /* renamed from: e */
        public boolean f2294e = true;

        public Builder(@NonNull CharSequence charSequence, @NonNull CharSequence charSequence2) {
            this.f2290a = charSequence;
            this.f2291b = charSequence2;
        }

        @NonNull
        public Class2BiometricAuthPrompt build() {
            return new Class2BiometricAuthPrompt(new BiometricPrompt.PromptInfo.Builder().setTitle(this.f2290a).setSubtitle(this.f2292c).setDescription(this.f2293d).setNegativeButtonText(this.f2291b).setConfirmationRequired(this.f2294e).setAllowedAuthenticators(255).build());
        }

        @NonNull
        public Builder setConfirmationRequired(boolean z) {
            this.f2294e = z;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull CharSequence charSequence) {
            this.f2293d = charSequence;
            return this;
        }

        @NonNull
        public Builder setSubtitle(@NonNull CharSequence charSequence) {
            this.f2292c = charSequence;
            return this;
        }
    }

    public Class2BiometricAuthPrompt(@NonNull BiometricPrompt.PromptInfo promptInfo) {
        this.f2289a = promptInfo;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.f2289a.getDescription();
    }

    @NonNull
    public CharSequence getNegativeButtonText() {
        return this.f2289a.getTitle();
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.f2289a.getSubtitle();
    }

    @NonNull
    public CharSequence getTitle() {
        return this.f2289a.getTitle();
    }

    public boolean isConfirmationRequired() {
        return this.f2289a.isConfirmationRequired();
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2289a, null, null, authPromptCallback);
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @NonNull Executor executor, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2289a, null, executor, authPromptCallback);
    }
}
