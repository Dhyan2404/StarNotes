package com.github.mikephil.charting.data;

import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import com.github.mikephil.charting.utils.Utils;

/* loaded from: classes4.dex */
public class Entry extends BaseEntry implements Parcelable {
    public static final Parcelable.Creator<Entry> CREATOR = new C4593a();

    /* renamed from: x */
    private float f21608x;

    /* renamed from: com.github.mikephil.charting.data.Entry$a */
    /* loaded from: classes4.dex */
    public static class C4593a implements Parcelable.Creator<Entry> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Entry createFromParcel(Parcel parcel) {
            return new Entry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Entry[] newArray(int i) {
            return new Entry[i];
        }
    }

    public Entry() {
        this.f21608x = 0.0f;
    }

    public Entry copy() {
        return new Entry(this.f21608x, getY(), getData());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equalTo(Entry entry) {
        if (entry == null || entry.getData() != getData()) {
            return false;
        }
        float abs = Math.abs(entry.f21608x - this.f21608x);
        float f = Utils.FLOAT_EPSILON;
        return abs <= f && Math.abs(entry.getY() - getY()) <= f;
    }

    public float getX() {
        return this.f21608x;
    }

    public void setX(float f) {
        this.f21608x = f;
    }

    public String toString() {
        return "Entry, x: " + this.f21608x + " y: " + getY();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.f21608x);
        parcel.writeFloat(getY());
        if (getData() == null) {
            parcel.writeInt(0);
        } else {
            if (!(getData() instanceof Parcelable)) {
                throw new ParcelFormatException("Cannot parcel an Entry with non-parcelable data");
            }
            parcel.writeInt(1);
            parcel.writeParcelable((Parcelable) getData(), i);
        }
    }

    public Entry(float f, float f2) {
        super(f2);
        this.f21608x = f;
    }

    public Entry(float f, float f2, Object obj) {
        super(f2, obj);
        this.f21608x = f;
    }

    public Entry(Parcel parcel) {
        this.f21608x = 0.0f;
        this.f21608x = parcel.readFloat();
        setY(parcel.readFloat());
        if (parcel.readInt() == 1) {
            setData(parcel.readParcelable(Object.class.getClassLoader()));
        }
    }
}
