package com.google.firebase.auth;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p124firebaseauthapi.zzxy;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "PhoneMultiFactorInfoCreator")
/* loaded from: classes6.dex */
public class PhoneMultiFactorInfo extends MultiFactorInfo {

    @NonNull
    public static final Parcelable.Creator<PhoneMultiFactorInfo> CREATOR = new zzar();

    @SafeParcelable.Field(getter = "getUid", m22176id = 1)
    private final String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", m22176id = 2)
    private final String zzb;

    @SafeParcelable.Field(getter = "getEnrollmentTimestamp", m22176id = 3)
    private final long zzc;

    @SafeParcelable.Field(getter = "getPhoneNumber", m22176id = 4)
    private final String zzd;

    @SafeParcelable.Constructor
    public PhoneMultiFactorInfo(@NonNull @SafeParcelable.Param(m22177id = 1) String str, @Nullable @SafeParcelable.Param(m22177id = 2) String str2, @SafeParcelable.Param(m22177id = 3) long j, @NonNull @SafeParcelable.Param(m22177id = 4) String str3) {
        this.zza = Preconditions.checkNotEmpty(str);
        this.zzb = str2;
        this.zzc = j;
        this.zzd = Preconditions.checkNotEmpty(str3);
    }

    @NonNull
    public static PhoneMultiFactorInfo zza(@NonNull JSONObject jSONObject) {
        if (jSONObject.has("enrollmentTimestamp")) {
            return new PhoneMultiFactorInfo(jSONObject.optString(CouchFieldKey.KEY_UID), jSONObject.optString(FileProvider.f5230t), jSONObject.optLong("enrollmentTimestamp"), jSONObject.optString("phoneNumber"));
        }
        throw new IllegalArgumentException("An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a PhoneMultiFactorInfo instance.");
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @Nullable
    public String getDisplayName() {
        return this.zzb;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    public long getEnrollmentTimestamp() {
        return this.zzc;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @NonNull
    public String getFactorId() {
        return "phone";
    }

    @NonNull
    public String getPhoneNumber() {
        return this.zzd;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @NonNull
    public String getUid() {
        return this.zza;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @Nullable
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(MultiFactorInfo.FACTOR_ID_KEY, "phone");
            jSONObject.putOpt(CouchFieldKey.KEY_UID, this.zza);
            jSONObject.putOpt(FileProvider.f5230t, this.zzb);
            jSONObject.putOpt("enrollmentTimestamp", Long.valueOf(this.zzc));
            jSONObject.putOpt("phoneNumber", this.zzd);
            return jSONObject;
        } catch (JSONException e) {
            Log.d("PhoneMultiFactorInfo", "Failed to jsonify this object");
            throw new zzxy(e);
        }
    }

    @Override // android.os.Parcelable
    @SuppressLint({"FirebaseUnknownNullness"})
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getUid(), false);
        SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
        SafeParcelWriter.writeLong(parcel, 3, getEnrollmentTimestamp());
        SafeParcelWriter.writeString(parcel, 4, getPhoneNumber(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
