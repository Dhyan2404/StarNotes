package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "PhoneAuthCredentialCreator")
/* loaded from: classes6.dex */
public class PhoneAuthCredential extends AuthCredential implements Cloneable {

    @NonNull
    public static final Parcelable.Creator<PhoneAuthCredential> CREATOR = new zzap();

    @Nullable
    @SafeParcelable.Field(getter = "getSessionInfo", m22176id = 1)
    private String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getSmsCode", m22176id = 2)
    private String zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getPhoneNumber", m22176id = 4)
    private String zzc;

    @SafeParcelable.Field(getter = "getAutoCreate", m22176id = 5)
    private boolean zzd;

    @Nullable
    @SafeParcelable.Field(getter = "getTemporaryProof", m22176id = 6)
    private String zze;

    @SafeParcelable.Constructor
    public PhoneAuthCredential(@Nullable @SafeParcelable.Param(m22177id = 1) String str, @Nullable @SafeParcelable.Param(m22177id = 2) String str2, @Nullable @SafeParcelable.Param(m22177id = 4) String str3, @SafeParcelable.Param(m22177id = 5) boolean z, @Nullable @SafeParcelable.Param(m22177id = 6) String str4) {
        Preconditions.checkArgument(((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4))) ? false : true, "Cannot create PhoneAuthCredential without either sessionInfo + smsCode or temporary proof + phoneNumber.");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = z;
        this.zze = str4;
    }

    @NonNull
    public static PhoneAuthCredential zzb(@NonNull String str, @NonNull String str2) {
        return new PhoneAuthCredential(null, null, str, true, str2);
    }

    @NonNull
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new PhoneAuthCredential(this.zza, getSmsCode(), this.zzc, this.zzd, this.zze);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String getProvider() {
        return "phone";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String getSignInMethod() {
        return "phone";
    }

    @Nullable
    public String getSmsCode() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, getSmsCode(), false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential zza() {
        return (PhoneAuthCredential) clone();
    }

    @Nullable
    public final String zzc() {
        return this.zza;
    }

    @Nullable
    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        return this.zzd;
    }

    @NonNull
    public static PhoneAuthCredential zza(@NonNull String str, @NonNull String str2) {
        return new PhoneAuthCredential(str, str2, null, true, null);
    }

    @Nullable
    public final String zzb() {
        return this.zzc;
    }

    @NonNull
    public final PhoneAuthCredential zza(boolean z) {
        this.zzd = false;
        return this;
    }
}
