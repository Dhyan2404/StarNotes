package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;

/* renamed from: com.google.android.exoplayer2.audio.d */
/* loaded from: classes5.dex */
public final class C4703d extends BaseAudioProcessor {

    /* renamed from: m */
    public static final int f23294m = 2;

    /* renamed from: f */
    public int f23295f;

    /* renamed from: g */
    public int f23296g;

    /* renamed from: h */
    public boolean f23297h;

    /* renamed from: i */
    public int f23298i;

    /* renamed from: j */
    public byte[] f23299j = Util.EMPTY_BYTE_ARRAY;

    /* renamed from: k */
    public int f23300k;

    /* renamed from: l */
    public long f23301l;

    /* renamed from: a */
    public long m18594a() {
        return this.f23301l;
    }

    /* renamed from: b */
    public void m18595b() {
        this.f23301l = 0L;
    }

    /* renamed from: c */
    public void m18596c(int i, int i2) {
        this.f23295f = i;
        this.f23296g = i2;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor, com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int i;
        if (super.isEnded() && (i = this.f23300k) > 0) {
            replaceOutputBuffer(i).put(this.f23299j, 0, this.f23300k).flip();
            this.f23300k = 0;
        }
        return super.getOutput();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        return super.isEnded() && this.f23300k == 0;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        this.f23297h = true;
        return (this.f23295f == 0 && this.f23296g == 0) ? AudioProcessor.AudioFormat.NOT_SET : audioFormat;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onFlush() {
        if (this.f23297h) {
            this.f23297h = false;
            int i = this.f23296g;
            int i2 = this.inputAudioFormat.bytesPerFrame;
            this.f23299j = new byte[i * i2];
            this.f23298i = this.f23295f * i2;
        }
        this.f23300k = 0;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        if (this.f23297h) {
            if (this.f23300k > 0) {
                this.f23301l += r0 / this.inputAudioFormat.bytesPerFrame;
            }
            this.f23300k = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onReset() {
        this.f23299j = Util.EMPTY_BYTE_ARRAY;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f23298i);
        this.f23301l += min / this.inputAudioFormat.bytesPerFrame;
        this.f23298i -= min;
        byteBuffer.position(position + min);
        if (this.f23298i > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f23300k + i2) - this.f23299j.length;
        ByteBuffer replaceOutputBuffer = replaceOutputBuffer(length);
        int constrainValue = Util.constrainValue(length, 0, this.f23300k);
        replaceOutputBuffer.put(this.f23299j, 0, constrainValue);
        int constrainValue2 = Util.constrainValue(length - constrainValue, 0, i2);
        byteBuffer.limit(byteBuffer.position() + constrainValue2);
        replaceOutputBuffer.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - constrainValue2;
        int i4 = this.f23300k - constrainValue;
        this.f23300k = i4;
        byte[] bArr = this.f23299j;
        System.arraycopy(bArr, constrainValue, bArr, 0, i4);
        byteBuffer.get(this.f23299j, this.f23300k, i3);
        this.f23300k += i3;
        replaceOutputBuffer.flip();
    }
}
