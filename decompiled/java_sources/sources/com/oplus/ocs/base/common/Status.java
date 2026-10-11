package com.oplus.ocs.base.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.oplus.ocs.base.common.constant.CommonStatusCodes;
import com.oplus.ocs.base.internal.safeparcel.AbstractSafeParcelable;
import com.oplus.ocs.base.internal.safeparcel.C13049b;
import com.oplus.ocs.base.utils.C13075e;
import java.util.Arrays;

/* loaded from: classes9.dex */
public class Status extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new C13047b();

    /* renamed from: a */
    private int f62986a;

    /* renamed from: b */
    private int f62987b;

    /* renamed from: c */
    private String f62988c;

    /* renamed from: d */
    private PendingIntent f62989d;

    public Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.f62986a = i;
        this.f62987b = i2;
        this.f62988c = str;
        this.f62989d = pendingIntent;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Status) {
            Status status = (Status) obj;
            if (this.f62986a == status.f62986a && this.f62987b == status.f62987b && C13075e.m52240a(this.f62988c, status.f62988c) && C13075e.m52240a(this.f62989d, status.f62989d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f62986a), Integer.valueOf(this.f62987b), this.f62988c, this.f62989d});
    }

    public String toString() {
        C13075e.a m52239a = C13075e.m52239a(this);
        String str = this.f62988c;
        if (str == null) {
            str = CommonStatusCodes.getStatusCodeString(this.f62987b);
        }
        return m52239a.m52241a("statusCode", str).m52241a("resolution", this.f62989d).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m52205b = C13049b.m52205b(parcel, 20293);
        C13049b.m52204a(parcel, 1, this.f62987b);
        C13049b.m52204a(parcel, 1000, this.f62986a);
        String str = this.f62988c;
        if (str != null) {
            int m52205b2 = C13049b.m52205b(parcel, 2);
            parcel.writeString(str);
            C13049b.m52203a(parcel, m52205b2);
        }
        PendingIntent pendingIntent = this.f62989d;
        if (pendingIntent != null) {
            int m52205b3 = C13049b.m52205b(parcel, 3);
            pendingIntent.writeToParcel(parcel, i);
            C13049b.m52203a(parcel, m52205b3);
        }
        C13049b.m52203a(parcel, m52205b);
    }
}
