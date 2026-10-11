package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.upstream.DataSpec;
import java.io.IOException;
import java.io.InterruptedIOException;

/* loaded from: classes5.dex */
public final class CacheWriter {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;

    /* renamed from: a */
    public final CacheDataSource f28217a;

    /* renamed from: b */
    public final Cache f28218b;

    /* renamed from: c */
    public final DataSpec f28219c;

    /* renamed from: d */
    public final String f28220d;

    /* renamed from: e */
    public final byte[] f28221e;

    /* renamed from: f */
    @Nullable
    public final ProgressListener f28222f;

    /* renamed from: g */
    public long f28223g;

    /* renamed from: h */
    public long f28224h;

    /* renamed from: i */
    public long f28225i;

    /* renamed from: j */
    public volatile boolean f28226j;

    /* loaded from: classes5.dex */
    public interface ProgressListener {
        void onProgress(long j, long j2, long j3);
    }

    public CacheWriter(CacheDataSource cacheDataSource, DataSpec dataSpec, @Nullable byte[] bArr, @Nullable ProgressListener progressListener) {
        this.f28217a = cacheDataSource;
        this.f28218b = cacheDataSource.getCache();
        this.f28219c = dataSpec;
        this.f28221e = bArr == null ? new byte[131072] : bArr;
        this.f28222f = progressListener;
        this.f28220d = cacheDataSource.getCacheKeyFactory().buildCacheKey(dataSpec);
        this.f28223g = dataSpec.position;
    }

    /* renamed from: a */
    public final long m21382a() {
        long j = this.f28224h;
        if (j == -1) {
            return -1L;
        }
        return j - this.f28219c.position;
    }

    /* renamed from: b */
    public final void m21383b(long j) {
        this.f28225i += j;
        ProgressListener progressListener = this.f28222f;
        if (progressListener != null) {
            progressListener.onProgress(m21382a(), this.f28225i, j);
        }
    }

    /* renamed from: c */
    public final void m21384c(long j) {
        if (this.f28224h == j) {
            return;
        }
        this.f28224h = j;
        ProgressListener progressListener = this.f28222f;
        if (progressListener != null) {
            progressListener.onProgress(m21382a(), this.f28225i, 0L);
        }
    }

    @WorkerThread
    public void cache() throws IOException {
        m21386e();
        Cache cache = this.f28218b;
        String str = this.f28220d;
        DataSpec dataSpec = this.f28219c;
        this.f28225i = cache.getCachedBytes(str, dataSpec.position, dataSpec.length);
        DataSpec dataSpec2 = this.f28219c;
        long j = dataSpec2.length;
        if (j != -1) {
            this.f28224h = dataSpec2.position + j;
        } else {
            long contentLength = ContentMetadata.getContentLength(this.f28218b.getContentMetadata(this.f28220d));
            if (contentLength == -1) {
                contentLength = -1;
            }
            this.f28224h = contentLength;
        }
        ProgressListener progressListener = this.f28222f;
        if (progressListener != null) {
            progressListener.onProgress(m21382a(), this.f28225i, 0L);
        }
        while (true) {
            long j2 = this.f28224h;
            if (j2 != -1 && this.f28223g >= j2) {
                return;
            }
            m21386e();
            long j3 = this.f28224h;
            long cachedLength = this.f28218b.getCachedLength(this.f28220d, this.f28223g, j3 == -1 ? Long.MAX_VALUE : j3 - this.f28223g);
            if (cachedLength > 0) {
                this.f28223g += cachedLength;
            } else {
                long j4 = -cachedLength;
                if (j4 == Long.MAX_VALUE) {
                    j4 = -1;
                }
                long j5 = this.f28223g;
                this.f28223g = j5 + m21385d(j5, j4);
            }
        }
    }

    public void cancel() {
        this.f28226j = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006f A[Catch: IOException -> 0x0068, TryCatch #0 {IOException -> 0x0068, blocks: (B:25:0x0064, B:33:0x006f, B:36:0x007d, B:42:0x0085), top: B:24:0x0064 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0085 A[Catch: IOException -> 0x0068, TRY_LEAVE, TryCatch #0 {IOException -> 0x0068, blocks: (B:25:0x0064, B:33:0x006f, B:36:0x007d, B:42:0x0085), top: B:24:0x0064 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m21385d(long r7, long r9) throws java.io.IOException {
        /*
            r6 = this;
            long r0 = r7 + r9
            long r2 = r6.f28224h
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 == 0) goto L13
            int r0 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r0 != 0) goto L11
            goto L13
        L11:
            r0 = r2
            goto L14
        L13:
            r0 = r1
        L14:
            int r5 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r5 == 0) goto L36
            com.google.android.exoplayer2.upstream.DataSpec r5 = r6.f28219c
            com.google.android.exoplayer2.upstream.DataSpec$Builder r5 = r5.buildUpon()
            com.google.android.exoplayer2.upstream.DataSpec$Builder r5 = r5.setPosition(r7)
            com.google.android.exoplayer2.upstream.DataSpec$Builder r9 = r5.setLength(r9)
            com.google.android.exoplayer2.upstream.DataSpec r9 = r9.build()
            com.google.android.exoplayer2.upstream.cache.CacheDataSource r10 = r6.f28217a     // Catch: java.io.IOException -> L31
            long r9 = r10.open(r9)     // Catch: java.io.IOException -> L31
            goto L38
        L31:
            com.google.android.exoplayer2.upstream.cache.CacheDataSource r9 = r6.f28217a
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(r9)
        L36:
            r1 = r2
            r9 = r3
        L38:
            if (r1 != 0) goto L5d
            r6.m21386e()
            com.google.android.exoplayer2.upstream.DataSpec r9 = r6.f28219c
            com.google.android.exoplayer2.upstream.DataSpec$Builder r9 = r9.buildUpon()
            com.google.android.exoplayer2.upstream.DataSpec$Builder r9 = r9.setPosition(r7)
            com.google.android.exoplayer2.upstream.DataSpec$Builder r9 = r9.setLength(r3)
            com.google.android.exoplayer2.upstream.DataSpec r9 = r9.build()
            com.google.android.exoplayer2.upstream.cache.CacheDataSource r10 = r6.f28217a     // Catch: java.io.IOException -> L56
            long r9 = r10.open(r9)     // Catch: java.io.IOException -> L56
            goto L5d
        L56:
            r7 = move-exception
            com.google.android.exoplayer2.upstream.cache.CacheDataSource r6 = r6.f28217a
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(r6)
            throw r7
        L5d:
            if (r0 == 0) goto L6a
            int r1 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r1 == 0) goto L6a
            long r9 = r9 + r7
            r6.m21384c(r9)     // Catch: java.io.IOException -> L68
            goto L6a
        L68:
            r7 = move-exception
            goto L8b
        L6a:
            r9 = r2
            r10 = r9
        L6c:
            r1 = -1
            if (r9 == r1) goto L83
            r6.m21386e()     // Catch: java.io.IOException -> L68
            com.google.android.exoplayer2.upstream.cache.CacheDataSource r9 = r6.f28217a     // Catch: java.io.IOException -> L68
            byte[] r3 = r6.f28221e     // Catch: java.io.IOException -> L68
            int r4 = r3.length     // Catch: java.io.IOException -> L68
            int r9 = r9.read(r3, r2, r4)     // Catch: java.io.IOException -> L68
            if (r9 == r1) goto L6c
            long r3 = (long) r9     // Catch: java.io.IOException -> L68
            r6.m21383b(r3)     // Catch: java.io.IOException -> L68
            int r10 = r10 + r9
            goto L6c
        L83:
            if (r0 == 0) goto L91
            long r0 = (long) r10     // Catch: java.io.IOException -> L68
            long r7 = r7 + r0
            r6.m21384c(r7)     // Catch: java.io.IOException -> L68
            goto L91
        L8b:
            com.google.android.exoplayer2.upstream.cache.CacheDataSource r6 = r6.f28217a
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(r6)
            throw r7
        L91:
            com.google.android.exoplayer2.upstream.cache.CacheDataSource r6 = r6.f28217a
            r6.close()
            long r6 = (long) r10
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.CacheWriter.m21385d(long, long):long");
    }

    /* renamed from: e */
    public final void m21386e() throws InterruptedIOException {
        if (this.f28226j) {
            throw new InterruptedIOException();
        }
    }
}
