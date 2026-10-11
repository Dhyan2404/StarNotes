package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "EmailAuthCredentialCreator")
/* loaded from: classes6.dex */
public class EmailAuthCredential extends AuthCredential {

    @NonNull
    public static final Parcelable.Creator<EmailAuthCredential> CREATOR = new zzg();

    @SafeParcelable.Field(getter = "getEmail", m22176id = 1)
    private String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getPassword", m22176id = 2)
    private String zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getSignInLink", m22176id = 3)
    private final String zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getCachedState", m22176id = 4)
    private String zzd;

    @SafeParcelable.Field(getter = "isForLinking", m22176id = 5)
    private boolean zze;

    public EmailAuthCredential(String str, String str2) {
        this(str, str2, null, null, false);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String getProvider() {
        return "password";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String getSignInMethod() {
        return !TextUtils.isEmpty(this.zzb) ? "password" : EmailAuthProvider.EMAIL_LINK_SIGN_IN_METHOD;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential zza() {
        return new EmailAuthCredential(this.zza, this.zzb, this.zzc, this.zzd, this.zze);
    }

    @Nullable
    public final String zzb() {
        return this.zzd;
    }

    @NonNull
    public final String zzc() {
        return this.zza;
    }

    @Nullable
    public final String zzd() {
        return this.zzb;
    }

    @Nullable
    public final String zze() {
        return this.zzc;
    }

    public final boolean zzf() {
        return !TextUtils.isEmpty(this.zzc);
    }

    public final boolean zzg() {
        return this.zze;
    }

    @SafeParcelable.Constructor
    public EmailAuthCredential(@SafeParcelable.Param(m22177id = 1) String str, @Nullable @SafeParcelable.Param(m22177id = 2) String str2, @Nullable @SafeParcelable.Param(m22177id = 3) String str3, @Nullable @SafeParcelable.Param(m22177id = 4) String str4, @SafeParcelable.Param(m22177id = 5) boolean z) {
        this.zza = Preconditions.checkNotEmpty(str);
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Cannot create an EmailAuthCredential without a password or emailLink.");
        }
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = z;
    }

    @NonNull
    public final EmailAuthCredential zza(@NonNull FirebaseUser firebaseUser) {
        this.zzd = firebaseUser.zze();
        this.zze = true;
        return this;
    }

    public static boolean zza(@NonNull String str) {
        ActionCodeUrl parseLink;
        return (TextUtils.isEmpty(str) || (parseLink = ActionCodeUrl.parseLink(str)) == null || parseLink.getOperation() != 4) ? false : true;
    }
}
