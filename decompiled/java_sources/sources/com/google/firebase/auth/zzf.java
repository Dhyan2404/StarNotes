package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p124firebaseauthapi.zzags;
import com.google.android.gms.internal.p124firebaseauthapi.zzah;

@SafeParcelable.Class(creator = "DefaultOAuthCredentialCreator")
/* loaded from: classes6.dex */
public class zzf extends OAuthCredential {
    public static final Parcelable.Creator<zzf> CREATOR = new zze();

    @SafeParcelable.Field(getter = "getProvider", m22176id = 1)
    private final String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getIdToken", m22176id = 2)
    private final String zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getAccessToken", m22176id = 3)
    private final String zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getWebSignInCredential", m22176id = 4)
    private final zzags zzd;

    @Nullable
    @SafeParcelable.Field(getter = "getPendingToken", m22176id = 5)
    private final String zze;

    @Nullable
    @SafeParcelable.Field(getter = "getSecret", m22176id = 6)
    private final String zzf;

    @Nullable
    @SafeParcelable.Field(getter = "getRawNonce", m22176id = 7)
    private final String zzg;

    @SafeParcelable.Constructor
    public zzf(@Nullable @SafeParcelable.Param(m22177id = 1) String str, @Nullable @SafeParcelable.Param(m22177id = 2) String str2, @Nullable @SafeParcelable.Param(m22177id = 3) String str3, @Nullable @SafeParcelable.Param(m22177id = 4) zzags zzagsVar, @Nullable @SafeParcelable.Param(m22177id = 5) String str4, @Nullable @SafeParcelable.Param(m22177id = 6) String str5, @Nullable @SafeParcelable.Param(m22177id = 7) String str6) {
        this.zza = zzah.zzb(str);
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzagsVar;
        this.zze = str4;
        this.zzf = str5;
        this.zzg = str6;
    }

    @Override // com.google.firebase.auth.OAuthCredential
    @Nullable
    public String getAccessToken() {
        return this.zzc;
    }

    @Override // com.google.firebase.auth.OAuthCredential
    @Nullable
    public String getIdToken() {
        return this.zzb;
    }

    @Override // com.google.firebase.auth.AuthCredential
    public String getProvider() {
        return this.zza;
    }

    @Override // com.google.firebase.auth.OAuthCredential
    @Nullable
    public String getSecret() {
        return this.zzf;
    }

    @Override // com.google.firebase.auth.AuthCredential
    public String getSignInMethod() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getProvider(), false);
        SafeParcelWriter.writeString(parcel, 2, getIdToken(), false);
        SafeParcelWriter.writeString(parcel, 3, getAccessToken(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.writeString(parcel, 6, getSecret(), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzg, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.firebase.auth.AuthCredential
    public final AuthCredential zza() {
        return new zzf(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg);
    }

    public static zzf zza(zzags zzagsVar) {
        Preconditions.checkNotNull(zzagsVar, "Must specify a non-null webSignInCredential");
        return new zzf(null, null, null, zzagsVar, null, null, null);
    }

    public static zzf zza(String str, String str2, String str3) {
        return zza(str, str2, str3, null, null);
    }

    public static zzf zza(String str, String str2, String str3, @Nullable String str4, @Nullable String str5) {
        Preconditions.checkNotEmpty(str, "Must specify a non-empty providerId");
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        return new zzf(str, str2, str3, null, str4, str5, null);
    }

    public static zzf zza(String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        Preconditions.checkNotEmpty(str, "Must specify a non-empty providerId");
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        return new zzf(str, str2, str3, null, null, null, str4);
    }

    public static zzags zza(zzf zzfVar, @Nullable String str) {
        Preconditions.checkNotNull(zzfVar);
        zzags zzagsVar = zzfVar.zzd;
        return zzagsVar != null ? zzagsVar : new zzags(zzfVar.getIdToken(), zzfVar.getAccessToken(), zzfVar.getProvider(), null, zzfVar.getSecret(), null, str, zzfVar.zze, zzfVar.zzg);
    }
}
