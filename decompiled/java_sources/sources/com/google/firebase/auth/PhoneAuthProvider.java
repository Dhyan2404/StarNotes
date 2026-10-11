package com.google.firebase.auth;

import android.app.Activity;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.logging.Logger;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthOptions;
import java.util.concurrent.TimeUnit;

/* loaded from: classes6.dex */
public class PhoneAuthProvider {

    @NonNull
    public static final String PHONE_SIGN_IN_METHOD = "phone";

    @NonNull
    public static final String PROVIDER_ID = "phone";

    /* renamed from: a */
    public final FirebaseAuth f35655a;

    @SafeParcelable.Class(creator = "DefaultForceResendingTokenCreator")
    /* loaded from: classes6.dex */
    public static class ForceResendingToken extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<ForceResendingToken> CREATOR = new zzd();

        @SafeParcelable.Constructor
        public ForceResendingToken() {
        }

        @NonNull
        public static ForceResendingToken zza() {
            return new ForceResendingToken();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            SafeParcelWriter.finishObjectHeader(parcel, SafeParcelWriter.beginObjectHeader(parcel));
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class OnVerificationStateChangedCallbacks {
        private static final Logger zza = new Logger("PhoneAuthProvider", new String[0]);

        public void onCodeAutoRetrievalTimeOut(@NonNull String str) {
            zza.m22192i("Sms auto retrieval timed-out.", new Object[0]);
        }

        public void onCodeSent(@NonNull String str, @NonNull ForceResendingToken forceResendingToken) {
        }

        public abstract void onVerificationCompleted(@NonNull PhoneAuthCredential phoneAuthCredential);

        public abstract void onVerificationFailed(@NonNull FirebaseException firebaseException);
    }

    public PhoneAuthProvider(FirebaseAuth firebaseAuth) {
        this.f35655a = firebaseAuth;
    }

    @NonNull
    public static PhoneAuthCredential getCredential(@NonNull String str, @NonNull String str2) {
        return PhoneAuthCredential.zza(str, str2);
    }

    @NonNull
    @Deprecated
    public static PhoneAuthProvider getInstance() {
        return new PhoneAuthProvider(FirebaseAuth.getInstance(FirebaseApp.getInstance()));
    }

    public static void verifyPhoneNumber(@NonNull PhoneAuthOptions phoneAuthOptions) {
        Preconditions.checkNotNull(phoneAuthOptions);
        FirebaseAuth.zza(phoneAuthOptions);
    }

    @NonNull
    @Deprecated
    public static PhoneAuthProvider getInstance(@NonNull FirebaseAuth firebaseAuth) {
        return new PhoneAuthProvider(firebaseAuth);
    }

    @Deprecated
    public void verifyPhoneNumber(@NonNull String str, long j, @NonNull TimeUnit timeUnit, @NonNull Activity activity, @NonNull OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks) {
        verifyPhoneNumber(PhoneAuthOptions.newBuilder(this.f35655a).setPhoneNumber(str).setTimeout(Long.valueOf(j), timeUnit).setActivity(activity).setCallbacks(onVerificationStateChangedCallbacks).build());
    }

    @Deprecated
    public void verifyPhoneNumber(@NonNull String str, long j, @NonNull TimeUnit timeUnit, @NonNull Activity activity, @NonNull OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, @Nullable ForceResendingToken forceResendingToken) {
        PhoneAuthOptions.Builder callbacks = PhoneAuthOptions.newBuilder(this.f35655a).setPhoneNumber(str).setTimeout(Long.valueOf(j), timeUnit).setActivity(activity).setCallbacks(onVerificationStateChangedCallbacks);
        if (forceResendingToken != null) {
            callbacks.setForceResendingToken(forceResendingToken);
        }
        verifyPhoneNumber(callbacks.build());
    }
}
