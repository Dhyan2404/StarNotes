package com.oplus.ocs.base.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.oplus.ocs.base.utils.C13073c;
import java.util.List;

/* loaded from: classes9.dex */
public class CapabilityInfo implements Parcelable {
    public static final Parcelable.Creator<CapabilityInfo> CREATOR = new Parcelable.Creator<CapabilityInfo>() { // from class: com.oplus.ocs.base.common.CapabilityInfo.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CapabilityInfo createFromParcel(Parcel parcel) {
            return new CapabilityInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CapabilityInfo[] newArray(int i) {
            return new CapabilityInfo[i];
        }
    };

    /* renamed from: a */
    private List<Feature> f62980a;

    /* renamed from: b */
    private int f62981b;

    /* renamed from: c */
    private AuthResult f62982c;

    /* renamed from: d */
    private IBinder f62983d;
    public String mClassName;

    public CapabilityInfo(List<Feature> list, int i, AuthResult authResult) {
        this(list, i, authResult, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AuthResult getAuthResult() {
        return this.f62982c;
    }

    public IBinder getBinder() {
        return this.f62983d;
    }

    public String getClassName() {
        return this.mClassName;
    }

    public List<Feature> getFeatures() {
        return this.f62980a;
    }

    public int getVersion() {
        return this.f62981b;
    }

    public void setBinder(IBinder iBinder) {
        this.f62983d = iBinder;
    }

    public void setClassName(String str) {
        this.mClassName = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.f62980a);
        parcel.writeInt(this.f62981b);
        C13073c.m52232a(parcel, this.f62982c, TextUtils.isEmpty(this.mClassName) ? AuthResult.class.getName() : this.mClassName);
        parcel.writeStrongBinder(this.f62983d);
    }

    public CapabilityInfo(List<Feature> list, int i, AuthResult authResult, IBinder iBinder) {
        this.f62980a = list;
        this.f62981b = i;
        this.f62982c = authResult;
        this.f62983d = iBinder;
    }

    public CapabilityInfo(Parcel parcel) {
        this.f62980a = parcel.readArrayList(Feature.class.getClassLoader());
        this.f62981b = parcel.readInt();
        this.f62982c = (AuthResult) C13073c.m52231a(parcel, AuthResult.class.getClassLoader(), TextUtils.isEmpty(this.mClassName) ? AuthResult.class.getName() : this.mClassName);
        this.f62983d = parcel.readStrongBinder();
    }
}
