package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import java.util.Map;

/* loaded from: classes3.dex */
public class uqf implements Key {

    /* renamed from: a */
    public final Object f86748a;

    /* renamed from: b */
    public final int f86749b;

    /* renamed from: c */
    public final int f86750c;

    /* renamed from: d */
    public final Class<?> f86751d;

    /* renamed from: e */
    public final Class<?> f86752e;

    /* renamed from: f */
    public final Key f86753f;

    /* renamed from: g */
    public final Map<Class<?>, Transformation<?>> f86754g;

    /* renamed from: h */
    public final Options f86755h;

    /* renamed from: i */
    public int f86756i;

    public uqf(Object obj, Key key, int i, int i2, Map<Class<?>, Transformation<?>> map, Class<?> cls, Class<?> cls2, Options options) {
        this.f86748a = Preconditions.checkNotNull(obj);
        this.f86753f = (Key) Preconditions.checkNotNull(key, "Signature must not be null");
        this.f86749b = i;
        this.f86750c = i2;
        this.f86754g = (Map) Preconditions.checkNotNull(map);
        this.f86751d = (Class) Preconditions.checkNotNull(cls, "Resource class must not be null");
        this.f86752e = (Class) Preconditions.checkNotNull(cls2, "Transcode class must not be null");
        this.f86755h = (Options) Preconditions.checkNotNull(options);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof uqf)) {
            return false;
        }
        uqf uqfVar = (uqf) obj;
        return this.f86748a.equals(uqfVar.f86748a) && this.f86753f.equals(uqfVar.f86753f) && this.f86750c == uqfVar.f86750c && this.f86749b == uqfVar.f86749b && this.f86754g.equals(uqfVar.f86754g) && this.f86751d.equals(uqfVar.f86751d) && this.f86752e.equals(uqfVar.f86752e) && this.f86755h.equals(uqfVar.f86755h);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.f86756i == 0) {
            int hashCode = this.f86748a.hashCode();
            this.f86756i = hashCode;
            int hashCode2 = (((((hashCode * 31) + this.f86753f.hashCode()) * 31) + this.f86749b) * 31) + this.f86750c;
            this.f86756i = hashCode2;
            int hashCode3 = (hashCode2 * 31) + this.f86754g.hashCode();
            this.f86756i = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f86751d.hashCode();
            this.f86756i = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f86752e.hashCode();
            this.f86756i = hashCode5;
            this.f86756i = (hashCode5 * 31) + this.f86755h.hashCode();
        }
        return this.f86756i;
    }

    public String toString() {
        return "EngineKey{model=" + this.f86748a + ", width=" + this.f86749b + ", height=" + this.f86750c + ", resourceClass=" + this.f86751d + ", transcodeClass=" + this.f86752e + ", signature=" + this.f86753f + ", hashCode=" + this.f86756i + ", transformations=" + this.f86754g + ", options=" + this.f86755h + '}';
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
