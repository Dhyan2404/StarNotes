package com.google.android.exoplayer2.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.internal.ManufacturerUtils;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class GlUtil {
    public static final int RECTANGLE_VERTICES_COUNT = 4;

    /* renamed from: a */
    public static final String f28343a = "GlUtil";

    /* renamed from: b */
    public static final String f28344b = "EGL_EXT_protected_content";

    /* renamed from: c */
    public static final String f28345c = "EGL_KHR_surfaceless_context";

    /* renamed from: d */
    public static final int f28346d = 35815;
    public static boolean glAssertionsEnabled;

    /* renamed from: g */
    public static final int[] f28349g = {12344};

    /* renamed from: e */
    public static final int f28347e = 12445;

    /* renamed from: f */
    public static final int f28348f = 13120;

    /* renamed from: h */
    public static final int[] f28350h = {f28347e, f28348f, 12344};

    /* renamed from: i */
    public static final int[] f28351i = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};

    /* renamed from: j */
    public static final int[] f28352j = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    /* loaded from: classes5.dex */
    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Program {

        /* renamed from: a */
        public final int f28353a;

        /* renamed from: b */
        public final C5012b[] f28354b;

        /* renamed from: c */
        public final C5013c[] f28355c;

        /* renamed from: d */
        public final Map<String, C5012b> f28356d;

        /* renamed from: e */
        public final Map<String, C5013c> f28357e;

        public Program(Context context, String str, String str2) throws IOException {
            this(GlUtil.loadAsset(context, str), GlUtil.loadAsset(context, str2));
        }

        /* renamed from: a */
        public final int m21463a(String str) {
            return GlUtil.m21459i(this.f28353a, str);
        }

        public void bindAttributesAndUniforms() {
            for (C5012b c5012b : this.f28354b) {
                c5012b.m21471a();
            }
            for (C5013c c5013c : this.f28355c) {
                c5013c.m21474a();
            }
        }

        public void delete() {
            GLES20.glDeleteProgram(this.f28353a);
            GlUtil.checkGlError();
        }

        public int getAttributeArrayLocationAndEnable(String str) {
            int m21463a = m21463a(str);
            GLES20.glEnableVertexAttribArray(m21463a);
            GlUtil.checkGlError();
            return m21463a;
        }

        public int getUniformLocation(String str) {
            return GlUtil.m21460j(this.f28353a, str);
        }

        public void setBufferAttribute(String str, float[] fArr, int i) {
            ((C5012b) Assertions.checkNotNull(this.f28356d.get(str))).m21472c(fArr, i);
        }

        public void setFloatUniform(String str, float f) {
            ((C5013c) Assertions.checkNotNull(this.f28357e.get(str))).m21475c(f);
        }

        public void setFloatsUniform(String str, float[] fArr) {
            ((C5013c) Assertions.checkNotNull(this.f28357e.get(str))).m21476d(fArr);
        }

        public void setSamplerTexIdUniform(String str, int i, int i2) {
            ((C5013c) Assertions.checkNotNull(this.f28357e.get(str))).m21477e(i, i2);
        }

        public void use() {
            GLES20.glUseProgram(this.f28353a);
            GlUtil.checkGlError();
        }

        public Program(String str, String str2) {
            int glCreateProgram = GLES20.glCreateProgram();
            this.f28353a = glCreateProgram;
            GlUtil.checkGlError();
            GlUtil.m21457g(glCreateProgram, 35633, str);
            GlUtil.m21457g(glCreateProgram, 35632, str2);
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = {0};
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                String valueOf = String.valueOf(GLES20.glGetProgramInfoLog(glCreateProgram));
                GlUtil.m21462l(valueOf.length() != 0 ? "Unable to link shader program: \n".concat(valueOf) : new String("Unable to link shader program: \n"));
            }
            GLES20.glUseProgram(glCreateProgram);
            this.f28356d = new HashMap();
            int[] iArr2 = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35721, iArr2, 0);
            this.f28354b = new C5012b[iArr2[0]];
            for (int i = 0; i < iArr2[0]; i++) {
                C5012b m21470b = C5012b.m21470b(this.f28353a, i);
                this.f28354b[i] = m21470b;
                this.f28356d.put(m21470b.f28358a, m21470b);
            }
            this.f28357e = new HashMap();
            int[] iArr3 = new int[1];
            GLES20.glGetProgramiv(this.f28353a, 35718, iArr3, 0);
            this.f28355c = new C5013c[iArr3[0]];
            for (int i2 = 0; i2 < iArr3[0]; i2++) {
                C5013c m21473b = C5013c.m21473b(this.f28353a, i2);
                this.f28355c[i2] = m21473b;
                this.f28357e.put(m21473b.f28363a, m21473b);
            }
            GlUtil.checkGlError();
        }
    }

    @RequiresApi(17)
    /* renamed from: com.google.android.exoplayer2.util.GlUtil$a */
    /* loaded from: classes5.dex */
    public static final class C5011a {
        @DoNotInline
        /* renamed from: a */
        public static EGLContext m21464a(EGLDisplay eGLDisplay, int i, int[] iArr) {
            EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, m21468e(eGLDisplay, iArr), EGL14.EGL_NO_CONTEXT, new int[]{12440, i, 12344}, 0);
            if (eglCreateContext == null) {
                EGL14.eglTerminate(eGLDisplay);
                StringBuilder sb = new StringBuilder(103);
                sb.append("eglCreateContext() failed to create a valid context. The device may not support EGL version ");
                sb.append(i);
                GlUtil.m21462l(sb.toString());
            }
            GlUtil.checkGlError();
            return eglCreateContext;
        }

        @DoNotInline
        /* renamed from: b */
        public static EGLDisplay m21465b() {
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            GlUtil.m21458h(!eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY), "No EGL display.");
            if (!EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0)) {
                GlUtil.m21462l("Error in eglInitialize.");
            }
            GlUtil.checkGlError();
            return eglGetDisplay;
        }

        @DoNotInline
        /* renamed from: c */
        public static void m21466c(@Nullable EGLDisplay eGLDisplay, @Nullable EGLContext eGLContext) {
            if (eGLDisplay == null) {
                return;
            }
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            int eglGetError = EGL14.eglGetError();
            boolean z = eglGetError == 12288;
            StringBuilder sb = new StringBuilder(36);
            sb.append("Error releasing context: ");
            sb.append(eglGetError);
            GlUtil.m21458h(z, sb.toString());
            if (eGLContext != null) {
                EGL14.eglDestroyContext(eGLDisplay, eGLContext);
                int eglGetError2 = EGL14.eglGetError();
                boolean z2 = eglGetError2 == 12288;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Error destroying context: ");
                sb2.append(eglGetError2);
                GlUtil.m21458h(z2, sb2.toString());
            }
            EGL14.eglReleaseThread();
            int eglGetError3 = EGL14.eglGetError();
            boolean z3 = eglGetError3 == 12288;
            StringBuilder sb3 = new StringBuilder(35);
            sb3.append("Error releasing thread: ");
            sb3.append(eglGetError3);
            GlUtil.m21458h(z3, sb3.toString());
            EGL14.eglTerminate(eGLDisplay);
            int eglGetError4 = EGL14.eglGetError();
            boolean z4 = eglGetError4 == 12288;
            StringBuilder sb4 = new StringBuilder(38);
            sb4.append("Error terminating display: ");
            sb4.append(eglGetError4);
            GlUtil.m21458h(z4, sb4.toString());
        }

        @DoNotInline
        /* renamed from: d */
        public static void m21467d(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetIntegerv(36006, iArr, 0);
            if (iArr[0] != 0) {
                GLES20.glBindFramebuffer(36160, 0);
            }
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
            GLES20.glViewport(0, 0, i, i2);
        }

        @DoNotInline
        /* renamed from: e */
        private static EGLConfig m21468e(EGLDisplay eGLDisplay, int[] iArr) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (!EGL14.eglChooseConfig(eGLDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                GlUtil.m21462l("eglChooseConfig failed.");
            }
            return eGLConfigArr[0];
        }

        @DoNotInline
        /* renamed from: f */
        public static EGLSurface m21469f(EGLDisplay eGLDisplay, Object obj, int[] iArr, int[] iArr2) {
            return EGL14.eglCreateWindowSurface(eGLDisplay, m21468e(eGLDisplay, iArr), obj, iArr2, 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.GlUtil$b */
    /* loaded from: classes5.dex */
    public static final class C5012b {

        /* renamed from: a */
        public final String f28358a;

        /* renamed from: b */
        public final int f28359b;

        /* renamed from: c */
        public final int f28360c;

        /* renamed from: d */
        @Nullable
        public Buffer f28361d;

        /* renamed from: e */
        public int f28362e;

        public C5012b(String str, int i, int i2) {
            this.f28358a = str;
            this.f28359b = i;
            this.f28360c = i2;
        }

        /* renamed from: b */
        public static C5012b m21470b(int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i, 35722, iArr, 0);
            int i3 = iArr[0];
            byte[] bArr = new byte[i3];
            GLES20.glGetActiveAttrib(i, i2, i3, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, GlUtil.m21461k(bArr));
            return new C5012b(str, i2, GlUtil.m21459i(i, str));
        }

        /* renamed from: a */
        public void m21471a() {
            Buffer buffer = (Buffer) Assertions.checkNotNull(this.f28361d, "call setBuffer before bind");
            GLES20.glBindBuffer(34962, 0);
            GLES20.glVertexAttribPointer(this.f28360c, this.f28362e, 5126, false, 0, buffer);
            GLES20.glEnableVertexAttribArray(this.f28359b);
            GlUtil.checkGlError();
        }

        /* renamed from: c */
        public void m21472c(float[] fArr, int i) {
            this.f28361d = GlUtil.createBuffer(fArr);
            this.f28362e = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.GlUtil$c */
    /* loaded from: classes5.dex */
    public static final class C5013c {

        /* renamed from: a */
        public final String f28363a;

        /* renamed from: b */
        public final int f28364b;

        /* renamed from: c */
        public final int f28365c;

        /* renamed from: d */
        public final float[] f28366d = new float[16];

        /* renamed from: e */
        public int f28367e;

        /* renamed from: f */
        public int f28368f;

        public C5013c(String str, int i, int i2) {
            this.f28363a = str;
            this.f28364b = i;
            this.f28365c = i2;
        }

        /* renamed from: b */
        public static C5013c m21473b(int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i3 = iArr[0];
            byte[] bArr = new byte[i3];
            GLES20.glGetActiveUniform(i, i2, i3, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, GlUtil.m21461k(bArr));
            return new C5013c(str, GlUtil.m21460j(i, str), iArr2[0]);
        }

        /* renamed from: a */
        public void m21474a() {
            int i = this.f28365c;
            if (i == 5126) {
                GLES20.glUniform1fv(this.f28364b, 1, this.f28366d, 0);
                GlUtil.checkGlError();
                return;
            }
            if (i == 35675) {
                GLES20.glUniformMatrix3fv(this.f28364b, 1, false, this.f28366d, 0);
                GlUtil.checkGlError();
                return;
            }
            if (i == 35676) {
                GLES20.glUniformMatrix4fv(this.f28364b, 1, false, this.f28366d, 0);
                GlUtil.checkGlError();
                return;
            }
            if (this.f28367e == 0) {
                throw new IllegalStateException("No call to setSamplerTexId() before bind.");
            }
            GLES20.glActiveTexture(this.f28368f + 33984);
            int i2 = this.f28365c;
            if (i2 == 36198 || i2 == 35815) {
                GLES20.glBindTexture(36197, this.f28367e);
            } else {
                if (i2 != 35678) {
                    int i3 = this.f28365c;
                    StringBuilder sb = new StringBuilder(36);
                    sb.append("Unexpected uniform type: ");
                    sb.append(i3);
                    throw new IllegalStateException(sb.toString());
                }
                GLES20.glBindTexture(3553, this.f28367e);
            }
            GLES20.glUniform1i(this.f28364b, this.f28368f);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GlUtil.checkGlError();
        }

        /* renamed from: c */
        public void m21475c(float f) {
            this.f28366d[0] = f;
        }

        /* renamed from: d */
        public void m21476d(float[] fArr) {
            System.arraycopy(fArr, 0, this.f28366d, 0, fArr.length);
        }

        /* renamed from: e */
        public void m21477e(int i, int i2) {
            this.f28367e = i;
            this.f28368f = i2;
        }
    }

    public static void checkGlError() {
        int i = 0;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            String valueOf = String.valueOf(GLU.gluErrorString(glGetError));
            Log.m21489e(f28343a, valueOf.length() != 0 ? "glError: ".concat(valueOf) : new String("glError: "));
            i = glGetError;
        }
        if (i != 0) {
            String valueOf2 = String.valueOf(GLU.gluErrorString(i));
            m21462l(valueOf2.length() != 0 ? "glError: ".concat(valueOf2) : new String("glError: "));
        }
    }

    public static FloatBuffer createBuffer(float[] fArr) {
        return (FloatBuffer) createBuffer(fArr.length).put(fArr).flip();
    }

    @RequiresApi(17)
    public static EGLContext createEglContext(EGLDisplay eGLDisplay) {
        return C5011a.m21464a(eGLDisplay, 2, f28351i);
    }

    @RequiresApi(17)
    public static EGLContext createEglContextEs3Rgba1010102(EGLDisplay eGLDisplay) {
        return C5011a.m21464a(eGLDisplay, 3, f28352j);
    }

    @RequiresApi(17)
    public static EGLDisplay createEglDisplay() {
        return C5011a.m21465b();
    }

    public static int createExternalTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlError();
        return iArr[0];
    }

    public static void deleteTexture(int i) {
        GLES20.glDeleteTextures(1, new int[]{i}, 0);
        checkGlError();
    }

    @RequiresApi(17)
    public static void destroyEglContext(@Nullable EGLDisplay eGLDisplay, @Nullable EGLContext eGLContext) {
        C5011a.m21466c(eGLDisplay, eGLContext);
    }

    @RequiresApi(17)
    public static void focusSurface(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i, int i2) {
        C5011a.m21467d(eGLDisplay, eGLContext, eGLSurface, i, i2);
    }

    /* renamed from: g */
    public static void m21457g(int i, int i2, String str) {
        int glCreateShader = GLES20.glCreateShader(i2);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            String glGetShaderInfoLog = GLES20.glGetShaderInfoLog(glCreateShader);
            StringBuilder sb = new StringBuilder(String.valueOf(glGetShaderInfoLog).length() + 10 + String.valueOf(str).length());
            sb.append(glGetShaderInfoLog);
            sb.append(", source: ");
            sb.append(str);
            m21462l(sb.toString());
        }
        GLES20.glAttachShader(i, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        checkGlError();
    }

    @RequiresApi(17)
    public static EGLSurface getEglSurface(EGLDisplay eGLDisplay, Object obj) {
        return C5011a.m21469f(eGLDisplay, obj, f28351i, f28349g);
    }

    @RequiresApi(17)
    public static EGLSurface getEglSurfaceBt2020Pq(EGLDisplay eGLDisplay, Object obj) {
        return C5011a.m21469f(eGLDisplay, obj, f28352j, f28350h);
    }

    public static float[] getNormalizedCoordinateBounds() {
        return new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    }

    public static float[] getTextureCoordinateBounds() {
        return new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    }

    /* renamed from: h */
    public static void m21458h(boolean z, String str) {
        if (z) {
            return;
        }
        m21462l(str);
    }

    /* renamed from: i */
    public static int m21459i(int i, String str) {
        return GLES20.glGetAttribLocation(i, str);
    }

    public static boolean isProtectedContentExtensionSupported(Context context) {
        String eglQueryString;
        int i = Util.SDK_INT;
        if (i < 24) {
            return false;
        }
        if (i >= 26 || !(ManufacturerUtils.f31579b.equals(Util.MANUFACTURER) || "XT1650".equals(Util.MODEL))) {
            return (i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains(f28344b);
        }
        return false;
    }

    public static boolean isSurfacelessContextExtensionSupported() {
        String eglQueryString;
        return Util.SDK_INT >= 17 && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains(f28345c);
    }

    /* renamed from: j */
    public static int m21460j(int i, String str) {
        return GLES20.glGetUniformLocation(i, str);
    }

    /* renamed from: k */
    public static int m21461k(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] == 0) {
                return i;
            }
        }
        return bArr.length;
    }

    /* renamed from: l */
    public static void m21462l(String str) {
        Log.m21489e(f28343a, str);
        if (glAssertionsEnabled) {
            throw new GlException(str);
        }
    }

    public static String loadAsset(Context context, String str) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = context.getAssets().open(str);
            return Util.fromUtf8Bytes(Util.toByteArray(inputStream));
        } finally {
            Util.closeQuietly(inputStream);
        }
    }

    public static FloatBuffer createBuffer(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }
}
