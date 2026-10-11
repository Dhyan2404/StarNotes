package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;

/* loaded from: classes5.dex */
public interface VideoRendererEventListener {

    /* loaded from: classes5.dex */
    public static final class EventDispatcher {

        /* renamed from: a */
        @Nullable
        public final Handler f28643a;

        /* renamed from: b */
        @Nullable
        public final VideoRendererEventListener f28644b;

        public EventDispatcher(@Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener) {
            this.f28643a = videoRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.f28644b = videoRendererEventListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ void m21649k(String str, long j, long j2) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoDecoderInitialized(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m21650l(String str) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoDecoderReleased(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m21651m(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoDisabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public /* synthetic */ void m21652n(int i, long j) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onDroppedFrames(i, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public /* synthetic */ void m21653o(DecoderCounters decoderCounters) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoEnabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: p */
        public /* synthetic */ void m21654p(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoInputFormatChanged(format);
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: q */
        public /* synthetic */ void m21655q(Object obj, long j) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onRenderedFirstFrame(obj, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: r */
        public /* synthetic */ void m21656r(long j, int i) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoFrameProcessingOffset(j, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: s */
        public /* synthetic */ void m21657s(Exception exc) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoCodecError(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: t */
        public /* synthetic */ void m21658t(VideoSize videoSize) {
            ((VideoRendererEventListener) Util.castNonNull(this.f28644b)).onVideoSizeChanged(videoSize);
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.p1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21649k(str, j, j2);
                    }
                });
            }
        }

        public void decoderReleased(final String str) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.i1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21650l(str);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.g1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21651m(decoderCounters);
                    }
                });
            }
        }

        public void droppedFrames(final int i, final long j) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.o1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21652n(i, j);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.h1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21653o(decoderCounters);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format, @Nullable final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.l1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21654p(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        public void renderedFirstFrame(final Object obj) {
            if (this.f28643a != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f28643a.post(new Runnable() { // from class: com.sunia.HTREnginev2.n1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21655q(obj, elapsedRealtime);
                    }
                });
            }
        }

        public void reportVideoFrameProcessingOffset(final long j, final int i) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.k1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21656r(j, i);
                    }
                });
            }
        }

        public void videoCodecError(final Exception exc) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.m1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21657s(exc);
                    }
                });
            }
        }

        public void videoSizeChanged(final VideoSize videoSize) {
            Handler handler = this.f28643a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.j1o
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m21658t(videoSize);
                    }
                });
            }
        }
    }

    default void onDroppedFrames(int i, long j) {
    }

    default void onRenderedFirstFrame(Object obj, long j) {
    }

    default void onVideoCodecError(Exception exc) {
    }

    default void onVideoDecoderInitialized(String str, long j, long j2) {
    }

    default void onVideoDecoderReleased(String str) {
    }

    default void onVideoDisabled(DecoderCounters decoderCounters) {
    }

    default void onVideoEnabled(DecoderCounters decoderCounters) {
    }

    default void onVideoFrameProcessingOffset(long j, int i) {
    }

    @Deprecated
    default void onVideoInputFormatChanged(Format format) {
    }

    default void onVideoSizeChanged(VideoSize videoSize) {
    }

    default void onVideoInputFormatChanged(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
    }
}
