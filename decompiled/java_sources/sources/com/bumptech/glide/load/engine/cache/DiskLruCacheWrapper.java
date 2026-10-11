package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.sunia.HTREnginev2.o5f;
import java.io.File;
import java.io.IOException;

/* loaded from: classes3.dex */
public class DiskLruCacheWrapper implements DiskCache {

    /* renamed from: f */
    public static final String f14707f = "DiskLruCacheWrapper";

    /* renamed from: g */
    public static final int f14708g = 1;

    /* renamed from: h */
    public static final int f14709h = 1;

    /* renamed from: i */
    public static DiskLruCacheWrapper f14710i;

    /* renamed from: b */
    public final File f14712b;

    /* renamed from: c */
    public final long f14713c;

    /* renamed from: e */
    public DiskLruCache f14715e;

    /* renamed from: d */
    public final o5f f14714d = new o5f();

    /* renamed from: a */
    public final SafeKeyGenerator f14711a = new SafeKeyGenerator();

    @Deprecated
    public DiskLruCacheWrapper(File file, long j) {
        this.f14712b = file;
        this.f14713c = j;
    }

    public static DiskCache create(File file, long j) {
        return new DiskLruCacheWrapper(file, j);
    }

    @Deprecated
    public static synchronized DiskCache get(File file, long j) {
        DiskLruCacheWrapper diskLruCacheWrapper;
        synchronized (DiskLruCacheWrapper.class) {
            if (f14710i == null) {
                f14710i = new DiskLruCacheWrapper(file, j);
            }
            diskLruCacheWrapper = f14710i;
        }
        return diskLruCacheWrapper;
    }

    /* renamed from: a */
    public final synchronized DiskLruCache m8822a() throws IOException {
        if (this.f14715e == null) {
            this.f14715e = DiskLruCache.open(this.f14712b, 1, 1, this.f14713c);
        }
        return this.f14715e;
    }

    /* renamed from: b */
    public final synchronized void m8823b() {
        this.f14715e = null;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public synchronized void clear() {
        try {
            try {
                m8822a().delete();
            } catch (IOException e) {
                if (Log.isLoggable(f14707f, 5)) {
                    Log.w(f14707f, "Unable to clear disk cache or disk cache cleared externally", e);
                }
            }
        } finally {
            m8823b();
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void delete(Key key) {
        try {
            m8822a().remove(this.f14711a.getSafeKey(key));
        } catch (IOException e) {
            if (Log.isLoggable(f14707f, 5)) {
                Log.w(f14707f, "Unable to delete from disk cache", e);
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void put(Key key, DiskCache.Writer writer) {
        DiskLruCache m8822a;
        String safeKey = this.f14711a.getSafeKey(key);
        this.f14714d.m55902a(safeKey);
        try {
            if (Log.isLoggable(f14707f, 2)) {
                Log.v(f14707f, "Put: Obtained: " + safeKey + " for for Key: " + key);
            }
            try {
                m8822a = m8822a();
            } catch (IOException e) {
                if (Log.isLoggable(f14707f, 5)) {
                    Log.w(f14707f, "Unable to put to disk cache", e);
                }
            }
            if (m8822a.get(safeKey) != null) {
                return;
            }
            DiskLruCache.Editor edit = m8822a.edit(safeKey);
            if (edit == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + safeKey);
            }
            try {
                if (writer.write(edit.getFile(0))) {
                    edit.commit();
                }
                edit.abortUnlessCommitted();
            } catch (Throwable th) {
                edit.abortUnlessCommitted();
                throw th;
            }
        } finally {
            this.f14714d.m55903b(safeKey);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public File get(Key key) {
        String safeKey = this.f14711a.getSafeKey(key);
        if (Log.isLoggable(f14707f, 2)) {
            Log.v(f14707f, "Get: Obtained: " + safeKey + " for for Key: " + key);
        }
        try {
            DiskLruCache.Value value = m8822a().get(safeKey);
            if (value != null) {
                return value.getFile(0);
            }
            return null;
        } catch (IOException e) {
            if (!Log.isLoggable(f14707f, 5)) {
                return null;
            }
            Log.w(f14707f, "Unable to get from disk cache", e);
            return null;
        }
    }
}
