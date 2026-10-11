package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.versionedparcelable.VersionedParcel;
import com.bumptech.glide.load.engine.GlideException;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class a1o extends VersionedParcel {

    /* renamed from: y */
    public static final boolean f64214y = false;

    /* renamed from: z */
    public static final String f64215z = "VersionedParcelParcel";

    /* renamed from: q */
    public final SparseIntArray f64216q;

    /* renamed from: r */
    public final Parcel f64217r;

    /* renamed from: s */
    public final int f64218s;

    /* renamed from: t */
    public final int f64219t;

    /* renamed from: u */
    public final String f64220u;

    /* renamed from: v */
    public int f64221v;

    /* renamed from: w */
    public int f64222w;

    /* renamed from: x */
    public int f64223x;

    public a1o(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        int i = this.f64221v;
        if (i >= 0) {
            int i2 = this.f64216q.get(i);
            int dataPosition = this.f64217r.dataPosition();
            this.f64217r.setDataPosition(i2);
            this.f64217r.writeInt(dataPosition - i2);
            this.f64217r.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public VersionedParcel createSubParcel() {
        Parcel parcel = this.f64217r;
        int dataPosition = parcel.dataPosition();
        int i = this.f64222w;
        if (i == this.f64218s) {
            i = this.f64219t;
        }
        return new a1o(parcel, dataPosition, i, this.f64220u + GlideException.C1935a.f14609h, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        return this.f64217r.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() {
        return this.f64217r.readBundle(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() {
        int readInt = this.f64217r.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f64217r.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public CharSequence readCharSequence() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f64217r);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        return this.f64217r.readDouble();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i) {
        while (this.f64222w < this.f64219t) {
            int i2 = this.f64223x;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f64217r.setDataPosition(this.f64222w);
            int readInt = this.f64217r.readInt();
            this.f64223x = this.f64217r.readInt();
            this.f64222w += readInt;
        }
        return this.f64223x == i;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        return this.f64217r.readFloat();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        return this.f64217r.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        return this.f64217r.readLong();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return (T) this.f64217r.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() {
        return this.f64217r.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return this.f64217r.readStrongBinder();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i) {
        closeField();
        this.f64221v = i;
        this.f64216q.put(i, this.f64217r.dataPosition());
        writeInt(0);
        writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z) {
        this.f64217r.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) {
        this.f64217r.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) {
        if (bArr != null) {
            this.f64217r.writeInt(bArr.length);
            this.f64217r.writeByteArray(bArr);
        } else {
            this.f64217r.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeCharSequence(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f64217r, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d) {
        this.f64217r.writeDouble(d);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f) {
        this.f64217r.writeFloat(f);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i) {
        this.f64217r.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j) {
        this.f64217r.writeLong(j);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        this.f64217r.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) {
        this.f64217r.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        this.f64217r.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        this.f64217r.writeStrongInterface(iInterface);
    }

    public a1o(Parcel parcel, int i, int i2, String str, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.f64216q = new SparseIntArray();
        this.f64221v = -1;
        this.f64223x = -1;
        this.f64217r = parcel;
        this.f64218s = i;
        this.f64219t = i2;
        this.f64222w = i;
        this.f64220u = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.f64217r.writeInt(bArr.length);
            this.f64217r.writeByteArray(bArr, i, i2);
        } else {
            this.f64217r.writeInt(-1);
        }
    }
}
