package com.google.firebase.auth.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p124firebaseauthapi.zzaff;
import com.google.android.gms.internal.p124firebaseauthapi.zzafv;
import com.google.android.gms.internal.p124firebaseauthapi.zzxy;
import com.google.firebase.auth.UserInfo;
import com.onyx.android.sdk.data.common.cloud.Constant;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "DefaultAuthUserInfoCreator")
/* loaded from: classes6.dex */
public final class zzy extends AbstractSafeParcelable implements UserInfo {
    public static final Parcelable.Creator<zzy> CREATOR = new zzx();

    @NonNull
    @SafeParcelable.Field(getter = "getUid", m22176id = 1)
    private String zza;

    @NonNull
    @SafeParcelable.Field(getter = "getProviderId", m22176id = 2)
    private String zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", m22176id = 3)
    private String zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getPhotoUrlString", m22176id = 4)
    private String zzd;

    @Nullable
    private Uri zze;

    @Nullable
    @SafeParcelable.Field(getter = "getEmail", m22176id = 5)
    private String zzf;

    @Nullable
    @SafeParcelable.Field(getter = "getPhoneNumber", m22176id = 6)
    private String zzg;

    @SafeParcelable.Field(getter = "isEmailVerified", m22176id = 7)
    private boolean zzh;

    @Nullable
    @SafeParcelable.Field(getter = "getRawUserInfo", m22176id = 8)
    private String zzi;

    public zzy(zzafv zzafvVar) {
        Preconditions.checkNotNull(zzafvVar);
        this.zza = zzafvVar.zzd();
        this.zzb = Preconditions.checkNotEmpty(zzafvVar.zzf());
        this.zzc = zzafvVar.zzb();
        Uri zza = zzafvVar.zza();
        if (zza != null) {
            this.zzd = zza.toString();
            this.zze = zza;
        }
        this.zzf = zzafvVar.zzc();
        this.zzg = zzafvVar.zze();
        this.zzh = false;
        this.zzi = zzafvVar.zzg();
    }

    @Nullable
    public static zzy zza(@NonNull String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new zzy(jSONObject.optString(Constant.TAG_USER_ID), jSONObject.optString("providerId"), jSONObject.optString("email"), jSONObject.optString("phoneNumber"), jSONObject.optString(FileProvider.f5230t), jSONObject.optString("photoUrl"), jSONObject.optBoolean("isEmailVerified"), jSONObject.optString("rawUserInfo"));
        } catch (JSONException e) {
            Log.d("DefaultAuthUserInfo", "Failed to unpack UserInfo from JSON");
            throw new zzxy(e);
        }
    }

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public final String getDisplayName() {
        return this.zzc;
    }

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public final String getEmail() {
        return this.zzf;
    }

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public final String getPhoneNumber() {
        return this.zzg;
    }

    @Override // com.google.firebase.auth.UserInfo
    @Nullable
    public final Uri getPhotoUrl() {
        if (!TextUtils.isEmpty(this.zzd) && this.zze == null) {
            this.zze = Uri.parse(this.zzd);
        }
        return this.zze;
    }

    @Override // com.google.firebase.auth.UserInfo
    @NonNull
    public final String getProviderId() {
        return this.zzb;
    }

    @Override // com.google.firebase.auth.UserInfo
    @NonNull
    public final String getUid() {
        return this.zza;
    }

    @Override // com.google.firebase.auth.UserInfo
    public final boolean isEmailVerified() {
        return this.zzh;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getUid(), false);
        SafeParcelWriter.writeString(parcel, 2, getProviderId(), false);
        SafeParcelWriter.writeString(parcel, 3, getDisplayName(), false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 5, getEmail(), false);
        SafeParcelWriter.writeString(parcel, 6, getPhoneNumber(), false);
        SafeParcelWriter.writeBoolean(parcel, 7, isEmailVerified());
        SafeParcelWriter.writeString(parcel, 8, this.zzi, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final String zzb() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(Constant.TAG_USER_ID, this.zza);
            jSONObject.putOpt("providerId", this.zzb);
            jSONObject.putOpt(FileProvider.f5230t, this.zzc);
            jSONObject.putOpt("photoUrl", this.zzd);
            jSONObject.putOpt("email", this.zzf);
            jSONObject.putOpt("phoneNumber", this.zzg);
            jSONObject.putOpt("isEmailVerified", Boolean.valueOf(this.zzh));
            jSONObject.putOpt("rawUserInfo", this.zzi);
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.d("DefaultAuthUserInfo", "Failed to jsonify this object");
            throw new zzxy(e);
        }
    }

    public zzy(zzaff zzaffVar, String str) {
        Preconditions.checkNotNull(zzaffVar);
        Preconditions.checkNotEmpty(str);
        this.zza = Preconditions.checkNotEmpty(zzaffVar.zzi());
        this.zzb = str;
        this.zzf = zzaffVar.zzh();
        this.zzc = zzaffVar.zzg();
        Uri zzc = zzaffVar.zzc();
        if (zzc != null) {
            this.zzd = zzc.toString();
            this.zze = zzc;
        }
        this.zzh = zzaffVar.zzm();
        this.zzi = null;
        this.zzg = zzaffVar.zzj();
    }

    @Nullable
    public final String zza() {
        return this.zzi;
    }

    @SafeParcelable.Constructor
    public zzy(@NonNull @SafeParcelable.Param(m22177id = 1) String str, @NonNull @SafeParcelable.Param(m22177id = 2) String str2, @Nullable @SafeParcelable.Param(m22177id = 5) String str3, @Nullable @SafeParcelable.Param(m22177id = 4) String str4, @Nullable @SafeParcelable.Param(m22177id = 3) String str5, @Nullable @SafeParcelable.Param(m22177id = 6) String str6, @SafeParcelable.Param(m22177id = 7) boolean z, @Nullable @SafeParcelable.Param(m22177id = 8) String str7) {
        this.zza = str;
        this.zzb = str2;
        this.zzf = str3;
        this.zzg = str4;
        this.zzc = str5;
        this.zzd = str6;
        if (!TextUtils.isEmpty(str6)) {
            this.zze = Uri.parse(this.zzd);
        }
        this.zzh = z;
        this.zzi = str7;
    }
}
