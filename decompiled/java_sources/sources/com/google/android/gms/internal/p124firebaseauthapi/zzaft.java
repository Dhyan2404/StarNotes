package com.google.android.gms.internal.p124firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.content.FileProvider;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "PasskeyInfoCreator")
/* loaded from: classes5.dex */
public final class zzaft extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaft> CREATOR = new zzafs();

    @SafeParcelable.Field(getter = "getCredentialId", m22176id = 1)
    private final String zza;

    @SafeParcelable.Field(getter = "getName", m22176id = 2)
    private final String zzb;

    @SafeParcelable.Field(getter = "getDisplayName", m22176id = 3)
    private final String zzc;

    @SafeParcelable.Constructor
    public zzaft(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) String str2, @SafeParcelable.Param(m22177id = 3) String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public static zzaq<zzaft> zza(JSONArray jSONArray) throws JSONException {
        if (jSONArray != null && jSONArray.length() != 0) {
            zzap zzg = zzaq.zzg();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                zzg.zza(new zzaft(jSONObject.getString("credentialId"), jSONObject.getString("name"), jSONObject.getString(FileProvider.f5230t)));
            }
            return zzg.zza();
        }
        return zzaq.zza(new ArrayList());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public static final zzaft zza(JSONObject jSONObject) throws JSONException {
        return new zzaft(jSONObject.getString("credentialId"), jSONObject.getString("name"), jSONObject.getString(FileProvider.f5230t));
    }

    public static final JSONObject zza(zzaft zzaftVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("credentialId", zzaftVar.zza);
        jSONObject.put("name", zzaftVar.zzb);
        jSONObject.put(FileProvider.f5230t, zzaftVar.zzc);
        return jSONObject;
    }
}
