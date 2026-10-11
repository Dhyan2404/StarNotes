package com.onyx.android.sdk.geometry.data;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt___MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0014J \u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0002H\u0002J.\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020!2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0#J\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020!2\u0006\u0010$\u001a\u00020\u0002J\u0010\u0010%\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u0006\u0010(\u001a\u00020\u001dJ\u0012\u0010)\u001a\u00020\u001b2\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010*\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004J\u001c\u0010+\u001a\u00020\n2\u0014\b\u0002\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0#J\u0014\u0010,\u001a\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00020!J\u000e\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0002J\u0018\u00101\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00102\u001a\u00020\u0002H\u0014J\u0012\u00103\u001a\u00020\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SliceLruCache;", "Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "sizeConfig", "Lcom/onyx/android/sdk/geometry/data/SizeConfig;", "(Lcom/onyx/android/sdk/geometry/data/SizeConfig;)V", "getSizeConfig", "()Lcom/onyx/android/sdk/geometry/data/SizeConfig;", "setSizeConfig", "afterPut", "", "beforePut", "clearBitmap", "t", "cloneBitmapReference", BaiduYunConstant.CREATE, "width", "", "height", AbstractLogger.CONFIG, "Landroid/graphics/Bitmap$Config;", "debugOnEntryRemoved", "removed", "debugSliceInfo", "sliceInfo", "entryRemoved", "evicted", "", "key", "", "oldValue", "newValue", "findAllScaleSliceList", "", "predicate", "Lkotlin/Function1;", "newInfo", "findDisplayCache", "getBitmap", "Landroid/graphics/Bitmap;", "getSimpleDebugString", "isValid", "resize", "safeClearCacheIf", "saveBitmapListToCache", "Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;", "sliceList", "saveBitmapToCache", "slice", "sizeOf", "value", "updateLruOrder", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSliceLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SliceLruCache.kt\ncom/onyx/android/sdk/geometry/data/SliceLruCache\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n1313#2,2:247\n215#3,2:249\n215#3,2:251\n1855#4,2:253\n1045#4:255\n288#4,2:256\n533#4,6:258\n766#4:264\n857#4,2:265\n766#4:267\n857#4,2:268\n*S KotlinDebug\n*F\n+ 1 SliceLruCache.kt\ncom/onyx/android/sdk/geometry/data/SliceLruCache\n*L\n76#1:247,2\n101#1:249,2\n113#1:251,2\n166#1:253,2\n179#1:255\n180#1:256,2\n181#1:258,6\n199#1:264\n199#1:265,2\n200#1:267\n200#1:268,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SliceLruCache extends BaseBitmapReferenceLruCache<SliceInfo> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static boolean DEBUG_LOG;

    @NotNull
    private SizeConfig sizeConfig;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SliceLruCache$Companion;", "", "()V", "DEBUG_LOG", "", "getDEBUG_LOG", Constants.BOOLEAN_VALUE_SIG, "setDEBUG_LOG", "(Z)V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getDEBUG_LOG() {
            return SliceLruCache.DEBUG_LOG;
        }

        public final void setDEBUG_LOG(boolean z) {
            SliceLruCache.DEBUG_LOG = z;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SliceLruCache() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final void afterPut() {
        if (DEBUG_LOG) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "dump cache start, afterPut", new Object[0]);
            Map<String, SliceInfo> snapshot = snapshot();
            Intrinsics.checkNotNull(snapshot);
            Iterator<Map.Entry<String, SliceInfo>> it2 = snapshot.entrySet().iterator();
            while (it2.hasNext()) {
                SliceInfo value = it2.next().getValue();
                Intrinsics.checkNotNull(value);
                debugSliceInfo(value);
            }
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "dump cache finish\n " + getSimpleDebugString(), new Object[0]);
        }
    }

    private final void beforePut() {
        if (DEBUG_LOG) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "dump cache start, beforePut", new Object[0]);
            Map<String, SliceInfo> snapshot = snapshot();
            Intrinsics.checkNotNull(snapshot);
            Iterator<Map.Entry<String, SliceInfo>> it2 = snapshot.entrySet().iterator();
            while (it2.hasNext()) {
                SliceInfo value = it2.next().getValue();
                Intrinsics.checkNotNull(value);
                debugSliceInfo(value);
            }
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "dump cache finish\n " + getSimpleDebugString(), new Object[0]);
        }
    }

    private final void debugOnEntryRemoved(SliceInfo removed) {
        if (DEBUG_LOG && removed != null) {
            Debug debug = Debug.INSTANCE;
            debug.m32038d(AnyKt.toSimpleNameString(this), "debugOnEntryRemoved start, removed.key = " + removed.cacheKey(), new Object[0]);
            debugSliceInfo(removed);
            debug.m32038d(AnyKt.toSimpleNameString(this), "debugOnEntryRemoved finish, removed.key = " + removed.cacheKey(), new Object[0]);
        }
    }

    private final void debugSliceInfo(SliceInfo sliceInfo) {
        if (DEBUG_LOG) {
            int safelyByteCount = BitmapKt.safelyByteCount(sliceInfo.getSafeBitmap().getBitmap());
            RectF boundingRectF = BitmapKt.boundingRectF(sliceInfo.getSafeBitmap().getBitmap());
            float f = safelyByteCount * 1.0f;
            float f2 = f / 1048576;
            float bytePerViewport = f / this.sizeConfig.getBytePerViewport();
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "bitmapByteCount = " + safelyByteCount + ", bitmapMB = " + f2 + "MB, bitmapViewportCount = " + bytePerViewport + "\n, isHighQuality = " + sliceInfo.getIsHighQuality() + "\n, state = " + sliceInfo.getState() + "\n, type = " + sliceInfo.getType() + "\n, boundingRectF = " + boundingRectF + "\n, key = " + sliceInfo.cacheKey(), new Object[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void safeClearCacheIf$default(SliceLruCache sliceLruCache, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.geometry.data.SliceLruCache$safeClearCacheIf$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull SliceInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.TRUE;
                }
            };
        }
        sliceLruCache.safeClearCacheIf(function1);
    }

    private final void updateLruOrder(SliceInfo sliceInfo) {
        if (sliceInfo != null) {
            get(sliceInfo.cacheKey());
        }
    }

    @NotNull
    public final List<SliceInfo> findAllScaleSliceList(@NotNull final SliceInfo newInfo) {
        Intrinsics.checkNotNullParameter(newInfo, "newInfo");
        return findAllScaleSliceList(new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.geometry.data.SliceLruCache$findAllScaleSliceList$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isSamePage(SliceInfo.this));
            }
        });
    }

    @Nullable
    public final SliceInfo findDisplayCache(@NotNull SliceInfo newInfo) {
        SliceInfo sliceInfo;
        Object obj;
        Intrinsics.checkNotNullParameter(newInfo, "newInfo");
        List<SliceInfo> findAllScaleSliceList = findAllScaleSliceList(newInfo);
        List<SliceInfo> list = findAllScaleSliceList;
        CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.onyx.android.sdk.geometry.data.SliceLruCache$findDisplayCache$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((SliceInfo) t).getBoxInfo().getActualScale()), Float.valueOf(((SliceInfo) t2).getBoxInfo().getActualScale()));
                return compareValues;
            }
        });
        Iterator<T> it2 = list.iterator();
        while (true) {
            sliceInfo = null;
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((SliceInfo) obj).getBoxInfo().getActualScale() >= newInfo.getBoxInfo().getActualScale()) {
                break;
            }
        }
        SliceInfo sliceInfo2 = (SliceInfo) obj;
        if (sliceInfo2 == null) {
            ListIterator<SliceInfo> listIterator = findAllScaleSliceList.listIterator(findAllScaleSliceList.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    break;
                }
                SliceInfo previous = listIterator.previous();
                if (previous.getBoxInfo().getActualScale() < newInfo.getBoxInfo().getActualScale()) {
                    sliceInfo = previous;
                    break;
                }
            }
            sliceInfo2 = sliceInfo;
        }
        updateLruOrder(sliceInfo2);
        return sliceInfo2;
    }

    @NotNull
    public final String getSimpleDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append("maxViewportCount = " + ((maxSize() * 1.0f) / this.sizeConfig.getBytePerViewport()) + ", currentViewportCount = " + ((size() * 1.0f) / this.sizeConfig.getBytePerViewport()) + "\n, viewportSize = " + this.sizeConfig.getViewportSize() + "\n, maxSize = " + (maxSize() / 1048576) + " MB\n, currentSize = " + (size() / 1048576) + " MB\n, currentCount = " + snapshot().size());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final SizeConfig getSizeConfig() {
        return this.sizeConfig;
    }

    public final void resize(@NotNull SizeConfig sizeConfig) {
        Intrinsics.checkNotNullParameter(sizeConfig, "sizeConfig");
        this.sizeConfig = sizeConfig;
        resize(sizeConfig.bitmapCacheMaxByteCount());
    }

    public final void safeClearCacheIf(@NotNull final Function1<? super SliceInfo, Boolean> predicate) {
        Sequence asSequence;
        Sequence filter;
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Map<String, SliceInfo> snapshot = snapshot();
        Intrinsics.checkNotNullExpressionValue(snapshot, "snapshot(...)");
        asSequence = MapsKt___MapsKt.asSequence(snapshot);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Map.Entry<? extends String, ? extends SliceInfo>, Boolean>() { // from class: com.onyx.android.sdk.geometry.data.SliceLruCache$safeClearCacheIf$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull Map.Entry<String, SliceInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Function1<SliceInfo, Boolean> function1 = predicate;
                SliceInfo value = it2.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                return function1.invoke(value);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Map.Entry<? extends String, ? extends SliceInfo> entry) {
                return invoke2((Map.Entry<String, SliceInfo>) entry);
            }
        });
        Iterator it2 = filter.iterator();
        while (it2.hasNext()) {
            remove(((Map.Entry) it2.next()).getKey());
        }
    }

    @NotNull
    public final SaveBitmapListResult saveBitmapListToCache(@NotNull List<SliceInfo> sliceList) {
        Intrinsics.checkNotNullParameter(sliceList, "sliceList");
        SaveBitmapListResult saveBitmapListResult = new SaveBitmapListResult(null, null, 3, null);
        if (sliceList.isEmpty()) {
            return saveBitmapListResult;
        }
        for (SliceInfo sliceInfo : sliceList) {
            if (saveBitmapToCache(sliceInfo)) {
                saveBitmapListResult.getSuccessList().add(sliceInfo);
            } else {
                saveBitmapListResult.getFailList().add(sliceInfo);
            }
        }
        return saveBitmapListResult;
    }

    public final boolean saveBitmapToCache(@NotNull SliceInfo slice) {
        Intrinsics.checkNotNullParameter(slice, "slice");
        beforePut();
        if (!SliceKt.isValid(slice)) {
            debugSliceInfo(slice);
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "slice not valid, save fail!", new Object[0]);
            return false;
        }
        slice.updateState(SliceInfo.State.IN_CACHE);
        put(slice.cacheKey(), slice.copy());
        afterPut();
        return true;
    }

    public final void setSizeConfig(@NotNull SizeConfig sizeConfig) {
        Intrinsics.checkNotNullParameter(sizeConfig, "<set-?>");
        this.sizeConfig = sizeConfig;
    }

    public /* synthetic */ SliceLruCache(SizeConfig sizeConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new SizeConfig(null, 0, 3, null) : sizeConfig);
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    public void clearBitmap(@NotNull SliceInfo t) {
        Intrinsics.checkNotNullParameter(t, "t");
        BitmapKt.clearBitmap(t.getSafeBitmap().getBitmap());
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    @NotNull
    public SliceInfo cloneBitmapReference(@NotNull SliceInfo t) {
        Intrinsics.checkNotNullParameter(t, "t");
        SliceInfo sliceInfo = new SliceInfo();
        sliceInfo.setSafeBitmap(t.getSafeBitmap().copyBitmap());
        sliceInfo.updateState(SliceInfo.State.NO_CACHE);
        return sliceInfo;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    @NotNull
    public SliceInfo create(int width, int height, @NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        SliceInfo sliceInfo = new SliceInfo();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, config);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        BitmapKt.clearBitmap(createBitmap);
        sliceInfo.setSafeBitmap(SafeBitmap.INSTANCE.create(createBitmap));
        sliceInfo.updateState(SliceInfo.State.NO_CACHE);
        return sliceInfo;
    }

    @Override // android.util.LruCache
    public void entryRemoved(boolean evicted, @Nullable String key, @Nullable SliceInfo oldValue, @Nullable SliceInfo newValue) {
        SafeBitmap safeBitmap;
        super.entryRemoved(evicted, (boolean) key, oldValue, newValue);
        debugOnEntryRemoved(oldValue);
        if (oldValue != null) {
            oldValue.updateState(SliceInfo.State.NO_CACHE);
        }
        if (oldValue == null || (safeBitmap = oldValue.getSafeBitmap()) == null) {
            return;
        }
        safeBitmap.removeBitmap();
    }

    @NotNull
    public final List<SliceInfo> findAllScaleSliceList(@NotNull Function1<? super SliceInfo, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Collection<SliceInfo> values = snapshot().values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            if (((SliceInfo) obj).isCanDisplay()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            SliceInfo sliceInfo = (SliceInfo) obj2;
            Intrinsics.checkNotNull(sliceInfo);
            if (predicate.invoke(sliceInfo).booleanValue()) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    @Nullable
    public Bitmap getBitmap(@NotNull SliceInfo t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return t.getSafeBitmap().getBitmap();
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    public boolean isValid(@Nullable SliceInfo t) {
        SafeBitmap safeBitmap;
        return BitmapKt.isValid((t == null || (safeBitmap = t.getSafeBitmap()) == null) ? null : safeBitmap.getBitmap());
    }

    @Override // android.util.LruCache
    public int sizeOf(@NotNull String key, @NotNull SliceInfo value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return BitmapKt.safelyByteCount(value.getSafeBitmap().getBitmap());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliceLruCache(@NotNull SizeConfig sizeConfig) {
        super(sizeConfig.bitmapCacheMaxByteCount());
        Intrinsics.checkNotNullParameter(sizeConfig, "sizeConfig");
        this.sizeConfig = sizeConfig;
    }
}
