package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public abstract class DataChunk extends Chunk {

    /* renamed from: c */
    public static final int f25638c = 16384;

    /* renamed from: a */
    public byte[] f25639a;

    /* renamed from: b */
    public volatile boolean f25640b;

    public DataChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, int i2, @Nullable Object obj, @Nullable byte[] bArr) {
        super(dataSource, dataSpec, i, format, i2, obj, C4649C.TIME_UNSET, C4649C.TIME_UNSET);
        DataChunk dataChunk;
        byte[] bArr2;
        if (bArr == null) {
            bArr2 = Util.EMPTY_BYTE_ARRAY;
            dataChunk = this;
        } else {
            dataChunk = this;
            bArr2 = bArr;
        }
        dataChunk.f25639a = bArr2;
    }

    /* renamed from: a */
    public final void m19903a(int i) {
        byte[] bArr = this.f25639a;
        if (bArr.length < i + 16384) {
            this.f25639a = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.f25640b = true;
    }

    public abstract void consume(byte[] bArr, int i) throws IOException;

    public byte[] getDataHolder() {
        return this.f25639a;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() throws IOException {
        try {
            this.dataSource.open(this.dataSpec);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.f25640b) {
                m19903a(i2);
                i = this.dataSource.read(this.f25639a, i2, 16384);
                if (i != -1) {
                    i2 += i;
                }
            }
            if (!this.f25640b) {
                consume(this.f25639a, i2);
            }
        } finally {
            DataSourceUtil.closeQuietly(this.dataSource);
        }
    }
}
