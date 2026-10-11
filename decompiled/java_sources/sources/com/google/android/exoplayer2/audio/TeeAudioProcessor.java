package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes5.dex */
public final class TeeAudioProcessor extends BaseAudioProcessor {

    /* renamed from: f */
    public final AudioBufferSink f23276f;

    /* loaded from: classes5.dex */
    public interface AudioBufferSink {
        void flush(int i, int i2, int i3);

        void handleBuffer(ByteBuffer byteBuffer);
    }

    /* loaded from: classes5.dex */
    public static final class WavFileAudioBufferSink implements AudioBufferSink {

        /* renamed from: j */
        public static final String f23277j = "WaveFileAudioBufferSink";

        /* renamed from: k */
        public static final int f23278k = 4;

        /* renamed from: l */
        public static final int f23279l = 40;

        /* renamed from: m */
        public static final int f23280m = 44;

        /* renamed from: a */
        public final String f23281a;

        /* renamed from: b */
        public final byte[] f23282b;

        /* renamed from: c */
        public final ByteBuffer f23283c;

        /* renamed from: d */
        public int f23284d;

        /* renamed from: e */
        public int f23285e;

        /* renamed from: f */
        public int f23286f;

        /* renamed from: g */
        @Nullable
        public RandomAccessFile f23287g;

        /* renamed from: h */
        public int f23288h;

        /* renamed from: i */
        public int f23289i;

        public WavFileAudioBufferSink(String str) {
            this.f23281a = str;
            byte[] bArr = new byte[1024];
            this.f23282b = bArr;
            this.f23283c = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        }

        /* renamed from: a */
        public final String m18587a() {
            String str = this.f23281a;
            int i = this.f23288h;
            this.f23288h = i + 1;
            return Util.formatInvariant("%s-%04d.wav", str, Integer.valueOf(i));
        }

        /* renamed from: b */
        public final void m18588b() throws IOException {
            if (this.f23287g != null) {
                return;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(m18587a(), "rw");
            m18591e(randomAccessFile);
            this.f23287g = randomAccessFile;
            this.f23289i = 44;
        }

        /* renamed from: c */
        public final void m18589c() throws IOException {
            RandomAccessFile randomAccessFile = this.f23287g;
            if (randomAccessFile == null) {
                return;
            }
            try {
                this.f23283c.clear();
                this.f23283c.putInt(this.f23289i - 8);
                randomAccessFile.seek(4L);
                randomAccessFile.write(this.f23282b, 0, 4);
                this.f23283c.clear();
                this.f23283c.putInt(this.f23289i - 44);
                randomAccessFile.seek(40L);
                randomAccessFile.write(this.f23282b, 0, 4);
            } catch (IOException e) {
                Log.m21494w(f23277j, "Error updating file size", e);
            }
            try {
                randomAccessFile.close();
            } finally {
                this.f23287g = null;
            }
        }

        /* renamed from: d */
        public final void m18590d(ByteBuffer byteBuffer) throws IOException {
            RandomAccessFile randomAccessFile = (RandomAccessFile) Assertions.checkNotNull(this.f23287g);
            while (byteBuffer.hasRemaining()) {
                int min = Math.min(byteBuffer.remaining(), this.f23282b.length);
                byteBuffer.get(this.f23282b, 0, min);
                randomAccessFile.write(this.f23282b, 0, min);
                this.f23289i += min;
            }
        }

        /* renamed from: e */
        public final void m18591e(RandomAccessFile randomAccessFile) throws IOException {
            randomAccessFile.writeInt(1380533830);
            randomAccessFile.writeInt(-1);
            randomAccessFile.writeInt(WavUtil.WAVE_FOURCC);
            randomAccessFile.writeInt(WavUtil.FMT_FOURCC);
            this.f23283c.clear();
            this.f23283c.putInt(16);
            this.f23283c.putShort((short) WavUtil.getTypeForPcmEncoding(this.f23286f));
            this.f23283c.putShort((short) this.f23285e);
            this.f23283c.putInt(this.f23284d);
            int pcmFrameSize = Util.getPcmFrameSize(this.f23286f, this.f23285e);
            this.f23283c.putInt(this.f23284d * pcmFrameSize);
            this.f23283c.putShort((short) pcmFrameSize);
            this.f23283c.putShort((short) ((pcmFrameSize * 8) / this.f23285e));
            randomAccessFile.write(this.f23282b, 0, this.f23283c.position());
            randomAccessFile.writeInt(1684108385);
            randomAccessFile.writeInt(-1);
        }

        @Override // com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink
        public void flush(int i, int i2, int i3) {
            try {
                m18589c();
            } catch (IOException e) {
                Log.m21490e(f23277j, "Error resetting", e);
            }
            this.f23284d = i;
            this.f23285e = i2;
            this.f23286f = i3;
        }

        @Override // com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink
        public void handleBuffer(ByteBuffer byteBuffer) {
            try {
                m18588b();
                m18590d(byteBuffer);
            } catch (IOException e) {
                Log.m21490e(f23277j, "Error writing data", e);
            }
        }
    }

    public TeeAudioProcessor(AudioBufferSink audioBufferSink) {
        this.f23276f = (AudioBufferSink) Assertions.checkNotNull(audioBufferSink);
    }

    /* renamed from: a */
    public final void m18586a() {
        if (isActive()) {
            AudioBufferSink audioBufferSink = this.f23276f;
            AudioProcessor.AudioFormat audioFormat = this.inputAudioFormat;
            audioBufferSink.flush(audioFormat.sampleRate, audioFormat.channelCount, audioFormat.encoding);
        }
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) {
        return audioFormat;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onFlush() {
        m18586a();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        m18586a();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onReset() {
        m18586a();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return;
        }
        this.f23276f.handleBuffer(byteBuffer.asReadOnlyBuffer());
        replaceOutputBuffer(remaining).put(byteBuffer).flip();
    }
}
