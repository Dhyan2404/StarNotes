package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool;
import java.util.List;

/* loaded from: classes4.dex */
public class MPPointD extends ObjectPool.Poolable {

    /* renamed from: f */
    public static ObjectPool<MPPointD> f21737f;

    /* renamed from: x */
    public double f21738x;

    /* renamed from: y */
    public double f21739y;

    static {
        ObjectPool<MPPointD> create = ObjectPool.create(64, new MPPointD(0.0d, 0.0d));
        f21737f = create;
        create.setReplenishPercentage(0.5f);
    }

    public MPPointD(double d, double d2) {
        this.f21738x = d;
        this.f21739y = d2;
    }

    public static MPPointD getInstance(double d, double d2) {
        MPPointD mPPointD = f21737f.get();
        mPPointD.f21738x = d;
        mPPointD.f21739y = d2;
        return mPPointD;
    }

    public static void recycleInstance(MPPointD mPPointD) {
        f21737f.recycle((ObjectPool<MPPointD>) mPPointD);
    }

    public static void recycleInstances(List<MPPointD> list) {
        f21737f.recycle(list);
    }

    @Override // com.github.mikephil.charting.utils.ObjectPool.Poolable
    public ObjectPool.Poolable instantiate() {
        return new MPPointD(0.0d, 0.0d);
    }

    public String toString() {
        return "MPPointD, x: " + this.f21738x + ", y: " + this.f21739y;
    }
}
