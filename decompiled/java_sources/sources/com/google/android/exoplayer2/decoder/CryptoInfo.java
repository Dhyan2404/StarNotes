package com.google.android.exoplayer2.decoder;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class CryptoInfo {

    /* renamed from: a */
    public final MediaCodec.CryptoInfo f23328a;

    /* renamed from: b */
    @Nullable
    public final C4709b f23329b;
    public int clearBlocks;
    public int encryptedBlocks;

    /* renamed from: iv */
    @Nullable
    public byte[] f23330iv;

    @Nullable
    public byte[] key;
    public int mode;

    @Nullable
    public int[] numBytesOfClearData;

    @Nullable
    public int[] numBytesOfEncryptedData;
    public int numSubSamples;

    @RequiresApi(24)
    /* renamed from: com.google.android.exoplayer2.decoder.CryptoInfo$b */
    /* loaded from: classes5.dex */
    public static final class C4709b {

        /* renamed from: a */
        public final MediaCodec.CryptoInfo f23331a;

        /* renamed from: b */
        public final MediaCodec.CryptoInfo.Pattern f23332b;

        /* renamed from: b */
        public final void m18635b(int i, int i2) {
            this.f23332b.set(i, i2);
            this.f23331a.setPattern(this.f23332b);
        }

        public C4709b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f23331a = cryptoInfo;
            this.f23332b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CryptoInfo() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f23328a = cryptoInfo;
        this.f23329b = Util.SDK_INT >= 24 ? new C4709b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo getFrameworkCryptoInfo() {
        return this.f23328a;
    }

    public void increaseClearDataFirstSubSampleBy(int i) {
        if (i == 0) {
            return;
        }
        if (this.numBytesOfClearData == null) {
            int[] iArr = new int[1];
            this.numBytesOfClearData = iArr;
            this.f23328a.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.numBytesOfClearData;
        iArr2[0] = iArr2[0] + i;
    }

    public void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.numSubSamples = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.f23330iv = bArr2;
        this.mode = i2;
        this.encryptedBlocks = i3;
        this.clearBlocks = i4;
        MediaCodec.CryptoInfo cryptoInfo = this.f23328a;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (Util.SDK_INT >= 24) {
            ((C4709b) Assertions.checkNotNull(this.f23329b)).m18635b(i3, i4);
        }
    }
}
