package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class ByteArrayDataSource extends BaseDataSource {

    /* renamed from: e */
    public final byte[] f27942e;

    /* renamed from: f */
    @Nullable
    public Uri f27943f;

    /* renamed from: g */
    public int f27944g;

    /* renamed from: h */
    public int f27945h;

    /* renamed from: i */
    public boolean f27946i;

    public ByteArrayDataSource(byte[] bArr) {
        super(false);
        Assertions.checkNotNull(bArr);
        Assertions.checkArgument(bArr.length > 0);
        this.f27942e = bArr;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        if (this.f27946i) {
            this.f27946i = false;
            transferEnded();
        }
        this.f27943f = null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f27943f;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.f27943f = dataSpec.uri;
        transferInitializing(dataSpec);
        long j = dataSpec.position;
        byte[] bArr = this.f27942e;
        if (j > bArr.length) {
            throw new DataSourceException(2008);
        }
        this.f27944g = (int) j;
        int length = bArr.length - ((int) j);
        this.f27945h = length;
        long j2 = dataSpec.length;
        if (j2 != -1) {
            this.f27945h = (int) Math.min(length, j2);
        }
        this.f27946i = true;
        transferStarted(dataSpec);
        long j3 = dataSpec.length;
        return j3 != -1 ? j3 : this.f27945h;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f27945h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f27942e, this.f27944g, bArr, i, min);
        this.f27944g += min;
        this.f27945h -= min;
        bytesTransferred(min);
        return min;
    }
}
