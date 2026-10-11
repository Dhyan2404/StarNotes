package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p124firebaseauthapi.zzags;

@SafeParcelable.Class(creator = "TwitterAuthCredentialCreator")
/* loaded from: classes6.dex */
public class TwitterAuthCredential extends AuthCredential {

    @NonNull
    public static final Parcelable.Creator<TwitterAuthCredential> CREATOR = new zzau();

    @SafeParcelable.Field(getter = "getToken", m22176id = 1)
    private String zza;

    @SafeParcelable.Field(getter = "getSecret", m22176id = 2)
    private String zzb;

    @SafeParcelable.Constructor
    public TwitterAuthCredential(@NonNull @SafeParcelable.Param(m22177id = 1) String str, @NonNull @SafeParcelable.Param(m22177id = 2) String str2) {
        this.zza = Preconditions.checkNotEmpty(str);
        this.zzb = Preconditions.checkNotEmpty(str2);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String getProvider() {
        return "twitter.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String getSignInMethod() {
        return "twitter.com";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential zza() {
        return new TwitterAuthCredential(this.zza, this.zzb);
    }

    public static zzags zza(@NonNull TwitterAuthCredential twitterAuthCredential, @Nullable String str) {
        Preconditions.checkNotNull(twitterAuthCredential);
        return new zzags(null, twitterAuthCredential.zza, twitterAuthCredential.getProvider(), null, twitterAuthCredential.zzb, null, str, null, null);
    }
}
