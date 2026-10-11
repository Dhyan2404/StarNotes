package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.ApplicationMediaCapabilities;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.sunia.HTREnginev2.sae;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes5.dex */
public final class ContentDataSource extends BaseDataSource {

    /* renamed from: e */
    public final ContentResolver f27956e;

    /* renamed from: f */
    @Nullable
    public Uri f27957f;

    /* renamed from: g */
    @Nullable
    public AssetFileDescriptor f27958g;

    /* renamed from: h */
    @Nullable
    public FileInputStream f27959h;

    /* renamed from: i */
    public long f27960i;

    /* renamed from: j */
    public boolean f27961j;

    /* loaded from: classes5.dex */
    public static class ContentDataSourceException extends DataSourceException {
        @Deprecated
        public ContentDataSourceException(IOException iOException) {
            this(iOException, 2000);
        }

        public ContentDataSourceException(@Nullable IOException iOException, int i) {
            super(iOException, i);
        }
    }

    @RequiresApi(31)
    /* renamed from: com.google.android.exoplayer2.upstream.ContentDataSource$a */
    /* loaded from: classes5.dex */
    public static final class C4994a {
        @DoNotInline
        /* renamed from: a */
        public static void m21309a(Bundle bundle) {
            ApplicationMediaCapabilities.Builder addSupportedVideoMimeType;
            ApplicationMediaCapabilities.Builder addSupportedHdrType;
            ApplicationMediaCapabilities.Builder addSupportedHdrType2;
            ApplicationMediaCapabilities.Builder addSupportedHdrType3;
            ApplicationMediaCapabilities.Builder addSupportedHdrType4;
            ApplicationMediaCapabilities build;
            addSupportedVideoMimeType = sae.m57145a().addSupportedVideoMimeType(MimeTypes.VIDEO_H265);
            addSupportedHdrType = addSupportedVideoMimeType.addSupportedHdrType("android.media.feature.hdr.dolby_vision");
            addSupportedHdrType2 = addSupportedHdrType.addSupportedHdrType("android.media.feature.hdr.hdr10");
            addSupportedHdrType3 = addSupportedHdrType2.addSupportedHdrType("android.media.feature.hdr.hdr10_plus");
            addSupportedHdrType4 = addSupportedHdrType3.addSupportedHdrType("android.media.feature.hdr.hlg");
            build = addSupportedHdrType4.build();
            bundle.putParcelable("android.provider.extra.MEDIA_CAPABILITIES", build);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f27956e = context.getContentResolver();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws ContentDataSourceException {
        this.f27957f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f27959h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f27959h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f27958g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f27958g = null;
                        if (this.f27961j) {
                            this.f27961j = false;
                            transferEnded();
                        }
                    }
                } catch (IOException e) {
                    throw new ContentDataSourceException(e, 2000);
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2, 2000);
            }
        } catch (Throwable th) {
            this.f27959h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f27958g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f27958g = null;
                    if (this.f27961j) {
                        this.f27961j = false;
                        transferEnded();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3, 2000);
                }
            } finally {
                this.f27958g = null;
                if (this.f27961j) {
                    this.f27961j = false;
                    transferEnded();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f27957f;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws ContentDataSourceException {
        AssetFileDescriptor openAssetFileDescriptor;
        try {
            Uri uri = dataSpec.uri;
            this.f27957f = uri;
            transferInitializing(dataSpec);
            if ("content".equals(dataSpec.uri.getScheme())) {
                Bundle bundle = new Bundle();
                if (Util.SDK_INT >= 31) {
                    C4994a.m21309a(bundle);
                }
                openAssetFileDescriptor = this.f27956e.openTypedAssetFileDescriptor(uri, FileExtensionUtils.DEFAULT_MIMETYPE_ALL, bundle);
            } else {
                openAssetFileDescriptor = this.f27956e.openAssetFileDescriptor(uri, "r");
            }
            this.f27958g = openAssetFileDescriptor;
            if (openAssetFileDescriptor == null) {
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(valueOf.length() + 36);
                sb.append("Could not open file descriptor for: ");
                sb.append(valueOf);
                throw new ContentDataSourceException(new IOException(sb.toString()), 2000);
            }
            long length = openAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
            this.f27959h = fileInputStream;
            if (length != -1 && dataSpec.position > length) {
                throw new ContentDataSourceException(null, 2008);
            }
            long startOffset = openAssetFileDescriptor.getStartOffset();
            long skip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
            if (skip != dataSpec.position) {
                throw new ContentDataSourceException(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f27960i = -1L;
                } else {
                    long position = size - channel.position();
                    this.f27960i = position;
                    if (position < 0) {
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
            } else {
                long j = length - skip;
                this.f27960i = j;
                if (j < 0) {
                    throw new ContentDataSourceException(null, 2008);
                }
            }
            long j2 = dataSpec.length;
            if (j2 != -1) {
                long j3 = this.f27960i;
                if (j3 != -1) {
                    j2 = Math.min(j3, j2);
                }
                this.f27960i = j2;
            }
            this.f27961j = true;
            transferStarted(dataSpec);
            long j4 = dataSpec.length;
            return j4 != -1 ? j4 : this.f27960i;
        } catch (ContentDataSourceException e) {
            throw e;
        } catch (IOException e2) {
            throw new ContentDataSourceException(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws ContentDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f27960i;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new ContentDataSourceException(e, 2000);
            }
        }
        int read = ((FileInputStream) Util.castNonNull(this.f27959h)).read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f27960i;
        if (j2 != -1) {
            this.f27960i = j2 - read;
        }
        bytesTransferred(read);
        return read;
    }
}
