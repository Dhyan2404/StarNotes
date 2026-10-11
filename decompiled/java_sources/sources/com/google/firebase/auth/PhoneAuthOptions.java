package com.google.firebase.auth;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.internal.zzaj;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes6.dex */
public final class PhoneAuthOptions {

    /* renamed from: a */
    public final FirebaseAuth f35634a;

    /* renamed from: b */
    public Long f35635b;

    /* renamed from: c */
    public PhoneAuthProvider.OnVerificationStateChangedCallbacks f35636c;

    /* renamed from: d */
    public Executor f35637d;

    /* renamed from: e */
    @Nullable
    public String f35638e;

    /* renamed from: f */
    public Activity f35639f;

    /* renamed from: g */
    @Nullable
    public PhoneAuthProvider.ForceResendingToken f35640g;

    /* renamed from: h */
    @Nullable
    public MultiFactorSession f35641h;

    /* renamed from: i */
    @Nullable
    public PhoneMultiFactorInfo f35642i;

    /* renamed from: j */
    public boolean f35643j;

    /* renamed from: k */
    public boolean f35644k;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public final FirebaseAuth f35645a;

        /* renamed from: b */
        public String f35646b;

        /* renamed from: c */
        public Long f35647c;

        /* renamed from: d */
        public PhoneAuthProvider.OnVerificationStateChangedCallbacks f35648d;

        /* renamed from: e */
        public Executor f35649e;

        /* renamed from: f */
        public Activity f35650f;

        /* renamed from: g */
        @Nullable
        public PhoneAuthProvider.ForceResendingToken f35651g;

        /* renamed from: h */
        public MultiFactorSession f35652h;

        /* renamed from: i */
        public PhoneMultiFactorInfo f35653i;

        /* renamed from: j */
        public boolean f35654j;

        public Builder(@NonNull FirebaseAuth firebaseAuth) {
            this.f35645a = (FirebaseAuth) Preconditions.checkNotNull(firebaseAuth);
        }

        @NonNull
        public final PhoneAuthOptions build() {
            Preconditions.checkNotNull(this.f35645a, "FirebaseAuth instance cannot be null");
            Preconditions.checkNotNull(this.f35647c, "You must specify an auto-retrieval timeout; please call #setTimeout()");
            Preconditions.checkNotNull(this.f35648d, "You must specify callbacks on your PhoneAuthOptions. Please call #setCallbacks()");
            this.f35649e = this.f35645a.zzg();
            if (this.f35647c.longValue() < 0 || this.f35647c.longValue() > 120) {
                throw new IllegalArgumentException("We only support 0-120 seconds for sms-auto-retrieval timeout");
            }
            MultiFactorSession multiFactorSession = this.f35652h;
            if (multiFactorSession == null) {
                Preconditions.checkNotEmpty(this.f35646b, "The given phoneNumber is empty. Please set a non-empty phone number with #setPhoneNumber()");
                Preconditions.checkArgument(!this.f35654j, "You cannot require sms validation without setting a multi-factor session.");
                Preconditions.checkArgument(this.f35653i == null, "A phoneMultiFactorInfo must be set for second factor sign-in.");
            } else {
                if (multiFactorSession != null && ((zzaj) multiFactorSession).zzd()) {
                    Preconditions.checkNotEmpty(this.f35646b);
                    Preconditions.checkArgument(this.f35653i == null, "Invalid MultiFactorSession - use the getSession method in MultiFactorResolver to get a valid sign-in session.");
                } else {
                    Preconditions.checkArgument(this.f35653i != null, "A phoneMultiFactorInfo must be set for second factor sign-in.");
                    Preconditions.checkArgument(this.f35646b == null, "A phone number must not be set for MFA sign-in. A PhoneMultiFactorInfo should be set instead.");
                }
            }
            return new PhoneAuthOptions(this.f35645a, this.f35647c, this.f35648d, this.f35649e, this.f35646b, this.f35650f, this.f35651g, this.f35652h, this.f35653i, this.f35654j);
        }

        @NonNull
        public final Builder requireSmsValidation(boolean z) {
            this.f35654j = z;
            return this;
        }

        @NonNull
        public final Builder setActivity(@NonNull Activity activity) {
            this.f35650f = activity;
            return this;
        }

        @NonNull
        public final Builder setCallbacks(@NonNull PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks) {
            this.f35648d = onVerificationStateChangedCallbacks;
            return this;
        }

        @NonNull
        public final Builder setForceResendingToken(@NonNull PhoneAuthProvider.ForceResendingToken forceResendingToken) {
            this.f35651g = forceResendingToken;
            return this;
        }

        @NonNull
        public final Builder setMultiFactorHint(@NonNull PhoneMultiFactorInfo phoneMultiFactorInfo) {
            this.f35653i = phoneMultiFactorInfo;
            return this;
        }

        @NonNull
        public final Builder setMultiFactorSession(@NonNull MultiFactorSession multiFactorSession) {
            this.f35652h = multiFactorSession;
            return this;
        }

        @NonNull
        public final Builder setPhoneNumber(@NonNull String str) {
            this.f35646b = str;
            return this;
        }

        @NonNull
        public final Builder setTimeout(@NonNull Long l, @NonNull TimeUnit timeUnit) {
            this.f35647c = Long.valueOf(TimeUnit.SECONDS.convert(l.longValue(), timeUnit));
            return this;
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(FirebaseAuth.getInstance());
    }

    @Nullable
    public final Activity zza() {
        return this.f35639f;
    }

    @NonNull
    public final FirebaseAuth zzb() {
        return this.f35634a;
    }

    @Nullable
    public final MultiFactorSession zzc() {
        return this.f35641h;
    }

    @Nullable
    public final PhoneAuthProvider.ForceResendingToken zzd() {
        return this.f35640g;
    }

    @NonNull
    public final PhoneAuthProvider.OnVerificationStateChangedCallbacks zze() {
        return this.f35636c;
    }

    @Nullable
    public final PhoneMultiFactorInfo zzf() {
        return this.f35642i;
    }

    @NonNull
    public final Long zzg() {
        return this.f35635b;
    }

    @Nullable
    public final String zzh() {
        return this.f35638e;
    }

    @NonNull
    public final Executor zzi() {
        return this.f35637d;
    }

    public final boolean zzj() {
        return this.f35644k;
    }

    public final boolean zzk() {
        return this.f35643j;
    }

    public final boolean zzl() {
        return this.f35641h != null;
    }

    public PhoneAuthOptions(FirebaseAuth firebaseAuth, Long l, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Executor executor, @Nullable String str, @NonNull Activity activity, @Nullable PhoneAuthProvider.ForceResendingToken forceResendingToken, @Nullable MultiFactorSession multiFactorSession, @Nullable PhoneMultiFactorInfo phoneMultiFactorInfo, boolean z) {
        this.f35634a = firebaseAuth;
        this.f35638e = str;
        this.f35635b = l;
        this.f35636c = onVerificationStateChangedCallbacks;
        this.f35639f = activity;
        this.f35637d = executor;
        this.f35640g = forceResendingToken;
        this.f35641h = multiFactorSession;
        this.f35642i = phoneMultiFactorInfo;
        this.f35643j = z;
    }

    @NonNull
    public static Builder newBuilder(@NonNull FirebaseAuth firebaseAuth) {
        return new Builder(firebaseAuth);
    }

    public final void zza(boolean z) {
        this.f35644k = true;
    }
}
