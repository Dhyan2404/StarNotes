package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p124firebaseauthapi.zzym;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.MultiFactorAssertion;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.MultiFactorResolver;
import com.google.firebase.auth.MultiFactorSession;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import com.sunia.HTREnginev2.zfp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SafeParcelable.Class(creator = "DefaultMultiFactorResolverCreator")
/* loaded from: classes6.dex */
public final class zzai extends MultiFactorResolver {
    public static final Parcelable.Creator<zzai> CREATOR = new zzak();

    @SafeParcelable.Field(getter = "getPhoneMultiFactorInfoList", m22176id = 1)
    private final List<PhoneMultiFactorInfo> zza;

    @SafeParcelable.Field(getter = "getSession", m22176id = 2)
    private final zzaj zzb;

    @SafeParcelable.Field(getter = "getFirebaseAppName", m22176id = 3)
    private final String zzc;

    @SafeParcelable.Field(getter = "getDefaultOAuthCredential", m22176id = 4)
    private final com.google.firebase.auth.zzf zzd;

    @SafeParcelable.Field(getter = "getReauthUser", m22176id = 5)
    private final zzac zze;

    @SafeParcelable.Field(getter = "getTotpMultiFactorInfoList", m22176id = 6)
    private final List<TotpMultiFactorInfo> zzf;

    @SafeParcelable.Constructor
    public zzai(@SafeParcelable.Param(m22177id = 1) List<PhoneMultiFactorInfo> list, @SafeParcelable.Param(m22177id = 2) zzaj zzajVar, @SafeParcelable.Param(m22177id = 3) String str, @Nullable @SafeParcelable.Param(m22177id = 4) com.google.firebase.auth.zzf zzfVar, @Nullable @SafeParcelable.Param(m22177id = 5) zzac zzacVar, @SafeParcelable.Param(m22177id = 6) List<TotpMultiFactorInfo> list2) {
        this.zza = (List) Preconditions.checkNotNull(list);
        this.zzb = (zzaj) Preconditions.checkNotNull(zzajVar);
        this.zzc = Preconditions.checkNotEmpty(str);
        this.zzd = zzfVar;
        this.zze = zzacVar;
        this.zzf = (List) Preconditions.checkNotNull(list2);
    }

    @Override // com.google.firebase.auth.MultiFactorResolver
    public final FirebaseAuth getFirebaseAuth() {
        return FirebaseAuth.getInstance(FirebaseApp.getInstance(this.zzc));
    }

    @Override // com.google.firebase.auth.MultiFactorResolver
    public final List<MultiFactorInfo> getHints() {
        ArrayList arrayList = new ArrayList();
        Iterator<PhoneMultiFactorInfo> it2 = this.zza.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        Iterator<TotpMultiFactorInfo> it3 = this.zzf.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next());
        }
        return arrayList;
    }

    @Override // com.google.firebase.auth.MultiFactorResolver
    public final MultiFactorSession getSession() {
        return this.zzb;
    }

    @Override // com.google.firebase.auth.MultiFactorResolver
    public final Task<AuthResult> resolveSignIn(MultiFactorAssertion multiFactorAssertion) {
        return getFirebaseAuth().zza(multiFactorAssertion, this.zzb, this.zze).continueWithTask(new zfp(this));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.zza, false);
        SafeParcelWriter.writeParcelable(parcel, 2, getSession(), i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zze, i, false);
        SafeParcelWriter.writeTypedList(parcel, 6, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public static zzai zza(zzym zzymVar, FirebaseAuth firebaseAuth, @Nullable FirebaseUser firebaseUser) {
        List<MultiFactorInfo> zzc = zzymVar.zzc();
        ArrayList arrayList = new ArrayList();
        for (MultiFactorInfo multiFactorInfo : zzc) {
            if (multiFactorInfo instanceof PhoneMultiFactorInfo) {
                arrayList.add((PhoneMultiFactorInfo) multiFactorInfo);
            }
        }
        List<MultiFactorInfo> zzc2 = zzymVar.zzc();
        ArrayList arrayList2 = new ArrayList();
        for (MultiFactorInfo multiFactorInfo2 : zzc2) {
            if (multiFactorInfo2 instanceof TotpMultiFactorInfo) {
                arrayList2.add((TotpMultiFactorInfo) multiFactorInfo2);
            }
        }
        return new zzai(arrayList, zzaj.zza(zzymVar.zzc(), zzymVar.zzb()), firebaseAuth.getApp().getName(), zzymVar.zza(), (zzac) firebaseUser, arrayList2);
    }
}
