package com.google.android.exoplayer2.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@RequiresApi(17)
/* loaded from: classes5.dex */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {
    public static final int SECURE_MODE_NONE = 0;
    public static final int SECURE_MODE_PROTECTED_PBUFFER = 2;
    public static final int SECURE_MODE_SURFACELESS_CONTEXT = 1;

    /* renamed from: l */
    public static final int f28289l = 1;

    /* renamed from: m */
    public static final int f28290m = 1;

    /* renamed from: n */
    public static final int[] f28291n = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: o */
    public static final int f28292o = 12992;

    /* renamed from: e */
    public final Handler f28293e;

    /* renamed from: f */
    public final int[] f28294f;

    /* renamed from: g */
    @Nullable
    public final TextureImageListener f28295g;

    /* renamed from: h */
    @Nullable
    public EGLDisplay f28296h;

    /* renamed from: i */
    @Nullable
    public EGLContext f28297i;

    /* renamed from: j */
    @Nullable
    public EGLSurface f28298j;

    /* renamed from: k */
    @Nullable
    public SurfaceTexture f28299k;

    /* loaded from: classes5.dex */
    public static final class GlException extends RuntimeException {
        private GlException(String str) {
            super(str);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface SecureMode {
    }

    /* loaded from: classes5.dex */
    public interface TextureImageListener {
        void onFrameAvailable();
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    /* renamed from: a */
    public static EGLConfig m21426a(EGLDisplay eGLDisplay) {
        EGLConfig eGLConfig;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f28291n, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || (eGLConfig = eGLConfigArr[0]) == null) {
            throw new GlException(Util.formatInvariant("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        }
        return eGLConfig;
    }

    /* renamed from: b */
    public static EGLContext m21427b(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, f28292o, 1, 12344}, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new GlException("eglCreateContext failed");
    }

    /* renamed from: c */
    public static EGLSurface m21428c(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i) {
        EGLSurface eglCreatePbufferSurface;
        if (i == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, f28292o, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eglCreatePbufferSurface == null) {
                throw new GlException("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eGLContext)) {
            return eglCreatePbufferSurface;
        }
        throw new GlException("eglMakeCurrent failed");
    }

    /* renamed from: e */
    public static void m21429e(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        GlUtil.checkGlError();
    }

    /* renamed from: f */
    public static EGLDisplay m21430f() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay == null) {
            throw new GlException("eglGetDisplay failed");
        }
        int[] iArr = new int[2];
        if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
            return eglGetDisplay;
        }
        throw new GlException("eglInitialize failed");
    }

    /* renamed from: d */
    public final void m21431d() {
        TextureImageListener textureImageListener = this.f28295g;
        if (textureImageListener != null) {
            textureImageListener.onFrameAvailable();
        }
    }

    public SurfaceTexture getSurfaceTexture() {
        return (SurfaceTexture) Assertions.checkNotNull(this.f28299k);
    }

    public void init(int i) {
        EGLDisplay m21430f = m21430f();
        this.f28296h = m21430f;
        EGLConfig m21426a = m21426a(m21430f);
        EGLContext m21427b = m21427b(this.f28296h, m21426a, i);
        this.f28297i = m21427b;
        this.f28298j = m21428c(this.f28296h, m21426a, m21427b, i);
        m21429e(this.f28294f);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f28294f[0]);
        this.f28299k = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f28293e.post(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void release() {
        this.f28293e.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f28299k;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f28294f, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f28296h;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f28296h;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f28298j;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f28296h, this.f28298j);
            }
            EGLContext eGLContext = this.f28297i;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f28296h, eGLContext);
            }
            if (Util.SDK_INT >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f28296h;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f28296h);
            }
            this.f28296h = null;
            this.f28297i = null;
            this.f28298j = null;
            this.f28299k = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        m21431d();
        SurfaceTexture surfaceTexture = this.f28299k;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public EGLSurfaceTexture(Handler handler, @Nullable TextureImageListener textureImageListener) {
        this.f28293e = handler;
        this.f28295g = textureImageListener;
        this.f28294f = new int[1];
    }
}
