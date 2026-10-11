package com.onyx.android.sdk.data.cache;

import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003:\u0001\u0011B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\n\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000b\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\fJ\u001b\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00028\u0001¢\u0006\u0002\u0010\u0010R \u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cache/TimedCache;", "K", "V", "", "expirationTime", "", "(J)V", "cacheMap", "", "Lcom/onyx/android/sdk/data/cache/TimedCache$CacheObject;", "get", "key", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "", "value", "(Ljava/lang/Object;Ljava/lang/Object;)V", "CacheObject", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TimedCache<K, V> {

    @NotNull
    private final Map<K, CacheObject<V>> cacheMap = new ConcurrentHashMap();
    private final long expirationTime;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0002¢\u0006\u0002\u0010\u0004J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0003\u001a\u00028\u0002¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cache/TimedCache$CacheObject;", "V", "", "value", "(Ljava/lang/Object;)V", NotificationCompat.CarExtender.f4980p, "", "getValue", "()Ljava/lang/Object;", Constants.OBJECT_SIG, "isExpired", "", "expirationTime", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class CacheObject<V> {
        private final long timestamp = System.currentTimeMillis();
        private final V value;

        public CacheObject(V v) {
            this.value = v;
        }

        public final V getValue() {
            return this.value;
        }

        public final boolean isExpired(long expirationTime) {
            return System.currentTimeMillis() - this.timestamp > expirationTime;
        }
    }

    public TimedCache(long j) {
        this.expirationTime = j;
    }

    @Nullable
    public final V get(K key) {
        CacheObject<V> cacheObject = this.cacheMap.get(key);
        if (cacheObject == null) {
            return null;
        }
        if (!cacheObject.isExpired(this.expirationTime)) {
            return cacheObject.getValue();
        }
        this.cacheMap.remove(key);
        return null;
    }

    public final void put(K key, V value) {
        this.cacheMap.put(key, new CacheObject<>(value));
    }
}
