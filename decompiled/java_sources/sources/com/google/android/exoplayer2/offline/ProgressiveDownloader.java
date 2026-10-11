package com.google.android.exoplayer2.offline;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.offline.Downloader;
import com.google.android.exoplayer2.offline.ProgressiveDownloader;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheWriter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.vtd;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class ProgressiveDownloader implements Downloader {

    /* renamed from: a */
    public final Executor f25087a;

    /* renamed from: b */
    public final DataSpec f25088b;

    /* renamed from: c */
    public final CacheDataSource f25089c;

    /* renamed from: d */
    public final CacheWriter f25090d;

    /* renamed from: e */
    @Nullable
    public final PriorityTaskManager f25091e;

    /* renamed from: f */
    @Nullable
    public Downloader.ProgressListener f25092f;

    /* renamed from: g */
    public volatile RunnableFutureTask<Void, IOException> f25093g;

    /* renamed from: h */
    public volatile boolean f25094h;

    /* renamed from: com.google.android.exoplayer2.offline.ProgressiveDownloader$a */
    /* loaded from: classes5.dex */
    public class C4815a extends RunnableFutureTask<Void, IOException> {
        public C4815a() {
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void doWork() throws IOException {
            ProgressiveDownloader.this.f25090d.cache();
            return null;
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        public void cancelWork() {
            ProgressiveDownloader.this.f25090d.cancel();
        }
    }

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new vtd());
    }

    /* renamed from: c */
    public final void m19560c(long j, long j2, long j3) {
        Downloader.ProgressListener progressListener = this.f25092f;
        if (progressListener == null) {
            return;
        }
        progressListener.onProgress(j, j2, (j == -1 || j == 0) ? -1.0f : (((float) j2) * 100.0f) / ((float) j));
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void cancel() {
        this.f25094h = true;
        RunnableFutureTask<Void, IOException> runnableFutureTask = this.f25093g;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void download(@Nullable Downloader.ProgressListener progressListener) throws IOException, InterruptedException {
        this.f25092f = progressListener;
        this.f25093g = new C4815a();
        PriorityTaskManager priorityTaskManager = this.f25091e;
        if (priorityTaskManager != null) {
            priorityTaskManager.add(-1000);
        }
        boolean z = false;
        while (!z) {
            try {
                if (this.f25094h) {
                    break;
                }
                PriorityTaskManager priorityTaskManager2 = this.f25091e;
                if (priorityTaskManager2 != null) {
                    priorityTaskManager2.proceed(-1000);
                }
                this.f25087a.execute(this.f25093g);
                try {
                    this.f25093g.get();
                    z = true;
                } catch (ExecutionException e) {
                    Throwable th = (Throwable) Assertions.checkNotNull(e.getCause());
                    if (!(th instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (th instanceof IOException) {
                            throw ((IOException) th);
                        }
                        Util.sneakyThrow(th);
                    }
                }
            } finally {
                this.f25093g.blockUntilFinished();
                PriorityTaskManager priorityTaskManager3 = this.f25091e;
                if (priorityTaskManager3 != null) {
                    priorityTaskManager3.remove(-1000);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void remove() {
        this.f25089c.getCache().removeResource(this.f25089c.getCacheKeyFactory().buildCacheKey(this.f25088b));
    }

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        this.f25087a = (Executor) Assertions.checkNotNull(executor);
        Assertions.checkNotNull(mediaItem.localConfiguration);
        DataSpec build = new DataSpec.Builder().setUri(mediaItem.localConfiguration.uri).setKey(mediaItem.localConfiguration.customCacheKey).setFlags(4).build();
        this.f25088b = build;
        CacheDataSource createDataSourceForDownloading = factory.createDataSourceForDownloading();
        this.f25089c = createDataSourceForDownloading;
        this.f25090d = new CacheWriter(createDataSourceForDownloading, build, null, new CacheWriter.ProgressListener() { // from class: com.sunia.HTREnginev2.n8l
            @Override // com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener
            public final void onProgress(long j, long j2, long j3) {
                ProgressiveDownloader.this.m19560c(j, j2, j3);
            }
        });
        this.f25091e = factory.getUpstreamPriorityTaskManager();
    }
}
