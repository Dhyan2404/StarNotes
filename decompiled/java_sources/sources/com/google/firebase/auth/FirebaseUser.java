package com.google.firebase.auth;

import android.app.Activity;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.p124firebaseauthapi.zzafm;
import com.google.android.gms.internal.p124firebaseauthapi.zzaft;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.sunia.HTREnginev2.cgp;
import com.sunia.HTREnginev2.egp;
import com.sunia.HTREnginev2.yfp;
import java.util.List;

/* loaded from: classes6.dex */
public abstract class FirebaseUser extends AbstractSafeParcelable implements UserInfo {
    @NonNull
    public Task<Void> delete() {
        return FirebaseAuth.getInstance(zza()).zza(this);
    }

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public abstract String getDisplayName();

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public abstract String getEmail();

    @NonNull
    public Task<GetTokenResult> getIdToken(boolean z) {
        return FirebaseAuth.getInstance(zza()).zza(this, z);
    }

    @Nullable
    public abstract FirebaseUserMetadata getMetadata();

    @NonNull
    public abstract MultiFactor getMultiFactor();

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public abstract String getPhoneNumber();

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public abstract Uri getPhotoUrl();

    @NonNull
    public abstract List<? extends UserInfo> getProviderData();

    @Override // com.google.firebase.auth.UserInfo
    @NonNull
    public abstract String getProviderId();

    @Nullable
    public abstract String getTenantId();

    @Override // com.google.firebase.auth.UserInfo
    @NonNull
    public abstract String getUid();

    public abstract boolean isAnonymous();

    @NonNull
    public Task<AuthResult> linkWithCredential(@NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(authCredential);
        return FirebaseAuth.getInstance(zza()).zza(this, authCredential);
    }

    @NonNull
    public Task<Void> reauthenticate(@NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(authCredential);
        return FirebaseAuth.getInstance(zza()).zzb(this, authCredential);
    }

    @NonNull
    public Task<AuthResult> reauthenticateAndRetrieveData(@NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(authCredential);
        return FirebaseAuth.getInstance(zza()).zzc(this, authCredential);
    }

    @NonNull
    public Task<Void> reload() {
        return FirebaseAuth.getInstance(zza()).zzb(this);
    }

    @NonNull
    public Task<Void> sendEmailVerification() {
        return FirebaseAuth.getInstance(zza()).zza(this, false).continueWithTask(new cgp(this));
    }

    @NonNull
    public Task<AuthResult> startActivityForLinkWithProvider(@NonNull Activity activity, @NonNull FederatedAuthProvider federatedAuthProvider) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(federatedAuthProvider);
        return FirebaseAuth.getInstance(zza()).zza(activity, federatedAuthProvider, this);
    }

    @NonNull
    public Task<AuthResult> startActivityForReauthenticateWithProvider(@NonNull Activity activity, @NonNull FederatedAuthProvider federatedAuthProvider) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(federatedAuthProvider);
        return FirebaseAuth.getInstance(zza()).zzb(activity, federatedAuthProvider, this);
    }

    @NonNull
    public Task<AuthResult> unlink(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return FirebaseAuth.getInstance(zza()).zzb(this, str);
    }

    @NonNull
    @Deprecated
    public Task<Void> updateEmail(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return FirebaseAuth.getInstance(zza()).zzc(this, str);
    }

    @NonNull
    public Task<Void> updatePassword(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        return FirebaseAuth.getInstance(zza()).zzd(this, str);
    }

    @NonNull
    public Task<Void> updatePhoneNumber(@NonNull PhoneAuthCredential phoneAuthCredential) {
        return FirebaseAuth.getInstance(zza()).zza(this, phoneAuthCredential);
    }

    @NonNull
    public Task<Void> updateProfile(@NonNull UserProfileChangeRequest userProfileChangeRequest) {
        Preconditions.checkNotNull(userProfileChangeRequest);
        return FirebaseAuth.getInstance(zza()).zza(this, userProfileChangeRequest);
    }

    @NonNull
    public Task<Void> verifyBeforeUpdateEmail(@NonNull String str) {
        return verifyBeforeUpdateEmail(str, null);
    }

    @NonNull
    public abstract FirebaseApp zza();

    @NonNull
    public abstract FirebaseUser zza(@NonNull List<? extends UserInfo> list);

    public abstract void zza(@NonNull zzafm zzafmVar);

    @NonNull
    public abstract FirebaseUser zzb();

    public abstract void zzb(@Nullable List<zzaft> list);

    @NonNull
    public abstract zzafm zzc();

    public abstract void zzc(@NonNull List<MultiFactorInfo> list);

    @NonNull
    public abstract String zzd();

    @NonNull
    public abstract String zze();

    @NonNull
    public abstract List<zzaft> zzf();

    @Nullable
    public abstract List<String> zzg();

    @NonNull
    public Task<Void> verifyBeforeUpdateEmail(@NonNull String str, @Nullable ActionCodeSettings actionCodeSettings) {
        return FirebaseAuth.getInstance(zza()).zza(this, false).continueWithTask(new egp(this, str, actionCodeSettings));
    }

    @NonNull
    public Task<Void> sendEmailVerification(@NonNull ActionCodeSettings actionCodeSettings) {
        return FirebaseAuth.getInstance(zza()).zza(this, false).continueWithTask(new yfp(this, actionCodeSettings));
    }
}
