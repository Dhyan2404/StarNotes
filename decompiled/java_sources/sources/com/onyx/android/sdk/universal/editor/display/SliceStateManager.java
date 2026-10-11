package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.SaveBitmapListResult;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.data.SliceKt;
import com.onyx.android.sdk.geometry.data.SliceLruCache;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.UpdatePageRenderNodeSliceResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.MapsKt___MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010,\u001a\u00020\u0011¢\u0006\u0004\b<\u0010=J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u0012\u0010\f\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0014\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\rJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0011J\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u001a\u001a\u00020\u0004J*\u0010\u001e\u001a\u00020\u00042\"\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00060\u001bj\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0006`\u001cJ\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0011J\u0012\u0010!\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0002J\u0012\u0010\"\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0002J\b\u0010$\u001a\u00020#H\u0002J\b\u0010%\u001a\u00020#H\u0002J\u001e\u0010(\u001a\u00020\u00042\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00180&H\u0002R\u0017\u0010,\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b$\u0010)\u001a\u0004\b*\u0010+R#\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0-8\u0006¢\u0006\f\n\u0004\b%\u0010.\u001a\u0004\b/\u00100R\u0017\u00106\u001a\u0002028\u0006¢\u0006\f\n\u0004\b!\u00103\u001a\u0004\b4\u00105R\u0017\u0010;\u001a\u0002078\u0006¢\u0006\f\n\u0004\b\"\u00108\u001a\u0004\b9\u0010:¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;", "", "Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "afterRefreshPage", "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", "pageNodeInfo", "moveDisplayToCache", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "newInfo", "ensureSliceCacheInfo", "findDisplayCache", "", "sliceList", "Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;", "saveBitmapListToCache", "", "getSimpleDebugString", "safeClearAllNoteSliceCache", CouchFieldKey.KEY_TOC_PAGE_ID, "safeClearPageNoteSliceCache", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.CLEAR_ATTRIBUTES, "sliceInfo", "", "removeDisplayBitmap", "removeNotDisplayCache", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "pageRenderNodeMap", "logBitmapDisplayCount", NotificationCompat.CATEGORY_MESSAGE, "log", "c", "d", "", "a", "b", "Lkotlin/Function1;", "predicate", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTag", "()Ljava/lang/String;", "tag", "", "Ljava/util/Map;", "getDisplayCache", "()Ljava/util/Map;", "displayCache", "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", "getRenderRequestManager", "()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", "renderRequestManager", "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;", "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;", "getLruCache", "()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;", "lruCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSliceStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SliceStateManager.kt\ncom/onyx/android/sdk/universal/editor/display/SliceStateManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,236:1\n1603#2,9:237\n1855#2:246\n1856#2:248\n1612#2:249\n1#3:247\n1#3:250\n1313#4,2:251\n*S KotlinDebug\n*F\n+ 1 SliceStateManager.kt\ncom/onyx/android/sdk/universal/editor/display/SliceStateManager\n*L\n174#1:237,9\n174#1:246\n174#1:248\n174#1:249\n174#1:247\n198#1:251,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SliceStateManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String tag;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SliceInfo> displayCache;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final RenderRequestManager renderRequestManager;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final SliceLruCache lruCache;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SliceInfo.State.values().length];
            try {
                iArr[SliceInfo.State.IN_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SliceInfo.State.DISPLAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SliceStateManager(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.tag = tag;
        this.displayCache = new LinkedHashMap();
        this.renderRequestManager = new RenderRequestManager();
        this.lruCache = new SliceLruCache(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static /* synthetic */ void m40816f(SliceStateManager sliceStateManager, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.SliceStateManager$safeClearDisplayIf$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull SliceInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.TRUE;
                }
            };
        }
        sliceStateManager.m40821e(function1);
    }

    /* renamed from: a */
    public final int m40817a() {
        List distinct;
        Collection<SliceInfo> values = this.displayCache.values();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            Bitmap bitmap = ((SliceInfo) it2.next()).getSafeBitmap().getBitmap();
            if (bitmap != null) {
                arrayList.add(bitmap);
            }
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        Iterator it3 = distinct.iterator();
        int i = 0;
        while (it3.hasNext()) {
            i += BitmapKt.safelyByteCount((Bitmap) it3.next());
        }
        return i;
    }

    public final void afterRefreshPage(@NotNull UpdatePageRenderNodeSliceResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.getSuccess()) {
            boolean m40819c = m40819c(result.getNewContentNote());
            boolean m40819c2 = m40819c(result.getNewContent());
            StringBuilder sb = new StringBuilder();
            sb.append("afterRefreshPage, id = " + result.getPageId() + '\n');
            sb.append(", moveCacheToDisplay.contentNote = " + m40819c + ", " + SliceKt.getDebugString(result.getNewContentNote()) + '\n');
            sb.append(", moveCacheToDisplay.content = " + m40819c2 + ", " + SliceKt.getDebugString(result.getNewContent()) + '\n');
            if (result.isContentCacheKeyChanged()) {
                sb.append(", moveDisplayToCache.content = " + m40820d(result.getOldContent()));
            } else {
                sb.append(", contentCacheKey not changed, do not moveDisplayToCache");
            }
            sb.append(", " + SliceKt.getDebugString(result.getOldContent()) + '\n');
            if (result.isContentNoteCacheKeyChanged()) {
                sb.append(", moveDisplayToCache.contentNote = " + m40820d(result.getOldContentNote()));
            } else {
                sb.append(", contentNoteCacheKey not changed, do not moveDisplayToCache");
            }
            sb.append(", " + SliceKt.getDebugString(result.getOldContentNote()) + '\n');
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            log(sb2);
        }
    }

    /* renamed from: b */
    public final int m40818b() {
        return this.displayCache.size();
    }

    /* renamed from: c */
    public final boolean m40819c(SliceInfo sliceInfo) {
        if (sliceInfo == null) {
            return false;
        }
        String cacheKey = sliceInfo.cacheKey();
        int i = WhenMappings.$EnumSwitchMapping$0[sliceInfo.getState().ordinal()];
        if (i == 1) {
            sliceInfo.updateState(SliceInfo.State.DISPLAY);
            this.displayCache.put(cacheKey, sliceInfo.copy());
            this.lruCache.remove(cacheKey);
            log("moveCacheToDisplay, IN_CACHE -> DISPLAY, " + AnyKt.toSimpleNameString(sliceInfo));
        } else {
            if (i != 2) {
                return false;
            }
            log("moveCacheToDisplay, DISPLAY, do nothing");
        }
        return true;
    }

    public final void clear() {
        this.lruCache.clear();
        this.displayCache.clear();
        this.renderRequestManager.cancelAllRequest();
    }

    /* renamed from: d */
    public final boolean m40820d(SliceInfo sliceInfo) {
        if (sliceInfo == null) {
            return false;
        }
        String cacheKey = sliceInfo.cacheKey();
        int i = WhenMappings.$EnumSwitchMapping$0[sliceInfo.getState().ordinal()];
        if (i == 1) {
            log("moveDisplayToCache, inCache, do nothing");
        } else {
            if (i != 2) {
                return false;
            }
            SliceInfo remove = this.displayCache.remove(cacheKey);
            boolean saveBitmapToCache = remove != null ? this.lruCache.saveBitmapToCache(sliceInfo) : false;
            StringBuilder sb = new StringBuilder();
            sb.append("moveDisplayToCache, removeFromDisplay = ");
            sb.append(remove != null);
            sb.append(", saveToCache = ");
            sb.append(saveBitmapToCache);
            log(sb.toString());
        }
        return true;
    }

    /* renamed from: e */
    public final void m40821e(final Function1<? super SliceInfo, Boolean> predicate) {
        Map map;
        Sequence asSequence;
        Sequence filter;
        map = MapsKt__MapsKt.toMap(this.displayCache);
        asSequence = MapsKt___MapsKt.asSequence(map);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Map.Entry<? extends String, ? extends SliceInfo>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.SliceStateManager$safeClearDisplayIf$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull Map.Entry<String, SliceInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return predicate.invoke(it2.getValue());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Map.Entry<? extends String, ? extends SliceInfo> entry) {
                return invoke2((Map.Entry<String, SliceInfo>) entry);
            }
        });
        Iterator it2 = filter.iterator();
        while (it2.hasNext()) {
            this.displayCache.remove(((Map.Entry) it2.next()).getKey());
        }
    }

    @NotNull
    public final SliceInfo ensureSliceCacheInfo(@NotNull SliceInfo newInfo) {
        Intrinsics.checkNotNullParameter(newInfo, "newInfo");
        String cacheKey = newInfo.cacheKey();
        SliceInfo sliceInfo = this.displayCache.get(cacheKey);
        if (sliceInfo != null) {
            SliceInfo copy = sliceInfo.copy();
            copy.copyDisplayData(newInfo);
            return copy;
        }
        SliceInfo renderingSlice = this.renderRequestManager.getRenderingSlice(cacheKey);
        if (renderingSlice != null) {
            renderingSlice.copyDisplayData(newInfo);
            return renderingSlice;
        }
        SliceInfo sliceInfo2 = this.lruCache.get(cacheKey);
        if (sliceInfo2 == null) {
            return newInfo;
        }
        SliceInfo copy2 = sliceInfo2.copy();
        copy2.copyDisplayData(newInfo);
        return copy2;
    }

    @Nullable
    public final SliceInfo findDisplayCache(@Nullable SliceInfo newInfo) {
        Object obj = null;
        if (newInfo == null) {
            return null;
        }
        Iterator<T> it2 = this.displayCache.values().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((SliceInfo) next).isSamePage(newInfo)) {
                obj = next;
                break;
            }
        }
        SliceInfo sliceInfo = (SliceInfo) obj;
        if (sliceInfo == null) {
            return this.lruCache.findDisplayCache(newInfo);
        }
        sliceInfo.copyDisplayData(newInfo);
        return sliceInfo;
    }

    @NotNull
    public final Map<String, SliceInfo> getDisplayCache() {
        return this.displayCache;
    }

    @NotNull
    public final SliceLruCache getLruCache() {
        return this.lruCache;
    }

    @NotNull
    public final RenderRequestManager getRenderRequestManager() {
        return this.renderRequestManager;
    }

    @NotNull
    public final String getSimpleDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append("displayCacheCount = " + this.displayCache.size() + '\n');
        sb.append(", displayCacheSize = " + (m40817a() / 1048576) + " MB\n");
        sb.append(", renderRequestManager: " + this.renderRequestManager.getDebugString() + '\n');
        sb.append(", cacheInfo = " + this.lruCache.getSimpleDebugString() + '\n');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String getTag() {
        return this.tag;
    }

    public final void log(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    public final void logBitmapDisplayCount(@NotNull LinkedHashMap<String, PageRenderNodeInfo> pageRenderNodeMap) {
        Intrinsics.checkNotNullParameter(pageRenderNodeMap, "pageRenderNodeMap");
    }

    public final void moveDisplayToCache(@NotNull PageRenderNodeInfo pageNodeInfo) {
        Intrinsics.checkNotNullParameter(pageNodeInfo, "pageNodeInfo");
        boolean m40820d = m40820d(pageNodeInfo.getSliceInfo());
        boolean m40820d2 = m40820d(pageNodeInfo.getContentSliceInfo());
        StringBuilder sb = new StringBuilder();
        sb.append("id = " + pageNodeInfo.getVirtualPageBoxInfo().getId() + '\n');
        sb.append(", moveDisplayToCache.contentNote = " + m40820d + ", " + SliceKt.getDebugString(pageNodeInfo.getSliceInfo()) + '\n');
        sb.append(", moveDisplayToCache.content = " + m40820d2 + ", " + SliceKt.getDebugString(pageNodeInfo.getContentSliceInfo()) + '\n');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        log(sb2);
    }

    public final boolean removeDisplayBitmap(@Nullable SliceInfo sliceInfo) {
        return (sliceInfo == null || this.displayCache.remove(sliceInfo.cacheKey()) == null) ? false : true;
    }

    public final void removeNotDisplayCache() {
        this.lruCache.clear();
    }

    public final void safeClearAllNoteSliceCache() {
        this.lruCache.safeClearCacheIf(new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.SliceStateManager$safeClearAllNoteSliceCache$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isNote());
            }
        });
        m40821e(new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.SliceStateManager$safeClearAllNoteSliceCache$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isNote());
            }
        });
        this.renderRequestManager.cancelAllNoteRequest();
    }

    public final void safeClearPageNoteSliceCache(@NotNull final String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.lruCache.safeClearCacheIf(new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.SliceStateManager$safeClearPageNoteSliceCache$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isSameNotePageId(pageId));
            }
        });
        m40821e(new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.SliceStateManager$safeClearPageNoteSliceCache$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isSameNotePageId(pageId));
            }
        });
        this.renderRequestManager.cancelNoteRequest(pageId);
    }

    @NotNull
    public final SaveBitmapListResult saveBitmapListToCache(@NotNull List<SliceInfo> sliceList) {
        Intrinsics.checkNotNullParameter(sliceList, "sliceList");
        return this.lruCache.saveBitmapListToCache(sliceList);
    }
}
