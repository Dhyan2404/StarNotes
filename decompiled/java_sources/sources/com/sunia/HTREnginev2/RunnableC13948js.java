package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.PreFillType;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Util;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* renamed from: com.sunia.HTREnginev2.js */
/* loaded from: classes3.dex */
public final class RunnableC13948js implements Runnable {

    /* renamed from: m */
    @VisibleForTesting
    public static final String f74638m = "PreFillRunner";

    /* renamed from: o */
    public static final long f74640o = 32;

    /* renamed from: p */
    public static final long f74641p = 40;

    /* renamed from: q */
    public static final int f74642q = 4;

    /* renamed from: e */
    public final BitmapPool f74644e;

    /* renamed from: f */
    public final MemoryCache f74645f;

    /* renamed from: g */
    public final m5l f74646g;

    /* renamed from: h */
    public final a f74647h;

    /* renamed from: i */
    public final Set<PreFillType> f74648i;

    /* renamed from: j */
    public final Handler f74649j;

    /* renamed from: k */
    public long f74650k;

    /* renamed from: l */
    public boolean f74651l;

    /* renamed from: n */
    public static final a f74639n = new a();

    /* renamed from: r */
    public static final long f74643r = TimeUnit.SECONDS.toMillis(1);

    @VisibleForTesting
    /* renamed from: com.sunia.HTREnginev2.js$a */
    /* loaded from: classes3.dex */
    public static class a {
        /* renamed from: a */
        public long m55036a() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.js$b */
    /* loaded from: classes3.dex */
    public static final class b implements Key {
        @Override // com.bumptech.glide.load.Key
        public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public RunnableC13948js(BitmapPool bitmapPool, MemoryCache memoryCache, m5l m5lVar) {
        this(bitmapPool, memoryCache, m5lVar, f74639n, new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m55031a() {
        Bitmap createBitmap;
        long m55036a = this.f74647h.m55036a();
        while (!this.f74646g.m55547b() && !m55035e(m55036a)) {
            PreFillType m55548c = this.f74646g.m55548c();
            if (this.f74648i.contains(m55548c)) {
                createBitmap = Bitmap.createBitmap(m55548c.m8872d(), m55548c.m8870b(), m55548c.m8869a());
            } else {
                this.f74648i.add(m55548c);
                createBitmap = this.f74644e.getDirty(m55548c.m8872d(), m55548c.m8870b(), m55548c.m8869a());
            }
            int bitmapByteSize = Util.getBitmapByteSize(createBitmap);
            if (m55033c() >= bitmapByteSize) {
                this.f74645f.put(new b(), BitmapResource.obtain(createBitmap, this.f74644e));
            } else {
                this.f74644e.put(createBitmap);
            }
            if (Log.isLoggable(f74638m, 3)) {
                Log.d(f74638m, "allocated [" + m55548c.m8872d() + "x" + m55548c.m8870b() + "] " + m55548c.m8869a() + " size: " + bitmapByteSize);
            }
        }
        return (this.f74651l || this.f74646g.m55547b()) ? false : true;
    }

    /* renamed from: b */
    public void m55032b() {
        this.f74651l = true;
    }

    /* renamed from: c */
    public final long m55033c() {
        return this.f74645f.getMaxSize() - this.f74645f.getCurrentSize();
    }

    /* renamed from: d */
    public final long m55034d() {
        long j = this.f74650k;
        this.f74650k = Math.min(4 * j, f74643r);
        return j;
    }

    /* renamed from: e */
    public final boolean m55035e(long j) {
        return this.f74647h.m55036a() - j >= 32;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (m55031a()) {
            this.f74649j.postDelayed(this, m55034d());
        }
    }

    @VisibleForTesting
    public RunnableC13948js(BitmapPool bitmapPool, MemoryCache memoryCache, m5l m5lVar, a aVar, Handler handler) {
        this.f74648i = new HashSet();
        this.f74650k = 40L;
        this.f74644e = bitmapPool;
        this.f74645f = memoryCache;
        this.f74646g = m5lVar;
        this.f74647h = aVar;
        this.f74649j = handler;
    }
}
