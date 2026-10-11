package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.d6j;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class LruBitmapPool implements BitmapPool {

    /* renamed from: k */
    public static final String f14652k = "LruBitmapPool";

    /* renamed from: l */
    public static final Bitmap.Config f14653l = Bitmap.Config.ARGB_8888;

    /* renamed from: a */
    public final d6j f14654a;

    /* renamed from: b */
    public final Set<Bitmap.Config> f14655b;

    /* renamed from: c */
    public final long f14656c;

    /* renamed from: d */
    public final InterfaceC1940a f14657d;

    /* renamed from: e */
    public long f14658e;

    /* renamed from: f */
    public long f14659f;

    /* renamed from: g */
    public int f14660g;

    /* renamed from: h */
    public int f14661h;

    /* renamed from: i */
    public int f14662i;

    /* renamed from: j */
    public int f14663j;

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC1940a {
        /* renamed from: a */
        void mo8782a(Bitmap bitmap);

        /* renamed from: b */
        void mo8783b(Bitmap bitmap);
    }

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool$b */
    /* loaded from: classes3.dex */
    public static final class C1941b implements InterfaceC1940a {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.InterfaceC1940a
        /* renamed from: a */
        public void mo8782a(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.InterfaceC1940a
        /* renamed from: b */
        public void mo8783b(Bitmap bitmap) {
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool$c */
    /* loaded from: classes3.dex */
    public static class C1942c implements InterfaceC1940a {

        /* renamed from: a */
        public final Set<Bitmap> f14664a = Collections.synchronizedSet(new HashSet());

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.InterfaceC1940a
        /* renamed from: a */
        public void mo8782a(Bitmap bitmap) {
            if (!this.f14664a.contains(bitmap)) {
                this.f14664a.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + bitmap + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + IteratorUtils.f104924b);
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.InterfaceC1940a
        /* renamed from: b */
        public void mo8783b(Bitmap bitmap) {
            if (!this.f14664a.contains(bitmap)) {
                throw new IllegalStateException("Cannot remove bitmap not in tracker");
            }
            this.f14664a.remove(bitmap);
        }
    }

    public LruBitmapPool(long j, d6j d6jVar, Set<Bitmap.Config> set) {
        this.f14656c = j;
        this.f14658e = j;
        this.f14654a = d6jVar;
        this.f14655b = set;
        this.f14657d = new C1941b();
    }

    @TargetApi(26)
    /* renamed from: a */
    public static void m8771a(Bitmap.Config config) {
        if (config != Bitmap.Config.HARDWARE) {
            return;
        }
        throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
    }

    @NonNull
    /* renamed from: b */
    public static Bitmap m8772b(int i, int i2, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = f14653l;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @TargetApi(26)
    /* renamed from: f */
    public static Set<Bitmap.Config> m8773f() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        hashSet.remove(Bitmap.Config.HARDWARE);
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: g */
    public static d6j m8774g() {
        return new SizeConfigStrategy();
    }

    @TargetApi(19)
    /* renamed from: i */
    public static void m8775i(Bitmap bitmap) {
        bitmap.setPremultiplied(true);
    }

    /* renamed from: j */
    public static void m8776j(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        m8775i(bitmap);
    }

    /* renamed from: c */
    public final void m8777c() {
        if (Log.isLoggable(f14652k, 2)) {
            m8778d();
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public void clearMemory() {
        if (Log.isLoggable(f14652k, 3)) {
            Log.d(f14652k, "clearMemory");
        }
        m8781k(0L);
    }

    /* renamed from: d */
    public final void m8778d() {
        Log.v(f14652k, "Hits=" + this.f14660g + ", misses=" + this.f14661h + ", puts=" + this.f14662i + ", evictions=" + this.f14663j + ", currentSize=" + this.f14659f + ", maxSize=" + this.f14658e + "\nStrategy=" + this.f14654a);
    }

    /* renamed from: e */
    public final void m8779e() {
        m8781k(this.f14658e);
    }

    public long evictionCount() {
        return this.f14663j;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @NonNull
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        Bitmap m8780h = m8780h(i, i2, config);
        if (m8780h == null) {
            return m8772b(i, i2, config);
        }
        m8780h.eraseColor(0);
        return m8780h;
    }

    public long getCurrentSize() {
        return this.f14659f;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @NonNull
    public Bitmap getDirty(int i, int i2, Bitmap.Config config) {
        Bitmap m8780h = m8780h(i, i2, config);
        return m8780h == null ? m8772b(i, i2, config) : m8780h;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public long getMaxSize() {
        return this.f14658e;
    }

    @Nullable
    /* renamed from: h */
    public final synchronized Bitmap m8780h(int i, int i2, @Nullable Bitmap.Config config) {
        Bitmap bitmap;
        m8771a(config);
        bitmap = this.f14654a.get(i, i2, config != null ? config : f14653l);
        if (bitmap == null) {
            if (Log.isLoggable(f14652k, 3)) {
                Log.d(f14652k, "Missing bitmap=" + this.f14654a.logBitmap(i, i2, config));
            }
            this.f14661h++;
        } else {
            this.f14660g++;
            this.f14659f -= this.f14654a.getSize(bitmap);
            this.f14657d.mo8783b(bitmap);
            m8776j(bitmap);
        }
        if (Log.isLoggable(f14652k, 2)) {
            Log.v(f14652k, "Get bitmap=" + this.f14654a.logBitmap(i, i2, config));
        }
        m8777c();
        return bitmap;
    }

    public long hitCount() {
        return this.f14660g;
    }

    /* renamed from: k */
    public final synchronized void m8781k(long j) {
        while (this.f14659f > j) {
            Bitmap removeLast = this.f14654a.removeLast();
            if (removeLast == null) {
                if (Log.isLoggable(f14652k, 5)) {
                    Log.w(f14652k, "Size mismatch, resetting");
                    m8778d();
                }
                this.f14659f = 0L;
                return;
            }
            this.f14657d.mo8783b(removeLast);
            this.f14659f -= this.f14654a.getSize(removeLast);
            this.f14663j++;
            if (Log.isLoggable(f14652k, 3)) {
                Log.d(f14652k, "Evicting bitmap=" + this.f14654a.logBitmap(removeLast));
            }
            m8777c();
            removeLast.recycle();
        }
    }

    public long missCount() {
        return this.f14661h;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized void put(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f14654a.getSize(bitmap) <= this.f14658e && this.f14655b.contains(bitmap.getConfig())) {
                int size = this.f14654a.getSize(bitmap);
                this.f14654a.put(bitmap);
                this.f14657d.mo8782a(bitmap);
                this.f14662i++;
                this.f14659f += size;
                if (Log.isLoggable(f14652k, 2)) {
                    Log.v(f14652k, "Put bitmap in pool=" + this.f14654a.logBitmap(bitmap));
                }
                m8777c();
                m8779e();
                return;
            }
            if (Log.isLoggable(f14652k, 2)) {
                Log.v(f14652k, "Reject bitmap from pool, bitmap: " + this.f14654a.logBitmap(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f14655b.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized void setSizeMultiplier(float f) {
        this.f14658e = Math.round(((float) this.f14656c) * f);
        m8779e();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i) {
        if (Log.isLoggable(f14652k, 3)) {
            Log.d(f14652k, "trimMemory, level=" + i);
        }
        if (i >= 40 || i >= 20) {
            clearMemory();
        } else if (i >= 20 || i == 15) {
            m8781k(getMaxSize() / 2);
        }
    }

    public LruBitmapPool(long j) {
        this(j, m8774g(), m8773f());
    }

    public LruBitmapPool(long j, Set<Bitmap.Config> set) {
        this(j, m8774g(), set);
    }
}
