package com.onyx.poi.cache;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.jakewharton.disklrucache.DiskLruCache;
import com.liulishuo.okdownload.core.download.DownloadStrategy;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.common.util.CloseUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes9.dex */
public class BitmapLruCache implements Closeable {
    public static final int DISK_CACHE_VERSION = 4;

    /* renamed from: e */
    public BitmapMemoryLruCache f62933e;

    /* renamed from: f */
    public DiskLruCache f62934f;

    /* renamed from: g */
    public ExecutorService f62935g = Executors.newSingleThreadExecutor(new ThreadFactoryC13021a());

    /* loaded from: classes9.dex */
    public static class Builder {

        /* renamed from: f */
        public static final int f62936f = 1048576;

        /* renamed from: g */
        public static final float f62937g = 0.25f;

        /* renamed from: h */
        public static final float f62938h = 0.75f;

        /* renamed from: i */
        public static final int f62939i = 100;

        /* renamed from: j */
        public static final int f62940j = 30;

        /* renamed from: c */
        public boolean f62943c;

        /* renamed from: e */
        public File f62945e;

        /* renamed from: a */
        public boolean f62941a = true;

        /* renamed from: b */
        public int f62942b = NoteExportArgs.SAVE_PAGE_NATIVE_MEMORY_LIMIT;

        /* renamed from: d */
        public long f62944d = DownloadStrategy.f39453g;

        /* renamed from: a */
        public static long m52140a() {
            return Runtime.getRuntime().maxMemory();
        }

        /* renamed from: b */
        public final boolean m52141b() {
            boolean z = this.f62943c;
            if (!z) {
                return z;
            }
            File file = this.f62945e;
            if (file != null && file.canWrite()) {
                return z;
            }
            return false;
        }

        public BitmapLruCache build() {
            BitmapLruCache bitmapLruCache = new BitmapLruCache();
            if (m52142c()) {
                bitmapLruCache.m52138M(new BitmapMemoryLruCache(this.f62942b));
            }
            if (m52141b()) {
                try {
                    bitmapLruCache.m52137I(DiskLruCache.open(this.f62945e, 4, 1, this.f62944d));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return bitmapLruCache;
        }

        /* renamed from: c */
        public final boolean m52142c() {
            return this.f62941a && this.f62942b > 0;
        }

        public Builder setDiskCacheEnabled(boolean z) {
            this.f62943c = z;
            return this;
        }

        public Builder setDiskCacheLocation(File file) {
            this.f62945e = file;
            return this;
        }

        public Builder setDiskCacheMaxSize(long j) {
            this.f62944d = j;
            return this;
        }

        public Builder setMemoryCacheEnabled(boolean z) {
            this.f62941a = z;
            return this;
        }

        public Builder setMemoryCacheMaxSize(int i) {
            this.f62942b = i;
            return this;
        }

        public Builder setMemoryCacheMaxSizeUsingHeapSize() {
            return setMemoryCacheMaxSizeUsingHeapSize(0.25f);
        }

        public Builder setMemoryCacheMaxSizeUsingHeapSize(float f) {
            return setMemoryCacheMaxSize(Math.round(((float) m52140a()) * Math.min(f, 0.75f)));
        }
    }

    /* renamed from: com.onyx.poi.cache.BitmapLruCache$a */
    /* loaded from: classes9.dex */
    public class ThreadFactoryC13021a implements ThreadFactory {
        public ThreadFactoryC13021a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(1);
            return thread;
        }
    }

    /* renamed from: H */
    public final void m52136H(String str, BitmapHolder bitmapHolder) {
        BitmapMemoryLruCache bitmapMemoryLruCache = this.f62933e;
        if (bitmapMemoryLruCache != null) {
            bitmapMemoryLruCache.put(str, bitmapHolder);
        }
    }

    /* renamed from: I */
    public final void m52137I(DiskLruCache diskLruCache) {
        this.f62934f = diskLruCache;
    }

    /* renamed from: M */
    public final void m52138M(BitmapMemoryLruCache bitmapMemoryLruCache) {
        this.f62933e = bitmapMemoryLruCache;
    }

    public void clear() {
        BitmapMemoryLruCache bitmapMemoryLruCache = this.f62933e;
        if (bitmapMemoryLruCache != null) {
            bitmapMemoryLruCache.evictAll();
        }
        DiskLruCache diskLruCache = this.f62934f;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        BitmapMemoryLruCache bitmapMemoryLruCache = this.f62933e;
        if (bitmapMemoryLruCache != null) {
            bitmapMemoryLruCache.evictAll();
        }
        DiskLruCache diskLruCache = this.f62934f;
        if (diskLruCache != null) {
            diskLruCache.close();
        }
    }

    public boolean exist(String str) {
        if (getFromMemoryCache(str) != null) {
            return true;
        }
        InputStream streamFromDiskCache = getStreamFromDiskCache(str);
        CloseUtils.close(streamFromDiskCache);
        return streamFromDiskCache != null;
    }

    public BitmapHolder get(String str) {
        return get(str, null);
    }

    public BitmapHolder getFromDiskCache(String str, BitmapFactory.Options options) {
        DiskLruCache diskLruCache = this.f62934f;
        if (diskLruCache == null) {
            return null;
        }
        try {
            DiskLruCache.Snapshot snapshot = diskLruCache.get(str);
            if (snapshot == null) {
                return null;
            }
            try {
                InputStream inputStream = snapshot.getInputStream(0);
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                    if (decodeStream == null) {
                        this.f62934f.remove(str);
                        this.f62934f.flush();
                        return null;
                    }
                    BitmapHolder create = BitmapHolder.create(decodeStream);
                    m52136H(str, create);
                    return create;
                } finally {
                    CloseUtils.close(inputStream);
                }
            } finally {
                snapshot.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public BitmapHolder getFromMemoryCache(String str) {
        BitmapMemoryLruCache bitmapMemoryLruCache = this.f62933e;
        if (bitmapMemoryLruCache == null) {
            return null;
        }
        synchronized (bitmapMemoryLruCache) {
            BitmapHolder bitmapHolder = this.f62933e.get(str);
            if (bitmapHolder == null) {
                return null;
            }
            if (!bitmapHolder.isRecycled()) {
                return bitmapHolder;
            }
            this.f62933e.remove(str);
            bitmapHolder.detach();
            return null;
        }
    }

    public InputStream getStream(String str) {
        BitmapHolder fromMemoryCache = getFromMemoryCache(str);
        if (fromMemoryCache != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (fromMemoryCache.getBitmap().compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream)) {
                return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            }
        }
        return getStreamFromDiskCache(str);
    }

    public InputStream getStreamFromDiskCache(String str) {
        DiskLruCache diskLruCache = this.f62934f;
        if (diskLruCache == null) {
            return null;
        }
        try {
            DiskLruCache.Snapshot snapshot = diskLruCache.get(str);
            if (snapshot == null) {
                return null;
            }
            return snapshot.getInputStream(0);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public BitmapHolder put(String str, BitmapHolder bitmapHolder) {
        return put(str, bitmapHolder, Bitmap.CompressFormat.PNG, 100);
    }

    public final BitmapHolder remove(String str) {
        return removeFromMemoryCache(str);
    }

    public BitmapHolder removeFromMemoryCache(String str) {
        BitmapMemoryLruCache bitmapMemoryLruCache = this.f62933e;
        if (bitmapMemoryLruCache == null) {
            return null;
        }
        return bitmapMemoryLruCache.remove(str);
    }

    /* renamed from: w */
    public final void m52139w(String str, BitmapHolder bitmapHolder, Bitmap.CompressFormat compressFormat, int i) {
        DiskLruCache diskLruCache = this.f62934f;
        if (diskLruCache == null) {
            return;
        }
        try {
            DiskLruCache.Editor edit = diskLruCache.edit(str);
            OutputStream newOutputStream = edit.newOutputStream(0);
            try {
                bitmapHolder.getBitmap().compress(compressFormat, i, newOutputStream);
                newOutputStream.flush();
                edit.commit();
                this.f62934f.flush();
                CloseUtils.close(newOutputStream);
            } catch (Throwable th) {
                CloseUtils.close(newOutputStream);
                throw th;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public BitmapHolder get(String str, BitmapFactory.Options options) {
        BitmapHolder fromMemoryCache = getFromMemoryCache(str);
        return fromMemoryCache != null ? fromMemoryCache : getFromDiskCache(str, options);
    }

    public BitmapHolder put(String str, BitmapHolder bitmapHolder, Bitmap.CompressFormat compressFormat, int i) {
        m52136H(str, bitmapHolder);
        m52139w(str, bitmapHolder, compressFormat, i);
        return bitmapHolder;
    }
}
