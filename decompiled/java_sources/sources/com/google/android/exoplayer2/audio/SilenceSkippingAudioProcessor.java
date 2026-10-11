package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class SilenceSkippingAudioProcessor extends BaseAudioProcessor {
    public static final long DEFAULT_MINIMUM_SILENCE_DURATION_US = 150000;
    public static final long DEFAULT_PADDING_SILENCE_US = 20000;
    public static final short DEFAULT_SILENCE_THRESHOLD_LEVEL = 1024;

    /* renamed from: r */
    public static final int f23244r = 0;

    /* renamed from: s */
    public static final int f23245s = 1;

    /* renamed from: t */
    public static final int f23246t = 2;

    /* renamed from: f */
    public final long f23247f;

    /* renamed from: g */
    public final long f23248g;

    /* renamed from: h */
    public final short f23249h;

    /* renamed from: i */
    public int f23250i;

    /* renamed from: j */
    public boolean f23251j;

    /* renamed from: k */
    public byte[] f23252k;

    /* renamed from: l */
    public byte[] f23253l;

    /* renamed from: m */
    public int f23254m;

    /* renamed from: n */
    public int f23255n;

    /* renamed from: o */
    public int f23256o;

    /* renamed from: p */
    public boolean f23257p;

    /* renamed from: q */
    public long f23258q;

    public SilenceSkippingAudioProcessor() {
        this(DEFAULT_MINIMUM_SILENCE_DURATION_US, DEFAULT_PADDING_SILENCE_US, (short) 1024);
    }

    /* renamed from: a */
    public final int m18577a(long j) {
        return (int) ((j * this.inputAudioFormat.sampleRate) / 1000000);
    }

    /* renamed from: b */
    public final int m18578b(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        do {
            limit -= 2;
            if (limit < byteBuffer.position()) {
                return byteBuffer.position();
            }
        } while (Math.abs((int) byteBuffer.getShort(limit)) <= this.f23249h);
        int i = this.f23250i;
        return ((limit / i) * i) + i;
    }

    /* renamed from: c */
    public final int m18579c(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.f23249h) {
                int i = this.f23250i;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    /* renamed from: d */
    public final void m18580d(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        replaceOutputBuffer(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f23257p = true;
        }
    }

    /* renamed from: e */
    public final void m18581e(byte[] bArr, int i) {
        replaceOutputBuffer(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f23257p = true;
        }
    }

    /* renamed from: f */
    public final void m18582f(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int m18579c = m18579c(byteBuffer);
        int position = m18579c - byteBuffer.position();
        byte[] bArr = this.f23252k;
        int length = bArr.length;
        int i = this.f23255n;
        int i2 = length - i;
        if (m18579c < limit && position < i2) {
            m18581e(bArr, i);
            this.f23255n = 0;
            this.f23254m = 0;
            return;
        }
        int min = Math.min(position, i2);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.f23252k, this.f23255n, min);
        int i3 = this.f23255n + min;
        this.f23255n = i3;
        byte[] bArr2 = this.f23252k;
        if (i3 == bArr2.length) {
            if (this.f23257p) {
                m18581e(bArr2, this.f23256o);
                this.f23258q += (this.f23255n - (this.f23256o * 2)) / this.f23250i;
            } else {
                this.f23258q += (i3 - this.f23256o) / this.f23250i;
            }
            m18585i(byteBuffer, this.f23252k, this.f23255n);
            this.f23255n = 0;
            this.f23254m = 2;
        }
        byteBuffer.limit(limit);
    }

    /* renamed from: g */
    public final void m18583g(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f23252k.length));
        int m18578b = m18578b(byteBuffer);
        if (m18578b == byteBuffer.position()) {
            this.f23254m = 1;
        } else {
            byteBuffer.limit(m18578b);
            m18580d(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    public long getSkippedFrames() {
        return this.f23258q;
    }

    /* renamed from: h */
    public final void m18584h(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int m18579c = m18579c(byteBuffer);
        byteBuffer.limit(m18579c);
        this.f23258q += byteBuffer.remaining() / this.f23250i;
        m18585i(byteBuffer, this.f23253l, this.f23256o);
        if (m18579c < limit) {
            m18581e(this.f23253l, this.f23256o);
            this.f23254m = 0;
            byteBuffer.limit(limit);
        }
    }

    /* renamed from: i */
    public final void m18585i(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f23256o);
        int i2 = this.f23256o - min;
        System.arraycopy(bArr, i - i2, this.f23253l, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f23253l, i2, min);
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f23251j;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding == 2) {
            return this.f23251j ? audioFormat : AudioProcessor.AudioFormat.NOT_SET;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onFlush() {
        if (this.f23251j) {
            this.f23250i = this.inputAudioFormat.bytesPerFrame;
            int m18577a = m18577a(this.f23247f) * this.f23250i;
            if (this.f23252k.length != m18577a) {
                this.f23252k = new byte[m18577a];
            }
            int m18577a2 = m18577a(this.f23248g) * this.f23250i;
            this.f23256o = m18577a2;
            if (this.f23253l.length != m18577a2) {
                this.f23253l = new byte[m18577a2];
            }
        }
        this.f23254m = 0;
        this.f23258q = 0L;
        this.f23255n = 0;
        this.f23257p = false;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        int i = this.f23255n;
        if (i > 0) {
            m18581e(this.f23252k, i);
        }
        if (this.f23257p) {
            return;
        }
        this.f23258q += this.f23256o / this.f23250i;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onReset() {
        this.f23251j = false;
        this.f23256o = 0;
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.f23252k = bArr;
        this.f23253l = bArr;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !hasPendingOutput()) {
            int i = this.f23254m;
            if (i == 0) {
                m18583g(byteBuffer);
            } else if (i == 1) {
                m18582f(byteBuffer);
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                m18584h(byteBuffer);
            }
        }
    }

    public void setEnabled(boolean z) {
        this.f23251j = z;
    }

    public SilenceSkippingAudioProcessor(long j, long j2, short s) {
        Assertions.checkArgument(j2 <= j);
        this.f23247f = j;
        this.f23248g = j2;
        this.f23249h = s;
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.f23252k = bArr;
        this.f23253l = bArr;
    }
}
