package com.huawei.stylus.penengine.estimate;

import android.util.Log;
import com.huawei.penkit.impl.estimate.HwStrokeEstimateImpl;
import java.util.List;

/* loaded from: classes4.dex */
public final class HwStrokeEstimate {

    /* renamed from: a */
    public static final String f38999a = "PenKit-" + HwStrokeEstimate.class.getSimpleName();

    /* renamed from: b */
    public static final String f39000b = "com.huawei.penkit.impl.estimate.HwStrokeEstimateImpl";

    /* renamed from: c */
    public static final int f39001c = -1;

    /* renamed from: d */
    public static IHwStrokeEstimate f39002d;

    static {
        try {
            Class.forName(f39000b);
            if (f39002d == null) {
                f39002d = new HwStrokeEstimateImpl();
            }
        } catch (ClassNotFoundException unused) {
            Log.i(f38999a, "sEstimate is unavailable");
        }
    }

    public static synchronized int getEstimateEvent(IHwRecycleQueue iHwRecycleQueue, List<HwMotionEventInfo> list) {
        synchronized (HwStrokeEstimate.class) {
            IHwStrokeEstimate iHwStrokeEstimate = f39002d;
            if (iHwStrokeEstimate != null) {
                return iHwStrokeEstimate.getEstimateEvent(iHwRecycleQueue, list);
            }
            Log.e(f38999a, "HwStrokeEstimate, getEstimateEvent error, sEstimate is null!");
            return -1;
        }
    }

    public static synchronized boolean isFeatureEnable() {
        synchronized (HwStrokeEstimate.class) {
            IHwStrokeEstimate iHwStrokeEstimate = f39002d;
            if (iHwStrokeEstimate != null) {
                return iHwStrokeEstimate.isFeatureEnable();
            }
            Log.e(f38999a, "HwStrokeEstimate, isFeatureEnable error, sEstimate is null!");
            return false;
        }
    }

    public static synchronized void setRefreshRate(float f) {
        synchronized (HwStrokeEstimate.class) {
            IHwStrokeEstimate iHwStrokeEstimate = f39002d;
            if (iHwStrokeEstimate != null) {
                iHwStrokeEstimate.setRefreshRate(f);
            } else {
                Log.e(f38999a, "HwStrokeEstimate, setRefreshRate error, sEstimate is null!");
            }
        }
    }
}
