package com.miui.penengine.onestroke;

import android.content.Context;
import android.graphics.Path;
import android.util.Log;
import android.view.MotionEvent;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p015e.C6996e;

/* loaded from: classes7.dex */
public class MiuiOneStroke {
    private static final String TAG = "MiuiOneStroke";

    public static synchronized int destroyShapeRecognize() {
        synchronized (MiuiOneStroke.class) {
            C6996e m31242d = C6982b.m31242d();
            if (m31242d != null) {
                return m31242d.m31330a();
            }
            Log.e(TAG, "MiuiOneStroke, destroyShapeRecognize error, sFacade is null!");
            return -1;
        }
    }

    public static synchronized Path getPath() {
        synchronized (MiuiOneStroke.class) {
            C6996e m31242d = C6982b.m31242d();
            if (m31242d == null) {
                return null;
            }
            return m31242d.m31334b();
        }
    }

    public static synchronized boolean isFeatureEnable(Context context) {
        synchronized (MiuiOneStroke.class) {
            if (!C6982b.m31249h()) {
                Log.e(TAG, "System environment init error");
                return false;
            }
            C6996e c6996e = C6982b.f39553p;
            if (c6996e == null) {
                Log.e(TAG, "MiuiOneStroke, isFeatureEnable error, sFacade is null!");
                return false;
            }
            boolean m31335c = c6996e.m31335c();
            if (!m31335c || c6996e.m31333a(context)) {
                return m31335c;
            }
            return false;
        }
    }

    public static synchronized void processTouchEvent(MotionEvent motionEvent) {
        synchronized (MiuiOneStroke.class) {
            C6996e m31242d = C6982b.m31242d();
            if (m31242d != null) {
                m31242d.m31332a(motionEvent);
            }
        }
    }

    public static synchronized void setStopTime(int i) {
        synchronized (MiuiOneStroke.class) {
            C6996e m31242d = C6982b.m31242d();
            if (m31242d != null) {
                m31242d.m31331a(i);
            }
        }
    }
}
