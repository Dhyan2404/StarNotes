package androidx.collection;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [V, K] */
@Metadata(m61526bv = {1, 0, 3}, m61527d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J\u0017\u0010\u0002\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010\u0004J/\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u00012\b\u0010\n\u001a\u0004\u0018\u00018\u0001H\u0014¢\u0006\u0002\u0010\u000bJ\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0001H\u0014¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"androidx/collection/LruCacheKt$lruCache$4", "Landroidx/collection/LruCache;", BaiduYunConstant.CREATE, "key", "(Ljava/lang/Object;)Ljava/lang/Object;", "entryRemoved", "", "evicted", "", "oldValue", "newValue", "(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "sizeOf", "", "value", "(Ljava/lang/Object;Ljava/lang/Object;)I", "collection-ktx"}, m61529k = 1, m61530mv = {1, 1, 13})
/* loaded from: classes3.dex */
public final class LruCacheKt$lruCache$4<K, V> extends LruCache<K, V> {

    /* renamed from: a */
    public final /* synthetic */ Function2 f2517a;

    /* renamed from: b */
    public final /* synthetic */ Function1 f2518b;

    /* renamed from: c */
    public final /* synthetic */ Function4 f2519c;

    /* renamed from: d */
    public final /* synthetic */ int f2520d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LruCacheKt$lruCache$4(Function2 function2, Function1 function1, Function4 function4, int i, int i2) {
        super(i2);
        this.f2517a = function2;
        this.f2518b = function1;
        this.f2519c = function4;
        this.f2520d = i;
    }

    @Override // androidx.collection.LruCache
    @Nullable
    public V create(@NotNull K key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return (V) this.f2518b.invoke(key);
    }

    @Override // androidx.collection.LruCache
    public void entryRemoved(boolean evicted, @NotNull K key, @NotNull V oldValue, @Nullable V newValue) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        Intrinsics.checkParameterIsNotNull(oldValue, "oldValue");
        this.f2519c.invoke(Boolean.valueOf(evicted), key, oldValue, newValue);
    }

    @Override // androidx.collection.LruCache
    public int sizeOf(@NotNull K key, @NotNull V value) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        Intrinsics.checkParameterIsNotNull(value, "value");
        return ((Number) this.f2517a.invoke(key, value)).intValue();
    }
}
