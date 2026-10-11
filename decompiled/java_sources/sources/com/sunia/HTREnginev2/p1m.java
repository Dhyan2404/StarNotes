package com.sunia.HTREnginev2;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.TimedValueQueue;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import com.google.android.exoplayer2.video.spherical.C5033a;
import com.google.android.exoplayer2.video.spherical.C5034b;
import com.google.android.exoplayer2.video.spherical.CameraMotionListener;
import com.google.android.exoplayer2.video.spherical.Projection;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class p1m implements VideoFrameMetadataListener, CameraMotionListener {

    /* renamed from: m */
    public int f80365m;

    /* renamed from: n */
    public SurfaceTexture f80366n;

    /* renamed from: q */
    @Nullable
    public byte[] f80369q;

    /* renamed from: e */
    public final AtomicBoolean f80357e = new AtomicBoolean();

    /* renamed from: f */
    public final AtomicBoolean f80358f = new AtomicBoolean(true);

    /* renamed from: g */
    public final C5034b f80359g = new C5034b();

    /* renamed from: h */
    public final pvg f80360h = new pvg();

    /* renamed from: i */
    public final TimedValueQueue<Long> f80361i = new TimedValueQueue<>();

    /* renamed from: j */
    public final TimedValueQueue<Projection> f80362j = new TimedValueQueue<>();

    /* renamed from: k */
    public final float[] f80363k = new float[16];

    /* renamed from: l */
    public final float[] f80364l = new float[16];

    /* renamed from: o */
    public volatile int f80367o = 0;

    /* renamed from: p */
    public int f80368p = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m56203d(SurfaceTexture surfaceTexture) {
        this.f80357e.set(true);
    }

    /* renamed from: b */
    public void m56204b(float[] fArr, boolean z) {
        GLES20.glClear(16384);
        GlUtil.checkGlError();
        if (this.f80357e.compareAndSet(true, false)) {
            ((SurfaceTexture) Assertions.checkNotNull(this.f80366n)).updateTexImage();
            GlUtil.checkGlError();
            if (this.f80358f.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f80363k, 0);
            }
            long timestamp = this.f80366n.getTimestamp();
            Long poll = this.f80361i.poll(timestamp);
            if (poll != null) {
                this.f80360h.m56389c(this.f80363k, poll.longValue());
            }
            Projection pollFloor = this.f80362j.pollFloor(timestamp);
            if (pollFloor != null) {
                this.f80359g.m21691d(pollFloor);
            }
        }
        Matrix.multiplyMM(this.f80364l, 0, fArr, 0, this.f80363k, 0);
        this.f80359g.m21689a(this.f80365m, this.f80364l, z);
    }

    /* renamed from: c */
    public SurfaceTexture m56205c() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        GlUtil.checkGlError();
        this.f80359g.m21690b();
        GlUtil.checkGlError();
        this.f80365m = GlUtil.createExternalTexture();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f80365m);
        this.f80366n = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.sunia.HTREnginev2.o1m
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                p1m.this.m56203d(surfaceTexture2);
            }
        });
        return this.f80366n;
    }

    /* renamed from: e */
    public void m56206e(int i) {
        this.f80367o = i;
    }

    /* renamed from: f */
    public final void m56207f(@Nullable byte[] bArr, int i, long j) {
        byte[] bArr2 = this.f80369q;
        int i2 = this.f80368p;
        this.f80369q = bArr;
        if (i == -1) {
            i = this.f80367o;
        }
        this.f80368p = i;
        if (i2 == i && Arrays.equals(bArr2, this.f80369q)) {
            return;
        }
        byte[] bArr3 = this.f80369q;
        Projection m21681a = bArr3 != null ? C5033a.m21681a(bArr3, this.f80368p) : null;
        if (m21681a == null || !C5034b.m21688c(m21681a)) {
            m21681a = Projection.m21670b(this.f80368p);
        }
        this.f80362j.add(j, m21681a);
    }

    /* renamed from: g */
    public void m56208g() {
        this.f80359g.m21692e();
    }

    @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
    public void onCameraMotion(long j, float[] fArr) {
        this.f80360h.m56391e(j, fArr);
    }

    @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
    public void onCameraMotionReset() {
        this.f80361i.clear();
        this.f80360h.m56390d();
        this.f80358f.set(true);
    }

    @Override // com.google.android.exoplayer2.video.VideoFrameMetadataListener
    public void onVideoFrameAboutToBeRendered(long j, long j2, Format format, @Nullable MediaFormat mediaFormat) {
        this.f80361i.add(j2, Long.valueOf(j));
        m56207f(format.projectionData, format.stereoMode, j2);
    }
}
