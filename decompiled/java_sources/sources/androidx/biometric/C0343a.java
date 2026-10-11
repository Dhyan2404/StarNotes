package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.biometric.BiometricPrompt;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;

/* renamed from: androidx.biometric.a */
/* loaded from: classes3.dex */
public class C0343a {

    /* renamed from: a */
    @Nullable
    public BiometricPrompt.AuthenticationCallback f2282a;

    /* renamed from: b */
    @Nullable
    public FingerprintManagerCompat.AuthenticationCallback f2283b;

    /* renamed from: c */
    @NonNull
    public final d f2284c;

    /* renamed from: androidx.biometric.a$a */
    /* loaded from: classes3.dex */
    public class a extends FingerprintManagerCompat.AuthenticationCallback {
        public a() {
        }

        @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
        public void onAuthenticationError(int i, CharSequence charSequence) {
            C0343a.this.f2284c.mo1154a(i, charSequence);
        }

        @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
        public void onAuthenticationFailed() {
            C0343a.this.f2284c.mo1155b();
        }

        @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
        public void onAuthenticationHelp(int i, CharSequence charSequence) {
            C0343a.this.f2284c.mo1156c(charSequence);
        }

        @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
        public void onAuthenticationSucceeded(FingerprintManagerCompat.AuthenticationResult authenticationResult) {
            C0343a.this.f2284c.mo1157d(new BiometricPrompt.AuthenticationResult(authenticationResult != null ? C0345c.m1197c(authenticationResult.getCryptoObject()) : null, 2));
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.biometric.a$b */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: androidx.biometric.a$b$a */
        /* loaded from: classes3.dex */
        public class a extends BiometricPrompt.AuthenticationCallback {

            /* renamed from: a */
            public final /* synthetic */ d f2286a;

            public a(d dVar) {
                this.f2286a = dVar;
            }

            @Override // android.hardware.biometrics.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationError(int i, CharSequence charSequence) {
                this.f2286a.mo1154a(i, charSequence);
            }

            @Override // android.hardware.biometrics.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationFailed() {
                this.f2286a.mo1155b();
            }

            @Override // android.hardware.biometrics.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationHelp(int i, CharSequence charSequence) {
            }

            @Override // android.hardware.biometrics.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                BiometricPrompt.CryptoObject m1196b = authenticationResult != null ? C0345c.m1196b(b.m1175b(authenticationResult)) : null;
                int i = Build.VERSION.SDK_INT;
                int i2 = -1;
                if (i >= 30) {
                    if (authenticationResult != null) {
                        i2 = c.m1176a(authenticationResult);
                    }
                } else if (i != 29) {
                    i2 = 2;
                }
                this.f2286a.mo1157d(new BiometricPrompt.AuthenticationResult(m1196b, i2));
            }
        }

        private b() {
        }

        @NonNull
        /* renamed from: a */
        public static BiometricPrompt.AuthenticationCallback m1174a(@NonNull d dVar) {
            return new a(dVar);
        }

        @Nullable
        /* renamed from: b */
        public static BiometricPrompt.CryptoObject m1175b(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
            return authenticationResult.getCryptoObject();
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.biometric.a$c */
    /* loaded from: classes3.dex */
    public static class c {
        private c() {
        }

        /* renamed from: a */
        public static int m1176a(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
            return authenticationResult.getAuthenticationType();
        }
    }

    /* renamed from: androidx.biometric.a$d */
    /* loaded from: classes3.dex */
    public static class d {
        /* renamed from: a */
        public void mo1154a(int i, @Nullable CharSequence charSequence) {
        }

        /* renamed from: b */
        public void mo1155b() {
        }

        /* renamed from: c */
        public void mo1156c(@Nullable CharSequence charSequence) {
        }

        /* renamed from: d */
        public void mo1157d(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
        }
    }

    public C0343a(@NonNull d dVar) {
        this.f2284c = dVar;
    }

    @NonNull
    @RequiresApi(28)
    /* renamed from: a */
    public BiometricPrompt.AuthenticationCallback m1172a() {
        if (this.f2282a == null) {
            this.f2282a = b.m1174a(this.f2284c);
        }
        return this.f2282a;
    }

    @NonNull
    /* renamed from: b */
    public FingerprintManagerCompat.AuthenticationCallback m1173b() {
        if (this.f2283b == null) {
            this.f2283b = new a();
        }
        return this.f2283b;
    }
}
