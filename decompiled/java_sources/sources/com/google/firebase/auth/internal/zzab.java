package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.p124firebaseauthapi.zzafm;
import com.google.android.gms.internal.p124firebaseauthapi.zzaft;
import java.util.ArrayList;

/* loaded from: classes6.dex */
public final class zzab implements Parcelable.Creator<zzac> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzac createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzafm zzafmVar = null;
        zzy zzyVar = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        Boolean bool = null;
        zzae zzaeVar = null;
        com.google.firebase.auth.zzf zzfVar = null;
        zzbg zzbgVar = null;
        ArrayList arrayList3 = null;
        boolean z = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    zzafmVar = (zzafm) SafeParcelReader.createParcelable(parcel, readHeader, zzafm.CREATOR);
                    break;
                case 2:
                    zzyVar = (zzy) SafeParcelReader.createParcelable(parcel, readHeader, zzy.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 4:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 5:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, zzy.CREATOR);
                    break;
                case 6:
                    arrayList2 = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 7:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 8:
                    bool = SafeParcelReader.readBooleanObject(parcel, readHeader);
                    break;
                case 9:
                    zzaeVar = (zzae) SafeParcelReader.createParcelable(parcel, readHeader, zzae.CREATOR);
                    break;
                case 10:
                    z = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 11:
                    zzfVar = (com.google.firebase.auth.zzf) SafeParcelReader.createParcelable(parcel, readHeader, com.google.firebase.auth.zzf.CREATOR);
                    break;
                case 12:
                    zzbgVar = (zzbg) SafeParcelReader.createParcelable(parcel, readHeader, zzbg.CREATOR);
                    break;
                case 13:
                    arrayList3 = SafeParcelReader.createTypedList(parcel, readHeader, zzaft.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzac(zzafmVar, zzyVar, str, str2, arrayList, arrayList2, str3, bool, zzaeVar, z, zzfVar, zzbgVar, arrayList3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzac[] newArray(int i) {
        return new zzac[i];
    }
}
