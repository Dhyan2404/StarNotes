package com.miui.penengine.touchfilm;

import android.content.Context;
import android.util.Log;
import android.view.KeyEvent;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p015e.C7001j;

/* loaded from: classes7.dex */
public class MiuiTouchFilmUtils {
    public static final int SHOW_BRUSH_SETTINGS = 4;
    public static final int SHOW_COLOR_WHEEL = 3;
    public static final int STYLUS_SLIDE_DOWN = 6;
    public static final int STYLUS_SLIDE_UP = 5;
    public static final int SWITCH_BETWEEN_BRUSH_AND_ERASER = 1;
    public static final int SWITCH_TO_PREVIOUS_BRUSH = 2;
    public static final int UNKNOWN_SETTINGS_FUNCTION = 0;

    /* renamed from: a */
    public static final String f39838a = "MiuiTouchFilmUtils";

    /* loaded from: classes7.dex */
    public interface TouchFilmListener {
        void onBrushPreviewChanged(boolean z);

        void onTouchFilmTriggered(int i);
    }

    public static synchronized boolean init(Context context, TouchFilmListener touchFilmListener) {
        synchronized (MiuiTouchFilmUtils.class) {
            C6982b m31239c = C6982b.m31239c();
            boolean m31255a = m31239c.m31255a(context, 4);
            C7001j m31252j = C6982b.m31252j();
            if (m31252j == null || !m31255a) {
                Log.e(f39838a, "Init error, sFacade is null!");
                return false;
            }
            m31252j.m31357a(context, touchFilmListener);
            m31239c.m31256b(true);
            return true;
        }
    }

    public static synchronized void onDestroy() {
        synchronized (MiuiTouchFilmUtils.class) {
            C6982b m31239c = C6982b.m31239c();
            C7001j m31252j = C6982b.m31252j();
            if (m31252j != null) {
                m31252j.m31359b();
                m31239c.m31256b(false);
            } else {
                Log.e(f39838a, "Destroy error, sFacade is null!");
            }
            m31239c.m31254a(4);
        }
    }

    public static synchronized boolean onDispatchKeyEvent(KeyEvent keyEvent) {
        synchronized (MiuiTouchFilmUtils.class) {
            C7001j m31252j = C6982b.m31252j();
            if (m31252j != null) {
                return m31252j.m31358a(keyEvent);
            }
            Log.e(f39838a, "Handle key event error, sFacade is null!");
            return false;
        }
    }
}
