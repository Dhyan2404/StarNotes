package com.onyx.android.sdk.universal.editor.cache;

import android.graphics.RectF;
import androidx.transition.Transition;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004R\"\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;", "", "", "isHighQuality", "Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;", "getProvider", "getPageNormalProvider", "getPageHighQualityProvider", "", "", "a", "Ljava/util/Map;", "providerMap", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "SliceRectProvider", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SliceRectProviderManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String PAGE_HIGH_QUALITY = "page_high_quality";

    @NotNull
    public static final String PAGE_NORMAL = "page_normal";

    /* renamed from: b */
    @NotNull
    public static final Lazy<SliceRectProviderManager> f51311b;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<String, SliceRectProvider> providerMap;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;", "", "()V", "PAGE_HIGH_QUALITY", "", "PAGE_NORMAL", Transition.f10626J0, "Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;", "getInstance", "()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;", "instance$delegate", "Lkotlin/Lazy;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SliceRectProviderManager getInstance() {
            return (SliceRectProviderManager) SliceRectProviderManager.f51311b.getValue();
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;", "", "collectVisibleContentSliceRect", "Landroid/graphics/RectF;", "child", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "viewport", "collectVisibleNoteSliceRect", "virtualPage", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface SliceRectProvider {
        @NotNull
        RectF collectVisibleContentSliceRect(@NotNull BoxInfo child, @NotNull RectF viewport);

        @NotNull
        RectF collectVisibleNoteSliceRect(@NotNull BoxInfo virtualPage, @NotNull RectF viewport);
    }

    static {
        Lazy<SliceRectProviderManager> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SliceRectProviderManager>() { // from class: com.onyx.android.sdk.universal.editor.cache.SliceRectProviderManager$Companion$instance$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SliceRectProviderManager invoke() {
                return new SliceRectProviderManager();
            }
        });
        f51311b = lazy;
    }

    public SliceRectProviderManager() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.providerMap = linkedHashMap;
        linkedHashMap.put(PAGE_NORMAL, new PageNormalSliceRectProvider());
        this.providerMap.put(PAGE_HIGH_QUALITY, new PageHighQualitySliceRectProvider());
    }

    @NotNull
    public final SliceRectProvider getPageHighQualityProvider() {
        SliceRectProvider sliceRectProvider = this.providerMap.get(PAGE_HIGH_QUALITY);
        Intrinsics.checkNotNull(sliceRectProvider);
        return sliceRectProvider;
    }

    @NotNull
    public final SliceRectProvider getPageNormalProvider() {
        SliceRectProvider sliceRectProvider = this.providerMap.get(PAGE_NORMAL);
        Intrinsics.checkNotNull(sliceRectProvider);
        return sliceRectProvider;
    }

    @NotNull
    public final SliceRectProvider getProvider(boolean isHighQuality) {
        return isHighQuality ? getPageHighQualityProvider() : getPageNormalProvider();
    }
}
