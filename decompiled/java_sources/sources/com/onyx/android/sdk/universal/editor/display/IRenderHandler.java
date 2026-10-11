package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.core.Observable;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u001c\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0013\u001a\u00020\bH\u0016J\b\u0010\u0014\u001a\u00020\bH&J\b\u0010\u0015\u001a\u00020\u0003H\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016J\b\u0010\u0017\u001a\u00020\bH\u0016J$\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005H\u0016J$\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00190\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005H\u0016J$\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00190\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005H\u0016J$\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00190\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00190\u0005H\u0016J\b\u0010!\u001a\u00020\bH&J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005H\u0016J\u0010\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020%H&J\u0016\u0010&\u001a\u00020\b2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\n0(H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020\nH\u0016J\u0012\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020\nH\u0016J\u0012\u00100\u001a\u0004\u0018\u0001012\u0006\u0010/\u001a\u00020\nH\u0016J\u0016\u00102\u001a\u00020\b2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\n04H\u0016J\u0016\u00105\u001a\u00020\b2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\n04H\u0016J\u0010\u00106\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0019H\u0016J\u0016\u00108\u001a\u00020\b2\f\u00109\u001a\b\u0012\u0004\u0012\u00020\n0:H\u0016J\u0010\u00108\u001a\u00020\b2\u0006\u00109\u001a\u00020\nH\u0016J\u0010\u0010;\u001a\u00020\b2\u0006\u00109\u001a\u00020\nH\u0016J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010=\u001a\u00020\b2\u0006\u0010>\u001a\u00020?H&J\u0010\u0010@\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010A\u001a\u00020\u00032\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u0019H\u0016J\b\u0010E\u001a\u00020FH\u0016J\u0010\u0010G\u001a\u00020\b2\u0006\u0010H\u001a\u00020IH\u0016J\b\u0010J\u001a\u00020\bH\u0016J\b\u0010K\u001a\u00020\bH\u0016J\u0010\u0010L\u001a\u00020\b2\u0006\u0010/\u001a\u00020\nH\u0016J\u0012\u0010M\u001a\u00020\b2\b\u0010N\u001a\u0004\u0018\u00010OH\u0016J\u0018\u0010P\u001a\u00020\b2\u0006\u00107\u001a\u00020\u00192\u0006\u0010Q\u001a\u00020\u0003H\u0016J\u0018\u0010R\u001a\u00020\b2\u0006\u00107\u001a\u00020\u00192\u0006\u0010S\u001a\u00020\u0003H\u0016¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;", "", "addNoteSearchBeanList", "", "list", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "addRenderer", "", "key", "", "renderer", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;", "animateBoxChange", "Lio/reactivex/rxjava3/core/Observable;", "hostView", "Landroid/view/View;", "args", "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "cancelAllRenderRequest", "clearDisplay", "clearNoteSearchBeanList", "clearRenderer", "clearShapeFlushInfo", "createDisplayBoxListObservable", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "visibleBoxList", "createDisplayScalingBoxListObservable", "createDisplayScrollingBoxListObservable", "createPreRenderBoxListObservable", "boxList", "destroy", "displayBoxList", "draw", "bitmap", "Landroid/graphics/Bitmap;", "evict", "keepList", "", "flushShapeToPage", "shapeFlushInfo", "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;", "getDisplayDebugString", "getPageRenderNodeInfo", "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageSliceInfo", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "invalidateNotVisiblePagesIf", "pageIdSet", "", "invalidateSliceByPages", "isEnabledPageBorder", "virtualPageBoxInfo", "log", NotificationCompat.CATEGORY_MESSAGE, "Lkotlin/Function0;", "logW", "lowLatencyFlushToPage", "onDraw", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "removeRenderer", "removeVerifyId", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "virtualBoxInfo", "rendererSize", "", "resizeCache", "viewSize", "Lcom/onyx/android/sdk/base/data/Size;", "safeClearAllNoteSliceCache", "safeClearAllSliceCache", "safeClearPageNoteSliceCache", "setBackground", "geoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "setPageVisible", "visible", "updateExistsRenderNode", "forceUpdate", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IRenderHandler {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nIRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,134:1\n92#2,4:135\n*S KotlinDebug\n*F\n+ 1 IRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls\n*L\n128#1:135,4\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean addNoteSearchBeanList(@NotNull IRenderHandler iRenderHandler, @NotNull List<NoteSearchBean> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return false;
        }

        public static void addRenderer(@NotNull IRenderHandler iRenderHandler, @NotNull String key, @NotNull RenderManager.Renderer renderer) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(renderer, "renderer");
        }

        public static void cancelAllRenderRequest(@NotNull IRenderHandler iRenderHandler) {
        }

        public static boolean clearNoteSearchBeanList(@NotNull IRenderHandler iRenderHandler) {
            return false;
        }

        public static void clearRenderer(@NotNull IRenderHandler iRenderHandler) {
        }

        public static void clearShapeFlushInfo(@NotNull IRenderHandler iRenderHandler) {
        }

        @NotNull
        public static Observable<BoxInfo> createDisplayBoxListObservable(@NotNull IRenderHandler iRenderHandler, @NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
            Observable<BoxInfo> fromIterable = Observable.fromIterable(visibleBoxList);
            Intrinsics.checkNotNullExpressionValue(fromIterable, "fromIterable(...)");
            return fromIterable;
        }

        @NotNull
        public static Observable<BoxInfo> createDisplayScalingBoxListObservable(@NotNull IRenderHandler iRenderHandler, @NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
            Observable<BoxInfo> fromIterable = Observable.fromIterable(visibleBoxList);
            Intrinsics.checkNotNullExpressionValue(fromIterable, "fromIterable(...)");
            return fromIterable;
        }

        @NotNull
        public static Observable<BoxInfo> createDisplayScrollingBoxListObservable(@NotNull IRenderHandler iRenderHandler, @NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
            Observable<BoxInfo> fromIterable = Observable.fromIterable(visibleBoxList);
            Intrinsics.checkNotNullExpressionValue(fromIterable, "fromIterable(...)");
            return fromIterable;
        }

        @NotNull
        public static Observable<BoxInfo> createPreRenderBoxListObservable(@NotNull IRenderHandler iRenderHandler, @NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> boxList) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(boxList, "boxList");
            Observable<BoxInfo> fromIterable = Observable.fromIterable(boxList);
            Intrinsics.checkNotNullExpressionValue(fromIterable, "fromIterable(...)");
            return fromIterable;
        }

        @NotNull
        public static List<BoxInfo> displayBoxList(@NotNull IRenderHandler iRenderHandler) {
            List<BoxInfo> emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        public static boolean flushShapeToPage(@NotNull IRenderHandler iRenderHandler, @NotNull ShapeFlushInfo shapeFlushInfo) {
            Intrinsics.checkNotNullParameter(shapeFlushInfo, "shapeFlushInfo");
            return false;
        }

        @NotNull
        public static String getDisplayDebugString(@NotNull IRenderHandler iRenderHandler) {
            return "";
        }

        @Nullable
        public static PageRenderNodeInfo getPageRenderNodeInfo(@NotNull IRenderHandler iRenderHandler, @NotNull String pageId) {
            Intrinsics.checkNotNullParameter(pageId, "pageId");
            return null;
        }

        @Nullable
        public static PageSliceInfo getPageSliceInfo(@NotNull IRenderHandler iRenderHandler, @NotNull String pageId) {
            Intrinsics.checkNotNullParameter(pageId, "pageId");
            return null;
        }

        public static void invalidateNotVisiblePagesIf(@NotNull IRenderHandler iRenderHandler, @NotNull Collection<String> pageIdSet) {
            Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        }

        public static void invalidateSliceByPages(@NotNull IRenderHandler iRenderHandler, @NotNull Collection<String> pageIdSet) {
            Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        }

        public static boolean isEnabledPageBorder(@NotNull IRenderHandler iRenderHandler, @NotNull BoxInfo virtualPageBoxInfo) {
            Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
            return false;
        }

        public static void log(@NotNull IRenderHandler iRenderHandler, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
        }

        public static void logW(@NotNull IRenderHandler iRenderHandler, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            LogUtils.wTag(AnyKt.toSimpleNameString(iRenderHandler), msg);
        }

        public static boolean lowLatencyFlushToPage(@NotNull IRenderHandler iRenderHandler, @NotNull ShapeFlushInfo shapeFlushInfo) {
            Intrinsics.checkNotNullParameter(shapeFlushInfo, "shapeFlushInfo");
            return false;
        }

        public static void removeRenderer(@NotNull IRenderHandler iRenderHandler, @NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
        }

        public static boolean removeVerifyId(@NotNull IRenderHandler iRenderHandler, @NotNull Shape shape, @NotNull BoxInfo virtualBoxInfo) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
            return false;
        }

        public static int rendererSize(@NotNull IRenderHandler iRenderHandler) {
            return 0;
        }

        public static void resizeCache(@NotNull IRenderHandler iRenderHandler, @NotNull Size viewSize) {
            Intrinsics.checkNotNullParameter(viewSize, "viewSize");
        }

        public static void safeClearAllNoteSliceCache(@NotNull IRenderHandler iRenderHandler) {
        }

        public static void safeClearAllSliceCache(@NotNull IRenderHandler iRenderHandler) {
        }

        public static void safeClearPageNoteSliceCache(@NotNull IRenderHandler iRenderHandler, @NotNull String pageId) {
            Intrinsics.checkNotNullParameter(pageId, "pageId");
        }

        public static void setBackground(@NotNull IRenderHandler iRenderHandler, @Nullable GeoLayout geoLayout) {
        }

        public static void setPageVisible(@NotNull IRenderHandler iRenderHandler, @NotNull BoxInfo virtualPageBoxInfo, boolean z) {
            Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        }

        public static void updateExistsRenderNode(@NotNull IRenderHandler iRenderHandler, @NotNull BoxInfo virtualPageBoxInfo, boolean z) {
            Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        }

        public static void log(@NotNull IRenderHandler iRenderHandler, @NotNull Function0<String> msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
        }
    }

    boolean addNoteSearchBeanList(@NotNull List<NoteSearchBean> list);

    void addRenderer(@NotNull String key, @NotNull RenderManager.Renderer renderer);

    @NotNull
    Observable<?> animateBoxChange(@NotNull View hostView, @NotNull AnimateBoxArgs args);

    void cancelAllRenderRequest();

    void clearDisplay();

    boolean clearNoteSearchBeanList();

    void clearRenderer();

    void clearShapeFlushInfo();

    @NotNull
    Observable<BoxInfo> createDisplayBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList);

    @NotNull
    Observable<BoxInfo> createDisplayScalingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList);

    @NotNull
    Observable<BoxInfo> createDisplayScrollingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList);

    @NotNull
    Observable<BoxInfo> createPreRenderBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> boxList);

    void destroy();

    @NotNull
    List<BoxInfo> displayBoxList();

    void draw(@NotNull Bitmap bitmap);

    void evict(@NotNull Set<String> keepList);

    boolean flushShapeToPage(@NotNull ShapeFlushInfo shapeFlushInfo);

    @NotNull
    String getDisplayDebugString();

    @Nullable
    PageRenderNodeInfo getPageRenderNodeInfo(@NotNull String pageId);

    @Nullable
    PageSliceInfo getPageSliceInfo(@NotNull String pageId);

    void invalidateNotVisiblePagesIf(@NotNull Collection<String> pageIdSet);

    void invalidateSliceByPages(@NotNull Collection<String> pageIdSet);

    boolean isEnabledPageBorder(@NotNull BoxInfo virtualPageBoxInfo);

    void log(@NotNull String msg);

    void log(@NotNull Function0<String> msg);

    void logW(@NotNull String msg);

    boolean lowLatencyFlushToPage(@NotNull ShapeFlushInfo shapeFlushInfo);

    void onDraw(@NotNull Canvas canvas);

    void removeRenderer(@NotNull String key);

    boolean removeVerifyId(@NotNull Shape shape, @NotNull BoxInfo virtualBoxInfo);

    int rendererSize();

    void resizeCache(@NotNull Size viewSize);

    void safeClearAllNoteSliceCache();

    void safeClearAllSliceCache();

    void safeClearPageNoteSliceCache(@NotNull String pageId);

    void setBackground(@Nullable GeoLayout geoLayout);

    void setPageVisible(@NotNull BoxInfo virtualPageBoxInfo, boolean visible);

    void updateExistsRenderNode(@NotNull BoxInfo virtualPageBoxInfo, boolean forceUpdate);
}
