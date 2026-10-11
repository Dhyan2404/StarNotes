package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SafeParcelable.Class(creator = "MultiFactorInfoListCreator")
/* loaded from: classes6.dex */
public final class zzbg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbg> CREATOR = new zzbj();

    @SafeParcelable.Field(getter = "getPhoneMultiFactorInfoList", m22176id = 1)
    private final List<PhoneMultiFactorInfo> zza;

    @SafeParcelable.Field(getter = "getTotpMultiFactorInfoList", m22176id = 2)
    private final List<TotpMultiFactorInfo> zzb;

    @SafeParcelable.Constructor
    public zzbg(@SafeParcelable.Param(m22177id = 1) List<PhoneMultiFactorInfo> list, @SafeParcelable.Param(m22177id = 2) List<TotpMultiFactorInfo> list2) {
        this.zza = list == null ? new ArrayList<>() : list;
        this.zzb = list2 == null ? new ArrayList<>() : list2;
    }

    public static zzbg zza(List<MultiFactorInfo> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (MultiFactorInfo multiFactorInfo : list) {
            if (multiFactorInfo instanceof PhoneMultiFactorInfo) {
                arrayList.add((PhoneMultiFactorInfo) multiFactorInfo);
            } else if (multiFactorInfo instanceof TotpMultiFactorInfo) {
                arrayList2.add((TotpMultiFactorInfo) multiFactorInfo);
            }
        }
        return new zzbg(arrayList, arrayList2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.zza, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final List<MultiFactorInfo> zza() {
        ArrayList arrayList = new ArrayList();
        Iterator<PhoneMultiFactorInfo> it2 = this.zza.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        Iterator<TotpMultiFactorInfo> it3 = this.zzb.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next());
        }
        return arrayList;
    }
}
