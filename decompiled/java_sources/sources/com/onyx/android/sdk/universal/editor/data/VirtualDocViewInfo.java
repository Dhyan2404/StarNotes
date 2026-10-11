package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\u0010\n\u0002\u0010\"\n\u0002\b\u0004\u0018\u0000 X2\u00020\u0001:\u0001XB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010I\u001a\u00020\u0000J\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020/0.J\f\u0010K\u001a\b\u0012\u0004\u0012\u0002080DJ\u0006\u0010L\u001a\u00020\u001fJ\u0006\u0010M\u001a\u00020\u0004J\b\u0010N\u001a\u0004\u0018\u000108J\b\u0010O\u001a\u0004\u0018\u00010/J\b\u0010P\u001a\u0004\u0018\u00010/J\u000e\u0010Q\u001a\u00020/2\u0006\u0010R\u001a\u00020\u0019J\u0006\u0010S\u001a\u00020\u0019J\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00190UJ\u0010\u0010V\u001a\u0004\u0018\u00010/2\u0006\u0010W\u001a\u000208R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001b\"\u0004\b&\u0010\u001dR\u001a\u0010'\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0012\"\u0004\b)\u0010\u0014R\u001a\u0010*\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR&\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020/0.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001b\"\u0004\b6\u0010\u001dR\u001a\u00107\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010=\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\f\"\u0004\b?\u0010\u000eR\u001a\u0010@\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\f\"\u0004\bB\u0010\u000eR \u0010C\u001a\b\u0012\u0004\u0012\u0002080DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010H¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "", "()V", CouchFieldKey.KEY_ACTIVE_SCENE, "", "getActiveScene", "()I", "setActiveScene", "(I)V", "boundingRect", "Landroid/graphics/RectF;", "getBoundingRect", "()Landroid/graphics/RectF;", "setBoundingRect", "(Landroid/graphics/RectF;)V", "curNoteLayerLocked", "", "getCurNoteLayerLocked", Constants.BOOLEAN_VALUE_SIG, "setCurNoteLayerLocked", "(Z)V", "curNoteLayerVisible", "getCurNoteLayerVisible", "setCurNoteLayerVisible", "currentBoxId", "", "getCurrentBoxId", "()Ljava/lang/String;", "setCurrentBoxId", "(Ljava/lang/String;)V", "currentMinScale", "", "getCurrentMinScale", "()F", "setCurrentMinScale", "(F)V", EditorConstants.ARGS_DOC_ID, "getDocId", "setDocId", "hasLockedLayer", "getHasLockedLayer", "setHasLockedLayer", "pageCount", "getPageCount", "setPageCount", "pageViewInfoMap", "", "Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;", "getPageViewInfoMap", "()Ljava/util/Map;", "setPageViewInfoMap", "(Ljava/util/Map;)V", "targetBoxId", "getTargetBoxId", "setTargetBoxId", "viewport", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getViewport", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setViewport", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "viewportLimitRect", "getViewportLimitRect", "setViewportLimitRect", "visibleBoundingRect", "getVisibleBoundingRect", "setVisibleBoundingRect", "visibleBoxInfoList", "", "getVisibleBoxInfoList", "()Ljava/util/List;", "setVisibleBoxInfoList", "(Ljava/util/List;)V", "copy", "copyPageViewInfoMap", "copyVisibleBoxInfoList", "currentDisplayScale", "currentPageIndex", "currentVisibleBoxInfo", "currentVisiblePageViewInfo", "lastVisiblePageViewInfo", "pageViewInfoById", "id", "toDebugString", "visiblePageIdSet", "", "visiblePageViewInfo", "boxInfo", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nVirtualDocViewInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualDocViewInfo.kt\ncom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n453#2:144\n403#2:145\n1238#3,4:146\n288#3,2:150\n288#3,2:152\n1855#3,2:154\n1549#3:156\n1620#3,3:157\n*S KotlinDebug\n*F\n+ 1 VirtualDocViewInfo.kt\ncom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo\n*L\n67#1:144\n67#1:145\n67#1:146,4\n86#1:150,2\n89#1:152,2\n108#1:154,2\n114#1:156\n114#1:157,3\n*E\n"})
/* loaded from: classes8.dex */
public final class VirtualDocViewInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int activeScene;
    private boolean curNoteLayerLocked;
    private boolean hasLockedLayer;

    @NotNull
    private String docId = "";

    @NotNull
    private BoxInfo viewport = new BoxInfo();

    @NotNull
    private RectF boundingRect = new RectF();

    @NotNull
    private RectF viewportLimitRect = new RectF();

    @NotNull
    private List<BoxInfo> visibleBoxInfoList = new ArrayList();

    @NotNull
    private RectF visibleBoundingRect = new RectF();

    @NotNull
    private String currentBoxId = "";
    private float currentMinScale = 1.0f;

    @NotNull
    private String targetBoxId = "";

    @NotNull
    private Map<String, PageViewInfo> pageViewInfoMap = new LinkedHashMap();
    private int pageCount = 1;
    private boolean curNoteLayerVisible = true;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo$Companion;", "", "()V", "dumpInfoToString", "", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nVirtualDocViewInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualDocViewInfo.kt\ncom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n1855#2,2:144\n*S KotlinDebug\n*F\n+ 1 VirtualDocViewInfo.kt\ncom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo$Companion\n*L\n129#1:144,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String dumpInfoToString(@NotNull VirtualDocViewInfo virtualDocViewInfo) {
            Intrinsics.checkNotNullParameter(virtualDocViewInfo, "<this>");
            StringBuffer stringBuffer = new StringBuffer();
            RectF box = virtualDocViewInfo.getViewport().getBox();
            stringBuffer.append("postVirtualDocViewInfo, visible size = " + virtualDocViewInfo.getVisibleBoxInfoList().size());
            stringBuffer.append("\n, screenRectF = " + ResManager.INSTANCE.getScreenRectF());
            stringBuffer.append("\n, viewport = " + box + ", width = " + box.width() + ", height = " + box.height());
            StringBuilder sb = new StringBuilder();
            sb.append("\n, currentBoxId = ");
            sb.append(virtualDocViewInfo.getCurrentBoxId());
            stringBuffer.append(sb.toString());
            stringBuffer.append("\n, pageCount = " + virtualDocViewInfo.getPageCount());
            stringBuffer.append("\n, curNoteLayerLocked = " + virtualDocViewInfo.getCurNoteLayerLocked());
            stringBuffer.append("\n, curNoteLayerVisible = " + virtualDocViewInfo.getCurNoteLayerVisible());
            for (BoxInfo boxInfo : virtualDocViewInfo.getVisibleBoxInfoList()) {
                stringBuffer.append("\n, id = " + boxInfo.getId());
                stringBuffer.append("\n, pageNumber = " + virtualDocViewInfo.pageViewInfoById(boxInfo.getId()).pageNumber());
                stringBuffer.append("\n, isCurrentBox = " + Intrinsics.areEqual(virtualDocViewInfo.getCurrentBoxId(), boxInfo.getId()));
                stringBuffer.append("\n, visibleRect = " + boxInfo.getVisibleRect());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\n, note.visibleRect = ");
                BoxInfo noteInfo = boxInfo.getNoteInfo();
                RectF rectF = null;
                sb2.append(noteInfo != null ? noteInfo.getVisibleRect() : null);
                stringBuffer.append(sb2.toString());
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\n, content.visibleRect = ");
                BoxInfo contentInfo = boxInfo.getContentInfo();
                sb3.append(contentInfo != null ? contentInfo.getVisibleRect() : null);
                stringBuffer.append(sb3.toString());
                stringBuffer.append("\n, displayRect = " + boxInfo.getBox());
                StringBuilder sb4 = new StringBuilder();
                sb4.append("\n, note.displayRect = ");
                BoxInfo noteInfo2 = boxInfo.getNoteInfo();
                sb4.append(noteInfo2 != null ? noteInfo2.getBox() : null);
                stringBuffer.append(sb4.toString());
                StringBuilder sb5 = new StringBuilder();
                sb5.append("\n, content.displayRect = ");
                BoxInfo contentInfo2 = boxInfo.getContentInfo();
                if (contentInfo2 != null) {
                    rectF = contentInfo2.getBox();
                }
                sb5.append(rectF);
                stringBuffer.append(sb5.toString());
            }
            String stringBuffer2 = stringBuffer.toString();
            Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
            return stringBuffer2;
        }

        private Companion() {
        }
    }

    @NotNull
    public final VirtualDocViewInfo copy() {
        VirtualDocViewInfo virtualDocViewInfo = new VirtualDocViewInfo();
        virtualDocViewInfo.docId = this.docId;
        virtualDocViewInfo.viewport = this.viewport.copy();
        virtualDocViewInfo.boundingRect = RectFKt.copy(this.boundingRect);
        virtualDocViewInfo.viewportLimitRect = RectFKt.copy(this.viewportLimitRect);
        virtualDocViewInfo.visibleBoxInfoList = copyVisibleBoxInfoList();
        virtualDocViewInfo.visibleBoundingRect = RectFKt.copy(this.visibleBoundingRect);
        virtualDocViewInfo.currentBoxId = this.currentBoxId;
        virtualDocViewInfo.targetBoxId = this.targetBoxId;
        virtualDocViewInfo.currentMinScale = this.currentMinScale;
        virtualDocViewInfo.pageViewInfoMap = copyPageViewInfoMap();
        virtualDocViewInfo.pageCount = this.pageCount;
        virtualDocViewInfo.activeScene = this.activeScene;
        virtualDocViewInfo.curNoteLayerLocked = this.curNoteLayerLocked;
        virtualDocViewInfo.curNoteLayerVisible = this.curNoteLayerVisible;
        virtualDocViewInfo.hasLockedLayer = this.hasLockedLayer;
        return virtualDocViewInfo;
    }

    @NotNull
    public final Map<String, PageViewInfo> copyPageViewInfoMap() {
        int mapCapacity;
        Map<String, PageViewInfo> mutableMap;
        Map<String, PageViewInfo> map = this.pageViewInfoMap;
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(map.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        Iterator<T> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(entry.getKey(), ((PageViewInfo) entry.getValue()).copy());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        return mutableMap;
    }

    @NotNull
    public final List<BoxInfo> copyVisibleBoxInfoList() {
        Sequence asSequence;
        Sequence map;
        List<BoxInfo> mutableList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.visibleBoxInfoList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<BoxInfo, BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo$copyVisibleBoxInfoList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.copy();
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    public final float currentDisplayScale() {
        return this.viewport.getActualScale() / this.currentMinScale;
    }

    public final int currentPageIndex() {
        PageViewInfo currentVisiblePageViewInfo = currentVisiblePageViewInfo();
        if (currentVisiblePageViewInfo != null) {
            return currentVisiblePageViewInfo.getPageIndex();
        }
        return 0;
    }

    @Nullable
    public final BoxInfo currentVisibleBoxInfo() {
        BoxInfo boxInfo;
        Object obj;
        Object obj2 = null;
        if (this.targetBoxId.length() > 0) {
            Iterator<T> it2 = this.visibleBoxInfoList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((BoxInfo) obj).getId(), this.targetBoxId)) {
                    break;
                }
            }
            boxInfo = (BoxInfo) obj;
        } else {
            boxInfo = null;
        }
        if (boxInfo != null) {
            return boxInfo;
        }
        Iterator<T> it3 = this.visibleBoxInfoList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            if (Intrinsics.areEqual(((BoxInfo) next).getId(), this.currentBoxId)) {
                obj2 = next;
                break;
            }
        }
        return (BoxInfo) obj2;
    }

    @Nullable
    public final PageViewInfo currentVisiblePageViewInfo() {
        BoxInfo currentVisibleBoxInfo = currentVisibleBoxInfo();
        if (currentVisibleBoxInfo == null) {
            return null;
        }
        return visiblePageViewInfo(currentVisibleBoxInfo);
    }

    public final int getActiveScene() {
        return this.activeScene;
    }

    @NotNull
    public final RectF getBoundingRect() {
        return this.boundingRect;
    }

    public final boolean getCurNoteLayerLocked() {
        return this.curNoteLayerLocked;
    }

    public final boolean getCurNoteLayerVisible() {
        return this.curNoteLayerVisible;
    }

    @NotNull
    public final String getCurrentBoxId() {
        return this.currentBoxId;
    }

    public final float getCurrentMinScale() {
        return this.currentMinScale;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    public final boolean getHasLockedLayer() {
        return this.hasLockedLayer;
    }

    public final int getPageCount() {
        return this.pageCount;
    }

    @NotNull
    public final Map<String, PageViewInfo> getPageViewInfoMap() {
        return this.pageViewInfoMap;
    }

    @NotNull
    public final String getTargetBoxId() {
        return this.targetBoxId;
    }

    @NotNull
    public final BoxInfo getViewport() {
        return this.viewport;
    }

    @NotNull
    public final RectF getViewportLimitRect() {
        return this.viewportLimitRect;
    }

    @NotNull
    public final RectF getVisibleBoundingRect() {
        return this.visibleBoundingRect;
    }

    @NotNull
    public final List<BoxInfo> getVisibleBoxInfoList() {
        return this.visibleBoxInfoList;
    }

    @Nullable
    public final PageViewInfo lastVisiblePageViewInfo() {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.visibleBoxInfoList);
        BoxInfo boxInfo = (BoxInfo) lastOrNull;
        if (boxInfo == null) {
            return null;
        }
        return this.pageViewInfoMap.get(boxInfo.getId());
    }

    @NotNull
    public final PageViewInfo pageViewInfoById(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        PageViewInfo pageViewInfo = this.pageViewInfoMap.get(id);
        return pageViewInfo == null ? new PageViewInfo() : pageViewInfo;
    }

    public final void setActiveScene(int i) {
        this.activeScene = i;
    }

    public final void setBoundingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.boundingRect = rectF;
    }

    public final void setCurNoteLayerLocked(boolean z) {
        this.curNoteLayerLocked = z;
    }

    public final void setCurNoteLayerVisible(boolean z) {
        this.curNoteLayerVisible = z;
    }

    public final void setCurrentBoxId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.currentBoxId = str;
    }

    public final void setCurrentMinScale(float f) {
        this.currentMinScale = f;
    }

    public final void setDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.docId = str;
    }

    public final void setHasLockedLayer(boolean z) {
        this.hasLockedLayer = z;
    }

    public final void setPageCount(int i) {
        this.pageCount = i;
    }

    public final void setPageViewInfoMap(@NotNull Map<String, PageViewInfo> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.pageViewInfoMap = map;
    }

    public final void setTargetBoxId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.targetBoxId = str;
    }

    public final void setViewport(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.viewport = boxInfo;
    }

    public final void setViewportLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.viewportLimitRect = rectF;
    }

    public final void setVisibleBoundingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.visibleBoundingRect = rectF;
    }

    public final void setVisibleBoxInfoList(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.visibleBoxInfoList = list;
    }

    @NotNull
    public final String toDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + '\n');
        sb.append("viewport = " + this.viewport.getBox() + ", actualScale = " + this.viewport.getActualScale() + ", displayScale = " + currentDisplayScale() + '\n');
        StringBuilder sb2 = new StringBuilder();
        sb2.append("visibleBoxInfoList.size = ");
        sb2.append(this.visibleBoxInfoList.size());
        sb2.append('\n');
        sb.append(sb2.toString());
        for (BoxInfo boxInfo : this.visibleBoxInfoList) {
            sb.append("id = " + boxInfo.getId() + ", visibleRect = " + boxInfo.getVisibleRect() + '\n');
        }
        String sb3 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final Set<String> visiblePageIdSet() {
        int collectionSizeOrDefault;
        Set<String> set;
        List<BoxInfo> list = this.visibleBoxInfoList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((BoxInfo) it2.next()).getId());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        return set;
    }

    @Nullable
    public final PageViewInfo visiblePageViewInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        return this.pageViewInfoMap.get(boxInfo.getId());
    }
}
