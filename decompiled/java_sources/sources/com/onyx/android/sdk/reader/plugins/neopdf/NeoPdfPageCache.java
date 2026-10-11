package com.onyx.android.sdk.reader.plugins.neopdf;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u001c\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J(\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\t2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J&\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R<\u0010\u0013\u001a*\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\f0\u0010j\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\f`\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;", "", "", "pageIndex", "Lkotlin/Function0;", "", "overFun", "beforeRenderPage", "beforeGetPageText", "", "type", "b", "", "cacheSet", "", "a", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "Ljava/util/LinkedHashMap;", "cacheSetMap", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoPdfPageCache {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int PAGE_CACHE_MAX_COUNT = 500;

    @NotNull
    public static final String PAGE_CACHE_TYPE_RENDER = "page_render";

    @NotNull
    public static final String PAGE_CACHE_TYPE_TEXT = "page_text";

    /* renamed from: b */
    @NotNull
    public static final Map<String, Integer> f45023b;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, Set<Integer>> cacheSetMap = new LinkedHashMap<>();

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache$Companion;", "", "()V", "PAGE_CACHE_MAX_COUNT", "", "PAGE_CACHE_MAX_COUNT_MAP", "", "", "getPAGE_CACHE_MAX_COUNT_MAP", "()Ljava/util/Map;", "PAGE_CACHE_TYPE_RENDER", "PAGE_CACHE_TYPE_TEXT", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Map<String, Integer> getPAGE_CACHE_MAX_COUNT_MAP() {
            return NeoPdfPageCache.f45023b;
        }

        public Companion() {
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(PAGE_CACHE_TYPE_RENDER, 5);
        linkedHashMap.put(PAGE_CACHE_TYPE_TEXT, 200);
        f45023b = linkedHashMap;
    }

    /* renamed from: c */
    public static /* synthetic */ void m34765c(NeoPdfPageCache neoPdfPageCache, int i, String str, Function0 function0, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = "";
        }
        neoPdfPageCache.m34767b(i, str, function0);
    }

    /* renamed from: a */
    public final boolean m34766a(Set<Integer> cacheSet, int pageIndex, String type) {
        cacheSet.add(Integer.valueOf(pageIndex));
        if (cacheSet.size() <= ((Number) AnyKt.getOrElse(f45023b.get(type), new Function0<Integer>() { // from class: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfPageCache$checkPageCacheExceeded$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return 500;
            }
        })).intValue()) {
            return false;
        }
        cacheSet.clear();
        return true;
    }

    /* renamed from: b */
    public final void m34767b(int pageIndex, String type, Function0<Unit> overFun) {
        if (m34766a(CollectionKt.ensureSet(this.cacheSetMap, type), pageIndex, type)) {
            overFun.invoke();
        }
    }

    public final void beforeGetPageText(int pageIndex, @NotNull Function0<Unit> overFun) {
        Intrinsics.checkNotNullParameter(overFun, "overFun");
        m34767b(pageIndex, PAGE_CACHE_TYPE_TEXT, overFun);
    }

    public final void beforeRenderPage(int pageIndex, @NotNull Function0<Unit> overFun) {
        Intrinsics.checkNotNullParameter(overFun, "overFun");
        m34767b(pageIndex, PAGE_CACHE_TYPE_RENDER, overFun);
    }
}
