package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.pvm;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* loaded from: classes5.dex */
public final class SonicAudioProcessor implements AudioProcessor {
    public static final int SAMPLE_RATE_NO_CHANGE = -1;

    /* renamed from: p */
    public static final float f23259p = 1.0E-4f;

    /* renamed from: q */
    public static final int f23260q = 1024;

    /* renamed from: a */
    public int f23261a;

    /* renamed from: b */
    public float f23262b = 1.0f;

    /* renamed from: c */
    public float f23263c = 1.0f;

    /* renamed from: d */
    public AudioProcessor.AudioFormat f23264d;

    /* renamed from: e */
    public AudioProcessor.AudioFormat f23265e;

    /* renamed from: f */
    public AudioProcessor.AudioFormat f23266f;

    /* renamed from: g */
    public AudioProcessor.AudioFormat f23267g;

    /* renamed from: h */
    public boolean f23268h;

    /* renamed from: i */
    @Nullable
    public pvm f23269i;

    /* renamed from: j */
    public ByteBuffer f23270j;

    /* renamed from: k */
    public ShortBuffer f23271k;

    /* renamed from: l */
    public ByteBuffer f23272l;

    /* renamed from: m */
    public long f23273m;

    /* renamed from: n */
    public long f23274n;

    /* renamed from: o */
    public boolean f23275o;

    public SonicAudioProcessor() {
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.f23264d = audioFormat;
        this.f23265e = audioFormat;
        this.f23266f = audioFormat;
        this.f23267g = audioFormat;
        ByteBuffer byteBuffer = AudioProcessor.EMPTY_BUFFER;
        this.f23270j = byteBuffer;
        this.f23271k = byteBuffer.asShortBuffer();
        this.f23272l = byteBuffer;
        this.f23261a = -1;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        int i = this.f23261a;
        if (i == -1) {
            i = audioFormat.sampleRate;
        }
        this.f23264d = audioFormat;
        AudioProcessor.AudioFormat audioFormat2 = new AudioProcessor.AudioFormat(i, audioFormat.channelCount, 2);
        this.f23265e = audioFormat2;
        this.f23268h = true;
        return audioFormat2;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            AudioProcessor.AudioFormat audioFormat = this.f23264d;
            this.f23266f = audioFormat;
            AudioProcessor.AudioFormat audioFormat2 = this.f23265e;
            this.f23267g = audioFormat2;
            if (this.f23268h) {
                this.f23269i = new pvm(audioFormat.sampleRate, audioFormat.channelCount, this.f23262b, this.f23263c, audioFormat2.sampleRate);
            } else {
                pvm pvmVar = this.f23269i;
                if (pvmVar != null) {
                    pvmVar.m56436i();
                }
            }
        }
        this.f23272l = AudioProcessor.EMPTY_BUFFER;
        this.f23273m = 0L;
        this.f23274n = 0L;
        this.f23275o = false;
    }

    public long getMediaDuration(long j) {
        if (this.f23274n < 1024) {
            return (long) (this.f23262b * j);
        }
        long m56439l = this.f23273m - ((pvm) Assertions.checkNotNull(this.f23269i)).m56439l();
        int i = this.f23267g.sampleRate;
        int i2 = this.f23266f.sampleRate;
        return i == i2 ? Util.scaleLargeTimestamp(j, m56439l, this.f23274n) : Util.scaleLargeTimestamp(j, m56439l * i, this.f23274n * i2);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int m56438k;
        pvm pvmVar = this.f23269i;
        if (pvmVar != null && (m56438k = pvmVar.m56438k()) > 0) {
            if (this.f23270j.capacity() < m56438k) {
                ByteBuffer order = ByteBuffer.allocateDirect(m56438k).order(ByteOrder.nativeOrder());
                this.f23270j = order;
                this.f23271k = order.asShortBuffer();
            } else {
                this.f23270j.clear();
                this.f23271k.clear();
            }
            pvmVar.m56437j(this.f23271k);
            this.f23274n += m56438k;
            this.f23270j.limit(m56438k);
            this.f23272l = this.f23270j;
        }
        ByteBuffer byteBuffer = this.f23272l;
        this.f23272l = AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f23265e.sampleRate != -1 && (Math.abs(this.f23262b - 1.0f) >= 1.0E-4f || Math.abs(this.f23263c - 1.0f) >= 1.0E-4f || this.f23265e.sampleRate != this.f23264d.sampleRate);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        pvm pvmVar;
        return this.f23275o && ((pvmVar = this.f23269i) == null || pvmVar.m56438k() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueEndOfStream() {
        pvm pvmVar = this.f23269i;
        if (pvmVar != null) {
            pvmVar.m56445s();
        }
        this.f23275o = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            pvm pvmVar = (pvm) Assertions.checkNotNull(this.f23269i);
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f23273m += remaining;
            pvmVar.m56446t(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        this.f23262b = 1.0f;
        this.f23263c = 1.0f;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.f23264d = audioFormat;
        this.f23265e = audioFormat;
        this.f23266f = audioFormat;
        this.f23267g = audioFormat;
        ByteBuffer byteBuffer = AudioProcessor.EMPTY_BUFFER;
        this.f23270j = byteBuffer;
        this.f23271k = byteBuffer.asShortBuffer();
        this.f23272l = byteBuffer;
        this.f23261a = -1;
        this.f23268h = false;
        this.f23269i = null;
        this.f23273m = 0L;
        this.f23274n = 0L;
        this.f23275o = false;
    }

    public void setOutputSampleRateHz(int i) {
        this.f23261a = i;
    }

    public void setPitch(float f) {
        if (this.f23263c != f) {
            this.f23263c = f;
            this.f23268h = true;
        }
    }

    public void setSpeed(float f) {
        if (this.f23262b != f) {
            this.f23262b = f;
            this.f23268h = true;
        }
    }
}
