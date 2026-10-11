package com.vivo.penalgoengine.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes10.dex */
public class ShapeData implements Parcelable {
    public static final Parcelable.Creator<ShapeData> CREATOR = new C17037a();
    public static final int CURVE_TYPE_ARC = 18;
    public static final int CURVE_TYPE_ARC_ARROW = 19;
    public static final int CURVE_TYPE_BROKEN_LINE = 22;
    public static final int CURVE_TYPE_CIRCLE = 15;
    public static final int CURVE_TYPE_DIAMOND = 9;
    public static final int CURVE_TYPE_ELLIPSE = 14;
    public static final int CURVE_TYPE_HEART = 10;
    public static final int CURVE_TYPE_HEXAGON = 13;
    public static final int CURVE_TYPE_LINE = 16;
    public static final int CURVE_TYPE_LINE_ARROW = 17;
    public static final int CURVE_TYPE_PARALLELOGRAM = 7;
    public static final int CURVE_TYPE_PENTAGON = 12;
    public static final int CURVE_TYPE_PENTAGRAM = 6;
    public static final int CURVE_TYPE_QUADRANGLE = 21;
    public static final int CURVE_TYPE_RECTANGLE = 8;
    public static final int CURVE_TYPE_REVERSE_ARC_ARROW = 24;
    public static final int CURVE_TYPE_REVERSE_LINE_ARROW = 23;
    public static final int CURVE_TYPE_TRIANGLE = 11;
    public static final int CURVE_TYPE_VORTEX = 20;
    public static final int GESTURE_TYPE_EXCHANGE = 100;
    private List<TouchPoint> touchPoints;
    private int type;

    /* renamed from: com.vivo.penalgoengine.entity.ShapeData$a */
    /* loaded from: classes10.dex */
    public class C17037a implements Parcelable.Creator<ShapeData> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShapeData createFromParcel(Parcel parcel) {
            return new ShapeData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public ShapeData[] newArray(int i) {
            return new ShapeData[i];
        }
    }

    public ShapeData() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<TouchPoint> getTouchPoints() {
        return this.touchPoints;
    }

    public int getType() {
        return this.type;
    }

    public void setTouchPoints(List<TouchPoint> list) {
        this.touchPoints = list;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "ShapeData{type=" + this.type + ", touchPoints=" + this.touchPoints + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeTypedList(this.touchPoints);
    }

    public ShapeData(Parcel parcel) {
        this.type = parcel.readInt();
        this.touchPoints = parcel.createTypedArrayList(TouchPoint.CREATOR);
    }

    public ShapeData(int i, List<TouchPoint> list) {
        this.type = i;
        this.touchPoints = list;
    }
}
