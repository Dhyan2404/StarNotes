package com.miui.penengine.ocr;

import android.content.Context;
import android.util.Log;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p015e.C6997f;

/* loaded from: classes7.dex */
public class MiuiRecognize {
    private static final String TAG = "MiuiRecognize";

    public static synchronized void destroyTextRecognize() {
        synchronized (MiuiRecognize.class) {
            C6997f m31243e = C6982b.m31243e();
            if (m31243e != null) {
                m31243e.m31338a();
            } else {
                Log.e(TAG, "Destroy text recognize failed, sFacade is null!");
            }
        }
    }

    public static synchronized boolean isFeatureEnable(Context context) {
        synchronized (MiuiRecognize.class) {
            if (!C6982b.m31249h()) {
                Log.e(TAG, "System environment init error");
                return false;
            }
            C6997f m31243e = C6982b.m31243e();
            if (m31243e != null) {
                return m31243e.m31339a(context);
            }
            Log.e(TAG, "Get feature enable failed, sFacade is null!");
            return false;
        }
    }

    public static synchronized String recognizeText(MiuiInk miuiInk) {
        synchronized (MiuiRecognize.class) {
            C6997f m31243e = C6982b.m31243e();
            if (m31243e != null) {
                return m31243e.m31337a(miuiInk);
            }
            Log.e(TAG, "Recognize text failed, sFacade is null!");
            return null;
        }
    }
}
