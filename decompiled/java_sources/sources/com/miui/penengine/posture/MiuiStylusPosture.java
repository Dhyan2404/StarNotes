package com.miui.penengine.posture;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p015e.C6995d;
import com.miui.penengine.p015e.C6999h;

/* loaded from: classes7.dex */
public class MiuiStylusPosture {

    /* renamed from: a */
    public static final String f39837a = "MiuiStylusPosture";

    public static synchronized void destroy() {
        synchronized (MiuiStylusPosture.class) {
            C6982b m31239c = C6982b.m31239c();
            m31239c.m31253a(false);
            m31239c.m31254a(1);
        }
    }

    public static synchronized boolean genericMotionEvent(MotionEvent motionEvent) {
        synchronized (MiuiStylusPosture.class) {
            C6999h m31258g = C6982b.m31239c().m31258g();
            if (m31258g != null) {
                return m31258g.m31343a(motionEvent);
            }
            Log.e(f39837a, "Generic motion event failed, sFacade is null!");
            return false;
        }
    }

    public static synchronized int getDegree() {
        synchronized (MiuiStylusPosture.class) {
            C6999h m31258g = C6982b.m31239c().m31258g();
            if (m31258g != null) {
                return m31258g.m31341a();
            }
            Log.e(f39837a, "Get degree failed, sFacade is null!");
            return 0;
        }
    }

    public static synchronized boolean init(Context context) {
        boolean m31255a;
        synchronized (MiuiStylusPosture.class) {
            C6982b m31239c = C6982b.m31239c();
            m31255a = m31239c.m31255a(context, 1);
            if (m31255a) {
                m31239c.m31253a(true);
            } else {
                Log.e(f39837a, "Init stylus posture failed");
            }
        }
        return m31255a;
    }

    public static synchronized void setPreviewBrush(C6995d c6995d) {
        synchronized (MiuiStylusPosture.class) {
            C6999h m31258g = C6982b.m31239c().m31258g();
            if (m31258g != null) {
                m31258g.m31342a(c6995d);
            } else {
                Log.e(f39837a, "Set preview brush failed, sFacade is null!");
            }
        }
    }
}
