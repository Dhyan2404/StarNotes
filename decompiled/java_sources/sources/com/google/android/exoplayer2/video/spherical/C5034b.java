package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.video.spherical.Projection;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* renamed from: com.google.android.exoplayer2.video.spherical.b */
/* loaded from: classes5.dex */
public final class C5034b {

    /* renamed from: j */
    public static final String f28721j = "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n";

    /* renamed from: k */
    public static final String f28722k = "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n";

    /* renamed from: l */
    public static final float[] f28723l = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: m */
    public static final float[] f28724m = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: n */
    public static final float[] f28725n = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: o */
    public static final float[] f28726o = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: p */
    public static final float[] f28727p = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: a */
    public int f28728a;

    /* renamed from: b */
    @Nullable
    public a f28729b;

    /* renamed from: c */
    @Nullable
    public a f28730c;

    /* renamed from: d */
    public GlUtil.Program f28731d;

    /* renamed from: e */
    public int f28732e;

    /* renamed from: f */
    public int f28733f;

    /* renamed from: g */
    public int f28734g;

    /* renamed from: h */
    public int f28735h;

    /* renamed from: i */
    public int f28736i;

    /* renamed from: com.google.android.exoplayer2.video.spherical.b$a */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a */
        public final int f28737a;

        /* renamed from: b */
        public final FloatBuffer f28738b;

        /* renamed from: c */
        public final FloatBuffer f28739c;

        /* renamed from: d */
        public final int f28740d;

        public a(Projection.SubMesh subMesh) {
            this.f28737a = subMesh.getVertexCount();
            this.f28738b = GlUtil.createBuffer(subMesh.vertices);
            this.f28739c = GlUtil.createBuffer(subMesh.textureCoords);
            int i = subMesh.mode;
            if (i == 1) {
                this.f28740d = 5;
            } else if (i != 2) {
                this.f28740d = 4;
            } else {
                this.f28740d = 6;
            }
        }
    }

    /* renamed from: c */
    public static boolean m21688c(Projection projection) {
        Projection.Mesh mesh = projection.f28672a;
        Projection.Mesh mesh2 = projection.f28673b;
        return mesh.getSubMeshCount() == 1 && mesh.getSubMesh(0).textureId == 0 && mesh2.getSubMeshCount() == 1 && mesh2.getSubMesh(0).textureId == 0;
    }

    /* renamed from: a */
    public void m21689a(int i, float[] fArr, boolean z) {
        a aVar = z ? this.f28730c : this.f28729b;
        if (aVar == null) {
            return;
        }
        int i2 = this.f28728a;
        GLES20.glUniformMatrix3fv(this.f28733f, 1, false, i2 == 1 ? z ? f28725n : f28724m : i2 == 2 ? z ? f28727p : f28726o : f28723l, 0);
        GLES20.glUniformMatrix4fv(this.f28732e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(this.f28736i, 0);
        GlUtil.checkGlError();
        GLES20.glVertexAttribPointer(this.f28734g, 3, 5126, false, 12, (Buffer) aVar.f28738b);
        GlUtil.checkGlError();
        GLES20.glVertexAttribPointer(this.f28735h, 2, 5126, false, 8, (Buffer) aVar.f28739c);
        GlUtil.checkGlError();
        GLES20.glDrawArrays(aVar.f28740d, 0, aVar.f28737a);
        GlUtil.checkGlError();
    }

    /* renamed from: b */
    public void m21690b() {
        GlUtil.Program program = new GlUtil.Program(f28721j, f28722k);
        this.f28731d = program;
        this.f28732e = program.getUniformLocation("uMvpMatrix");
        this.f28733f = this.f28731d.getUniformLocation("uTexMatrix");
        this.f28734g = this.f28731d.getAttributeArrayLocationAndEnable("aPosition");
        this.f28735h = this.f28731d.getAttributeArrayLocationAndEnable("aTexCoords");
        this.f28736i = this.f28731d.getUniformLocation("uTexture");
    }

    /* renamed from: d */
    public void m21691d(Projection projection) {
        if (m21688c(projection)) {
            this.f28728a = projection.f28674c;
            a aVar = new a(projection.f28672a.getSubMesh(0));
            this.f28729b = aVar;
            if (!projection.f28675d) {
                aVar = new a(projection.f28673b.getSubMesh(0));
            }
            this.f28730c = aVar;
        }
    }

    /* renamed from: e */
    public void m21692e() {
        GlUtil.Program program = this.f28731d;
        if (program != null) {
            program.delete();
        }
    }
}
