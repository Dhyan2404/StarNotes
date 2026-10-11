package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PersistableBundle;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.decoder.CryptoInfo;
import com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Supplier;
import com.sunia.HTREnginev2.C13524bg;
import com.sunia.HTREnginev2.C13614dg;
import java.io.IOException;
import java.nio.ByteBuffer;

@RequiresApi(23)
/* loaded from: classes5.dex */
public final class AsynchronousMediaCodecAdapter implements MediaCodecAdapter {

    /* renamed from: h */
    public static final int f24729h = 0;

    /* renamed from: i */
    public static final int f24730i = 1;

    /* renamed from: j */
    public static final int f24731j = 2;

    /* renamed from: a */
    public final MediaCodec f24732a;

    /* renamed from: b */
    public final C13614dg f24733b;

    /* renamed from: c */
    public final C13524bg f24734c;

    /* renamed from: d */
    public final boolean f24735d;

    /* renamed from: e */
    public final boolean f24736e;

    /* renamed from: f */
    public boolean f24737f;

    /* renamed from: g */
    public int f24738g;

    /* loaded from: classes5.dex */
    public static final class Factory implements MediaCodecAdapter.Factory {

        /* renamed from: a */
        public final Supplier<HandlerThread> f24739a;

        /* renamed from: b */
        public final Supplier<HandlerThread> f24740b;

        /* renamed from: c */
        public final boolean f24741c;

        /* renamed from: d */
        public final boolean f24742d;

        public Factory(final int i, boolean z, boolean z2) {
            this(new Supplier() { // from class: com.sunia.HTREnginev2.zf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    HandlerThread m19223c;
                    m19223c = AsynchronousMediaCodecAdapter.Factory.m19223c(i);
                    return m19223c;
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ag
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    HandlerThread m19224d;
                    m19224d = AsynchronousMediaCodecAdapter.Factory.m19224d(i);
                    return m19224d;
                }
            }, z, z2);
        }

        /* renamed from: c */
        public static /* synthetic */ HandlerThread m19223c(int i) {
            return new HandlerThread(AsynchronousMediaCodecAdapter.m19213e(i));
        }

        /* renamed from: d */
        public static /* synthetic */ HandlerThread m19224d(int i) {
            return new HandlerThread(AsynchronousMediaCodecAdapter.m19214f(i));
        }

        @VisibleForTesting
        public Factory(Supplier<HandlerThread> supplier, Supplier<HandlerThread> supplier2, boolean z, boolean z2) {
            this.f24739a = supplier;
            this.f24740b = supplier2;
            this.f24741c = z;
            this.f24742d = z2;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory
        public AsynchronousMediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) throws IOException {
            MediaCodec mediaCodec;
            String str = configuration.codecInfo.name;
            AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter = null;
            try {
                String valueOf = String.valueOf(str);
                TraceUtil.beginSection(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter2 = new AsynchronousMediaCodecAdapter(mediaCodec, this.f24739a.get(), this.f24740b.get(), this.f24741c, this.f24742d);
                    try {
                        TraceUtil.endSection();
                        asynchronousMediaCodecAdapter2.m19217h(configuration.mediaFormat, configuration.surface, configuration.crypto, configuration.flags);
                        return asynchronousMediaCodecAdapter2;
                    } catch (Exception e) {
                        e = e;
                        asynchronousMediaCodecAdapter = asynchronousMediaCodecAdapter2;
                        if (asynchronousMediaCodecAdapter != null) {
                            asynchronousMediaCodecAdapter.release();
                        } else if (mediaCodec != null) {
                            mediaCodec.release();
                        }
                        throw e;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                mediaCodec = null;
            }
        }
    }

    /* renamed from: e */
    public static String m19213e(int i) {
        return m19215g(i, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* renamed from: f */
    public static String m19214f(int i) {
        return m19215g(i, "ExoPlayer:MediaCodecQueueingThread:");
    }

    /* renamed from: g */
    public static String m19215g(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(MotionUtils.f31762d);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m19216i(MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, MediaCodec mediaCodec, long j, long j2) {
        onFrameRenderedListener.onFrameRendered(this, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public int dequeueInputBufferIndex() {
        return this.f24733b.m53644c();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public int dequeueOutputBufferIndex(MediaCodec.BufferInfo bufferInfo) {
        return this.f24733b.m53645d(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void flush() {
        this.f24734c.m53256i();
        this.f24732a.flush();
        if (!this.f24736e) {
            this.f24733b.m53646e(this.f24732a);
        } else {
            this.f24733b.m53646e(null);
            this.f24732a.start();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    @Nullable
    public ByteBuffer getInputBuffer(int i) {
        return this.f24732a.getInputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    @RequiresApi(26)
    public PersistableBundle getMetrics() {
        m19218j();
        return this.f24732a.getMetrics();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    @Nullable
    public ByteBuffer getOutputBuffer(int i) {
        return this.f24732a.getOutputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public MediaFormat getOutputFormat() {
        return this.f24733b.m53648g();
    }

    /* renamed from: h */
    public final void m19217h(@Nullable MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i) {
        this.f24733b.m53649h(this.f24732a);
        TraceUtil.beginSection("configureCodec");
        this.f24732a.configure(mediaFormat, surface, mediaCrypto, i);
        TraceUtil.endSection();
        this.f24734c.m53263r();
        TraceUtil.beginSection("startCodec");
        this.f24732a.start();
        TraceUtil.endSection();
        this.f24738g = 1;
    }

    /* renamed from: j */
    public final void m19218j() {
        if (this.f24735d) {
            try {
                this.f24734c.m53264s();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: k */
    public void m19219k(MediaCodec.CodecException codecException) {
        this.f24733b.onError(this.f24732a, codecException);
    }

    @VisibleForTesting
    /* renamed from: l */
    public void m19220l(MediaFormat mediaFormat) {
        this.f24733b.onOutputFormatChanged(this.f24732a, mediaFormat);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public boolean needsReconfiguration() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        this.f24734c.m53259m(i, i2, i3, j, i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void queueSecureInputBuffer(int i, int i2, CryptoInfo cryptoInfo, long j, int i3) {
        this.f24734c.m53260n(i, i2, cryptoInfo, j, i3);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void release() {
        try {
            if (this.f24738g == 1) {
                this.f24734c.m53262q();
                this.f24733b.m53656p();
            }
            this.f24738g = 2;
        } finally {
            if (!this.f24737f) {
                this.f24732a.release();
                this.f24737f = true;
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void releaseOutputBuffer(int i, boolean z) {
        this.f24732a.releaseOutputBuffer(i, z);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setOnFrameRenderedListener(final MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, Handler handler) {
        m19218j();
        this.f24732a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.sunia.HTREnginev2.yf
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                AsynchronousMediaCodecAdapter.this.m19216i(onFrameRenderedListener, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setOutputSurface(Surface surface) {
        m19218j();
        this.f24732a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setParameters(Bundle bundle) {
        m19218j();
        this.f24732a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setVideoScalingMode(int i) {
        m19218j();
        this.f24732a.setVideoScalingMode(i);
    }

    public AsynchronousMediaCodecAdapter(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z, boolean z2) {
        this.f24732a = mediaCodec;
        this.f24733b = new C13614dg(handlerThread);
        this.f24734c = new C13524bg(mediaCodec, handlerThread2);
        this.f24735d = z;
        this.f24736e = z2;
        this.f24738g = 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void releaseOutputBuffer(int i, long j) {
        this.f24732a.releaseOutputBuffer(i, j);
    }
}
