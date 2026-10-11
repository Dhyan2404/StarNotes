package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes3.dex */
public final class qll implements Key {

    /* renamed from: i */
    public static final LruCache<Class<?>, byte[]> f82191i = new LruCache<>(50);

    /* renamed from: a */
    public final ArrayPool f82192a;

    /* renamed from: b */
    public final Key f82193b;

    /* renamed from: c */
    public final Key f82194c;

    /* renamed from: d */
    public final int f82195d;

    /* renamed from: e */
    public final int f82196e;

    /* renamed from: f */
    public final Class<?> f82197f;

    /* renamed from: g */
    public final Options f82198g;

    /* renamed from: h */
    public final Transformation<?> f82199h;

    public qll(ArrayPool arrayPool, Key key, Key key2, int i, int i2, Transformation<?> transformation, Class<?> cls, Options options) {
        this.f82192a = arrayPool;
        this.f82193b = key;
        this.f82194c = key2;
        this.f82195d = i;
        this.f82196e = i2;
        this.f82199h = transformation;
        this.f82197f = cls;
        this.f82198g = options;
    }

    /* renamed from: a */
    public final byte[] m56724a() {
        LruCache<Class<?>, byte[]> lruCache = f82191i;
        byte[] bArr = lruCache.get(this.f82197f);
        if (bArr != null) {
            return bArr;
        }
        byte[] bytes = this.f82197f.getName().getBytes(Key.CHARSET);
        lruCache.put(this.f82197f, bytes);
        return bytes;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof qll)) {
            return false;
        }
        qll qllVar = (qll) obj;
        return this.f82196e == qllVar.f82196e && this.f82195d == qllVar.f82195d && Util.bothNullOrEqual(this.f82199h, qllVar.f82199h) && this.f82197f.equals(qllVar.f82197f) && this.f82193b.equals(qllVar.f82193b) && this.f82194c.equals(qllVar.f82194c) && this.f82198g.equals(qllVar.f82198g);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        int hashCode = (((((this.f82193b.hashCode() * 31) + this.f82194c.hashCode()) * 31) + this.f82195d) * 31) + this.f82196e;
        Transformation<?> transformation = this.f82199h;
        if (transformation != null) {
            hashCode = (hashCode * 31) + transformation.hashCode();
        }
        return (((hashCode * 31) + this.f82197f.hashCode()) * 31) + this.f82198g.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f82193b + ", signature=" + this.f82194c + ", width=" + this.f82195d + ", height=" + this.f82196e + ", decodedResourceClass=" + this.f82197f + ", transformation='" + this.f82199h + Chars.QUOTE + ", options=" + this.f82198g + '}';
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f82192a.getExact(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f82195d).putInt(this.f82196e).array();
        this.f82194c.updateDiskCacheKey(messageDigest);
        this.f82193b.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        Transformation<?> transformation = this.f82199h;
        if (transformation != null) {
            transformation.updateDiskCacheKey(messageDigest);
        }
        this.f82198g.updateDiskCacheKey(messageDigest);
        messageDigest.update(m56724a());
        this.f82192a.put(bArr);
    }
}
