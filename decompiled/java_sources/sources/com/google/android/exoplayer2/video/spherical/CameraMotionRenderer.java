package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class CameraMotionRenderer extends BaseRenderer {

    /* renamed from: w */
    public static final String f28653w = "CameraMotionRenderer";

    /* renamed from: x */
    public static final int f28654x = 100000;

    /* renamed from: r */
    public final DecoderInputBuffer f28655r;

    /* renamed from: s */
    public final ParsableByteArray f28656s;

    /* renamed from: t */
    public long f28657t;

    /* renamed from: u */
    @Nullable
    public CameraMotionListener f28658u;

    /* renamed from: v */
    public long f28659v;

    public CameraMotionRenderer() {
        super(6);
        this.f28655r = new DecoderInputBuffer(1);
        this.f28656s = new ParsableByteArray();
    }

    @Nullable
    /* renamed from: b */
    public final float[] m21662b(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f28656s.reset(byteBuffer.array(), byteBuffer.limit());
        this.f28656s.setPosition(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i = 0; i < 3; i++) {
            fArr[i] = Float.intBitsToFloat(this.f28656s.readLittleEndianInt());
        }
        return fArr;
    }

    /* renamed from: c */
    public final void m21663c() {
        CameraMotionListener cameraMotionListener = this.f28658u;
        if (cameraMotionListener != null) {
            cameraMotionListener.onCameraMotionReset();
        }
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return f28653w;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
        if (i == 8) {
            this.f28658u = (CameraMotionListener) obj;
        } else {
            super.handleMessage(i, obj);
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        m21663c();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        this.f28659v = Long.MIN_VALUE;
        m21663c();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2) {
        this.f28657t = j2;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) {
        while (!hasReadStreamToEnd() && this.f28659v < 100000 + j) {
            this.f28655r.clear();
            if (readSource(getFormatHolder(), this.f28655r, 0) != -4 || this.f28655r.isEndOfStream()) {
                return;
            }
            DecoderInputBuffer decoderInputBuffer = this.f28655r;
            this.f28659v = decoderInputBuffer.timeUs;
            if (this.f28658u != null && !decoderInputBuffer.isDecodeOnly()) {
                this.f28655r.flip();
                float[] m21662b = m21662b((ByteBuffer) Util.castNonNull(this.f28655r.data));
                if (m21662b != null) {
                    ((CameraMotionListener) Util.castNonNull(this.f28658u)).onCameraMotion(this.f28659v - this.f28657t, m21662b);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsFormat(Format format) {
        return MimeTypes.APPLICATION_CAMERA_MOTION.equals(format.sampleMimeType) ? RendererCapabilities.create(4) : RendererCapabilities.create(0);
    }
}
