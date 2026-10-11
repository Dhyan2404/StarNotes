package com.github.mikephil.charting.utils;

import android.os.Parcel;
import android.os.Parcelable;
import com.github.mikephil.charting.utils.ObjectPool;
import java.util.List;

/* loaded from: classes4.dex */
public class MPPointF extends ObjectPool.Poolable {
    public static final Parcelable.Creator<MPPointF> CREATOR;

    /* renamed from: f */
    public static ObjectPool<MPPointF> f21740f;

    /* renamed from: x */
    public float f21741x;

    /* renamed from: y */
    public float f21742y;

    /* renamed from: com.github.mikephil.charting.utils.MPPointF$a */
    /* loaded from: classes4.dex */
    public static class C4601a implements Parcelable.Creator<MPPointF> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MPPointF createFromParcel(Parcel parcel) {
            MPPointF mPPointF = new MPPointF(0.0f, 0.0f);
            mPPointF.my_readFromParcel(parcel);
            return mPPointF;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public MPPointF[] newArray(int i) {
            return new MPPointF[i];
        }
    }

    static {
        ObjectPool<MPPointF> create = ObjectPool.create(32, new MPPointF(0.0f, 0.0f));
        f21740f = create;
        create.setReplenishPercentage(0.5f);
        CREATOR = new C4601a();
    }

    public MPPointF() {
    }

    public static MPPointF getInstance(float f, float f2) {
        MPPointF mPPointF = f21740f.get();
        mPPointF.f21741x = f;
        mPPointF.f21742y = f2;
        return mPPointF;
    }

    public static void recycleInstance(MPPointF mPPointF) {
        f21740f.recycle((ObjectPool<MPPointF>) mPPointF);
    }

    public static void recycleInstances(List<MPPointF> list) {
        f21740f.recycle(list);
    }

    public float getX() {
        return this.f21741x;
    }

    public float getY() {
        return this.f21742y;
    }

    @Override // com.github.mikephil.charting.utils.ObjectPool.Poolable
    public ObjectPool.Poolable instantiate() {
        return new MPPointF(0.0f, 0.0f);
    }

    public void my_readFromParcel(Parcel parcel) {
        this.f21741x = parcel.readFloat();
        this.f21742y = parcel.readFloat();
    }

    public MPPointF(float f, float f2) {
        this.f21741x = f;
        this.f21742y = f2;
    }
}
