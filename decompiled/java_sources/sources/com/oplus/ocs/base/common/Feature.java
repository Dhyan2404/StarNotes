package com.oplus.ocs.base.common;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes9.dex */
public class Feature implements Parcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new Parcelable.Creator<Feature>() { // from class: com.oplus.ocs.base.common.Feature.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Feature createFromParcel(Parcel parcel) {
            return new Feature(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Feature[] newArray(int i) {
            return new Feature[i];
        }
    };

    /* renamed from: a */
    private String f62984a;

    /* renamed from: b */
    private long f62985b;

    public Feature(String str, long j) {
        this.f62984a = str;
        this.f62985b = j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getName() {
        return this.f62984a;
    }

    public long getVersion() {
        long j = this.f62985b;
        if (j == -1) {
            return -1L;
        }
        return j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f62984a);
        parcel.writeLong(this.f62985b);
    }

    public Feature(Parcel parcel) {
        this.f62984a = parcel.readString();
        this.f62985b = parcel.readLong();
    }
}
