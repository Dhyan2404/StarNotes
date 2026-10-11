package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.offline.Downloader;
import com.google.android.exoplayer2.offline.FilterableManifest;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheKeyFactory;
import com.google.android.exoplayer2.upstream.cache.CacheWriter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public abstract class SegmentDownloader<M extends FilterableManifest<M>> implements Downloader {

    /* renamed from: k */
    public static final int f25096k = 131072;

    /* renamed from: l */
    public static final long f25097l = 20000000;

    /* renamed from: a */
    public final DataSpec f25098a;

    /* renamed from: b */
    public final ParsingLoadable.Parser<M> f25099b;

    /* renamed from: c */
    public final ArrayList<StreamKey> f25100c;

    /* renamed from: d */
    public final CacheDataSource.Factory f25101d;

    /* renamed from: e */
    public final Cache f25102e;

    /* renamed from: f */
    public final CacheKeyFactory f25103f;

    /* renamed from: g */
    @Nullable
    public final PriorityTaskManager f25104g;

    /* renamed from: h */
    public final Executor f25105h;

    /* renamed from: i */
    public final ArrayList<RunnableFutureTask<?, ?>> f25106i;

    /* renamed from: j */
    public volatile boolean f25107j;

    /* loaded from: classes5.dex */
    public static class Segment implements Comparable<Segment> {
        public final DataSpec dataSpec;
        public final long startTimeUs;

        public Segment(long j, DataSpec dataSpec) {
            this.startTimeUs = j;
            this.dataSpec = dataSpec;
        }

        @Override // java.lang.Comparable
        public int compareTo(Segment segment) {
            return Util.compareLong(this.startTimeUs, segment.startTimeUs);
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.SegmentDownloader$a */
    /* loaded from: classes5.dex */
    public class C4816a extends RunnableFutureTask<M, IOException> {

        /* renamed from: l */
        public final /* synthetic */ DataSource f25108l;

        /* renamed from: m */
        public final /* synthetic */ DataSpec f25109m;

        public C4816a(DataSource dataSource, DataSpec dataSpec) {
            this.f25108l = dataSource;
            this.f25109m = dataSpec;
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public M doWork() throws IOException {
            return (M) ParsingLoadable.load(this.f25108l, SegmentDownloader.this.f25099b, this.f25109m, 4);
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.SegmentDownloader$b */
    /* loaded from: classes5.dex */
    public static final class C4817b implements CacheWriter.ProgressListener {

        /* renamed from: a */
        public final Downloader.ProgressListener f25111a;

        /* renamed from: b */
        public final long f25112b;

        /* renamed from: c */
        public final int f25113c;

        /* renamed from: d */
        public long f25114d;

        /* renamed from: e */
        public int f25115e;

        public C4817b(Downloader.ProgressListener progressListener, long j, int i, long j2, int i2) {
            this.f25111a = progressListener;
            this.f25112b = j;
            this.f25113c = i;
            this.f25114d = j2;
            this.f25115e = i2;
        }

        /* renamed from: a */
        public final float m19569a() {
            float f;
            float f2;
            long j = this.f25112b;
            if (j == -1 || j == 0) {
                int i = this.f25113c;
                if (i == 0) {
                    return -1.0f;
                }
                f = this.f25115e * 100.0f;
                f2 = i;
            } else {
                f = ((float) this.f25114d) * 100.0f;
                f2 = (float) j;
            }
            return f / f2;
        }

        /* renamed from: b */
        public void m19570b() {
            this.f25115e++;
            this.f25111a.onProgress(this.f25112b, this.f25114d, m19569a());
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener
        public void onProgress(long j, long j2, long j3) {
            long j4 = this.f25114d + j3;
            this.f25114d = j4;
            this.f25111a.onProgress(this.f25112b, j4, m19569a());
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.SegmentDownloader$c */
    /* loaded from: classes5.dex */
    public static final class C4818c extends RunnableFutureTask<Void, IOException> {

        /* renamed from: l */
        public final Segment f25116l;

        /* renamed from: m */
        public final CacheDataSource f25117m;

        /* renamed from: n */
        @Nullable
        public final C4817b f25118n;

        /* renamed from: o */
        public final byte[] f25119o;

        /* renamed from: p */
        public final CacheWriter f25120p;

        public C4818c(Segment segment, CacheDataSource cacheDataSource, @Nullable C4817b c4817b, byte[] bArr) {
            this.f25116l = segment;
            this.f25117m = cacheDataSource;
            this.f25118n = c4817b;
            this.f25119o = bArr;
            this.f25120p = new CacheWriter(cacheDataSource, segment.dataSpec, bArr, c4817b);
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void doWork() throws IOException {
            this.f25120p.cache();
            C4817b c4817b = this.f25118n;
            if (c4817b == null) {
                return null;
            }
            c4817b.m19570b();
            return null;
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        public void cancelWork() {
            this.f25120p.cancel();
        }
    }

    public SegmentDownloader(MediaItem mediaItem, ParsingLoadable.Parser<M> parser, CacheDataSource.Factory factory, Executor executor) {
        Assertions.checkNotNull(mediaItem.localConfiguration);
        this.f25098a = getCompressibleDataSpec(mediaItem.localConfiguration.uri);
        this.f25099b = parser;
        this.f25100c = new ArrayList<>(mediaItem.localConfiguration.streamKeys);
        this.f25101d = factory;
        this.f25105h = executor;
        this.f25102e = (Cache) Assertions.checkNotNull(factory.getCache());
        this.f25103f = factory.getCacheKeyFactory();
        this.f25104g = factory.getUpstreamPriorityTaskManager();
        this.f25106i = new ArrayList<>();
    }

    /* renamed from: c */
    public static boolean m19563c(DataSpec dataSpec, DataSpec dataSpec2) {
        if (dataSpec.uri.equals(dataSpec2.uri)) {
            long j = dataSpec.length;
            if (j != -1 && dataSpec.position + j == dataSpec2.position && Util.areEqual(dataSpec.key, dataSpec2.key) && dataSpec.flags == dataSpec2.flags && dataSpec.httpMethod == dataSpec2.httpMethod && dataSpec.httpRequestHeaders.equals(dataSpec2.httpRequestHeaders)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static void m19564d(List<Segment> list, CacheKeyFactory cacheKeyFactory) {
        HashMap hashMap = new HashMap();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Segment segment = list.get(i2);
            String buildCacheKey = cacheKeyFactory.buildCacheKey(segment.dataSpec);
            Integer num = (Integer) hashMap.get(buildCacheKey);
            Segment segment2 = num == null ? null : list.get(num.intValue());
            if (segment2 == null || segment.startTimeUs > segment2.startTimeUs + 20000000 || !m19563c(segment2.dataSpec, segment.dataSpec)) {
                hashMap.put(buildCacheKey, Integer.valueOf(i));
                list.set(i, segment);
                i++;
            } else {
                long j = segment.dataSpec.length;
                list.set(((Integer) Assertions.checkNotNull(num)).intValue(), new Segment(segment2.startTimeUs, segment2.dataSpec.subrange(0L, j != -1 ? segment2.dataSpec.length + j : -1L)));
            }
        }
        Util.removeRange(list, i, list.size());
    }

    public static DataSpec getCompressibleDataSpec(Uri uri) {
        return new DataSpec.Builder().setUri(uri).setFlags(1).build();
    }

    /* renamed from: b */
    public final <T> void m19565b(RunnableFutureTask<T, ?> runnableFutureTask) throws InterruptedException {
        synchronized (this.f25106i) {
            if (this.f25107j) {
                throw new InterruptedException();
            }
            this.f25106i.add(runnableFutureTask);
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void cancel() {
        synchronized (this.f25106i) {
            this.f25107j = true;
            for (int i = 0; i < this.f25106i.size(); i++) {
                this.f25106i.get(i).cancel(true);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a6 A[LOOP:1: B:37:0x019e->B:39:0x01a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01bf A[LOOP:2: B:42:0x01bd->B:43:0x01bf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01d4  */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.exoplayer2.offline.SegmentDownloader] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.exoplayer2.offline.SegmentDownloader] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v28 */
    @Override // com.google.android.exoplayer2.offline.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void download(@androidx.annotation.Nullable com.google.android.exoplayer2.offline.Downloader.ProgressListener r26) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.SegmentDownloader.download(com.google.android.exoplayer2.offline.Downloader$ProgressListener):void");
    }

    /* renamed from: e */
    public final void m19566e(int i) {
        synchronized (this.f25106i) {
            this.f25106i.remove(i);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:27|28|29|(2:34|(2:36|37)(3:38|39|40))(2:31|32)|33) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0042, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0043, code lost:
    
        r0 = (java.lang.Throwable) com.google.android.exoplayer2.util.Assertions.checkNotNull(r4.getCause());
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004f, code lost:
    
        if ((r0 instanceof com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0054, code lost:
    
        if ((r0 instanceof java.io.IOException) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0056, code lost:
    
        com.google.android.exoplayer2.util.Util.sneakyThrow(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0062, code lost:
    
        throw ((java.io.IOException) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0040, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0063, code lost:
    
        r3.blockUntilFinished();
        r2.m19567f(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0069, code lost:
    
        throw r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T execute(com.google.android.exoplayer2.util.RunnableFutureTask<T, ?> r3, boolean r4) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r2 = this;
            if (r4 == 0) goto L20
            r3.run()
            java.lang.Object r2 = r3.get()     // Catch: java.util.concurrent.ExecutionException -> La
            return r2
        La:
            r4 = move-exception
            java.lang.Throwable r0 = r4.getCause()
            java.lang.Object r0 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r0)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            boolean r1 = r0 instanceof java.io.IOException
            if (r1 != 0) goto L1d
            com.google.android.exoplayer2.util.Util.sneakyThrow(r4)
            goto L20
        L1d:
            java.io.IOException r0 = (java.io.IOException) r0
            throw r0
        L20:
            boolean r4 = r2.f25107j
            if (r4 != 0) goto L6a
            com.google.android.exoplayer2.util.PriorityTaskManager r4 = r2.f25104g
            if (r4 == 0) goto L2d
            r0 = -1000(0xfffffffffffffc18, float:NaN)
            r4.proceed(r0)
        L2d:
            r2.m19565b(r3)
            java.util.concurrent.Executor r4 = r2.f25105h
            r4.execute(r3)
            java.lang.Object r4 = r3.get()     // Catch: java.lang.Throwable -> L40 java.util.concurrent.ExecutionException -> L42
            r3.blockUntilFinished()
            r2.m19567f(r3)
            return r4
        L40:
            r4 = move-exception
            goto L63
        L42:
            r4 = move-exception
            java.lang.Throwable r0 = r4.getCause()     // Catch: java.lang.Throwable -> L40
            java.lang.Object r0 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r0)     // Catch: java.lang.Throwable -> L40
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L40
            boolean r1 = r0 instanceof com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException     // Catch: java.lang.Throwable -> L40
            if (r1 == 0) goto L52
            goto L59
        L52:
            boolean r1 = r0 instanceof java.io.IOException     // Catch: java.lang.Throwable -> L40
            if (r1 != 0) goto L60
            com.google.android.exoplayer2.util.Util.sneakyThrow(r4)     // Catch: java.lang.Throwable -> L40
        L59:
            r3.blockUntilFinished()
            r2.m19567f(r3)
            goto L20
        L60:
            java.io.IOException r0 = (java.io.IOException) r0     // Catch: java.lang.Throwable -> L40
            throw r0     // Catch: java.lang.Throwable -> L40
        L63:
            r3.blockUntilFinished()
            r2.m19567f(r3)
            throw r4
        L6a:
            java.lang.InterruptedException r2 = new java.lang.InterruptedException
            r2.<init>()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.SegmentDownloader.execute(com.google.android.exoplayer2.util.RunnableFutureTask, boolean):java.lang.Object");
    }

    /* renamed from: f */
    public final void m19567f(RunnableFutureTask<?, ?> runnableFutureTask) {
        synchronized (this.f25106i) {
            this.f25106i.remove(runnableFutureTask);
        }
    }

    public final M getManifest(DataSource dataSource, DataSpec dataSpec, boolean z) throws InterruptedException, IOException {
        return (M) execute(new C4816a(dataSource, dataSpec), z);
    }

    public abstract List<Segment> getSegments(DataSource dataSource, M m, boolean z) throws IOException, InterruptedException;

    @Override // com.google.android.exoplayer2.offline.Downloader
    public final void remove() {
        CacheDataSource createDataSourceForRemovingDownload = this.f25101d.createDataSourceForRemovingDownload();
        try {
            try {
                List<Segment> segments = getSegments(createDataSourceForRemovingDownload, getManifest(createDataSourceForRemovingDownload, this.f25098a, true), true);
                for (int i = 0; i < segments.size(); i++) {
                    this.f25102e.removeResource(this.f25103f.buildCacheKey(segments.get(i).dataSpec));
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception unused2) {
            }
        } finally {
            this.f25102e.removeResource(this.f25103f.buildCacheKey(this.f25098a));
        }
    }
}
