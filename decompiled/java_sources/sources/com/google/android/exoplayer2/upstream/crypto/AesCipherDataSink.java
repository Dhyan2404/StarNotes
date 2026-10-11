package com.google.android.exoplayer2.upstream.crypto;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSink;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class AesCipherDataSink implements DataSink {

    /* renamed from: a */
    public final DataSink f28251a;

    /* renamed from: b */
    public final byte[] f28252b;

    /* renamed from: c */
    @Nullable
    public final byte[] f28253c;

    /* renamed from: d */
    @Nullable
    public AesFlushingCipher f28254d;

    public AesCipherDataSink(byte[] bArr, DataSink dataSink) {
        this(bArr, dataSink, null);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void close() throws IOException {
        this.f28254d = null;
        this.f28251a.close();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec) throws IOException {
        this.f28251a.open(dataSpec);
        this.f28254d = new AesFlushingCipher(1, this.f28252b, dataSpec.key, dataSpec.uriPositionOffset + dataSpec.position);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.f28253c == null) {
            ((AesFlushingCipher) Util.castNonNull(this.f28254d)).updateInPlace(bArr, i, i2);
            this.f28251a.write(bArr, i, i2);
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            int min = Math.min(i2 - i3, this.f28253c.length);
            ((AesFlushingCipher) Util.castNonNull(this.f28254d)).update(bArr, i + i3, min, this.f28253c, 0);
            this.f28251a.write(this.f28253c, 0, min);
            i3 += min;
        }
    }

    public AesCipherDataSink(byte[] bArr, DataSink dataSink, @Nullable byte[] bArr2) {
        this.f28251a = dataSink;
        this.f28252b = bArr;
        this.f28253c = bArr2;
    }
}
