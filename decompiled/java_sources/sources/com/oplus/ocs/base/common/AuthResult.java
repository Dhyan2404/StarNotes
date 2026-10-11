package com.oplus.ocs.base.common;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes9.dex */
public class AuthResult implements Parcelable {
    public static final Parcelable.Creator<AuthResult> CREATOR = new Parcelable.Creator<AuthResult>() { // from class: com.oplus.ocs.base.common.AuthResult.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AuthResult createFromParcel(Parcel parcel) {
            return new AuthResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ AuthResult[] newArray(int i) {
            return new AuthResult[i];
        }
    };

    /* renamed from: a */
    private String f62975a;

    /* renamed from: b */
    private int f62976b;

    /* renamed from: c */
    private int f62977c;

    /* renamed from: d */
    private int f62978d;

    /* renamed from: e */
    private byte[] f62979e;

    public AuthResult(String str, int i, int i2, int i3, byte[] bArr) {
        this.f62975a = str;
        this.f62976b = i;
        this.f62977c = i2;
        this.f62978d = i3;
        this.f62979e = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getErrrorCode() {
        return this.f62978d;
    }

    public String getPackageName() {
        return this.f62975a;
    }

    public byte[] getPermitBits() {
        return this.f62979e;
    }

    public int getPid() {
        return this.f62977c;
    }

    public int getUid() {
        return this.f62976b;
    }

    public void setErrrorCode(int i) {
        this.f62978d = i;
    }

    public void setPackageName(String str) {
        this.f62975a = str;
    }

    public void setPermitBits(byte[] bArr) {
        this.f62979e = bArr;
    }

    public void setPid(int i) {
        this.f62977c = i;
    }

    public void setUid(int i) {
        this.f62976b = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f62975a);
        parcel.writeInt(this.f62976b);
        parcel.writeInt(this.f62977c);
        parcel.writeInt(this.f62978d);
        parcel.writeByteArray(this.f62979e);
    }

    public AuthResult(Parcel parcel) {
        this.f62975a = parcel.readString();
        this.f62976b = parcel.readInt();
        this.f62977c = parcel.readInt();
        this.f62978d = parcel.readInt();
        this.f62979e = parcel.createByteArray();
    }
}
