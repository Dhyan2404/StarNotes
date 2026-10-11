package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes3.dex */
public class SafeKeyGenerator {

    /* renamed from: a */
    public final LruCache<Key, String> f14745a = new LruCache<>(1000);

    /* renamed from: b */
    public final Pools.Pool<C1956b> f14746b = FactoryPools.threadSafe(10, new C1955a());

    /* renamed from: com.bumptech.glide.load.engine.cache.SafeKeyGenerator$a */
    /* loaded from: classes3.dex */
    public class C1955a implements FactoryPools.Factory<C1956b> {
        public C1955a() {
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1956b create() {
            try {
                return new C1956b(MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.SafeKeyGenerator$b */
    /* loaded from: classes3.dex */
    public static final class C1956b implements FactoryPools.Poolable {

        /* renamed from: e */
        public final MessageDigest f14748e;

        /* renamed from: f */
        public final StateVerifier f14749f = StateVerifier.newInstance();

        public C1956b(MessageDigest messageDigest) {
            this.f14748e = messageDigest;
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
        @NonNull
        public StateVerifier getVerifier() {
            return this.f14749f;
        }
    }

    /* renamed from: a */
    public final String m8832a(Key key) {
        C1956b c1956b = (C1956b) Preconditions.checkNotNull(this.f14746b.acquire());
        try {
            key.updateDiskCacheKey(c1956b.f14748e);
            return Util.sha256BytesToHex(c1956b.f14748e.digest());
        } finally {
            this.f14746b.release(c1956b);
        }
    }

    public String getSafeKey(Key key) {
        String str;
        synchronized (this.f14745a) {
            str = this.f14745a.get(key);
        }
        if (str == null) {
            str = m8832a(key);
        }
        synchronized (this.f14745a) {
            this.f14745a.put(key, str);
        }
        return str;
    }
}
