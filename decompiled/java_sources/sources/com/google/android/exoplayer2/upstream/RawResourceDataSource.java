package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* loaded from: classes5.dex */
public final class RawResourceDataSource extends BaseDataSource {
    public static final String RAW_RESOURCE_SCHEME = "rawresource";

    /* renamed from: e */
    public final Resources f28124e;

    /* renamed from: f */
    public final String f28125f;

    /* renamed from: g */
    @Nullable
    public Uri f28126g;

    /* renamed from: h */
    @Nullable
    public AssetFileDescriptor f28127h;

    /* renamed from: i */
    @Nullable
    public InputStream f28128i;

    /* renamed from: j */
    public long f28129j;

    /* renamed from: k */
    public boolean f28130k;

    /* loaded from: classes5.dex */
    public static class RawResourceDataSourceException extends DataSourceException {
        @Deprecated
        public RawResourceDataSourceException(String str) {
            super(str, null, 2000);
        }

        @Deprecated
        public RawResourceDataSourceException(Throwable th) {
            super(th, 2000);
        }

        public RawResourceDataSourceException(@Nullable String str, @Nullable Throwable th, int i) {
            super(str, th, i);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f28124e = context.getResources();
        this.f28125f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("rawresource:///");
        sb.append(i);
        return Uri.parse(sb.toString());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws RawResourceDataSourceException {
        this.f28126g = null;
        try {
            try {
                InputStream inputStream = this.f28128i;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f28128i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f28127h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f28127h = null;
                        if (this.f28130k) {
                            this.f28130k = false;
                            transferEnded();
                        }
                    }
                } catch (IOException e) {
                    throw new RawResourceDataSourceException(null, e, 2000);
                }
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(null, e2, 2000);
            }
        } catch (Throwable th) {
            this.f28128i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f28127h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f28127h = null;
                    if (this.f28130k) {
                        this.f28130k = false;
                        transferEnded();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new RawResourceDataSourceException(null, e3, 2000);
                }
            } finally {
                this.f28127h = null;
                if (this.f28130k) {
                    this.f28130k = false;
                    transferEnded();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f28126g;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws RawResourceDataSourceException {
        int parseInt;
        Uri uri = dataSpec.uri;
        this.f28126g = uri;
        if (TextUtils.equals("rawresource", uri.getScheme()) || (TextUtils.equals(DefaultDataSource.f28026s, uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) Assertions.checkNotNull(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                parseInt = Integer.parseInt((String) Assertions.checkNotNull(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals(DefaultDataSource.f28026s, uri.getScheme())) {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String str = (String) Assertions.checkNotNull(uri.getPath());
            if (str.startsWith("/")) {
                str = str.substring(1);
            }
            String host = uri.getHost();
            String valueOf = String.valueOf(TextUtils.isEmpty(host) ? "" : String.valueOf(host).concat(":"));
            String valueOf2 = String.valueOf(str);
            parseInt = this.f28124e.getIdentifier(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), "raw", this.f28125f);
            if (parseInt == 0) {
                throw new RawResourceDataSourceException("Resource not found.", null, 2005);
            }
        }
        transferInitializing(dataSpec);
        try {
            AssetFileDescriptor openRawResourceFd = this.f28124e.openRawResourceFd(parseInt);
            this.f28127h = openRawResourceFd;
            if (openRawResourceFd == null) {
                String valueOf3 = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(valueOf3.length() + 24);
                sb.append("Resource is compressed: ");
                sb.append(valueOf3);
                throw new RawResourceDataSourceException(sb.toString(), null, 2000);
            }
            long length = openRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
            this.f28128i = fileInputStream;
            if (length != -1) {
                try {
                    if (dataSpec.position > length) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                } catch (RawResourceDataSourceException e) {
                    throw e;
                } catch (IOException e2) {
                    throw new RawResourceDataSourceException(null, e2, 2000);
                }
            }
            long startOffset = openRawResourceFd.getStartOffset();
            long skip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
            if (skip != dataSpec.position) {
                throw new RawResourceDataSourceException(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.f28129j = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.f28129j = size;
                    if (size < 0) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                }
            } else {
                long j = length - skip;
                this.f28129j = j;
                if (j < 0) {
                    throw new DataSourceException(2008);
                }
            }
            long j2 = dataSpec.length;
            if (j2 != -1) {
                long j3 = this.f28129j;
                if (j3 != -1) {
                    j2 = Math.min(j3, j2);
                }
                this.f28129j = j2;
            }
            this.f28130k = true;
            transferStarted(dataSpec);
            long j4 = dataSpec.length;
            return j4 != -1 ? j4 : this.f28129j;
        } catch (Resources.NotFoundException e3) {
            throw new RawResourceDataSourceException(null, e3, 2005);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f28129j;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new RawResourceDataSourceException(null, e, 2000);
            }
        }
        int read = ((InputStream) Util.castNonNull(this.f28128i)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f28129j == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.f28129j;
        if (j2 != -1) {
            this.f28129j = j2 - read;
        }
        bytesTransferred(read);
        return read;
    }
}
