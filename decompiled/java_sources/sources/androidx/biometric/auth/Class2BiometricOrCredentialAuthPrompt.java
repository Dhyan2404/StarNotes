package androidx.biometric.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.biometric.BiometricPrompt;
import com.sunia.HTREnginev2.C14546vi;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class Class2BiometricOrCredentialAuthPrompt {

    /* renamed from: a */
    @NonNull
    public final BiometricPrompt.PromptInfo f2295a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @NonNull
        public final CharSequence f2296a;

        /* renamed from: b */
        @Nullable
        public CharSequence f2297b = null;

        /* renamed from: c */
        @Nullable
        public CharSequence f2298c = null;

        /* renamed from: d */
        public boolean f2299d = true;

        public Builder(@NonNull CharSequence charSequence) {
            this.f2296a = charSequence;
        }

        @NonNull
        public Class2BiometricOrCredentialAuthPrompt build() {
            return new Class2BiometricOrCredentialAuthPrompt(new BiometricPrompt.PromptInfo.Builder().setTitle(this.f2296a).setSubtitle(this.f2297b).setDescription(this.f2298c).setConfirmationRequired(this.f2299d).setAllowedAuthenticators(33023).build());
        }

        @NonNull
        public Builder setConfirmationRequired(boolean z) {
            this.f2299d = z;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull CharSequence charSequence) {
            this.f2298c = charSequence;
            return this;
        }

        @NonNull
        public Builder setSubtitle(@NonNull CharSequence charSequence) {
            this.f2297b = charSequence;
            return this;
        }
    }

    public Class2BiometricOrCredentialAuthPrompt(@NonNull BiometricPrompt.PromptInfo promptInfo) {
        this.f2295a = promptInfo;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.f2295a.getDescription();
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.f2295a.getSubtitle();
    }

    @NonNull
    public CharSequence getTitle() {
        return this.f2295a.getTitle();
    }

    public boolean isConfirmationRequired() {
        return this.f2295a.isConfirmationRequired();
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2295a, null, null, authPromptCallback);
    }

    @NonNull
    public AuthPrompt startAuthentication(@NonNull AuthPromptHost authPromptHost, @NonNull Executor executor, @NonNull AuthPromptCallback authPromptCallback) {
        return C14546vi.m57801b(authPromptHost, this.f2295a, null, executor, authPromptCallback);
    }
}
