package com.samsung.android.sdk.penremote;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes9.dex */
public class SpenEvent implements Parcelable {
    public static final Parcelable.Creator<SpenEvent> CREATOR = new C13115a();
    public static final int TYPE_AIR_MOTION = 1;
    public static final int TYPE_BUTTON = 0;
    private long mTimeStamp;
    private float[] mValues;

    /* renamed from: com.samsung.android.sdk.penremote.SpenEvent$a */
    /* loaded from: classes9.dex */
    public static class C13115a implements Parcelable.Creator<SpenEvent> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpenEvent createFromParcel(Parcel parcel) {
            return new SpenEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public SpenEvent[] newArray(int i) {
            return new SpenEvent[i];
        }
    }

    public SpenEvent(Parcel parcel) {
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.mTimeStamp = parcel.readLong();
        float[] fArr = new float[parcel.readInt()];
        this.mValues = fArr;
        parcel.readFloatArray(fArr);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public float getValue(int i) {
        float[] fArr = this.mValues;
        if (fArr.length <= i) {
            return -9.8765434E8f;
        }
        return fArr[i];
    }

    public void setTimeStamp(long j) {
        this.mTimeStamp = j;
    }

    public void setValue(int i, float f) {
        this.mValues[i] = f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mTimeStamp);
        parcel.writeInt(this.mValues.length);
        parcel.writeFloatArray(this.mValues);
    }

    public SpenEvent(int i) {
        this.mValues = new float[i];
    }
}
