package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.GlUtil;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements VideoDecoderOutputBufferRenderer {

    /* renamed from: e */
    public final C5027a f28588e;

    /* renamed from: com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView$a */
    /* loaded from: classes5.dex */
    public static final class C5027a implements GLSurfaceView.Renderer {

        /* renamed from: r */
        public static final String f28592r = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n";

        /* renamed from: t */
        public static final String f28594t = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n";

        /* renamed from: e */
        public final GLSurfaceView f28596e;

        /* renamed from: f */
        public final int[] f28597f = new int[3];

        /* renamed from: g */
        public final int[] f28598g = new int[3];

        /* renamed from: h */
        public final int[] f28599h = new int[3];

        /* renamed from: i */
        public final int[] f28600i = new int[3];

        /* renamed from: j */
        public final AtomicReference<VideoDecoderOutputBuffer> f28601j = new AtomicReference<>();

        /* renamed from: k */
        public final FloatBuffer[] f28602k = new FloatBuffer[3];

        /* renamed from: l */
        public GlUtil.Program f28603l;

        /* renamed from: m */
        public int f28604m;

        /* renamed from: n */
        public VideoDecoderOutputBuffer f28605n;

        /* renamed from: o */
        public static final float[] f28589o = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        /* renamed from: p */
        public static final float[] f28590p = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        /* renamed from: q */
        public static final float[] f28591q = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        /* renamed from: s */
        public static final String[] f28593s = {"y_tex", "u_tex", "v_tex"};

        /* renamed from: u */
        public static final FloatBuffer f28595u = GlUtil.createBuffer(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        public C5027a(GLSurfaceView gLSurfaceView) {
            this.f28596e = gLSurfaceView;
            for (int i = 0; i < 3; i++) {
                int[] iArr = this.f28599h;
                this.f28600i[i] = -1;
                iArr[i] = -1;
            }
        }

        /* renamed from: a */
        public void m21617a(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
            VideoDecoderOutputBuffer andSet = this.f28601j.getAndSet(videoDecoderOutputBuffer);
            if (andSet != null) {
                andSet.release();
            }
            this.f28596e.requestRender();
        }

        @RequiresNonNull({"program"})
        /* renamed from: b */
        public final void m21618b() {
            GLES20.glGenTextures(3, this.f28597f, 0);
            for (int i = 0; i < 3; i++) {
                GLES20.glUniform1i(this.f28603l.getUniformLocation(f28593s[i]), i);
                GLES20.glActiveTexture(33984 + i);
                GLES20.glBindTexture(3553, this.f28597f[i]);
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
            }
            GlUtil.checkGlError();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            VideoDecoderOutputBuffer andSet = this.f28601j.getAndSet(null);
            if (andSet == null && this.f28605n == null) {
                return;
            }
            if (andSet != null) {
                VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.f28605n;
                if (videoDecoderOutputBuffer != null) {
                    videoDecoderOutputBuffer.release();
                }
                this.f28605n = andSet;
            }
            VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (VideoDecoderOutputBuffer) Assertions.checkNotNull(this.f28605n);
            float[] fArr = f28590p;
            int i = videoDecoderOutputBuffer2.colorspace;
            if (i == 1) {
                fArr = f28589o;
            } else if (i == 3) {
                fArr = f28591q;
            }
            GLES20.glUniformMatrix3fv(this.f28604m, 1, false, fArr, 0);
            int[] iArr = (int[]) Assertions.checkNotNull(videoDecoderOutputBuffer2.yuvStrides);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) Assertions.checkNotNull(videoDecoderOutputBuffer2.yuvPlanes);
            int i2 = 0;
            while (i2 < 3) {
                int i3 = i2 == 0 ? videoDecoderOutputBuffer2.height : (videoDecoderOutputBuffer2.height + 1) / 2;
                GLES20.glActiveTexture(33984 + i2);
                GLES20.glBindTexture(3553, this.f28597f[i2]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i2], i3, 0, 6409, 5121, byteBufferArr[i2]);
                i2++;
            }
            int i4 = videoDecoderOutputBuffer2.width;
            int i5 = (i4 + 1) / 2;
            int[] iArr2 = {i4, i5, i5};
            for (int i6 = 0; i6 < 3; i6++) {
                if (this.f28599h[i6] != iArr2[i6] || this.f28600i[i6] != iArr[i6]) {
                    Assertions.checkState(iArr[i6] != 0);
                    float f = iArr2[i6] / iArr[i6];
                    this.f28602k[i6] = GlUtil.createBuffer(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f, 0.0f, f, 1.0f});
                    GLES20.glVertexAttribPointer(this.f28598g[i6], 2, 5126, false, 0, (Buffer) this.f28602k[i6]);
                    this.f28599h[i6] = iArr2[i6];
                    this.f28600i[i6] = iArr[i6];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            GlUtil.checkGlError();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            GlUtil.Program program = new GlUtil.Program(f28592r, f28594t);
            this.f28603l = program;
            GLES20.glVertexAttribPointer(program.getAttributeArrayLocationAndEnable("in_pos"), 2, 5126, false, 0, (Buffer) f28595u);
            this.f28598g[0] = this.f28603l.getAttributeArrayLocationAndEnable("in_tc_y");
            this.f28598g[1] = this.f28603l.getAttributeArrayLocationAndEnable("in_tc_u");
            this.f28598g[2] = this.f28603l.getAttributeArrayLocationAndEnable("in_tc_v");
            this.f28604m = this.f28603l.getUniformLocation("mColorConversion");
            GlUtil.checkGlError();
            m21618b();
            GlUtil.checkGlError();
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    @Deprecated
    public VideoDecoderOutputBufferRenderer getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    @Override // com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer
    public void setOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.f28588e.m21617a(videoDecoderOutputBuffer);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        C5027a c5027a = new C5027a(this);
        this.f28588e = c5027a;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(c5027a);
        setRenderMode(0);
    }
}
