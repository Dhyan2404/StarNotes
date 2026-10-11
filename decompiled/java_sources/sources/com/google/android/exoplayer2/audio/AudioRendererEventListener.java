package com.google.android.exoplayer2.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public interface AudioRendererEventListener {

    /* loaded from: classes5.dex */
    public static final class EventDispatcher {

        /* renamed from: a */
        @Nullable
        public final Handler f23024a;

        /* renamed from: b */
        @Nullable
        public final AudioRendererEventListener f23025b;

        public EventDispatcher(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener) {
            this.f23024a = audioRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.f23025b = audioRendererEventListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ void m18438k(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioCodecError(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m18439l(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioSinkError(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m18440m(String str, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioDecoderInitialized(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public /* synthetic */ void m18441n(String str) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioDecoderReleased(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public /* synthetic */ void m18442o(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioDisabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: p */
        public /* synthetic */ void m18443p(DecoderCounters decoderCounters) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioEnabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: q */
        public /* synthetic */ void m18444q(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioInputFormatChanged(format);
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: r */
        public /* synthetic */ void m18445r(long j) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioPositionAdvancing(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: s */
        public /* synthetic */ void m18446s(boolean z) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onSkipSilenceEnabledChanged(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: t */
        public /* synthetic */ void m18447t(int i, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.f23025b)).onAudioUnderrun(i, j, j2);
        }

        public void audioCodecError(final Exception exc) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.mi
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18438k(exc);
                    }
                });
            }
        }

        public void audioSinkError(final Exception exc) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.li
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18439l(exc);
                    }
                });
            }
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.ni
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18440m(str, j, j2);
                    }
                });
            }
        }

        public void decoderReleased(final String str) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.ei
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18441n(str);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.ii
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18442o(decoderCounters);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.ji
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18443p(decoderCounters);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format, @Nullable final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.fi
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18444q(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        public void positionAdvancing(final long j) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.hi
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18445r(j);
                    }
                });
            }
        }

        public void skipSilenceEnabledChanged(final boolean z) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.gi
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18446s(z);
                    }
                });
            }
        }

        public void underrun(final int i, final long j, final long j2) {
            Handler handler = this.f23024a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.ki
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m18447t(i, j, j2);
                    }
                });
            }
        }
    }

    default void onAudioCodecError(Exception exc) {
    }

    default void onAudioDecoderInitialized(String str, long j, long j2) {
    }

    default void onAudioDecoderReleased(String str) {
    }

    default void onAudioDisabled(DecoderCounters decoderCounters) {
    }

    default void onAudioEnabled(DecoderCounters decoderCounters) {
    }

    @Deprecated
    default void onAudioInputFormatChanged(Format format) {
    }

    default void onAudioPositionAdvancing(long j) {
    }

    default void onAudioSinkError(Exception exc) {
    }

    default void onAudioUnderrun(int i, long j, long j2) {
    }

    default void onSkipSilenceEnabledChanged(boolean z) {
    }

    default void onAudioInputFormatChanged(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
    }
}
