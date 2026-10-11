package com.google.firebase.auth.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p124firebaseauthapi.zzafm;
import com.google.android.gms.internal.p124firebaseauthapi.zzaft;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuthProvider;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.FirebaseUserMetadata;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.MultiFactor;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.UserInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@SafeParcelable.Class(creator = "DefaultFirebaseUserCreator")
/* loaded from: classes6.dex */
public class zzac extends FirebaseUser {
    public static final Parcelable.Creator<zzac> CREATOR = new zzab();

    @SafeParcelable.Field(getter = "getCachedTokenState", m22176id = 1)
    private zzafm zza;

    @SafeParcelable.Field(getter = "getDefaultAuthUserInfo", m22176id = 2)
    private zzy zzb;

    @SafeParcelable.Field(getter = "getFirebaseAppName", m22176id = 3)
    private String zzc;

    @SafeParcelable.Field(getter = "getUserType", m22176id = 4)
    private String zzd;

    @SafeParcelable.Field(getter = "getUserInfos", m22176id = 5)
    private List<zzy> zze;

    @SafeParcelable.Field(getter = "getProviders", m22176id = 6)
    private List<String> zzf;

    @SafeParcelable.Field(getter = "getCurrentVersion", m22176id = 7)
    private String zzg;

    @SafeParcelable.Field(getter = "isAnonymous", m22176id = 8)
    private Boolean zzh;

    @SafeParcelable.Field(getter = "getMetadata", m22176id = 9)
    private zzae zzi;

    @SafeParcelable.Field(getter = "isNewUser", m22176id = 10)
    private boolean zzj;

    @SafeParcelable.Field(getter = "getDefaultOAuthCredential", m22176id = 11)
    private com.google.firebase.auth.zzf zzk;

    @SafeParcelable.Field(getter = "getMultiFactorInfoList", m22176id = 12)
    private zzbg zzl;

    @SafeParcelable.Field(getter = "getEnrolledPasskeys", m22176id = 13)
    private List<zzaft> zzm;

    public zzac(FirebaseApp firebaseApp, List<? extends UserInfo> list) {
        Preconditions.checkNotNull(firebaseApp);
        this.zzc = firebaseApp.getName();
        this.zzd = "com.google.firebase.auth.internal.DefaultFirebaseUser";
        this.zzg = "2";
        zza(list);
    }

    @Override // com.google.firebase.auth.FirebaseUser, com.google.firebase.auth.UserInfo
    @Nullable
    public String getDisplayName() {
        return this.zzb.getDisplayName();
    }

    @Override // com.google.firebase.auth.FirebaseUser, com.google.firebase.auth.UserInfo
    @Nullable
    public String getEmail() {
        return this.zzb.getEmail();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public FirebaseUserMetadata getMetadata() {
        return this.zzi;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public /* synthetic */ MultiFactor getMultiFactor() {
        return new zzag(this);
    }

    @Override // com.google.firebase.auth.FirebaseUser, com.google.firebase.auth.UserInfo
    @Nullable
    public String getPhoneNumber() {
        return this.zzb.getPhoneNumber();
    }

    @Override // com.google.firebase.auth.FirebaseUser, com.google.firebase.auth.UserInfo
    @Nullable
    public Uri getPhotoUrl() {
        return this.zzb.getPhotoUrl();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public List<? extends UserInfo> getProviderData() {
        return this.zze;
    }

    @Override // com.google.firebase.auth.FirebaseUser, com.google.firebase.auth.UserInfo
    @NonNull
    public String getProviderId() {
        return this.zzb.getProviderId();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @Nullable
    public String getTenantId() {
        Map map;
        zzafm zzafmVar = this.zza;
        if (zzafmVar == null || zzafmVar.zzc() == null || (map = (Map) zzbf.zza(this.zza.zzc()).getClaims().get(FirebaseAuthProvider.PROVIDER_ID)) == null) {
            return null;
        }
        return (String) map.get("tenant");
    }

    @Override // com.google.firebase.auth.FirebaseUser, com.google.firebase.auth.UserInfo
    @NonNull
    public String getUid() {
        return this.zzb.getUid();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public boolean isAnonymous() {
        GetTokenResult zza;
        Boolean bool = this.zzh;
        if (bool == null || bool.booleanValue()) {
            zzafm zzafmVar = this.zza;
            String str = "";
            if (zzafmVar != null && (zza = zzbf.zza(zzafmVar.zzc())) != null) {
                str = zza.getSignInProvider();
            }
            boolean z = true;
            if (getProviderData().size() > 1 || (str != null && str.equals("custom"))) {
                z = false;
            }
            this.zzh = Boolean.valueOf(z);
        }
        return this.zzh.booleanValue();
    }

    @Override // com.google.firebase.auth.UserInfo
    public boolean isEmailVerified() {
        return this.zzb.isEmailVerified();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, zzc(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.zze, false);
        SafeParcelWriter.writeStringList(parcel, 6, zzg(), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzg, false);
        SafeParcelWriter.writeBooleanObject(parcel, 8, Boolean.valueOf(isAnonymous()), false);
        SafeParcelWriter.writeParcelable(parcel, 9, getMetadata(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzj);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzk, i, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzl, i, false);
        SafeParcelWriter.writeTypedList(parcel, 13, zzf(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final FirebaseApp zza() {
        return FirebaseApp.getInstance(this.zzc);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final /* synthetic */ FirebaseUser zzb() {
        this.zzh = Boolean.FALSE;
        return this;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final zzafm zzc() {
        return this.zza;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final String zzd() {
        return zzc().zzc();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final String zze() {
        return this.zza.zzf();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final List<zzaft> zzf() {
        return this.zzm;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @Nullable
    public final List<String> zzg() {
        return this.zzf;
    }

    @Nullable
    public final com.google.firebase.auth.zzf zzh() {
        return this.zzk;
    }

    @Nullable
    public final List<MultiFactorInfo> zzi() {
        zzbg zzbgVar = this.zzl;
        return zzbgVar != null ? zzbgVar.zza() : new ArrayList();
    }

    public final List<zzy> zzj() {
        return this.zze;
    }

    public final boolean zzk() {
        return this.zzj;
    }

    public static FirebaseUser zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser) {
        zzac zzacVar = new zzac(firebaseApp, firebaseUser.getProviderData());
        if (firebaseUser instanceof zzac) {
            zzac zzacVar2 = (zzac) firebaseUser;
            zzacVar.zzg = zzacVar2.zzg;
            zzacVar.zzd = zzacVar2.zzd;
            zzacVar.zzi = (zzae) zzacVar2.getMetadata();
        } else {
            zzacVar.zzi = null;
        }
        if (firebaseUser.zzc() != null) {
            zzacVar.zza(firebaseUser.zzc());
        }
        if (!firebaseUser.isAnonymous()) {
            zzacVar.zzb();
        }
        return zzacVar;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final void zzb(List<zzaft> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.zzm = list;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final void zzc(List<MultiFactorInfo> list) {
        this.zzl = zzbg.zza(list);
    }

    @SafeParcelable.Constructor
    public zzac(@SafeParcelable.Param(m22177id = 1) zzafm zzafmVar, @SafeParcelable.Param(m22177id = 2) zzy zzyVar, @SafeParcelable.Param(m22177id = 3) String str, @SafeParcelable.Param(m22177id = 4) String str2, @SafeParcelable.Param(m22177id = 5) List<zzy> list, @SafeParcelable.Param(m22177id = 6) List<String> list2, @SafeParcelable.Param(m22177id = 7) String str3, @SafeParcelable.Param(m22177id = 8) Boolean bool, @SafeParcelable.Param(m22177id = 9) zzae zzaeVar, @SafeParcelable.Param(m22177id = 10) boolean z, @SafeParcelable.Param(m22177id = 11) com.google.firebase.auth.zzf zzfVar, @SafeParcelable.Param(m22177id = 12) zzbg zzbgVar, @SafeParcelable.Param(m22177id = 13) List<zzaft> list3) {
        this.zza = zzafmVar;
        this.zzb = zzyVar;
        this.zzc = str;
        this.zzd = str2;
        this.zze = list;
        this.zzf = list2;
        this.zzg = str3;
        this.zzh = bool;
        this.zzi = zzaeVar;
        this.zzj = z;
        this.zzk = zzfVar;
        this.zzl = zzbgVar;
        this.zzm = list3;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final synchronized FirebaseUser zza(List<? extends UserInfo> list) {
        Preconditions.checkNotNull(list);
        this.zze = new ArrayList(list.size());
        this.zzf = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            UserInfo userInfo = list.get(i);
            if (userInfo.getProviderId().equals(FirebaseAuthProvider.PROVIDER_ID)) {
                this.zzb = (zzy) userInfo;
            } else {
                this.zzf.add(userInfo.getProviderId());
            }
            this.zze.add((zzy) userInfo);
        }
        if (this.zzb == null) {
            this.zzb = this.zze.get(0);
        }
        return this;
    }

    public final zzac zza(String str) {
        this.zzg = str;
        return this;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final void zza(zzafm zzafmVar) {
        this.zza = (zzafm) Preconditions.checkNotNull(zzafmVar);
    }

    public final void zza(@Nullable com.google.firebase.auth.zzf zzfVar) {
        this.zzk = zzfVar;
    }

    public final void zza(boolean z) {
        this.zzj = z;
    }

    public final void zza(zzae zzaeVar) {
        this.zzi = zzaeVar;
    }
}
