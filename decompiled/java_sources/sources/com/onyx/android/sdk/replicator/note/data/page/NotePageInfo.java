package com.onyx.android.sdk.replicator.note.data.page;

import android.graphics.Rect;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.canvas.CanvasExpandType;
import com.onyx.android.sdk.replicator.note.data.zoom.NoteZoomInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\nJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0006\u0010\u0015\u001a\u00020\u0004J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\tJ\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0019J\b\u0010\u001a\u001a\u0004\u0018\u00010\fJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\tJ\u0010\u0010\u001e\u001a\u00020\u000e2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0000J\u000e\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tJ\u0010\u0010 \u001a\u00020\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u001a\u0010!\u001a\u00020\u000e2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bJ\u0010\u0010\"\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u001c\u0010#\u001a\u00020\u000e2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%2\u0006\u0010'\u001a\u00020\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;", "Ljava/io/Serializable;", "()V", "canvasExpandType", "Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;", "defaultPageRect", "Landroid/graphics/Rect;", "pageInfoMap", "", "", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "zoomInfo", "Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;", "addPageInfo", "", CouchFieldKey.KEY_TOC_PAGE_ID, "pageInfo", "equals", "", Constants.ATTRVAL_OTHER, "", "getCanvasExpandType", "getDefaultPageRect", "getPageInfo", "getPageInfoMap", "", "getZoomInfo", "hashCode", "", "loadCanvasExpandType", "mergePageInfo", "removePageInfo", "setDefaultPageRect", "setPageInfoMap", "setZoomInfo", "updatePageInfoLayers", "layerList", "", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "currentLayerId", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNotePageInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/NotePageInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,108:1\n1855#2,2:109\n215#3,2:111\n*S KotlinDebug\n*F\n+ 1 NotePageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/NotePageInfo\n*L\n39#1:109,2\n61#1:111,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePageInfo implements Serializable {

    @Nullable
    private Rect defaultPageRect;

    @Nullable
    private NoteZoomInfo zoomInfo;

    @NotNull
    private Map<String, PageInfo> pageInfoMap = new HashMap();

    @NotNull
    private CanvasExpandType canvasExpandType = CanvasExpandType.DEFAULT;

    public final void addPageInfo(@NotNull String pageId, @NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        this.pageInfoMap.put(pageId, pageInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NotePageInfo)) {
            return false;
        }
        NotePageInfo notePageInfo = (NotePageInfo) other;
        return Intrinsics.areEqual(this.pageInfoMap, notePageInfo.pageInfoMap) && this.canvasExpandType == notePageInfo.canvasExpandType && Intrinsics.areEqual(this.zoomInfo, notePageInfo.zoomInfo) && Intrinsics.areEqual(this.defaultPageRect, notePageInfo.defaultPageRect);
    }

    @NotNull
    public final CanvasExpandType getCanvasExpandType() {
        return this.canvasExpandType;
    }

    @Nullable
    public final Rect getDefaultPageRect() {
        return this.defaultPageRect;
    }

    @Nullable
    public final PageInfo getPageInfo(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.pageInfoMap.get(pageId);
    }

    @NotNull
    public final Map<String, PageInfo> getPageInfoMap() {
        return this.pageInfoMap;
    }

    @Nullable
    public final NoteZoomInfo getZoomInfo() {
        return this.zoomInfo;
    }

    public int hashCode() {
        int hashCode = ((this.pageInfoMap.hashCode() * 31) + this.canvasExpandType.hashCode()) * 31;
        NoteZoomInfo noteZoomInfo = this.zoomInfo;
        int hashCode2 = (hashCode + (noteZoomInfo != null ? noteZoomInfo.hashCode() : 0)) * 31;
        Rect rect = this.defaultPageRect;
        return hashCode2 + (rect != null ? rect.hashCode() : 0);
    }

    @NotNull
    public final String loadCanvasExpandType() {
        return this.canvasExpandType.name();
    }

    public final void mergePageInfo(@Nullable NotePageInfo mergePageInfo) {
        if (mergePageInfo == null) {
            return;
        }
        for (Map.Entry<String, PageInfo> entry : mergePageInfo.getPageInfoMap().entrySet()) {
            PageInfo pageInfo = this.pageInfoMap.get(entry.getKey());
            if (pageInfo == null) {
                this.pageInfoMap.put(entry.getKey(), entry.getValue());
            } else {
                pageInfo.mergePageInfo(entry.getValue());
            }
        }
    }

    public final void removePageInfo(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageInfoMap.remove(pageId);
    }

    public final void setDefaultPageRect(@Nullable Rect defaultPageRect) {
        this.defaultPageRect = defaultPageRect;
    }

    public final void setPageInfoMap(@NotNull Map<String, PageInfo> pageInfoMap) {
        Intrinsics.checkNotNullParameter(pageInfoMap, "pageInfoMap");
        this.pageInfoMap = pageInfoMap;
    }

    public final void setZoomInfo(@Nullable NoteZoomInfo zoomInfo) {
        this.zoomInfo = zoomInfo;
    }

    public final void updatePageInfoLayers(@NotNull List<LayerInfo> layerList, int currentLayerId) {
        Intrinsics.checkNotNullParameter(layerList, "layerList");
        for (PageInfo pageInfo : this.pageInfoMap.values()) {
            pageInfo.setLayerList(layerList);
            pageInfo.setCurrentLayerId(currentLayerId);
        }
    }
}
