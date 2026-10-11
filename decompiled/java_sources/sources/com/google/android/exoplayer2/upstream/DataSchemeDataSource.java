package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.DataUrlLoader;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Charsets;
import java.io.IOException;
import java.net.URLDecoder;

/* loaded from: classes5.dex */
public final class DataSchemeDataSource extends BaseDataSource {
    public static final String SCHEME_DATA = "data";

    /* renamed from: e */
    @Nullable
    public DataSpec f27962e;

    /* renamed from: f */
    @Nullable
    public byte[] f27963f;

    /* renamed from: g */
    public int f27964g;

    /* renamed from: h */
    public int f27965h;

    public DataSchemeDataSource() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        if (this.f27963f != null) {
            this.f27963f = null;
            transferEnded();
        }
        this.f27962e = null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        DataSpec dataSpec = this.f27962e;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        transferInitializing(dataSpec);
        this.f27962e = dataSpec;
        Uri uri = dataSpec.uri;
        String scheme = uri.getScheme();
        boolean equals = "data".equals(scheme);
        String valueOf = String.valueOf(scheme);
        Assertions.checkArgument(equals, valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        String[] split = Util.split(uri.getSchemeSpecificPart(), ",");
        if (split.length != 2) {
            String valueOf2 = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 23);
            sb.append("Unexpected URI format: ");
            sb.append(valueOf2);
            throw ParserException.createForMalformedDataOfUnknownType(sb.toString(), null);
        }
        String str = split[1];
        if (split[0].contains(DataUrlLoader.f14861c)) {
            try {
                this.f27963f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                String valueOf3 = String.valueOf(str);
                throw ParserException.createForMalformedDataOfUnknownType(valueOf3.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf3) : new String("Error while parsing Base64 encoded string: "), e);
            }
        } else {
            this.f27963f = Util.getUtf8Bytes(URLDecoder.decode(str, Charsets.US_ASCII.name()));
        }
        long j = dataSpec.position;
        byte[] bArr = this.f27963f;
        if (j > bArr.length) {
            this.f27963f = null;
            throw new DataSourceException(2008);
        }
        int i = (int) j;
        this.f27964g = i;
        int length = bArr.length - i;
        this.f27965h = length;
        long j2 = dataSpec.length;
        if (j2 != -1) {
            this.f27965h = (int) Math.min(length, j2);
        }
        transferStarted(dataSpec);
        long j3 = dataSpec.length;
        return j3 != -1 ? j3 : this.f27965h;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f27965h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(Util.castNonNull(this.f27963f), this.f27964g, bArr, i, min);
        this.f27964g += min;
        this.f27965h -= min;
        bytesTransferred(min);
        return min;
    }
}
