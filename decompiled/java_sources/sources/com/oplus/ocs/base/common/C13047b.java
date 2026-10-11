package com.oplus.ocs.base.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.oplus.ocs.base.internal.safeparcel.C13048a;

/* renamed from: com.oplus.ocs.base.common.b */
/* loaded from: classes9.dex */
final class C13047b implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status createFromParcel(Parcel parcel) {
        Parcelable parcelable;
        int readInt = parcel.readInt();
        int m52201b = C13048a.m52201b(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if ((readInt & 65535) != 20293) {
            throw new C13048a.a("Expected object header. Got 0x" + Integer.toHexString(readInt));
        }
        int i = m52201b + dataPosition;
        if (i < dataPosition || i > parcel.dataSize()) {
            throw new C13048a.a("Size read is invalid start=" + dataPosition + " end=" + i);
        }
        int i2 = 0;
        int i3 = 0;
        String str = null;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < i) {
            int readInt2 = parcel.readInt();
            int i4 = readInt2 & 65535;
            if (i4 == 1) {
                i3 = C13048a.m52200a(parcel, readInt2);
            } else if (i4 == 2) {
                int m52201b2 = C13048a.m52201b(parcel, readInt2);
                int dataPosition2 = parcel.dataPosition();
                if (m52201b2 == 0) {
                    str = null;
                } else {
                    String readString = parcel.readString();
                    parcel.setDataPosition(dataPosition2 + m52201b2);
                    str = readString;
                }
            } else if (i4 == 3) {
                Parcelable.Creator creator = PendingIntent.CREATOR;
                int m52201b3 = C13048a.m52201b(parcel, readInt2);
                int dataPosition3 = parcel.dataPosition();
                if (m52201b3 == 0) {
                    parcelable = null;
                } else {
                    parcelable = (Parcelable) creator.createFromParcel(parcel);
                    parcel.setDataPosition(dataPosition3 + m52201b3);
                }
                pendingIntent = (PendingIntent) parcelable;
            } else if (i4 != 1000) {
                parcel.setDataPosition(parcel.dataPosition() + C13048a.m52201b(parcel, readInt2));
            } else {
                i2 = C13048a.m52200a(parcel, readInt2);
            }
        }
        if (parcel.dataPosition() == i) {
            return new Status(i2, i3, str, pendingIntent);
        }
        throw new C13048a.a("Overread allowed size end=".concat(String.valueOf(i)));
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}
