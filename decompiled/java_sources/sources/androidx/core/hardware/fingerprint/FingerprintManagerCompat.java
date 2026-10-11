package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes3.dex */
public class FingerprintManagerCompat {

    /* renamed from: a */
    public final Context f5459a;

    /* loaded from: classes3.dex */
    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int i, @NonNull CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int i, @NonNull CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(@NonNull AuthenticationResult authenticationResult) {
        }
    }

    /* loaded from: classes3.dex */
    public static final class AuthenticationResult {

        /* renamed from: a */
        public final CryptoObject f5460a;

        public AuthenticationResult(@NonNull CryptoObject cryptoObject) {
            this.f5460a = cryptoObject;
        }

        @NonNull
        public CryptoObject getCryptoObject() {
            return this.f5460a;
        }
    }

    /* renamed from: androidx.core.hardware.fingerprint.FingerprintManagerCompat$a */
    /* loaded from: classes3.dex */
    public class C0674a extends FingerprintManager.AuthenticationCallback {

        /* renamed from: a */
        public final /* synthetic */ AuthenticationCallback f5464a;

        public C0674a(AuthenticationCallback authenticationCallback) {
            this.f5464a = authenticationCallback;
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationError(int i, CharSequence charSequence) {
            this.f5464a.onAuthenticationError(i, charSequence);
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationFailed() {
            this.f5464a.onAuthenticationFailed();
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationHelp(int i, CharSequence charSequence) {
            this.f5464a.onAuthenticationHelp(i, charSequence);
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
            this.f5464a.onAuthenticationSucceeded(new AuthenticationResult(FingerprintManagerCompat.m2983b(C0675b.m2987b(authenticationResult))));
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.hardware.fingerprint.FingerprintManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0675b {
        @RequiresPermission("android.permission.USE_FINGERPRINT")
        @DoNotInline
        /* renamed from: a */
        public static void m2986a(Object obj, Object obj2, CancellationSignal cancellationSignal, int i, Object obj3, Handler handler) {
            ((FingerprintManager) obj).authenticate((FingerprintManager.CryptoObject) obj2, cancellationSignal, i, (FingerprintManager.AuthenticationCallback) obj3, handler);
        }

        @DoNotInline
        /* renamed from: b */
        public static FingerprintManager.CryptoObject m2987b(Object obj) {
            return ((FingerprintManager.AuthenticationResult) obj).getCryptoObject();
        }

        @DoNotInline
        /* renamed from: c */
        public static FingerprintManager m2988c(Context context) {
            if (context.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
                return (FingerprintManager) context.getSystemService(FingerprintManager.class);
            }
            return null;
        }

        @RequiresPermission("android.permission.USE_FINGERPRINT")
        @DoNotInline
        /* renamed from: d */
        public static boolean m2989d(Object obj) {
            return ((FingerprintManager) obj).hasEnrolledFingerprints();
        }

        @RequiresPermission("android.permission.USE_FINGERPRINT")
        @DoNotInline
        /* renamed from: e */
        public static boolean m2990e(Object obj) {
            return ((FingerprintManager) obj).isHardwareDetected();
        }

        @DoNotInline
        /* renamed from: f */
        public static CryptoObject m2991f(Object obj) {
            FingerprintManager.CryptoObject cryptoObject = (FingerprintManager.CryptoObject) obj;
            if (cryptoObject == null) {
                return null;
            }
            if (cryptoObject.getCipher() != null) {
                return new CryptoObject(cryptoObject.getCipher());
            }
            if (cryptoObject.getSignature() != null) {
                return new CryptoObject(cryptoObject.getSignature());
            }
            if (cryptoObject.getMac() != null) {
                return new CryptoObject(cryptoObject.getMac());
            }
            return null;
        }

        @DoNotInline
        /* renamed from: g */
        public static FingerprintManager.CryptoObject m2992g(CryptoObject cryptoObject) {
            if (cryptoObject == null) {
                return null;
            }
            if (cryptoObject.getCipher() != null) {
                return new FingerprintManager.CryptoObject(cryptoObject.getCipher());
            }
            if (cryptoObject.getSignature() != null) {
                return new FingerprintManager.CryptoObject(cryptoObject.getSignature());
            }
            if (cryptoObject.getMac() != null) {
                return new FingerprintManager.CryptoObject(cryptoObject.getMac());
            }
            return null;
        }
    }

    public FingerprintManagerCompat(Context context) {
        this.f5459a = context;
    }

    @Nullable
    @RequiresApi(23)
    /* renamed from: a */
    public static FingerprintManager m2982a(@NonNull Context context) {
        return C0675b.m2988c(context);
    }

    @RequiresApi(23)
    /* renamed from: b */
    public static CryptoObject m2983b(FingerprintManager.CryptoObject cryptoObject) {
        return C0675b.m2991f(cryptoObject);
    }

    @RequiresApi(23)
    /* renamed from: c */
    public static FingerprintManager.AuthenticationCallback m2984c(AuthenticationCallback authenticationCallback) {
        return new C0674a(authenticationCallback);
    }

    @RequiresApi(23)
    /* renamed from: d */
    public static FingerprintManager.CryptoObject m2985d(CryptoObject cryptoObject) {
        return C0675b.m2992g(cryptoObject);
    }

    @NonNull
    public static FingerprintManagerCompat from(@NonNull Context context) {
        return new FingerprintManagerCompat(context);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public void authenticate(@Nullable CryptoObject cryptoObject, int i, @Nullable androidx.core.os.CancellationSignal cancellationSignal, @NonNull AuthenticationCallback authenticationCallback, @Nullable Handler handler) {
        authenticate(cryptoObject, i, cancellationSignal != null ? (CancellationSignal) cancellationSignal.getCancellationSignalObject() : null, authenticationCallback, handler);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean hasEnrolledFingerprints() {
        FingerprintManager m2982a = m2982a(this.f5459a);
        return m2982a != null && C0675b.m2989d(m2982a);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean isHardwareDetected() {
        FingerprintManager m2982a = m2982a(this.f5459a);
        return m2982a != null && C0675b.m2990e(m2982a);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public void authenticate(@Nullable CryptoObject cryptoObject, int i, @Nullable CancellationSignal cancellationSignal, @NonNull AuthenticationCallback authenticationCallback, @Nullable Handler handler) {
        FingerprintManager m2982a = m2982a(this.f5459a);
        if (m2982a != null) {
            C0675b.m2986a(m2982a, m2985d(cryptoObject), cancellationSignal, i, m2984c(authenticationCallback), handler);
        }
    }

    /* loaded from: classes3.dex */
    public static class CryptoObject {

        /* renamed from: a */
        public final Signature f5461a;

        /* renamed from: b */
        public final Cipher f5462b;

        /* renamed from: c */
        public final Mac f5463c;

        public CryptoObject(@NonNull Signature signature) {
            this.f5461a = signature;
            this.f5462b = null;
            this.f5463c = null;
        }

        @Nullable
        public Cipher getCipher() {
            return this.f5462b;
        }

        @Nullable
        public Mac getMac() {
            return this.f5463c;
        }

        @Nullable
        public Signature getSignature() {
            return this.f5461a;
        }

        public CryptoObject(@NonNull Cipher cipher) {
            this.f5462b = cipher;
            this.f5461a = null;
            this.f5463c = null;
        }

        public CryptoObject(@NonNull Mac mac) {
            this.f5463c = mac;
            this.f5462b = null;
            this.f5461a = null;
        }
    }
}
