package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.onyx.android.sdk.base.utils.UriUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes5.dex */
public final class AssetDataSource extends BaseDataSource {

    /* renamed from: e */
    public final AssetManager f27928e;

    /* renamed from: f */
    @Nullable
    public Uri f27929f;

    /* renamed from: g */
    @Nullable
    public InputStream f27930g;

    /* renamed from: h */
    public long f27931h;

    /* renamed from: i */
    public boolean f27932i;

    /* loaded from: classes5.dex */
    public static final class AssetDataSourceException extends DataSourceException {
        @Deprecated
        public AssetDataSourceException(IOException iOException) {
            super(iOException, 2000);
        }

        public AssetDataSourceException(@Nullable Throwable th, int i) {
            super(th, i);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f27928e = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws AssetDataSourceException {
        this.f27929f = null;
        try {
            try {
                InputStream inputStream = this.f27930g;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e) {
                throw new AssetDataSourceException(e, 2000);
            }
        } finally {
            this.f27930g = null;
            if (this.f27932i) {
                this.f27932i = false;
                transferEnded();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f27929f;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws AssetDataSourceException {
        try {
            Uri uri = dataSpec.uri;
            this.f27929f = uri;
            String str = (String) Assertions.checkNotNull(uri.getPath());
            if (str.startsWith(UriUtils.PATH_ASSET_URI_PREFIX)) {
                str = str.substring(15);
            } else if (str.startsWith("/")) {
                str = str.substring(1);
            }
            transferInitializing(dataSpec);
            InputStream open = this.f27928e.open(str, 1);
            this.f27930g = open;
            if (open.skip(dataSpec.position) < dataSpec.position) {
                throw new AssetDataSourceException(null, 2008);
            }
            long j = dataSpec.length;
            if (j != -1) {
                this.f27931h = j;
            } else {
                long available = this.f27930g.available();
                this.f27931h = available;
                if (available == 2147483647L) {
                    this.f27931h = -1L;
                }
            }
            this.f27932i = true;
            transferStarted(dataSpec);
            return this.f27931h;
        } catch (AssetDataSourceException e) {
            throw e;
        } catch (IOException e2) {
            throw new AssetDataSourceException(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f27931h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new AssetDataSourceException(e, 2000);
            }
        }
        int read = ((InputStream) Util.castNonNull(this.f27930g)).read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f27931h;
        if (j2 != -1) {
            this.f27931h = j2 - read;
        }
        bytesTransferred(read);
        return read;
    }
}
