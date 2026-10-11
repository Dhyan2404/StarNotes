package com.miui.penengine.estimate;

import android.content.Context;
import android.util.Log;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p015e.InterfaceC6994c;
import java.util.List;

/* loaded from: classes7.dex */
public class MiuiStrokeEstimate {
    private static final String TAG = "MiuiStrokeEstimate";

    public static synchronized int getEstimateEvent(List<MiuiMotionEventInfo> list, List<MiuiMotionEventInfo> list2) {
        synchronized (MiuiStrokeEstimate.class) {
            InterfaceC6994c m31245f = C6982b.m31245f();
            if (m31245f != null) {
                return m31245f.mo31316a(list, list2);
            }
            Log.e(TAG, "MiuiStrokeEstimate, getEstimateEvent error, sFacade is null!");
            return -1;
        }
    }

    public static synchronized boolean isFeatureEnable(Context context) {
        synchronized (MiuiStrokeEstimate.class) {
            InterfaceC6994c m31245f = C6982b.m31245f();
            if (m31245f == null) {
                Log.e(TAG, "MiuiStrokeEstimate, isFeatureEnable error, sFacade is null!");
                return false;
            }
            boolean mo31319a = m31245f.mo31319a();
            if (mo31319a) {
                m31245f.mo31318a(context);
            }
            return mo31319a;
        }
    }

    public static synchronized void setRefreshRate(float f) {
        synchronized (MiuiStrokeEstimate.class) {
            InterfaceC6994c m31245f = C6982b.m31245f();
            if (m31245f != null) {
                m31245f.mo31317a(f);
            } else {
                Log.e(TAG, "MiuiStrokeEstimate, setRefreshRate error, sFacade is null!");
            }
        }
    }
}
