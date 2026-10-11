package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class TrueHdSampleRechunker {

    /* renamed from: a */
    public final byte[] f23544a = new byte[10];

    /* renamed from: b */
    public boolean f23545b;

    /* renamed from: c */
    public int f23546c;

    /* renamed from: d */
    public long f23547d;

    /* renamed from: e */
    public int f23548e;

    /* renamed from: f */
    public int f23549f;

    /* renamed from: g */
    public int f23550g;

    public void outputPendingSampleMetadata(TrackOutput trackOutput, @Nullable TrackOutput.CryptoData cryptoData) {
        if (this.f23546c > 0) {
            trackOutput.sampleMetadata(this.f23547d, this.f23548e, this.f23549f, this.f23550g, cryptoData);
            this.f23546c = 0;
        }
    }

    public void reset() {
        this.f23545b = false;
        this.f23546c = 0;
    }

    public void sampleMetadata(TrackOutput trackOutput, long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
        Assertions.checkState(this.f23550g <= i2 + i3, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f23545b) {
            int i4 = this.f23546c;
            int i5 = i4 + 1;
            this.f23546c = i5;
            if (i4 == 0) {
                this.f23547d = j;
                this.f23548e = i;
                this.f23549f = 0;
            }
            this.f23549f += i2;
            this.f23550g = i3;
            if (i5 >= 16) {
                outputPendingSampleMetadata(trackOutput, cryptoData);
            }
        }
    }

    public void startSample(ExtractorInput extractorInput) throws IOException {
        if (this.f23545b) {
            return;
        }
        extractorInput.peekFully(this.f23544a, 0, 10);
        extractorInput.resetPeekPosition();
        if (Ac3Util.parseTrueHdSyncframeAudioSampleCount(this.f23544a) == 0) {
            return;
        }
        this.f23545b = true;
    }
}
