package com.onyx.android.sdk.replicator.note.data.page;

import android.graphics.Rect;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.ColorTheme;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010 \n\u0002\b\u000e\u0018\u0000 J2\u00020\u00012\u00020\u0002:\u0001JB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010H\u0007J\u0010\u0010\u0017\u001a\u00020\u00102\b\b\u0002\u0010\u0018\u001a\u00020\u0005J\b\u0010\u0019\u001a\u00020\u0000H\u0016J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0096\u0002J\b\u0010\u001e\u001a\u00020\u0005H\u0007J\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J\u0006\u0010!\u001a\u00020\rJ\u0010\u0010\"\u001a\u0004\u0018\u00010\u00102\u0006\u0010#\u001a\u00020\u0005J\u0006\u0010$\u001a\u00020\u0005J\u0012\u0010%\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u0005H\u0003J\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\b\u0010'\u001a\u00020(H\u0007J\b\u0010)\u001a\u0004\u0018\u00010\u0012J\u0006\u0010*\u001a\u00020\u0005J\u0006\u0010+\u001a\u00020\u0005J\b\u0010,\u001a\u00020\u001bH\u0007J\b\u0010-\u001a\u00020\u0005H\u0016J\u0010\u0010.\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\b\u0010/\u001a\u00020\u001bH\u0007J\b\u00100\u001a\u00020\u001bH\u0007J\b\u00101\u001a\u00020\u001bH\u0007J\u000e\u00102\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u00103\u001a\u00020\u001bJ\u0006\u00104\u001a\u00020\u001bJ\u0010\u00105\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\u0010\u00106\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\u0010\u00107\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0010H\u0003J\u0010\u00107\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\u0012\u00108\u001a\u00020\u00152\b\u00109\u001a\u0004\u0018\u00010\u0000H\u0007J\u0012\u00109\u001a\u00020\u00152\b\u0010:\u001a\u0004\u0018\u00010\u0000H\u0007J\u0014\u0010;\u001a\u00020\u00152\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00050=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010@\u001a\u00020\u00152\u0006\u0010A\u001a\u00020\rJ\u0016\u0010B\u001a\u00020\u00152\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fJ\u000e\u0010C\u001a\u00020\u00002\u0006\u0010D\u001a\u00020(J\u0012\u0010E\u001a\u0004\u0018\u00010\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u0006\u0010G\u001a\u00020\u0015J\b\u0010H\u001a\u00020\u0012H\u0016J\u0006\u0010I\u001a\u00020\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006K"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "Ljava/io/Serializable;", "", "()V", "colorTheme", "", "getColorTheme", "()I", "setColorTheme", "(I)V", "currentLayerId", "height", "lastModifyTime", "", "layerList", "", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "title", "", "width", "addLayerInfo", "", "layerInfo", "addNewLayerInfo", "layerId", "clone", "equals", "", Constants.ATTRVAL_OTHER, "", "getBottomLayerId", "getCurrentLayerId", "getHeight", "getLastModifyTime", "getLayer", "id", "getLayerCount", "getLayerInfo", "getLayerList", "getPageRect", "Landroid/graphics/Rect;", "getTitle", "getUnusedLayerId", "getWidth", "hasLockedLayer", "hashCode", "isBottomLayer", "isCurLayerBottom", "isCurLayerLocked", "isCurLayerVisible", "isCurrentLayerId", "isDarkTheme", "isEmpty", "isLayerLocked", "isLayerVisible", "layerInfoExist", "mergeLayerIfMissing", "mergePageInfo", "mergeInfo", "removeLayers", "srcLayersIds", "", "setCurrentLayerId", "setHeight", "setLastModifyTime", "time", "setLayerList", "setPageRect", "rect", "setTitle", "setWidth", "showAllLayers", "toString", "unlockAllLayers", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPageInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/PageInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n1#2:333\n1855#3,2:334\n1855#3,2:336\n*S KotlinDebug\n*F\n+ 1 PageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/PageInfo\n*L\n276#1:334,2\n282#1:336,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PageInfo implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int colorTheme;
    private int currentLayerId;
    private int height;
    private long lastModifyTime;

    @Nullable
    private List<LayerInfo> layerList;

    @Nullable
    private String title;
    private int width;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u0004*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;", "", "()V", "hasLockedLayer", "", "", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean hasLockedLayer(@Nullable List<LayerInfo> list) {
            if (list != null) {
                return CollectionKt.contains(list, new Function1<LayerInfo, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.data.page.PageInfo$Companion$hasLockedLayer$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull LayerInfo it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(it2.getLock());
                    }
                });
            }
            return false;
        }

        private Companion() {
        }
    }

    public static /* synthetic */ LayerInfo addNewLayerInfo$default(PageInfo pageInfo, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = pageInfo.getUnusedLayerId();
        }
        return pageInfo.addNewLayerInfo(i);
    }

    @JSONField(serialize = false)
    private final LayerInfo getLayerInfo(int layerId) {
        for (LayerInfo layerInfo : getLayerList()) {
            if (layerInfo.getId() == layerId) {
                return layerInfo;
            }
        }
        return null;
    }

    @JSONField(serialize = false)
    private final boolean layerInfoExist(LayerInfo layerInfo) {
        return layerInfoExist(layerInfo.getId());
    }

    @JSONField(serialize = false)
    public final void addLayerInfo(@NotNull LayerInfo layerInfo) {
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        if (layerInfoExist(layerInfo)) {
            return;
        }
        getLayerList().add(layerInfo);
    }

    @NotNull
    public final LayerInfo addNewLayerInfo(int layerId) {
        LayerInfo layerInfo = new LayerInfo();
        layerInfo.setId(layerId);
        addLayerInfo(layerInfo);
        return layerInfo;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageInfo)) {
            return false;
        }
        PageInfo pageInfo = (PageInfo) other;
        return this.currentLayerId == pageInfo.currentLayerId && Intrinsics.areEqual(this.layerList, pageInfo.layerList) && this.width == pageInfo.width && this.height == pageInfo.height && Intrinsics.areEqual(this.title, pageInfo.title) && this.lastModifyTime == pageInfo.lastModifyTime && this.colorTheme == pageInfo.colorTheme;
    }

    @JSONField(deserialize = false, serialize = false)
    public final int getBottomLayerId() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getLayerList());
        LayerInfo layerInfo = (LayerInfo) firstOrNull;
        if (layerInfo != null) {
            return layerInfo.getId();
        }
        return 0;
    }

    public final int getColorTheme() {
        return this.colorTheme;
    }

    public final int getCurrentLayerId() {
        return this.currentLayerId;
    }

    public final int getHeight() {
        return this.height;
    }

    public final long getLastModifyTime() {
        return this.lastModifyTime;
    }

    @Nullable
    public final LayerInfo getLayer(int id) {
        Object obj;
        Iterator<T> it2 = getLayerList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((LayerInfo) obj).getId() == id) {
                break;
            }
        }
        return (LayerInfo) obj;
    }

    public final int getLayerCount() {
        return getLayerList().size();
    }

    @NotNull
    public final List<LayerInfo> getLayerList() {
        if (this.layerList == null) {
            this.layerList = new ArrayList();
        }
        int size = CollectionKt.getSize(this.layerList);
        for (int i = 0; i < size; i++) {
            List<LayerInfo> list = this.layerList;
            Intrinsics.checkNotNull(list);
            if (list.get(i) == null) {
                List<LayerInfo> list2 = this.layerList;
                Intrinsics.checkNotNull(list2);
                LayerInfo layerInfo = new LayerInfo();
                layerInfo.setId(getUnusedLayerId());
                Unit unit = Unit.INSTANCE;
                list2.set(i, layerInfo);
            }
        }
        List<LayerInfo> list3 = this.layerList;
        Intrinsics.checkNotNull(list3);
        if (list3.isEmpty()) {
            List<LayerInfo> list4 = this.layerList;
            Intrinsics.checkNotNull(list4);
            list4.add(new LayerInfo());
        }
        List<LayerInfo> list5 = this.layerList;
        Intrinsics.checkNotNull(list5);
        return list5;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final Rect getPageRect() {
        return new Rect(0, 0, getWidth(), getHeight());
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int getUnusedLayerId() {
        boolean z;
        List<LayerInfo> list = this.layerList;
        if (list == null || list.isEmpty()) {
            return 0;
        }
        for (int i = 0; i < 20; i++) {
            List<LayerInfo> list2 = this.layerList;
            Intrinsics.checkNotNull(list2);
            Iterator<LayerInfo> it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                LayerInfo next = it2.next();
                if (next != null && next.getId() == i) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return i;
            }
        }
        return 0;
    }

    public final int getWidth() {
        return this.width;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean hasLockedLayer() {
        return INSTANCE.hasLockedLayer(this.layerList);
    }

    public int hashCode() {
        int i = this.currentLayerId * 31;
        List<LayerInfo> list = this.layerList;
        int hashCode = (((((i + (list != null ? list.hashCode() : 0)) * 31) + this.width) * 31) + this.height) * 31;
        String str = this.title;
        return ((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + Long.hashCode(this.lastModifyTime)) * 31) + Integer.hashCode(this.colorTheme);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isBottomLayer(int layerId) {
        return getBottomLayerId() == layerId;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isCurLayerBottom() {
        return isBottomLayer(getCurrentLayerId());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isCurLayerLocked() {
        return isLayerLocked(getCurrentLayerId());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isCurLayerVisible() {
        return isLayerVisible(getCurrentLayerId());
    }

    public final boolean isCurrentLayerId(int layerId) {
        return this.currentLayerId == layerId;
    }

    public final boolean isDarkTheme() {
        return ColorTheme.INSTANCE.isDarkTheme(Integer.valueOf(this.colorTheme));
    }

    public final boolean isEmpty() {
        return this.width == 0 && this.height == 0 && this.lastModifyTime == 0;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLayerLocked(int layerId) {
        LayerInfo layerInfo = getLayerInfo(layerId);
        if (layerInfo != null) {
            return layerInfo.getLock();
        }
        return false;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLayerVisible(int layerId) {
        LayerInfo layerInfo = getLayerInfo(layerId);
        if (layerInfo != null) {
            return layerInfo.getShow();
        }
        return true;
    }

    @JSONField(serialize = false)
    public final void mergeLayerIfMissing(@Nullable PageInfo mergePageInfo) {
        if (mergePageInfo == null) {
            return;
        }
        for (LayerInfo layerInfo : mergePageInfo.getLayerList()) {
            if (getLayerInfo(layerInfo.getId()) == null) {
                addLayerInfo(layerInfo);
            }
        }
    }

    @JSONField(serialize = false)
    public final void mergePageInfo(@Nullable PageInfo mergeInfo) {
        if (mergeInfo == null) {
            return;
        }
        setWidth(mergeInfo.width);
        setHeight(mergeInfo.height);
        setTitle(mergeInfo.title);
        setCurrentLayerId(mergeInfo.getCurrentLayerId());
        for (LayerInfo layerInfo : mergeInfo.getLayerList()) {
            LayerInfo layerInfo2 = getLayerInfo(layerInfo.getId());
            if (layerInfo2 == null) {
                addLayerInfo(layerInfo);
            } else {
                layerInfo2.mergeLayerInfo(layerInfo);
            }
        }
    }

    public final void removeLayers(@NotNull final List<Integer> srcLayersIds) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(srcLayersIds, "srcLayersIds");
        CollectionsKt__MutableCollectionsKt.removeAll((List) getLayerList(), (Function1) new Function1<LayerInfo, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.data.page.PageInfo$removeLayers$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LayerInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(srcLayersIds.contains(Integer.valueOf(it2.getId())));
            }
        });
        if (CollectionKt.contains(getLayerList(), new Function1<LayerInfo, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.data.page.PageInfo$removeLayers$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LayerInfo it2) {
                int i;
                Intrinsics.checkNotNullParameter(it2, "it");
                int id = it2.getId();
                i = PageInfo.this.currentLayerId;
                return Boolean.valueOf(id == i);
            }
        })) {
            return;
        }
        if (!layerInfoExist(this.currentLayerId)) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getLayerList());
            LayerInfo layerInfo = (LayerInfo) firstOrNull;
            setCurrentLayerId(layerInfo != null ? layerInfo.getId() : 0);
        }
        setLastModifyTime(System.currentTimeMillis());
    }

    public final void setColorTheme(int i) {
        this.colorTheme = i;
    }

    @NotNull
    public final PageInfo setCurrentLayerId(int currentLayerId) {
        this.currentLayerId = currentLayerId;
        return this;
    }

    @NotNull
    public final PageInfo setHeight(int height) {
        this.height = height;
        return this;
    }

    public final void setLastModifyTime(long time) {
        this.lastModifyTime = time;
    }

    public final void setLayerList(@Nullable List<LayerInfo> layerList) {
        this.layerList = layerList;
    }

    @NotNull
    public final PageInfo setPageRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        setWidth(rect.width());
        setHeight(rect.height());
        return this;
    }

    @Nullable
    public final PageInfo setTitle(@Nullable String title) {
        this.title = title;
        return this;
    }

    @NotNull
    public final PageInfo setWidth(int width) {
        this.width = width;
        return this;
    }

    public final void showAllLayers() {
        Iterator<T> it2 = getLayerList().iterator();
        while (it2.hasNext()) {
            ((LayerInfo) it2.next()).setShow(true);
        }
    }

    @NotNull
    public String toString() {
        return "PageInfo{width=" + this.width + ", height=" + this.height + ", title='" + this.title + "'}";
    }

    public final void unlockAllLayers() {
        Iterator<T> it2 = getLayerList().iterator();
        while (it2.hasNext()) {
            ((LayerInfo) it2.next()).setLock(false);
        }
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public PageInfo m72357clone() throws CloneNotSupportedException {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.page.PageInfo");
        PageInfo pageInfo = (PageInfo) clone;
        if (this.layerList != null) {
            ArrayList arrayList = new ArrayList();
            List<LayerInfo> list = this.layerList;
            Intrinsics.checkNotNull(list);
            Iterator<LayerInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().m72356clone());
            }
            pageInfo.setLayerList(arrayList);
        }
        return pageInfo;
    }

    @JSONField(serialize = false)
    public final boolean layerInfoExist(int layerId) {
        return getLayerInfo(layerId) != null;
    }
}
