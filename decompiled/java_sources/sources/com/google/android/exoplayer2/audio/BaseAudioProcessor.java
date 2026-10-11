package com.google.android.exoplayer2.audio;

import androidx.annotation.CallSuper;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes5.dex */
public abstract class BaseAudioProcessor implements AudioProcessor {

    /* renamed from: a */
    public AudioProcessor.AudioFormat f23068a;

    /* renamed from: b */
    public AudioProcessor.AudioFormat f23069b;

    /* renamed from: c */
    public ByteBuffer f23070c;

    /* renamed from: d */
    public ByteBuffer f23071d;

    /* renamed from: e */
    public boolean f23072e;
    protected AudioProcessor.AudioFormat inputAudioFormat;
    protected AudioProcessor.AudioFormat outputAudioFormat;

    public BaseAudioProcessor() {
        ByteBuffer byteBuffer = AudioProcessor.EMPTY_BUFFER;
        this.f23070c = byteBuffer;
        this.f23071d = byteBuffer;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.f23068a = audioFormat;
        this.f23069b = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.outputAudioFormat = audioFormat;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        this.f23068a = audioFormat;
        this.f23069b = onConfigure(audioFormat);
        return isActive() ? this.f23069b : AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.f23071d = AudioProcessor.EMPTY_BUFFER;
        this.f23072e = false;
        this.inputAudioFormat = this.f23068a;
        this.outputAudioFormat = this.f23069b;
        onFlush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f23071d;
        this.f23071d = AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    public final boolean hasPendingOutput() {
        return this.f23071d.hasRemaining();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f23069b != AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public boolean isEnded() {
        return this.f23072e && this.f23071d == AudioProcessor.EMPTY_BUFFER;
    }

    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        return AudioProcessor.AudioFormat.NOT_SET;
    }

    public void onFlush() {
    }

    public void onQueueEndOfStream() {
    }

    public void onReset() {
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void queueEndOfStream() {
        this.f23072e = true;
        onQueueEndOfStream();
    }

    public final ByteBuffer replaceOutputBuffer(int i) {
        if (this.f23070c.capacity() < i) {
            this.f23070c = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f23070c.clear();
        }
        ByteBuffer byteBuffer = this.f23070c;
        this.f23071d = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void reset() {
        flush();
        this.f23070c = AudioProcessor.EMPTY_BUFFER;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.f23068a = audioFormat;
        this.f23069b = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.outputAudioFormat = audioFormat;
        onReset();
    }
}
