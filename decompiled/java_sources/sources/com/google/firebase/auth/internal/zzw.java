package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.AdditionalUserInfo;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseUser;
import java.util.List;

@SafeParcelable.Class(creator = "DefaultAuthResultCreator")
/* loaded from: classes6.dex */
public final class zzw implements AuthResult {
    public static final Parcelable.Creator<zzw> CREATOR = new zzv();

    @NonNull
    @SafeParcelable.Field(getter = "getUser", m22176id = 1)
    private zzac zza;

    @Nullable
    @SafeParcelable.Field(getter = "getAdditionalUserInfo", m22176id = 2)
    private zzu zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getOAuthCredential", m22176id = 3)
    private com.google.firebase.auth.zzf zzc;

    public zzw(zzac zzacVar) {
        zzac zzacVar2 = (zzac) Preconditions.checkNotNull(zzacVar);
        this.zza = zzacVar2;
        List<zzy> zzj = zzacVar2.zzj();
        this.zzb = null;
        for (int i = 0; i < zzj.size(); i++) {
            if (!TextUtils.isEmpty(zzj.get(i).zza())) {
                this.zzb = new zzu(zzj.get(i).getProviderId(), zzj.get(i).zza(), zzacVar.zzk());
            }
        }
        if (this.zzb == null) {
            this.zzb = new zzu(zzacVar.zzk());
        }
        this.zzc = zzacVar.zzh();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.firebase.auth.AuthResult
    @Nullable
    public final AdditionalUserInfo getAdditionalUserInfo() {
        return this.zzb;
    }

    @Override // com.google.firebase.auth.AuthResult
    @Nullable
    public final AuthCredential getCredential() {
        return this.zzc;
    }

    @Override // com.google.firebase.auth.AuthResult
    @Nullable
    public final FirebaseUser getUser() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getUser(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, getAdditionalUserInfo(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzw(@NonNull @SafeParcelable.Param(m22177id = 1) zzac zzacVar, @Nullable @SafeParcelable.Param(m22177id = 2) zzu zzuVar, @Nullable @SafeParcelable.Param(m22177id = 3) com.google.firebase.auth.zzf zzfVar) {
        this.zza = zzacVar;
        this.zzb = zzuVar;
        this.zzc = zzfVar;
    }
}
