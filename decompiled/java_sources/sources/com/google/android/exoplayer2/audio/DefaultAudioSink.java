package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.AudioTrackPositionTracker;
import com.google.android.exoplayer2.audio.DefaultAudioTrackBufferSizeProvider;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.MoreObjects;
import com.google.errorprone.annotations.InlineMe;
import com.google.errorprone.annotations.InlineMeValidationDisabled;
import com.sunia.HTREnginev2.b8e;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class DefaultAudioSink implements AudioSink {
    public static final float DEFAULT_PLAYBACK_SPEED = 1.0f;
    public static final float MAX_PITCH = 8.0f;
    public static final float MAX_PLAYBACK_SPEED = 8.0f;
    public static final float MIN_PITCH = 0.1f;
    public static final float MIN_PLAYBACK_SPEED = 0.1f;
    public static final int OFFLOAD_MODE_DISABLED = 0;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_DISABLED = 3;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED = 2;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED = 1;
    public static final int OUTPUT_MODE_OFFLOAD = 1;
    public static final int OUTPUT_MODE_PASSTHROUGH = 2;
    public static final int OUTPUT_MODE_PCM = 0;

    /* renamed from: c0 */
    public static final int f23099c0 = 1000000;

    /* renamed from: d0 */
    public static final boolean f23100d0 = false;

    /* renamed from: e0 */
    public static final int f23101e0 = -32;

    /* renamed from: f0 */
    public static final int f23102f0 = 100;
    public static boolean failOnSpuriousAudioTimestamp = false;

    /* renamed from: g0 */
    public static final String f23103g0 = "DefaultAudioSink";

    /* renamed from: A */
    public int f23104A;

    /* renamed from: B */
    public long f23105B;

    /* renamed from: C */
    public long f23106C;

    /* renamed from: D */
    public long f23107D;

    /* renamed from: E */
    public long f23108E;

    /* renamed from: F */
    public int f23109F;

    /* renamed from: G */
    public boolean f23110G;

    /* renamed from: H */
    public boolean f23111H;

    /* renamed from: I */
    public long f23112I;

    /* renamed from: J */
    public float f23113J;

    /* renamed from: K */
    public AudioProcessor[] f23114K;

    /* renamed from: L */
    public ByteBuffer[] f23115L;

    /* renamed from: M */
    @Nullable
    public ByteBuffer f23116M;

    /* renamed from: N */
    public int f23117N;

    /* renamed from: O */
    @Nullable
    public ByteBuffer f23118O;

    /* renamed from: P */
    public byte[] f23119P;

    /* renamed from: Q */
    public int f23120Q;

    /* renamed from: R */
    public int f23121R;

    /* renamed from: S */
    public boolean f23122S;

    /* renamed from: T */
    public boolean f23123T;

    /* renamed from: U */
    public boolean f23124U;

    /* renamed from: V */
    public boolean f23125V;

    /* renamed from: W */
    public int f23126W;

    /* renamed from: X */
    public AuxEffectInfo f23127X;

    /* renamed from: Y */
    public boolean f23128Y;

    /* renamed from: Z */
    public long f23129Z;

    /* renamed from: a */
    public final AudioCapabilities f23130a;

    /* renamed from: a0 */
    public boolean f23131a0;

    /* renamed from: b */
    public final AudioProcessorChain f23132b;

    /* renamed from: b0 */
    public boolean f23133b0;

    /* renamed from: c */
    public final boolean f23134c;

    /* renamed from: d */
    public final C4700a f23135d;

    /* renamed from: e */
    public final C4703d f23136e;

    /* renamed from: f */
    public final AudioProcessor[] f23137f;

    /* renamed from: g */
    public final AudioProcessor[] f23138g;

    /* renamed from: h */
    public final ConditionVariable f23139h;

    /* renamed from: i */
    public final AudioTrackPositionTracker f23140i;

    /* renamed from: j */
    public final ArrayDeque<C4694e> f23141j;

    /* renamed from: k */
    public final boolean f23142k;

    /* renamed from: l */
    public final int f23143l;

    /* renamed from: m */
    public C4697h f23144m;

    /* renamed from: n */
    public final C4695f<AudioSink.InitializationException> f23145n;

    /* renamed from: o */
    public final C4695f<AudioSink.WriteException> f23146o;

    /* renamed from: p */
    public final InterfaceC4692c f23147p;

    /* renamed from: q */
    @Nullable
    public PlayerId f23148q;

    /* renamed from: r */
    @Nullable
    public AudioSink.Listener f23149r;

    /* renamed from: s */
    @Nullable
    public C4693d f23150s;

    /* renamed from: t */
    public C4693d f23151t;

    /* renamed from: u */
    @Nullable
    public AudioTrack f23152u;

    /* renamed from: v */
    public AudioAttributes f23153v;

    /* renamed from: w */
    @Nullable
    public C4694e f23154w;

    /* renamed from: x */
    public C4694e f23155x;

    /* renamed from: y */
    public PlaybackParameters f23156y;

    /* renamed from: z */
    @Nullable
    public ByteBuffer f23157z;

    /* loaded from: classes5.dex */
    public interface AudioProcessorChain {
        PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters);

        boolean applySkipSilenceEnabled(boolean z);

        AudioProcessor[] getAudioProcessors();

        long getMediaDuration(long j);

        long getSkippedOutputFrameCount();
    }

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: b */
        @Nullable
        public AudioProcessorChain f23159b;

        /* renamed from: c */
        public boolean f23160c;

        /* renamed from: d */
        public boolean f23161d;

        /* renamed from: a */
        public AudioCapabilities f23158a = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;

        /* renamed from: e */
        public int f23162e = 0;

        /* renamed from: f */
        public InterfaceC4692c f23163f = InterfaceC4692c.f23169a;

        public DefaultAudioSink build() {
            if (this.f23159b == null) {
                this.f23159b = new DefaultAudioProcessorChain(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this, (C4690a) null);
        }

        public Builder setAudioCapabilities(AudioCapabilities audioCapabilities) {
            Assertions.checkNotNull(audioCapabilities);
            this.f23158a = audioCapabilities;
            return this;
        }

        public Builder setAudioProcessorChain(AudioProcessorChain audioProcessorChain) {
            Assertions.checkNotNull(audioProcessorChain);
            this.f23159b = audioProcessorChain;
            return this;
        }

        public Builder setAudioProcessors(AudioProcessor[] audioProcessorArr) {
            Assertions.checkNotNull(audioProcessorArr);
            return setAudioProcessorChain(new DefaultAudioProcessorChain(audioProcessorArr));
        }

        public Builder setAudioTrackBufferSizeProvider(InterfaceC4692c interfaceC4692c) {
            this.f23163f = interfaceC4692c;
            return this;
        }

        public Builder setEnableAudioTrackPlaybackParams(boolean z) {
            this.f23161d = z;
            return this;
        }

        public Builder setEnableFloatOutput(boolean z) {
            this.f23160c = z;
            return this;
        }

        public Builder setOffloadMode(int i) {
            this.f23162e = i;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public static class DefaultAudioProcessorChain implements AudioProcessorChain {

        /* renamed from: a */
        public final AudioProcessor[] f23164a;

        /* renamed from: b */
        public final SilenceSkippingAudioProcessor f23165b;

        /* renamed from: c */
        public final SonicAudioProcessor f23166c;

        public DefaultAudioProcessorChain(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new SilenceSkippingAudioProcessor(), new SonicAudioProcessor());
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters) {
            this.f23166c.setSpeed(playbackParameters.speed);
            this.f23166c.setPitch(playbackParameters.pitch);
            return playbackParameters;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public boolean applySkipSilenceEnabled(boolean z) {
            this.f23165b.setEnabled(z);
            return z;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public AudioProcessor[] getAudioProcessors() {
            return this.f23164a;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public long getMediaDuration(long j) {
            return this.f23166c.getMediaDuration(j);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.f23165b.getSkippedFrames();
        }

        public DefaultAudioProcessorChain(AudioProcessor[] audioProcessorArr, SilenceSkippingAudioProcessor silenceSkippingAudioProcessor, SonicAudioProcessor sonicAudioProcessor) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f23164a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f23165b = silenceSkippingAudioProcessor;
            this.f23166c = sonicAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length] = silenceSkippingAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length + 1] = sonicAudioProcessor;
        }
    }

    /* loaded from: classes5.dex */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public /* synthetic */ InvalidAudioTrackTimestampException(String str, C4690a c4690a) {
            this(str);
        }

        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface OffloadMode {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface OutputMode {
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$a */
    /* loaded from: classes5.dex */
    public class C4690a extends Thread {

        /* renamed from: e */
        public final /* synthetic */ AudioTrack f23167e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4690a(String str, AudioTrack audioTrack) {
            super(str);
            this.f23167e = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f23167e.flush();
                this.f23167e.release();
            } finally {
                DefaultAudioSink.this.f23139h.open();
            }
        }
    }

    @RequiresApi(31)
    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$b */
    /* loaded from: classes5.dex */
    public static final class C4691b {
        @DoNotInline
        /* renamed from: a */
        public static void m18531a(AudioTrack audioTrack, PlayerId playerId) {
            LogSessionId logSessionId;
            boolean equals;
            LogSessionId logSessionId2 = playerId.getLogSessionId();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId2.equals(logSessionId);
            if (equals) {
                return;
            }
            audioTrack.setLogSessionId(logSessionId2);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$c */
    /* loaded from: classes5.dex */
    public interface InterfaceC4692c {

        /* renamed from: a */
        public static final InterfaceC4692c f23169a = new DefaultAudioTrackBufferSizeProvider.Builder().build();

        int getBufferSizeInBytes(int i, int i2, int i3, int i4, int i5, double d);
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$d */
    /* loaded from: classes5.dex */
    public static final class C4693d {

        /* renamed from: a */
        public final Format f23170a;

        /* renamed from: b */
        public final int f23171b;

        /* renamed from: c */
        public final int f23172c;

        /* renamed from: d */
        public final int f23173d;

        /* renamed from: e */
        public final int f23174e;

        /* renamed from: f */
        public final int f23175f;

        /* renamed from: g */
        public final int f23176g;

        /* renamed from: h */
        public final int f23177h;

        /* renamed from: i */
        public final AudioProcessor[] f23178i;

        public C4693d(Format format, int i, int i2, int i3, int i4, int i5, int i6, int i7, AudioProcessor[] audioProcessorArr) {
            this.f23170a = format;
            this.f23171b = i;
            this.f23172c = i2;
            this.f23173d = i3;
            this.f23174e = i4;
            this.f23175f = i5;
            this.f23176g = i6;
            this.f23177h = i7;
            this.f23178i = audioProcessorArr;
        }

        @RequiresApi(21)
        /* renamed from: i */
        public static android.media.AudioAttributes m18532i(AudioAttributes audioAttributes, boolean z) {
            return z ? m18533j() : audioAttributes.getAudioAttributesV21();
        }

        @RequiresApi(21)
        /* renamed from: j */
        public static android.media.AudioAttributes m18533j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        /* renamed from: a */
        public AudioTrack m18534a(boolean z, AudioAttributes audioAttributes, int i) throws AudioSink.InitializationException {
            try {
                AudioTrack m18537d = m18537d(z, audioAttributes, i);
                int state = m18537d.getState();
                if (state == 1) {
                    return m18537d;
                }
                try {
                    m18537d.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.f23174e, this.f23175f, this.f23177h, this.f23170a, m18543l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e) {
                throw new AudioSink.InitializationException(0, this.f23174e, this.f23175f, this.f23177h, this.f23170a, m18543l(), e);
            }
        }

        /* renamed from: b */
        public boolean m18535b(C4693d c4693d) {
            return c4693d.f23172c == this.f23172c && c4693d.f23176g == this.f23176g && c4693d.f23174e == this.f23174e && c4693d.f23175f == this.f23175f && c4693d.f23173d == this.f23173d;
        }

        /* renamed from: c */
        public C4693d m18536c(int i) {
            return new C4693d(this.f23170a, this.f23171b, this.f23172c, this.f23173d, this.f23174e, this.f23175f, this.f23176g, i, this.f23178i);
        }

        /* renamed from: d */
        public final AudioTrack m18537d(boolean z, AudioAttributes audioAttributes, int i) {
            int i2 = Util.SDK_INT;
            return i2 >= 29 ? m18539f(z, audioAttributes, i) : i2 >= 21 ? m18538e(z, audioAttributes, i) : m18540g(audioAttributes, i);
        }

        @RequiresApi(21)
        /* renamed from: e */
        public final AudioTrack m18538e(boolean z, AudioAttributes audioAttributes, int i) {
            return new AudioTrack(m18532i(audioAttributes, z), DefaultAudioSink.m18492p(this.f23174e, this.f23175f, this.f23176g), this.f23177h, 1, i);
        }

        @RequiresApi(29)
        /* renamed from: f */
        public final AudioTrack m18539f(boolean z, AudioAttributes audioAttributes, int i) {
            return new AudioTrack.Builder().setAudioAttributes(m18532i(audioAttributes, z)).setAudioFormat(DefaultAudioSink.m18492p(this.f23174e, this.f23175f, this.f23176g)).setTransferMode(1).setBufferSizeInBytes(this.f23177h).setSessionId(i).setOffloadedPlayback(this.f23172c == 1).build();
        }

        /* renamed from: g */
        public final AudioTrack m18540g(AudioAttributes audioAttributes, int i) {
            int streamTypeForAudioUsage = Util.getStreamTypeForAudioUsage(audioAttributes.usage);
            return i == 0 ? new AudioTrack(streamTypeForAudioUsage, this.f23174e, this.f23175f, this.f23176g, this.f23177h, 1) : new AudioTrack(streamTypeForAudioUsage, this.f23174e, this.f23175f, this.f23176g, this.f23177h, 1, i);
        }

        /* renamed from: h */
        public long m18541h(long j) {
            return (j * 1000000) / this.f23174e;
        }

        /* renamed from: k */
        public long m18542k(long j) {
            return (j * 1000000) / this.f23170a.sampleRate;
        }

        /* renamed from: l */
        public boolean m18543l() {
            return this.f23172c == 1;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$e */
    /* loaded from: classes5.dex */
    public static final class C4694e {

        /* renamed from: a */
        public final PlaybackParameters f23179a;

        /* renamed from: b */
        public final boolean f23180b;

        /* renamed from: c */
        public final long f23181c;

        /* renamed from: d */
        public final long f23182d;

        public /* synthetic */ C4694e(PlaybackParameters playbackParameters, boolean z, long j, long j2, C4690a c4690a) {
            this(playbackParameters, z, j, j2);
        }

        public C4694e(PlaybackParameters playbackParameters, boolean z, long j, long j2) {
            this.f23179a = playbackParameters;
            this.f23180b = z;
            this.f23181c = j;
            this.f23182d = j2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$f */
    /* loaded from: classes5.dex */
    public static final class C4695f<T extends Exception> {

        /* renamed from: a */
        public final long f23183a;

        /* renamed from: b */
        @Nullable
        public T f23184b;

        /* renamed from: c */
        public long f23185c;

        public C4695f(long j) {
            this.f23183a = j;
        }

        /* renamed from: a */
        public void m18544a() {
            this.f23184b = null;
        }

        /* renamed from: b */
        public void m18545b(T t) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f23184b == null) {
                this.f23184b = t;
                this.f23185c = this.f23183a + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f23185c) {
                T t2 = this.f23184b;
                if (t2 != t) {
                    t2.addSuppressed(t);
                }
                T t3 = this.f23184b;
                m18544a();
                throw t3;
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$g */
    /* loaded from: classes5.dex */
    public final class C4696g implements AudioTrackPositionTracker.Listener {
        public C4696g() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j) {
            StringBuilder sb = new StringBuilder(61);
            sb.append("Ignoring impossibly large audio latency: ");
            sb.append(j);
            Log.m21493w(DefaultAudioSink.f23103g0, sb.toString());
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(long j) {
            if (DefaultAudioSink.this.f23149r != null) {
                DefaultAudioSink.this.f23149r.onPositionAdvancing(j);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j, long j2, long j3, long j4) {
            long m18524y = DefaultAudioSink.this.m18524y();
            long m18525z = DefaultAudioSink.this.m18525z();
            StringBuilder sb = new StringBuilder(182);
            sb.append("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(m18524y);
            sb.append(", ");
            sb.append(m18525z);
            String sb2 = sb.toString();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(sb2, null);
            }
            Log.m21493w(DefaultAudioSink.f23103g0, sb2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j, long j2, long j3, long j4) {
            long m18524y = DefaultAudioSink.this.m18524y();
            long m18525z = DefaultAudioSink.this.m18525z();
            StringBuilder sb = new StringBuilder(180);
            sb.append("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(m18524y);
            sb.append(", ");
            sb.append(m18525z);
            String sb2 = sb.toString();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(sb2, null);
            }
            Log.m21493w(DefaultAudioSink.f23103g0, sb2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onUnderrun(int i, long j) {
            if (DefaultAudioSink.this.f23149r != null) {
                DefaultAudioSink.this.f23149r.onUnderrun(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f23129Z);
            }
        }

        public /* synthetic */ C4696g(DefaultAudioSink defaultAudioSink, C4690a c4690a) {
            this();
        }
    }

    @RequiresApi(29)
    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$h */
    /* loaded from: classes5.dex */
    public final class C4697h {

        /* renamed from: a */
        public final Handler f23187a = new Handler();

        /* renamed from: b */
        public final AudioTrack.StreamEventCallback f23188b;

        /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$h$a */
        /* loaded from: classes5.dex */
        public class a extends AudioTrack.StreamEventCallback {

            /* renamed from: a */
            public final /* synthetic */ DefaultAudioSink f23190a;

            public a(DefaultAudioSink defaultAudioSink) {
                this.f23190a = defaultAudioSink;
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onDataRequest(AudioTrack audioTrack, int i) {
                Assertions.checkState(audioTrack == DefaultAudioSink.this.f23152u);
                if (DefaultAudioSink.this.f23149r == null || !DefaultAudioSink.this.f23124U) {
                    return;
                }
                DefaultAudioSink.this.f23149r.onOffloadBufferEmptying();
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onTearDown(AudioTrack audioTrack) {
                Assertions.checkState(audioTrack == DefaultAudioSink.this.f23152u);
                if (DefaultAudioSink.this.f23149r == null || !DefaultAudioSink.this.f23124U) {
                    return;
                }
                DefaultAudioSink.this.f23149r.onOffloadBufferEmptying();
            }
        }

        public C4697h() {
            this.f23188b = new a(DefaultAudioSink.this);
        }

        /* renamed from: a */
        public void m18546a(AudioTrack audioTrack) {
            Handler handler = this.f23187a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new b8e(handler), this.f23188b);
        }

        /* renamed from: b */
        public void m18547b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f23188b);
            this.f23187a.removeCallbacksAndMessages(null);
        }
    }

    public /* synthetic */ DefaultAudioSink(Builder builder, C4690a c4690a) {
        this(builder);
    }

    /* renamed from: B */
    public static boolean m18478B(int i) {
        return (Util.SDK_INT >= 24 && i == -6) || i == -32;
    }

    /* renamed from: D */
    public static boolean m18479D(AudioTrack audioTrack) {
        return Util.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* renamed from: E */
    public static boolean m18480E(Format format, AudioCapabilities audioCapabilities) {
        return m18495t(format, audioCapabilities) != null;
    }

    @RequiresApi(21)
    /* renamed from: N */
    public static void m18481N(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    /* renamed from: O */
    public static void m18482O(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    @RequiresApi(21)
    /* renamed from: U */
    public static int m18483U(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    @RequiresApi(21)
    /* renamed from: p */
    public static AudioFormat m18492p(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    /* renamed from: r */
    public static int m18493r(int i, int i2, int i3) {
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3);
        Assertions.checkState(minBufferSize != -2);
        return minBufferSize;
    }

    /* renamed from: s */
    public static int m18494s(int i) {
        int i2 = Util.SDK_INT;
        if (i2 <= 28) {
            if (i == 7) {
                i = 8;
            } else if (i == 3 || i == 4 || i == 5) {
                i = 6;
            }
        }
        if (i2 <= 26 && "fugu".equals(Util.DEVICE) && i == 1) {
            i = 2;
        }
        return Util.getAudioTrackChannelConfig(i);
    }

    @Nullable
    /* renamed from: t */
    public static Pair<Integer, Integer> m18495t(Format format, AudioCapabilities audioCapabilities) {
        int encoding = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs);
        int i = 6;
        if (!(encoding == 5 || encoding == 6 || encoding == 18 || encoding == 17 || encoding == 7 || encoding == 8 || encoding == 14)) {
            return null;
        }
        if (encoding == 18 && !audioCapabilities.supportsEncoding(18)) {
            encoding = 6;
        } else if (encoding == 8 && !audioCapabilities.supportsEncoding(8)) {
            encoding = 7;
        }
        if (!audioCapabilities.supportsEncoding(encoding)) {
            return null;
        }
        if (encoding != 18) {
            i = format.channelCount;
            if (i > audioCapabilities.getMaxChannelCount()) {
                return null;
            }
        } else if (Util.SDK_INT >= 29) {
            int i2 = format.sampleRate;
            if (i2 == -1) {
                i2 = 48000;
            }
            i = m18497v(18, i2);
            if (i == 0) {
                Log.m21493w(f23103g0, "E-AC3 JOC encoding supported but no channel count supported");
                return null;
            }
        }
        int m18494s = m18494s(i);
        if (m18494s == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(encoding), Integer.valueOf(m18494s));
    }

    /* renamed from: u */
    public static int m18496u(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return Ac3Util.parseAc3SyncframeAudioSampleCount(byteBuffer);
            case 7:
            case 8:
                return DtsUtil.parseDtsAudioSampleCount(byteBuffer);
            case 9:
                int parseMpegAudioFrameSampleCount = MpegAudioUtil.parseMpegAudioFrameSampleCount(Util.getBigEndianInt(byteBuffer, byteBuffer.position()));
                if (parseMpegAudioFrameSampleCount != -1) {
                    return parseMpegAudioFrameSampleCount;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                StringBuilder sb = new StringBuilder(38);
                sb.append("Unexpected audio encoding: ");
                sb.append(i);
                throw new IllegalStateException(sb.toString());
            case 14:
                int findTrueHdSyncframeOffset = Ac3Util.findTrueHdSyncframeOffset(byteBuffer);
                if (findTrueHdSyncframeOffset == -1) {
                    return 0;
                }
                return Ac3Util.parseTrueHdSyncframeAudioSampleCount(byteBuffer, findTrueHdSyncframeOffset) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return Ac4Util.parseAc4SyncframeAudioSampleCount(byteBuffer);
        }
    }

    @RequiresApi(29)
    /* renamed from: v */
    public static int m18497v(int i, int i2) {
        android.media.AudioAttributes build = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i3 = 8; i3 > 0; i3--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(Util.getAudioTrackChannelConfig(i3)).build(), build)) {
                return i3;
            }
        }
        return 0;
    }

    /* renamed from: A */
    public final void m18498A() throws AudioSink.InitializationException {
        PlayerId playerId;
        this.f23139h.block();
        AudioTrack m18518m = m18518m();
        this.f23152u = m18518m;
        if (m18479D(m18518m)) {
            m18503I(this.f23152u);
            if (this.f23143l != 3) {
                AudioTrack audioTrack = this.f23152u;
                Format format = this.f23151t.f23170a;
                audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
            }
        }
        if (Util.SDK_INT >= 31 && (playerId = this.f23148q) != null) {
            C4691b.m18531a(this.f23152u, playerId);
        }
        this.f23126W = this.f23152u.getAudioSessionId();
        AudioTrackPositionTracker audioTrackPositionTracker = this.f23140i;
        AudioTrack audioTrack2 = this.f23152u;
        C4693d c4693d = this.f23151t;
        audioTrackPositionTracker.m18467t(audioTrack2, c4693d.f23172c == 2, c4693d.f23176g, c4693d.f23173d, c4693d.f23177h);
        m18507M();
        int i = this.f23127X.effectId;
        if (i != 0) {
            this.f23152u.attachAuxEffect(i);
            this.f23152u.setAuxEffectSendLevel(this.f23127X.sendLevel);
        }
        this.f23111H = true;
    }

    /* renamed from: C */
    public final boolean m18499C() {
        return this.f23152u != null;
    }

    /* renamed from: F */
    public final void m18500F() {
        if (this.f23151t.m18543l()) {
            this.f23131a0 = true;
        }
    }

    /* renamed from: G */
    public final void m18501G() {
        if (this.f23123T) {
            return;
        }
        this.f23123T = true;
        this.f23140i.m18456h(m18525z());
        this.f23152u.stop();
        this.f23104A = 0;
    }

    /* renamed from: H */
    public final void m18502H(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.f23114K.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f23115L[i - 1];
            } else {
                byteBuffer = this.f23116M;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.EMPTY_BUFFER;
                }
            }
            if (i == length) {
                m18512T(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.f23114K[i];
                if (i > this.f23121R) {
                    audioProcessor.queueInput(byteBuffer);
                }
                ByteBuffer output = audioProcessor.getOutput();
                this.f23115L[i] = output;
                if (output.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    @RequiresApi(29)
    /* renamed from: I */
    public final void m18503I(AudioTrack audioTrack) {
        if (this.f23144m == null) {
            this.f23144m = new C4697h();
        }
        this.f23144m.m18546a(audioTrack);
    }

    /* renamed from: J */
    public final void m18504J() {
        this.f23105B = 0L;
        this.f23106C = 0L;
        this.f23107D = 0L;
        this.f23108E = 0L;
        this.f23133b0 = false;
        this.f23109F = 0;
        this.f23155x = new C4694e(m18521q(), getSkipSilenceEnabled(), 0L, 0L, null);
        this.f23112I = 0L;
        this.f23154w = null;
        this.f23141j.clear();
        this.f23116M = null;
        this.f23117N = 0;
        this.f23118O = null;
        this.f23123T = false;
        this.f23122S = false;
        this.f23121R = -1;
        this.f23157z = null;
        this.f23104A = 0;
        this.f23136e.m18595b();
        m18520o();
    }

    /* renamed from: K */
    public final void m18505K(PlaybackParameters playbackParameters, boolean z) {
        C4694e m18522w = m18522w();
        if (playbackParameters.equals(m18522w.f23179a) && z == m18522w.f23180b) {
            return;
        }
        C4694e c4694e = new C4694e(playbackParameters, z, C4649C.TIME_UNSET, C4649C.TIME_UNSET, null);
        if (m18499C()) {
            this.f23154w = c4694e;
        } else {
            this.f23155x = c4694e;
        }
    }

    @RequiresApi(23)
    /* renamed from: L */
    public final void m18506L(PlaybackParameters playbackParameters) {
        if (m18499C()) {
            try {
                this.f23152u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(playbackParameters.speed).setPitch(playbackParameters.pitch).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                Log.m21494w(f23103g0, "Failed to set playback params", e);
            }
            playbackParameters = new PlaybackParameters(this.f23152u.getPlaybackParams().getSpeed(), this.f23152u.getPlaybackParams().getPitch());
            this.f23140i.m18468u(playbackParameters.speed);
        }
        this.f23156y = playbackParameters;
    }

    /* renamed from: M */
    public final void m18507M() {
        if (m18499C()) {
            if (Util.SDK_INT >= 21) {
                m18481N(this.f23152u, this.f23113J);
            } else {
                m18482O(this.f23152u, this.f23113J);
            }
        }
    }

    /* renamed from: P */
    public final void m18508P() {
        AudioProcessor[] audioProcessorArr = this.f23151t.f23178i;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.f23114K = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.f23115L = new ByteBuffer[size];
        m18520o();
    }

    /* renamed from: Q */
    public final boolean m18509Q() {
        return (this.f23128Y || !MimeTypes.AUDIO_RAW.equals(this.f23151t.f23170a.sampleMimeType) || m18510R(this.f23151t.f23170a.pcmEncoding)) ? false : true;
    }

    /* renamed from: R */
    public final boolean m18510R(int i) {
        return this.f23134c && Util.isEncodingHighResolutionPcm(i);
    }

    /* renamed from: S */
    public final boolean m18511S(Format format, AudioAttributes audioAttributes) {
        int encoding;
        int audioTrackChannelConfig;
        int m18523x;
        if (Util.SDK_INT < 29 || this.f23143l == 0 || (encoding = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs)) == 0 || (audioTrackChannelConfig = Util.getAudioTrackChannelConfig(format.channelCount)) == 0 || (m18523x = m18523x(m18492p(format.sampleRate, audioTrackChannelConfig, encoding), audioAttributes.getAudioAttributesV21())) == 0) {
            return false;
        }
        if (m18523x == 1) {
            return ((format.encoderDelay != 0 || format.encoderPadding != 0) && (this.f23143l == 1)) ? false : true;
        }
        if (m18523x == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    /* renamed from: T */
    public final void m18512T(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        int m18483U;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.f23118O;
            if (byteBuffer2 != null) {
                Assertions.checkArgument(byteBuffer2 == byteBuffer);
            } else {
                this.f23118O = byteBuffer;
                if (Util.SDK_INT < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.f23119P;
                    if (bArr == null || bArr.length < remaining) {
                        this.f23119P = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.f23119P, 0, remaining);
                    byteBuffer.position(position);
                    this.f23120Q = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (Util.SDK_INT < 21) {
                int m18451c = this.f23140i.m18451c(this.f23107D);
                if (m18451c > 0) {
                    m18483U = this.f23152u.write(this.f23119P, this.f23120Q, Math.min(remaining2, m18451c));
                    if (m18483U > 0) {
                        this.f23120Q += m18483U;
                        byteBuffer.position(byteBuffer.position() + m18483U);
                    }
                } else {
                    m18483U = 0;
                }
            } else if (this.f23128Y) {
                Assertions.checkState(j != C4649C.TIME_UNSET);
                m18483U = m18513V(this.f23152u, byteBuffer, remaining2, j);
            } else {
                m18483U = m18483U(this.f23152u, byteBuffer, remaining2);
            }
            this.f23129Z = SystemClock.elapsedRealtime();
            if (m18483U < 0) {
                boolean m18478B = m18478B(m18483U);
                if (m18478B) {
                    m18500F();
                }
                AudioSink.WriteException writeException = new AudioSink.WriteException(m18483U, this.f23151t.f23170a, m18478B);
                AudioSink.Listener listener = this.f23149r;
                if (listener != null) {
                    listener.onAudioSinkError(writeException);
                }
                if (writeException.isRecoverable) {
                    throw writeException;
                }
                this.f23146o.m18545b(writeException);
                return;
            }
            this.f23146o.m18544a();
            if (m18479D(this.f23152u)) {
                long j2 = this.f23108E;
                if (j2 > 0) {
                    this.f23133b0 = false;
                }
                if (this.f23124U && this.f23149r != null && m18483U < remaining2 && !this.f23133b0) {
                    this.f23149r.onOffloadBufferFull(this.f23140i.m18453e(j2));
                }
            }
            int i = this.f23151t.f23172c;
            if (i == 0) {
                this.f23107D += m18483U;
            }
            if (m18483U == remaining2) {
                if (i != 0) {
                    Assertions.checkState(byteBuffer == this.f23116M);
                    this.f23108E += this.f23109F * this.f23117N;
                }
                this.f23118O = null;
            }
        }
    }

    @RequiresApi(21)
    /* renamed from: V */
    public final int m18513V(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (Util.SDK_INT >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.f23157z == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.f23157z = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.f23157z.putInt(1431633921);
        }
        if (this.f23104A == 0) {
            this.f23157z.putInt(4, i);
            this.f23157z.putLong(8, j * 1000);
            this.f23157z.position(0);
            this.f23104A = i;
        }
        int remaining = this.f23157z.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.f23157z, remaining, 1);
            if (write < 0) {
                this.f23104A = 0;
                return write;
            }
            if (write < remaining) {
                return 0;
            }
        }
        int m18483U = m18483U(audioTrack, byteBuffer, i);
        if (m18483U < 0) {
            this.f23104A = 0;
            return m18483U;
        }
        this.f23104A -= m18483U;
        return m18483U;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void configure(Format format, int i, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        int i2;
        int i3;
        AudioProcessor[] audioProcessorArr;
        int i4;
        int intValue;
        int i5;
        int i6;
        int i7;
        int i8;
        int bufferSizeInBytes;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
            Assertions.checkArgument(Util.isEncodingLinearPcm(format.pcmEncoding));
            int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
            AudioProcessor[] audioProcessorArr2 = m18510R(format.pcmEncoding) ? this.f23138g : this.f23137f;
            this.f23136e.m18596c(format.encoderDelay, format.encoderPadding);
            if (Util.SDK_INT < 21 && format.channelCount == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i9 = 0; i9 < 6; i9++) {
                    iArr2[i9] = i9;
                }
            } else {
                iArr2 = iArr;
            }
            this.f23135d.m18592a(iArr2);
            AudioProcessor.AudioFormat audioFormat = new AudioProcessor.AudioFormat(format.sampleRate, format.channelCount, format.pcmEncoding);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.AudioFormat configure = audioProcessor.configure(audioFormat);
                    if (audioProcessor.isActive()) {
                        audioFormat = configure;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e) {
                    throw new AudioSink.ConfigurationException(e, format);
                }
            }
            int i10 = audioFormat.encoding;
            int i11 = audioFormat.sampleRate;
            int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(audioFormat.channelCount);
            i5 = Util.getPcmFrameSize(i10, audioFormat.channelCount);
            audioProcessorArr = audioProcessorArr2;
            i6 = i10;
            i4 = i11;
            i2 = pcmFrameSize;
            i7 = 0;
            intValue = audioTrackChannelConfig;
        } else {
            AudioProcessor[] audioProcessorArr3 = new AudioProcessor[0];
            int i12 = format.sampleRate;
            i2 = -1;
            if (m18511S(format, this.f23153v)) {
                i3 = 1;
                audioProcessorArr = audioProcessorArr3;
                i4 = i12;
                i6 = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs);
                i5 = -1;
                intValue = Util.getAudioTrackChannelConfig(format.channelCount);
            } else {
                Pair<Integer, Integer> m18495t = m18495t(format, this.f23130a);
                if (m18495t == null) {
                    String valueOf = String.valueOf(format);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 37);
                    sb.append("Unable to configure passthrough for: ");
                    sb.append(valueOf);
                    throw new AudioSink.ConfigurationException(sb.toString(), format);
                }
                int intValue2 = ((Integer) m18495t.first).intValue();
                i3 = 2;
                audioProcessorArr = audioProcessorArr3;
                i4 = i12;
                intValue = ((Integer) m18495t.second).intValue();
                i5 = -1;
                i6 = intValue2;
            }
            i7 = i3;
        }
        if (i != 0) {
            bufferSizeInBytes = i;
            i8 = i6;
        } else {
            i8 = i6;
            bufferSizeInBytes = this.f23147p.getBufferSizeInBytes(m18493r(i4, intValue, i6), i6, i7, i5, i4, this.f23142k ? 8.0d : 1.0d);
        }
        if (i8 == 0) {
            String valueOf2 = String.valueOf(format);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 48);
            sb2.append("Invalid output encoding (mode=");
            sb2.append(i7);
            sb2.append(") for: ");
            sb2.append(valueOf2);
            throw new AudioSink.ConfigurationException(sb2.toString(), format);
        }
        if (intValue != 0) {
            this.f23131a0 = false;
            C4693d c4693d = new C4693d(format, i2, i7, i5, i4, intValue, i8, bufferSizeInBytes, audioProcessorArr);
            if (m18499C()) {
                this.f23150s = c4693d;
                return;
            } else {
                this.f23151t = c4693d;
                return;
            }
        }
        String valueOf3 = String.valueOf(format);
        StringBuilder sb3 = new StringBuilder(valueOf3.length() + 54);
        sb3.append("Invalid output channel config (mode=");
        sb3.append(i7);
        sb3.append(") for: ");
        sb3.append(valueOf3);
        throw new AudioSink.ConfigurationException(sb3.toString(), format);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void disableTunneling() {
        if (this.f23128Y) {
            this.f23128Y = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void enableTunnelingV21() {
        Assertions.checkState(Util.SDK_INT >= 21);
        Assertions.checkState(this.f23125V);
        if (this.f23128Y) {
            return;
        }
        this.f23128Y = true;
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void experimentalFlushWithoutAudioTrackRelease() {
        if (Util.SDK_INT < 25) {
            flush();
            return;
        }
        this.f23146o.m18544a();
        this.f23145n.m18544a();
        if (m18499C()) {
            m18504J();
            if (this.f23140i.m18458j()) {
                this.f23152u.pause();
            }
            this.f23152u.flush();
            this.f23140i.m18465r();
            AudioTrackPositionTracker audioTrackPositionTracker = this.f23140i;
            AudioTrack audioTrack = this.f23152u;
            C4693d c4693d = this.f23151t;
            audioTrackPositionTracker.m18467t(audioTrack, c4693d.f23172c == 2, c4693d.f23176g, c4693d.f23173d, c4693d.f23177h);
            this.f23111H = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (m18499C()) {
            m18504J();
            if (this.f23140i.m18458j()) {
                this.f23152u.pause();
            }
            if (m18479D(this.f23152u)) {
                ((C4697h) Assertions.checkNotNull(this.f23144m)).m18547b(this.f23152u);
            }
            AudioTrack audioTrack = this.f23152u;
            this.f23152u = null;
            if (Util.SDK_INT < 21 && !this.f23125V) {
                this.f23126W = 0;
            }
            C4693d c4693d = this.f23150s;
            if (c4693d != null) {
                this.f23151t = c4693d;
                this.f23150s = null;
            }
            this.f23140i.m18465r();
            this.f23139h.close();
            new C4690a("ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.f23146o.m18544a();
        this.f23145n.m18544a();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public AudioAttributes getAudioAttributes() {
        return this.f23153v;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long getCurrentPositionUs(boolean z) {
        if (!m18499C() || this.f23111H) {
            return Long.MIN_VALUE;
        }
        return m18516k(m18515j(Math.min(this.f23140i.m18452d(z), this.f23151t.m18541h(m18525z()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int getFormatSupport(Format format) {
        if (!MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
            return ((this.f23131a0 || !m18511S(format, this.f23153v)) && !m18480E(format, this.f23130a)) ? 0 : 2;
        }
        if (Util.isEncodingLinearPcm(format.pcmEncoding)) {
            int i = format.pcmEncoding;
            return (i == 2 || (this.f23134c && i == 4)) ? 2 : 1;
        }
        int i2 = format.pcmEncoding;
        StringBuilder sb = new StringBuilder(33);
        sb.append("Invalid PCM encoding: ");
        sb.append(i2);
        Log.m21493w(f23103g0, sb.toString());
        return 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.f23142k ? this.f23156y : m18521q();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean getSkipSilenceEnabled() {
        return m18522w().f23180b;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean handleBuffer(ByteBuffer byteBuffer, long j, int i) throws AudioSink.InitializationException, AudioSink.WriteException {
        ByteBuffer byteBuffer2 = this.f23116M;
        Assertions.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f23150s != null) {
            if (!m18519n()) {
                return false;
            }
            if (this.f23150s.m18535b(this.f23151t)) {
                this.f23151t = this.f23150s;
                this.f23150s = null;
                if (m18479D(this.f23152u) && this.f23143l != 3) {
                    this.f23152u.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.f23152u;
                    Format format = this.f23151t.f23170a;
                    audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
                    this.f23133b0 = true;
                }
            } else {
                m18501G();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            m18514i(j);
        }
        if (!m18499C()) {
            try {
                m18498A();
            } catch (AudioSink.InitializationException e) {
                if (e.isRecoverable) {
                    throw e;
                }
                this.f23145n.m18545b(e);
                return false;
            }
        }
        this.f23145n.m18544a();
        if (this.f23111H) {
            this.f23112I = Math.max(0L, j);
            this.f23110G = false;
            this.f23111H = false;
            if (this.f23142k && Util.SDK_INT >= 23) {
                m18506L(this.f23156y);
            }
            m18514i(j);
            if (this.f23124U) {
                play();
            }
        }
        if (!this.f23140i.m18460l(m18525z())) {
            return false;
        }
        if (this.f23116M == null) {
            Assertions.checkArgument(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            C4693d c4693d = this.f23151t;
            if (c4693d.f23172c != 0 && this.f23109F == 0) {
                int m18496u = m18496u(c4693d.f23176g, byteBuffer);
                this.f23109F = m18496u;
                if (m18496u == 0) {
                    return true;
                }
            }
            if (this.f23154w != null) {
                if (!m18519n()) {
                    return false;
                }
                m18514i(j);
                this.f23154w = null;
            }
            long m18542k = this.f23112I + this.f23151t.m18542k(m18524y() - this.f23136e.m18594a());
            if (!this.f23110G && Math.abs(m18542k - j) > 200000) {
                this.f23149r.onAudioSinkError(new AudioSink.UnexpectedDiscontinuityException(j, m18542k));
                this.f23110G = true;
            }
            if (this.f23110G) {
                if (!m18519n()) {
                    return false;
                }
                long j2 = j - m18542k;
                this.f23112I += j2;
                this.f23110G = false;
                m18514i(j);
                AudioSink.Listener listener = this.f23149r;
                if (listener != null && j2 != 0) {
                    listener.onPositionDiscontinuity();
                }
            }
            if (this.f23151t.f23172c == 0) {
                this.f23105B += byteBuffer.remaining();
            } else {
                this.f23106C += this.f23109F * i;
            }
            this.f23116M = byteBuffer;
            this.f23117N = i;
        }
        m18502H(j);
        if (!this.f23116M.hasRemaining()) {
            this.f23116M = null;
            this.f23117N = 0;
            return true;
        }
        if (!this.f23140i.m18459k(m18525z())) {
            return false;
        }
        Log.m21493w(f23103g0, "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void handleDiscontinuity() {
        this.f23110G = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean hasPendingData() {
        return m18499C() && this.f23140i.m18457i(m18525z());
    }

    /* renamed from: i */
    public final void m18514i(long j) {
        PlaybackParameters applyPlaybackParameters = m18509Q() ? this.f23132b.applyPlaybackParameters(m18521q()) : PlaybackParameters.DEFAULT;
        boolean applySkipSilenceEnabled = m18509Q() ? this.f23132b.applySkipSilenceEnabled(getSkipSilenceEnabled()) : false;
        this.f23141j.add(new C4694e(applyPlaybackParameters, applySkipSilenceEnabled, Math.max(0L, j), this.f23151t.m18541h(m18525z()), null));
        m18508P();
        AudioSink.Listener listener = this.f23149r;
        if (listener != null) {
            listener.onSkipSilenceEnabledChanged(applySkipSilenceEnabled);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean isEnded() {
        return !m18499C() || (this.f23122S && !hasPendingData());
    }

    /* renamed from: j */
    public final long m18515j(long j) {
        while (!this.f23141j.isEmpty() && j >= this.f23141j.getFirst().f23182d) {
            this.f23155x = this.f23141j.remove();
        }
        C4694e c4694e = this.f23155x;
        long j2 = j - c4694e.f23182d;
        if (c4694e.f23179a.equals(PlaybackParameters.DEFAULT)) {
            return this.f23155x.f23181c + j2;
        }
        if (this.f23141j.isEmpty()) {
            return this.f23155x.f23181c + this.f23132b.getMediaDuration(j2);
        }
        C4694e first = this.f23141j.getFirst();
        return first.f23181c - Util.getMediaDurationForPlayoutDuration(first.f23182d - j, this.f23155x.f23179a.speed);
    }

    /* renamed from: k */
    public final long m18516k(long j) {
        return j + this.f23151t.m18541h(this.f23132b.getSkippedOutputFrameCount());
    }

    /* renamed from: l */
    public final AudioTrack m18517l(C4693d c4693d) throws AudioSink.InitializationException {
        try {
            return c4693d.m18534a(this.f23128Y, this.f23153v, this.f23126W);
        } catch (AudioSink.InitializationException e) {
            AudioSink.Listener listener = this.f23149r;
            if (listener != null) {
                listener.onAudioSinkError(e);
            }
            throw e;
        }
    }

    /* renamed from: m */
    public final AudioTrack m18518m() throws AudioSink.InitializationException {
        try {
            return m18517l((C4693d) Assertions.checkNotNull(this.f23151t));
        } catch (AudioSink.InitializationException e) {
            C4693d c4693d = this.f23151t;
            if (c4693d.f23177h > 1000000) {
                C4693d m18536c = c4693d.m18536c(1000000);
                try {
                    AudioTrack m18517l = this.m18517l(m18536c);
                    this.f23151t = m18536c;
                    return m18517l;
                } catch (AudioSink.InitializationException e2) {
                    e.addSuppressed(e2);
                    this.m18500F();
                    throw e;
                }
            }
            this.m18500F();
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0029 -> B:4:0x0009). Please report as a decompilation issue!!! */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m18519n() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r9 = this;
            int r0 = r9.f23121R
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.f23121R = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.f23121R
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.f23114K
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.queueEndOfStream()
        L1f:
            r9.m18502H(r7)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.f23121R
            int r0 = r0 + r1
            r9.f23121R = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.f23118O
            if (r0 == 0) goto L3b
            r9.m18512T(r0, r7)
            java.nio.ByteBuffer r0 = r9.f23118O
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.f23121R = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.m18519n():boolean");
    }

    /* renamed from: o */
    public final void m18520o() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.f23114K;
            if (i >= audioProcessorArr.length) {
                return;
            }
            AudioProcessor audioProcessor = audioProcessorArr[i];
            audioProcessor.flush();
            this.f23115L[i] = audioProcessor.getOutput();
            i++;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.f23124U = false;
        if (m18499C() && this.f23140i.m18464q()) {
            this.f23152u.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void play() {
        this.f23124U = true;
        if (m18499C()) {
            this.f23140i.m18469v();
            this.f23152u.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (!this.f23122S && m18499C() && m18519n()) {
            m18501G();
            this.f23122S = true;
        }
    }

    /* renamed from: q */
    public final PlaybackParameters m18521q() {
        return m18522w().f23179a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.f23137f) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.f23138g) {
            audioProcessor2.reset();
        }
        this.f23124U = false;
        this.f23131a0 = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (this.f23153v.equals(audioAttributes)) {
            return;
        }
        this.f23153v = audioAttributes;
        if (this.f23128Y) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioSessionId(int i) {
        if (this.f23126W != i) {
            this.f23126W = i;
            this.f23125V = i != 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        if (this.f23127X.equals(auxEffectInfo)) {
            return;
        }
        int i = auxEffectInfo.effectId;
        float f = auxEffectInfo.sendLevel;
        AudioTrack audioTrack = this.f23152u;
        if (audioTrack != null) {
            if (this.f23127X.effectId != i) {
                audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.f23152u.setAuxEffectSendLevel(f);
            }
        }
        this.f23127X = auxEffectInfo;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setListener(AudioSink.Listener listener) {
        this.f23149r = listener;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        PlaybackParameters playbackParameters2 = new PlaybackParameters(Util.constrainValue(playbackParameters.speed, 0.1f, 8.0f), Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f));
        if (!this.f23142k || Util.SDK_INT < 23) {
            m18505K(playbackParameters2, getSkipSilenceEnabled());
        } else {
            m18506L(playbackParameters2);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setPlayerId(@Nullable PlayerId playerId) {
        this.f23148q = playerId;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setSkipSilenceEnabled(boolean z) {
        m18505K(m18521q(), z);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float f) {
        if (this.f23113J != f) {
            this.f23113J = f;
            m18507M();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean supportsFormat(Format format) {
        return getFormatSupport(format) != 0;
    }

    /* renamed from: w */
    public final C4694e m18522w() {
        C4694e c4694e = this.f23154w;
        return c4694e != null ? c4694e : !this.f23141j.isEmpty() ? this.f23141j.getLast() : this.f23155x;
    }

    @RequiresApi(29)
    @SuppressLint({"InlinedApi"})
    /* renamed from: x */
    public final int m18523x(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes) {
        int playbackOffloadSupport;
        int i = Util.SDK_INT;
        if (i >= 31) {
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
            return playbackOffloadSupport;
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i == 30 && Util.MODEL.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    /* renamed from: y */
    public final long m18524y() {
        return this.f23151t.f23172c == 0 ? this.f23105B / r0.f23171b : this.f23106C;
    }

    /* renamed from: z */
    public final long m18525z() {
        return this.f23151t.f23172c == 0 ? this.f23107D / r0.f23173d : this.f23108E;
    }

    @InlineMe(imports = {"com.google.android.exoplayer2.audio.DefaultAudioSink"}, replacement = "new DefaultAudioSink.Builder().setAudioCapabilities(audioCapabilities).setAudioProcessors(audioProcessors).build()")
    @InlineMeValidationDisabled("Migrate constructor to Builder")
    @Deprecated
    public DefaultAudioSink(@Nullable AudioCapabilities audioCapabilities, AudioProcessor[] audioProcessorArr) {
        this(new Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessors(audioProcessorArr));
    }

    @InlineMe(imports = {"com.google.android.exoplayer2.audio.DefaultAudioSink"}, replacement = "new DefaultAudioSink.Builder().setAudioCapabilities(audioCapabilities).setAudioProcessors(audioProcessors).setEnableFloatOutput(enableFloatOutput).build()")
    @InlineMeValidationDisabled("Migrate constructor to Builder")
    @Deprecated
    public DefaultAudioSink(@Nullable AudioCapabilities audioCapabilities, AudioProcessor[] audioProcessorArr, boolean z) {
        this(new Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessors(audioProcessorArr).setEnableFloatOutput(z));
    }

    @InlineMe(imports = {"com.google.android.exoplayer2.audio.DefaultAudioSink"}, replacement = "new DefaultAudioSink.Builder().setAudioCapabilities(audioCapabilities).setAudioProcessorChain(audioProcessorChain).setEnableFloatOutput(enableFloatOutput).setEnableAudioTrackPlaybackParams(enableAudioTrackPlaybackParams).setOffloadMode(offloadMode).build()")
    @InlineMeValidationDisabled("Migrate constructor to Builder")
    @Deprecated
    public DefaultAudioSink(@Nullable AudioCapabilities audioCapabilities, AudioProcessorChain audioProcessorChain, boolean z, boolean z2, int i) {
        this(new Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessorChain(audioProcessorChain).setEnableFloatOutput(z).setEnableAudioTrackPlaybackParams(z2).setOffloadMode(i));
    }

    @RequiresNonNull({"#1.audioProcessorChain"})
    public DefaultAudioSink(Builder builder) {
        this.f23130a = builder.f23158a;
        AudioProcessorChain audioProcessorChain = builder.f23159b;
        this.f23132b = audioProcessorChain;
        int i = Util.SDK_INT;
        this.f23134c = i >= 21 && builder.f23160c;
        this.f23142k = i >= 23 && builder.f23161d;
        this.f23143l = i >= 29 ? builder.f23162e : 0;
        this.f23147p = builder.f23163f;
        this.f23139h = new ConditionVariable(true);
        this.f23140i = new AudioTrackPositionTracker(new C4696g(this, null));
        C4700a c4700a = new C4700a();
        this.f23135d = c4700a;
        C4703d c4703d = new C4703d();
        this.f23136e = c4703d;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new C4702c(), c4700a, c4703d);
        Collections.addAll(arrayList, audioProcessorChain.getAudioProcessors());
        this.f23137f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f23138g = new AudioProcessor[]{new C4701b()};
        this.f23113J = 1.0f;
        this.f23153v = AudioAttributes.DEFAULT;
        this.f23126W = 0;
        this.f23127X = new AuxEffectInfo(0, 0.0f);
        PlaybackParameters playbackParameters = PlaybackParameters.DEFAULT;
        this.f23155x = new C4694e(playbackParameters, false, 0L, 0L, null);
        this.f23156y = playbackParameters;
        this.f23121R = -1;
        this.f23114K = new AudioProcessor[0];
        this.f23115L = new ByteBuffer[0];
        this.f23141j = new ArrayDeque<>();
        this.f23145n = new C4695f<>(100L);
        this.f23146o = new C4695f<>(100L);
    }
}
