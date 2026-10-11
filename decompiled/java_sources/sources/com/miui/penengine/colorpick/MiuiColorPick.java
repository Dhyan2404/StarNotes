package com.miui.penengine.colorpick;

import android.content.Context;
import android.graphics.ColorSpace;
import android.util.Log;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p015e.C6992a;

/* loaded from: classes7.dex */
public class MiuiColorPick {

    /* renamed from: a */
    public static final String f39604a = "MiuiColorPick";

    /* loaded from: classes7.dex */
    public interface ColorListener {
        void onChange(ColorSpace colorSpace, int i);
    }

    public static synchronized void destroy() {
        synchronized (MiuiColorPick.class) {
            C6982b m31239c = C6982b.m31239c();
            C6992a m31257b = m31239c.m31257b();
            if (m31257b != null) {
                m31257b.m31312a();
                m31239c.m31254a(2);
            } else {
                Log.e(f39604a, "Destroy color picker failed, sFacade is null!");
            }
        }
    }

    public static synchronized boolean init(Context context) {
        boolean m31255a;
        synchronized (MiuiColorPick.class) {
            m31255a = C6982b.m31239c().m31255a(context, 2);
            if (!m31255a) {
                Log.e(f39604a, "Init color picker failed");
            }
        }
        return m31255a;
    }

    public static synchronized void registerColorListener(ColorListener colorListener) {
        synchronized (MiuiColorPick.class) {
            C6992a m31257b = C6982b.m31239c().m31257b();
            if (m31257b != null) {
                m31257b.m31314a(colorListener);
            } else {
                Log.e(f39604a, "Register color listener failed, sFacade is null!");
            }
        }
    }

    public static synchronized boolean triggerColorPicking() {
        synchronized (MiuiColorPick.class) {
            if (C6982b.m31239c().m31259k() == 0) {
                return true;
            }
            Log.e(f39604a, "Trigger color picking failed");
            return false;
        }
    }
}
