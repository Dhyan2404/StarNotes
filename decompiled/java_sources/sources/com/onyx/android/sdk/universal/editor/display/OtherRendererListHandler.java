package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.display.IRenderHandler;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.core.Observable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\u0016\u0010\u0016\u001a\u00020\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0014H\u0016J\u001c\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001d\u001a\u00020\u000bH\u0016R\"\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;", "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDraw", "Landroid/graphics/Bitmap;", "bitmap", "draw", "destroy", "clearDisplay", "", "key", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;", "renderer", "addRenderer", "removeRenderer", "clearRenderer", "", "rendererSize", "", "keepList", "evict", "Landroid/view/View;", "hostView", "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "args", "Lio/reactivex/rxjava3/core/Observable;", "animateBoxChange", "getDisplayDebugString", "", "a", "Ljava/util/Map;", "rendererMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOtherRendererListHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtherRendererListHandler.kt\ncom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,72:1\n215#2,2:73\n*S KotlinDebug\n*F\n+ 1 OtherRendererListHandler.kt\ncom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler\n*L\n25#1:73,2\n*E\n"})
/* loaded from: classes8.dex */
public final class OtherRendererListHandler implements IRenderHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<String, RenderManager.Renderer> rendererMap = new LinkedHashMap();

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean addNoteSearchBeanList(@NotNull List<NoteSearchBean> list) {
        return IRenderHandler.DefaultImpls.addNoteSearchBeanList(this, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void addRenderer(@NotNull String key, @NotNull RenderManager.Renderer renderer) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        this.rendererMap.put(key, renderer);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<?> animateBoxChange(@NotNull View hostView, @NotNull AnimateBoxArgs args) {
        Intrinsics.checkNotNullParameter(hostView, "hostView");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void cancelAllRenderRequest() {
        IRenderHandler.DefaultImpls.cancelAllRenderRequest(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearDisplay() {
        this.rendererMap.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean clearNoteSearchBeanList() {
        return IRenderHandler.DefaultImpls.clearNoteSearchBeanList(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearRenderer() {
        this.rendererMap.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearShapeFlushInfo() {
        IRenderHandler.DefaultImpls.clearShapeFlushInfo(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> list) {
        return IRenderHandler.DefaultImpls.createDisplayBoxListObservable(this, editorBundle, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScalingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> list) {
        return IRenderHandler.DefaultImpls.createDisplayScalingBoxListObservable(this, editorBundle, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScrollingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> list) {
        return IRenderHandler.DefaultImpls.createDisplayScrollingBoxListObservable(this, editorBundle, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createPreRenderBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> list) {
        return IRenderHandler.DefaultImpls.createPreRenderBoxListObservable(this, editorBundle, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void destroy() {
        this.rendererMap.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public List<BoxInfo> displayBoxList() {
        return IRenderHandler.DefaultImpls.displayBoxList(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void evict(@NotNull Set<String> keepList) {
        Intrinsics.checkNotNullParameter(keepList, "keepList");
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean flushShapeToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        return IRenderHandler.DefaultImpls.flushShapeToPage(this, shapeFlushInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public String getDisplayDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + '\n');
        sb.append(String.valueOf(this.rendererMap.keySet()));
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @Nullable
    public PageRenderNodeInfo getPageRenderNodeInfo(@NotNull String str) {
        return IRenderHandler.DefaultImpls.getPageRenderNodeInfo(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @Nullable
    public PageSliceInfo getPageSliceInfo(@NotNull String str) {
        return IRenderHandler.DefaultImpls.getPageSliceInfo(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void invalidateNotVisiblePagesIf(@NotNull Collection<String> collection) {
        IRenderHandler.DefaultImpls.invalidateNotVisiblePagesIf(this, collection);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void invalidateSliceByPages(@NotNull Collection<String> collection) {
        IRenderHandler.DefaultImpls.invalidateSliceByPages(this, collection);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean isEnabledPageBorder(@NotNull BoxInfo boxInfo) {
        return IRenderHandler.DefaultImpls.isEnabledPageBorder(this, boxInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void log(@NotNull String str) {
        IRenderHandler.DefaultImpls.log(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void logW(@NotNull String str) {
        IRenderHandler.DefaultImpls.logW(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean lowLatencyFlushToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        return IRenderHandler.DefaultImpls.lowLatencyFlushToPage(this, shapeFlushInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void onDraw(@NotNull Canvas canvas) {
        Map mutableMap;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        mutableMap = MapsKt__MapsKt.toMutableMap(this.rendererMap);
        Iterator it2 = mutableMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((RenderManager.Renderer) ((Map.Entry) it2.next()).getValue()).onDraw(canvas);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void removeRenderer(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.rendererMap.remove(key);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean removeVerifyId(@NotNull Shape shape, @NotNull BoxInfo boxInfo) {
        return IRenderHandler.DefaultImpls.removeVerifyId(this, shape, boxInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public int rendererSize() {
        return this.rendererMap.size();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void resizeCache(@NotNull Size size) {
        IRenderHandler.DefaultImpls.resizeCache(this, size);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearAllNoteSliceCache() {
        IRenderHandler.DefaultImpls.safeClearAllNoteSliceCache(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearAllSliceCache() {
        IRenderHandler.DefaultImpls.safeClearAllSliceCache(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearPageNoteSliceCache(@NotNull String str) {
        IRenderHandler.DefaultImpls.safeClearPageNoteSliceCache(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void setBackground(@Nullable GeoLayout geoLayout) {
        IRenderHandler.DefaultImpls.setBackground(this, geoLayout);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void setPageVisible(@NotNull BoxInfo boxInfo, boolean z) {
        IRenderHandler.DefaultImpls.setPageVisible(this, boxInfo, z);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void updateExistsRenderNode(@NotNull BoxInfo boxInfo, boolean z) {
        IRenderHandler.DefaultImpls.updateExistsRenderNode(this, boxInfo, z);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void log(@NotNull Function0<String> function0) {
        IRenderHandler.DefaultImpls.log(this, function0);
    }
}
