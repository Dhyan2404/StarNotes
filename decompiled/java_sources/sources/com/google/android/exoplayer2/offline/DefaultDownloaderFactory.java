package com.google.android.exoplayer2.offline;

import android.util.SparseArray;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.dash.offline.DashDownloader;
import com.google.android.exoplayer2.source.hls.offline.HlsDownloader;
import com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.vtd;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public class DefaultDownloaderFactory implements DownloaderFactory {

    /* renamed from: c */
    public static final SparseArray<Constructor<? extends Downloader>> f24958c = m19447b();

    /* renamed from: a */
    public final CacheDataSource.Factory f24959a;

    /* renamed from: b */
    public final Executor f24960b;

    @Deprecated
    public DefaultDownloaderFactory(CacheDataSource.Factory factory) {
        this(factory, new vtd());
    }

    /* renamed from: b */
    public static SparseArray<Constructor<? extends Downloader>> m19447b() {
        SparseArray<Constructor<? extends Downloader>> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, m19448c(DashDownloader.class));
        } catch (ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, m19448c(HlsDownloader.class));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, m19448c(SsDownloader.class));
        } catch (ClassNotFoundException unused3) {
        }
        return sparseArray;
    }

    /* renamed from: c */
    public static Constructor<? extends Downloader> m19448c(Class<?> cls) {
        try {
            return cls.asSubclass(Downloader.class).getConstructor(MediaItem.class, CacheDataSource.Factory.class, Executor.class);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Downloader constructor missing", e);
        }
    }

    /* renamed from: a */
    public final Downloader m19449a(DownloadRequest downloadRequest, int i) {
        Constructor<? extends Downloader> constructor = f24958c.get(i);
        if (constructor == null) {
            StringBuilder sb = new StringBuilder(43);
            sb.append("Module missing for content type ");
            sb.append(i);
            throw new IllegalStateException(sb.toString());
        }
        try {
            return constructor.newInstance(new MediaItem.Builder().setUri(downloadRequest.uri).setStreamKeys(downloadRequest.streamKeys).setCustomCacheKey(downloadRequest.customCacheKey).build(), this.f24959a, this.f24960b);
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder(61);
            sb2.append("Failed to instantiate downloader for content type ");
            sb2.append(i);
            throw new IllegalStateException(sb2.toString());
        }
    }

    @Override // com.google.android.exoplayer2.offline.DownloaderFactory
    public Downloader createDownloader(DownloadRequest downloadRequest) {
        int inferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(downloadRequest.uri, downloadRequest.mimeType);
        if (inferContentTypeForUriAndMimeType == 0 || inferContentTypeForUriAndMimeType == 1 || inferContentTypeForUriAndMimeType == 2) {
            return m19449a(downloadRequest, inferContentTypeForUriAndMimeType);
        }
        if (inferContentTypeForUriAndMimeType == 4) {
            return new ProgressiveDownloader(new MediaItem.Builder().setUri(downloadRequest.uri).setCustomCacheKey(downloadRequest.customCacheKey).build(), this.f24959a, this.f24960b);
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Unsupported type: ");
        sb.append(inferContentTypeForUriAndMimeType);
        throw new IllegalArgumentException(sb.toString());
    }

    public DefaultDownloaderFactory(CacheDataSource.Factory factory, Executor executor) {
        this.f24959a = (CacheDataSource.Factory) Assertions.checkNotNull(factory);
        this.f24960b = (Executor) Assertions.checkNotNull(executor);
    }
}
