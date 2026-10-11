package com.miui.penengine.hover;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import com.miui.penengine.p015e.C6995d;

/* loaded from: classes7.dex */
public class MiuiHoverPreview {

    /* renamed from: a */
    public static C6995d f39834a = null;

    /* renamed from: b */
    public static final String f39835b = "MiuiHoverPreview";

    public static synchronized void destroy() {
        synchronized (MiuiHoverPreview.class) {
            C6995d c6995d = f39834a;
            if (c6995d != null) {
                c6995d.m31325a();
                f39834a = null;
            } else {
                Log.e(f39835b, "Destroy failed, sBrushPreview is null!");
            }
        }
    }

    public static synchronized C6995d getPreviewBrush() {
        C6995d c6995d;
        synchronized (MiuiHoverPreview.class) {
            c6995d = f39834a;
        }
        return c6995d;
    }

    public static synchronized void init(Context context, View view) {
        synchronized (MiuiHoverPreview.class) {
            if (f39834a == null) {
                f39834a = new C6995d(context, view);
            } else {
                Log.e(f39835b, "Repeated initialization");
            }
        }
    }

    public static synchronized void setBrush(Bitmap bitmap) {
        synchronized (MiuiHoverPreview.class) {
            C6995d c6995d = f39834a;
            if (c6995d != null) {
                c6995d.setHoverBrush(bitmap);
            } else {
                Log.e(f39835b, "Set brush failed, sBrushPreview is null!");
            }
        }
    }

    public static synchronized void sizeBrush(float f) {
        synchronized (MiuiHoverPreview.class) {
            C6995d c6995d = f39834a;
            if (c6995d != null) {
                c6995d.m31328b(f);
            } else {
                Log.e(f39835b, "Size brush failed, sBrushPreview is null!");
            }
        }
    }
}
