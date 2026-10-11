package com.vivo.penalgoengine.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes10.dex */
public class TouchPoint implements Parcelable {
    public static final Parcelable.Creator<TouchPoint> CREATOR = new C17038a();
    private int action;
    private float pressure;
    private long time;
    private int type;

    /* renamed from: x */
    private float f94469x;

    /* renamed from: y */
    private float f94470y;

    /* renamed from: com.vivo.penalgoengine.entity.TouchPoint$a */
    /* loaded from: classes10.dex */
    public class C17038a implements Parcelable.Creator<TouchPoint> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TouchPoint createFromParcel(Parcel parcel) {
            return new TouchPoint(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public TouchPoint[] newArray(int i) {
            return new TouchPoint[i];
        }
    }

    public TouchPoint() {
        this.type = 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAction() {
        return this.action;
    }

    public float getPressure() {
        return this.pressure;
    }

    public long getTime() {
        return this.time;
    }

    public int getType() {
        return this.type;
    }

    public float getX() {
        return this.f94469x;
    }

    public float getY() {
        return this.f94470y;
    }

    public void setAction(int i) {
        this.action = i;
    }

    public void setPressure(float f) {
        this.pressure = f;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setX(float f) {
        this.f94469x = f;
    }

    public void setY(float f) {
        this.f94470y = f;
    }

    public String toString() {
        return "TouchPoint{action=" + this.action + ", type=" + this.type + ", x=" + this.f94469x + ", y=" + this.f94470y + ", pressure=" + this.pressure + ", time=" + this.time + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.action);
        parcel.writeInt(this.type);
        parcel.writeFloat(this.f94469x);
        parcel.writeFloat(this.f94470y);
        parcel.writeFloat(this.pressure);
        parcel.writeLong(this.time);
    }

    public TouchPoint(Parcel parcel) {
        this.type = 1;
        this.action = parcel.readInt();
        this.type = parcel.readInt();
        this.f94469x = parcel.readFloat();
        this.f94470y = parcel.readFloat();
        this.pressure = parcel.readFloat();
        this.time = parcel.readLong();
    }

    public TouchPoint(int i, int i2, float f, float f2, float f3, long j) {
        this.action = i;
        this.type = i2;
        this.f94469x = f;
        this.f94470y = f2;
        this.pressure = f3;
        this.time = j;
    }
}
