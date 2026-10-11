package io.nano.tex;

import android.content.Context;
import io.nano.tex.res.ResManager;

/* loaded from: classes10.dex */
public final class LaTeX {
    private static boolean initialized;
    private static LaTeX instance;
    private volatile boolean isDebug = false;

    static {
        System.loadLibrary("tex");
        initialized = false;
    }

    private LaTeX() {
    }

    private void check() {
        if (!initialized) {
            throw new IllegalStateException("The engine was not initialized, call init(Context) before use.");
        }
    }

    public static synchronized void init(Context context) {
        synchronized (LaTeX.class) {
            if (!initialized) {
                ResManager resManager = new ResManager(context);
                resManager.unpackResources();
                if (!nInit(resManager.getResourcesRootDirectory())) {
                    throw new TeXException("Failed to initialize LaTeX engine.");
                }
            }
            initialized = true;
        }
    }

    public static LaTeX instance() {
        if (instance == null) {
            synchronized (LaTeX.class) {
                if (instance == null) {
                    instance = new LaTeX();
                }
            }
        }
        return instance;
    }

    public static boolean isInitialized() {
        return initialized;
    }

    private static native void nFree();

    private static native boolean nInit(String str);

    private static native long nParse(String str, int i, float f, float f2, int i2);

    private static native void nSetDebug(boolean z);

    public static synchronized void release() {
        synchronized (LaTeX.class) {
            nFree();
            initialized = false;
        }
    }

    public boolean isDebug() {
        return this.isDebug;
    }

    public synchronized TeXRender parse(String str, float f, int i) {
        long nParse;
        check();
        nParse = nParse(str, 0, f, 0.0f, i);
        if (nParse != 0) {
        } else {
            throw new TeXException("Failed to parse LaTeX: " + str);
        }
        return new TeXRender(nParse);
    }

    public synchronized void setDebug(boolean z) {
        nSetDebug(z);
        this.isDebug = z;
    }

    public synchronized TeXRender parse(String str, float f, float f2, int i) {
        long nParse;
        check();
        nParse = nParse(str, 0, f, f2, i);
        if (nParse != 0) {
        } else {
            throw new TeXException("Failed to parse LaTeX: " + str);
        }
        return new TeXRender(nParse);
    }

    public synchronized TeXRender parse(String str, int i, float f, float f2, int i2) {
        TeXRender teXRender;
        check();
        long nParse = nParse(str, i, f, f2, i2);
        if (nParse != 0) {
            teXRender = new TeXRender(nParse);
            if (teXRender.getWidth() > i) {
                teXRender.setTextSize((i / teXRender.getWidth()) * f);
            }
        } else {
            throw new TeXException("Failed to parse LaTeX: " + str);
        }
        return teXRender;
    }
}
