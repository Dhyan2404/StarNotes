package com.onyx.android.sdk.note.common.utils;

import android.graphics.Rect;
import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.replicator.note.data.canvas.CanvasExpandType;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.NotePageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b@\u0010AJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u001a\u0010\r\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0018\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\u0014\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0016\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u001c\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016J\u0016\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J$\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00162\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016J\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\"\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010$\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0007J\u001e\u0010$\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0007J\u0018\u0010&\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u001e\u0010)\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004J\u001e\u0010+\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u000fJ\u001e\u0010-\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u000fJ\u0010\u0010.\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010/\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00100\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u00101\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u00102\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00103\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u00105\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u000bJ\u0018\u00106\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u00107\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004J\u0010\u00108\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010:\u001a\u0002092\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010;\u001a\u000209J\u0010\u0010=\u001a\u00020<2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010:\u001a\u0002092\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010>\u001a\u00020\u000bJ\u0010\u0010?\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;", "", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "", "a", FirebaseAnalytics.Param.INDEX, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "getLayerInfo", "Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;", "notePageInfo", "", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageInfo", "getLayerCount", "", "isLayerVisibleByIndex", "layerId", "isLayerVisibleById", "isLayerLockedByIndex", "pageHasLockedLayer", "isCurrentLayerLocked", "", "layerIds", "checkLayersLocked", "getLayerInfoById", "getLayerIdByIndex", "", "removeLayerByIndex", "layerIdList", "removeLayerById", "getLayerIndexById", "getLayerIndexListByIds", "getMaxLayerId", "getLastLayer", "layerInfo", "insertLayer", "insertIndex", "hasLayer", ApiBroadCastReceiver.ARGS_FROM_INDEX, ApiBroadCastReceiver.ARGS_TO_INDEX, "moveLayer", "visible", "setLayerVisible", DevicePushAction.LOCK_DEVICE, "setLayerLock", "getLastLayerInfo", "isCurrentLayerVisible", "getCurrentLayerIndex", "getCurrentLayerId", "getCurrentLayerName", "getLayerName", "name", "isLayerNameDuplicated", "isFirstLayer", "toPdfLayerId", "toNoteLayerId", "Landroid/graphics/Rect;", "getPageRect", "getMaxExpandPageRect", "Landroid/graphics/RectF;", "getPageRectF", CouchFieldKey.KEY_PAGE_ID, "isAllLayerHidden", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePageInfoUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageInfoUtils.kt\ncom/onyx/android/sdk/note/common/utils/NotePageInfoUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePageInfoUtils {

    @NotNull
    public static final NotePageInfoUtils INSTANCE = new NotePageInfoUtils();

    /* renamed from: a */
    public final int m34029a(PageInfo pageInfo) {
        LayerInfo lastLayer = getLastLayer(pageInfo);
        Intrinsics.checkNotNull(lastLayer);
        return lastLayer.getId();
    }

    public final boolean checkLayersLocked(@NotNull PageInfo pageInfo, @NotNull List<Integer> layerIds) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        if (layerIds.isEmpty() && getLayerCount(pageInfo) == 1) {
            return isLayerLockedByIndex(pageInfo, 0);
        }
        Iterator<Integer> it2 = layerIds.iterator();
        while (it2.hasNext()) {
            LayerInfo layerInfoById = getLayerInfoById(pageInfo, it2.next().intValue());
            if (layerInfoById != null && !layerInfoById.getLock()) {
                return false;
            }
        }
        return true;
    }

    public final int getCurrentLayerId(@Nullable PageInfo pageInfo) {
        if (pageInfo == null) {
            return 0;
        }
        return pageInfo.getCurrentLayerId();
    }

    public final int getCurrentLayerIndex(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return getLayerIndexById(pageInfo, pageInfo.getCurrentLayerId());
    }

    @NotNull
    public final String getCurrentLayerName(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return getLayerName(pageInfo.getCurrentLayerId());
    }

    @Nullable
    public final LayerInfo getLastLayer(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return (LayerInfo) CollectionKt.getLast(pageInfo.getLayerList());
    }

    @Nullable
    public final LayerInfo getLastLayerInfo(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return (LayerInfo) CollectionKt.getLast(pageInfo.getLayerList());
    }

    public final int getLayerCount(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return CollectionKt.getSize(pageInfo.getLayerList());
    }

    public final int getLayerIdByIndex(@NotNull PageInfo pageInfo, int index) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return pageInfo.getLayerList().get(index).getId();
    }

    public final int getLayerIndexById(@NotNull PageInfo pageInfo, int layerId) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        int layerCount = getLayerCount(pageInfo);
        for (int i = 0; i < layerCount; i++) {
            if (getLayerInfo(pageInfo, i).getId() == layerId) {
                return i;
            }
        }
        return -1;
    }

    @Nullable
    public final List<Integer> getLayerIndexListByIds(@NotNull PageInfo pageInfo, @NotNull List<Integer> layerIds) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it2 = layerIds.iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            int layerCount = getLayerCount(pageInfo);
            for (int i = 0; i < layerCount; i++) {
                if (getLayerInfo(pageInfo, i).getId() == intValue) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
        }
        return arrayList;
    }

    @NotNull
    public final LayerInfo getLayerInfo(@NotNull PageInfo pageInfo, int index) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return pageInfo.getLayerList().get(index);
    }

    @Nullable
    public final LayerInfo getLayerInfoById(@NotNull PageInfo pageInfo, int layerId) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        int layerIndexById = getLayerIndexById(pageInfo, layerId);
        if (layerIndexById < 0 || layerIndexById >= getLayerCount(pageInfo)) {
            return null;
        }
        return pageInfo.getLayerList().get(layerIndexById);
    }

    @NotNull
    public final String getLayerName(int layerId) {
        return String.valueOf(layerId + 1);
    }

    @NotNull
    public final Rect getMaxExpandPageRect() {
        Rect pageRect = getPageRect(null);
        int maxExpandMultiple = CanvasExpandType.INSTANCE.getMaxExpandMultiple();
        pageRect.bottom *= maxExpandMultiple;
        pageRect.right *= maxExpandMultiple;
        return pageRect;
    }

    public final int getMaxLayerId(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        int i = 0;
        for (LayerInfo layerInfo : pageInfo.getLayerList()) {
            if (layerInfo.getId() > i) {
                i = layerInfo.getId();
            }
        }
        return i;
    }

    @Nullable
    public final PageInfo getPageInfo(@Nullable NotePageInfo notePageInfo, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        if (notePageInfo != null) {
            return notePageInfo.getPageInfo(pageId);
        }
        return null;
    }

    @NotNull
    public final Rect getPageRect(@Nullable PageInfo pageInfo) {
        int width = pageInfo != null ? pageInfo.getWidth() : 0;
        int height = pageInfo != null ? pageInfo.getHeight() : 0;
        if (width <= 0) {
            width = RenderMeasure.INSTANCE.getDefaultPageWidth();
        }
        if (height <= 0) {
            height = RenderMeasure.INSTANCE.getDefaultPageHeight();
        }
        return new Rect(0, 0, width, height);
    }

    @NotNull
    public final RectF getPageRectF(@Nullable PageInfo pageInfo) {
        return new RectF(getPageRect(pageInfo));
    }

    public final boolean hasLayer(@Nullable PageInfo pageInfo, int layerId) {
        if (pageInfo == null) {
            return true;
        }
        Iterator<LayerInfo> it2 = pageInfo.getLayerList().iterator();
        while (it2.hasNext()) {
            if (it2.next().getId() == layerId) {
                return true;
            }
        }
        return false;
    }

    public final void insertLayer(@NotNull PageInfo pageInfo, @NotNull LayerInfo layerInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        insertLayer(pageInfo, getLayerCount(pageInfo), layerInfo);
    }

    public final boolean isAllLayerHidden(@Nullable PageInfo pageInfo) {
        if (pageInfo == null) {
            return false;
        }
        Iterator<LayerInfo> it2 = pageInfo.getLayerList().iterator();
        while (it2.hasNext()) {
            if (it2.next().getShow()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isCurrentLayerLocked(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        LayerInfo layerInfoById = getLayerInfoById(pageInfo, pageInfo.getCurrentLayerId());
        if (layerInfoById == null) {
            return false;
        }
        return layerInfoById.getLock();
    }

    public final boolean isCurrentLayerVisible(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return isLayerVisibleById(pageInfo, pageInfo.getCurrentLayerId());
    }

    public final boolean isFirstLayer(@Nullable PageInfo pageInfo, int layerId) {
        Object firstOrNull;
        if (pageInfo == null) {
            return true;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) pageInfo.getLayerList());
        LayerInfo layerInfo = (LayerInfo) firstOrNull;
        return layerInfo != null && layerInfo.getId() == layerId;
    }

    public final boolean isLayerLockedByIndex(@NotNull PageInfo pageInfo, int index) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        if (index < 0 || index >= getLayerCount(pageInfo)) {
            return false;
        }
        return pageInfo.getLayerList().get(index).getLock();
    }

    public final boolean isLayerNameDuplicated(@NotNull PageInfo pageInfo, @NotNull String name) {
        Object obj;
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Intrinsics.checkNotNullParameter(name, "name");
        Iterator<T> it2 = pageInfo.getLayerList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((LayerInfo) obj).getName(), name)) {
                break;
            }
        }
        return obj != null;
    }

    public final boolean isLayerVisibleById(@Nullable PageInfo pageInfo, int layerId) {
        if (pageInfo == null) {
            return true;
        }
        return pageInfo.isLayerVisible(layerId);
    }

    public final boolean isLayerVisibleByIndex(@NotNull PageInfo pageInfo, int index) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return pageInfo.getLayerList().get(index).getShow();
    }

    public final void moveLayer(@NotNull PageInfo pageInfo, int fromIndex, int toIndex) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        if (fromIndex == toIndex) {
            return;
        }
        pageInfo.getLayerList().add(toIndex, pageInfo.getLayerList().remove(fromIndex));
        pageInfo.setCurrentLayerId(pageInfo.getLayerList().get(toIndex).getId());
    }

    public final boolean pageHasLockedLayer(@Nullable PageInfo pageInfo) {
        if (pageInfo == null) {
            return false;
        }
        for (LayerInfo layerInfo : pageInfo.getLayerList()) {
            if (layerInfo != null && layerInfo.getLock()) {
                return true;
            }
        }
        return false;
    }

    public final void removeLayerById(@NotNull PageInfo pageInfo, @NotNull List<Integer> layerIdList) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Intrinsics.checkNotNullParameter(layerIdList, "layerIdList");
        if (pageInfo.getLayerCount() <= 1 || layerIdList.size() < 0 || layerIdList.size() >= pageInfo.getLayerCount()) {
            return;
        }
        Iterator<LayerInfo> it2 = pageInfo.getLayerList().iterator();
        while (it2.hasNext()) {
            LayerInfo next = it2.next();
            int size = layerIdList.size();
            for (int i = 0; i < size; i++) {
                if (next.getId() == layerIdList.get(i).intValue()) {
                    it2.remove();
                }
            }
        }
        pageInfo.setCurrentLayerId(m34029a(pageInfo));
    }

    public final void removeLayerByIndex(@NotNull PageInfo pageInfo, int index) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        if (pageInfo.getLayerCount() <= 1 || index < 0 || index >= pageInfo.getLayerCount()) {
            return;
        }
        pageInfo.getLayerList().remove(index);
    }

    public final void setLayerLock(@NotNull PageInfo pageInfo, int layerId, boolean lock) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        for (LayerInfo layerInfo : pageInfo.getLayerList()) {
            if (layerInfo.getId() == layerId) {
                layerInfo.setLock(lock);
            }
        }
    }

    public final void setLayerVisible(@NotNull PageInfo pageInfo, int layerId, boolean visible) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        for (LayerInfo layerInfo : pageInfo.getLayerList()) {
            if (layerInfo.getId() == layerId) {
                layerInfo.setShow(visible);
            }
        }
    }

    public final int toNoteLayerId(@Nullable String layerId) {
        MathUtils mathUtils = MathUtils.INSTANCE;
        if (layerId == null) {
            layerId = "";
        }
        return mathUtils.parseInt(layerId);
    }

    @NotNull
    public final String toPdfLayerId(int layerId) {
        return String.valueOf(layerId);
    }

    public final void insertLayer(@NotNull PageInfo pageInfo, int insertIndex, @NotNull LayerInfo layerInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        if (getLayerCount(pageInfo) < 20 && !hasLayer(pageInfo, layerInfo.getId())) {
            pageInfo.getLayerList().add(insertIndex, layerInfo);
        }
    }

    @NotNull
    public final Rect getPageRect(@Nullable NotePageInfo notePageInfo, @NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        return getPageRect(notePageInfo != null ? notePageInfo.getPageInfo(pageUniqueId) : null);
    }

    public final void removeLayerById(@NotNull PageInfo pageInfo, int layerId) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        removeLayerByIndex(pageInfo, getLayerIndexById(pageInfo, layerId));
    }
}
