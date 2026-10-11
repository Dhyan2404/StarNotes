package com.blankj.utilcode.util;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.util.Log;
import java.io.IOException;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes3.dex */
public final class FlashlightUtils {

    /* renamed from: a */
    public static Camera f13744a;

    /* renamed from: b */
    public static SurfaceTexture f13745b;

    public FlashlightUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static boolean m8088a() {
        if (f13744a == null) {
            try {
                f13744a = Camera.open(0);
                f13745b = new SurfaceTexture(0);
            } catch (Throwable th) {
                Log.e("FlashlightUtils", "init failed: ", th);
                return false;
            }
        }
        if (f13744a != null) {
            return true;
        }
        Log.e("FlashlightUtils", "init failed.");
        return false;
    }

    public static void destroy() {
        Camera camera = f13744a;
        if (camera == null) {
            return;
        }
        camera.release();
        f13745b = null;
        f13744a = null;
    }

    public static boolean isFlashlightEnable() {
        return Utils.getApp().getPackageManager().hasSystemFeature("android.hardware.camera.flash");
    }

    public static boolean isFlashlightOn() {
        if (m8088a()) {
            return "torch".equals(f13744a.getParameters().getFlashMode());
        }
        return false;
    }

    public static void setFlashlightStatus(boolean z) {
        if (m8088a()) {
            Camera.Parameters parameters = f13744a.getParameters();
            if (!z) {
                if (DebugKt.DEBUG_PROPERTY_VALUE_OFF.equals(parameters.getFlashMode())) {
                    return;
                }
                parameters.setFlashMode(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
                f13744a.setParameters(parameters);
                return;
            }
            if ("torch".equals(parameters.getFlashMode())) {
                return;
            }
            try {
                f13744a.setPreviewTexture(f13745b);
                f13744a.startPreview();
                parameters.setFlashMode("torch");
                f13744a.setParameters(parameters);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
