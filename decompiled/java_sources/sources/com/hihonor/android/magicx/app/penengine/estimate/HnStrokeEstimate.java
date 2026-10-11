package com.hihonor.android.magicx.app.penengine.estimate;

import android.util.Log;
import java.util.List;

/* loaded from: classes4.dex */
public final class HnStrokeEstimate {

    /* renamed from: a */
    public static final String f38907a = "PenKit-" + HnStrokeEstimate.class.getSimpleName();

    /* renamed from: b */
    public static final String f38908b = "com.hihonor.penkit.impl.estimate.HnStrokeEstimateImpl";

    /* renamed from: c */
    public static final int f38909c = -1;

    /* renamed from: d */
    public static IHnStrokeEstimate f38910d;

    static {
        try {
            Class.forName(f38908b);
            if (f38910d == null) {
                f38910d = new HnStrokeEstimateImpl();
            }
        } catch (ClassNotFoundException unused) {
            Log.i(f38907a, "sEstimate is unavailable");
        }
    }

    public static synchronized int getEstimateEvent(IHnRecycleQueue iHnRecycleQueue, List<HnMotionEventInfo> list) {
        synchronized (HnStrokeEstimate.class) {
            IHnStrokeEstimate iHnStrokeEstimate = f38910d;
            if (iHnStrokeEstimate != null) {
                return iHnStrokeEstimate.getEstimateEvent(iHnRecycleQueue, list);
            }
            Log.e(f38907a, "HnStrokeEstimate, getEstimateEvent error, sEstimate is null!");
            return -1;
        }
    }

    public static synchronized boolean isFeatureEnable() {
        synchronized (HnStrokeEstimate.class) {
            IHnStrokeEstimate iHnStrokeEstimate = f38910d;
            if (iHnStrokeEstimate != null) {
                return iHnStrokeEstimate.isFeatureEnable();
            }
            Log.e(f38907a, "HnStrokeEstimate, isFeatureEnable error, sEstimate is null!");
            return false;
        }
    }

    public static synchronized void setRefreshRate(float f) {
        synchronized (HnStrokeEstimate.class) {
            IHnStrokeEstimate iHnStrokeEstimate = f38910d;
            if (iHnStrokeEstimate != null) {
                iHnStrokeEstimate.setRefreshRate(f);
            } else {
                Log.e(f38907a, "HnStrokeEstimate, setRefreshRate error, sEstimate is null!");
            }
        }
    }
}
