package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.display.IRenderHandler;
import com.onyx.android.sdk.universal.editor.display.PageBorderRenderHandler;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bG\u0010HJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010\u0019\u001a\u00020\bH\u0016J$\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\u001e2\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001cH\u0016J$\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u001e2\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001cH\u0016J$\u0010!\u001a\b\u0012\u0004\u0012\u00020\n0\u001e2\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001cH\u0016J\u001c\u0010&\u001a\u0006\u0012\u0002\b\u00030\u001e2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0016J\u0018\u0010(\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010'\u001a\u00020\u0016H\u0016J\u0012\u0010+\u001a\u0004\u0018\u00010\r2\u0006\u0010*\u001a\u00020)H\u0016J\u0016\u0010.\u001a\u00020\b2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020)0,H\u0016J\b\u0010/\u001a\u00020\bH\u0016J\b\u00100\u001a\u00020)H\u0016R2\u00105\u001a\u001e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\r01j\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\r`28\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010;\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010:R\u0016\u0010=\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010AR\u001b\u0010F\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bC\u0010E¨\u0006I"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/PageBorderRenderHandler;", "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;", "", "shadowWidth", "color", "Landroid/graphics/Bitmap;", "c", C6999h.f39688c, "", C6997f.f39671c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "i", "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", "pageNodeInfo", C4921e.f26537n, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "e", "onDraw", "bitmap", "draw", "", "visible", "setPageVisible", "clearDisplay", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "visibleBoxList", "Lio/reactivex/rxjava3/core/Observable;", "createDisplayScalingBoxListObservable", "createDisplayScrollingBoxListObservable", "createDisplayBoxListObservable", "Landroid/view/View;", "hostView", "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "args", "animateBoxChange", "forceUpdate", "updateExistsRenderNode", "", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageRenderNodeInfo", "", "keepList", "evict", "destroy", "getDisplayDebugString", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "a", "Ljava/util/LinkedHashMap;", "pageRenderNodeMap", "Landroid/graphics/Paint;", "b", "Landroid/graphics/Paint;", "pageBorderPaint", "I", "borderShadowWidth", "d", "currentBorderColor", "Landroid/graphics/Bitmap;", "blurBitmap", "Landroid/graphics/BitmapShader;", "Landroid/graphics/BitmapShader;", "blurBitmapShader", C6998g.f39679a, "Lkotlin/Lazy;", "()Landroid/graphics/Paint;", "blurBitmapPaint", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageBorderRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageBorderRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageBorderRenderHandler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,246:1\n526#2:247\n511#2,6:248\n215#3,2:254\n215#3,2:256\n215#3,2:259\n337#4:258\n*S KotlinDebug\n*F\n+ 1 PageBorderRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageBorderRenderHandler\n*L\n49#1:247\n49#1:248,6\n50#1:254,2\n61#1:256,2\n184#1:259,2\n128#1:258\n*E\n"})
/* loaded from: classes8.dex */
public final class PageBorderRenderHandler implements IRenderHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public LinkedHashMap<String, PageRenderNodeInfo> pageRenderNodeMap = new LinkedHashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Paint pageBorderPaint;

    /* renamed from: c, reason: from kotlin metadata */
    public final int borderShadowWidth;

    /* renamed from: d, reason: from kotlin metadata */
    public int currentBorderColor;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Bitmap blurBitmap;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public BitmapShader blurBitmapShader;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy blurBitmapPaint;

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageBorderRenderHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10314a<T> implements Consumer {
        public C10314a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageBorderRenderHandler.this.m40622i(it2);
        }
    }

    public PageBorderRenderHandler() {
        Lazy lazy;
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.pageBorderPaint = paint;
        this.borderShadowWidth = ResManager.INSTANCE.getDimens(C8045R.dimen.page_border_shadow_width);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.universal.editor.display.PageBorderRenderHandler$blurBitmapPaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                Paint paint2 = new Paint();
                paint2.setStyle(Paint.Style.FILL);
                paint2.setAntiAlias(false);
                return paint2;
            }
        });
        this.blurBitmapPaint = lazy;
    }

    /* renamed from: d */
    public static final void m40615d(PageBorderRenderHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.log("pageCount = " + this$0.pageRenderNodeMap.size());
    }

    /* renamed from: j */
    public static final PageRenderNodeInfo m40616j(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PageRenderNodeInfo) tmp0.invoke(obj);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean addNoteSearchBeanList(@NotNull List<NoteSearchBean> list) {
        return IRenderHandler.DefaultImpls.addNoteSearchBeanList(this, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void addRenderer(@NotNull String str, @NotNull RenderManager.Renderer renderer) {
        IRenderHandler.DefaultImpls.addRenderer(this, str, renderer);
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

    /* renamed from: c */
    public final Bitmap m40617c(int shadowWidth, int color) {
        Bitmap createBitmap = Bitmap.createBitmap(shadowWidth, shadowWidth, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        Paint m40620g = m40620g();
        m40620g.setColor(color);
        float f = shadowWidth;
        m40620g.setMaskFilter(new BlurMaskFilter(f, BlurMaskFilter.Blur.OUTER));
        float f2 = -f;
        canvas.translate(f2, 0.0f);
        canvas.drawRect(0.0f, f2, f, f * 2.0f, m40620g());
        return createBitmap;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void cancelAllRenderRequest() {
        IRenderHandler.DefaultImpls.cancelAllRenderRequest(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearDisplay() {
        Iterator<Map.Entry<String, PageRenderNodeInfo>> it2 = this.pageRenderNodeMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().getRenderNode().discardDisplayList();
        }
        this.pageRenderNodeMap.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean clearNoteSearchBeanList() {
        return IRenderHandler.DefaultImpls.clearNoteSearchBeanList(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearRenderer() {
        IRenderHandler.DefaultImpls.clearRenderer(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearShapeFlushInfo() {
        IRenderHandler.DefaultImpls.clearShapeFlushInfo(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(visibleBoxList));
        Observable<BoxInfo> doOnComplete = Observable.fromIterable(visibleBoxList).doOnNext(new C10314a()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.urk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageBorderRenderHandler.m40615d(PageBorderRenderHandler.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScalingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        return createDisplayBoxListObservable(editorBundle, visibleBoxList);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScrollingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        return createDisplayBoxListObservable(editorBundle, visibleBoxList);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createPreRenderBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> list) {
        return IRenderHandler.DefaultImpls.createPreRenderBoxListObservable(this, editorBundle, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void destroy() {
        clearDisplay();
        Bitmap bitmap = this.blurBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.blurBitmap = null;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public List<BoxInfo> displayBoxList() {
        return IRenderHandler.DefaultImpls.displayBoxList(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Canvas canvas = new Canvas(bitmap);
        for (Map.Entry<String, PageRenderNodeInfo> entry : this.pageRenderNodeMap.entrySet()) {
            float translationX = entry.getValue().getRenderNode().getTranslationX();
            float translationY = entry.getValue().getRenderNode().getTranslationY();
            canvas.translate(translationX, translationY);
            m40618e(entry.getValue(), canvas);
            canvas.translate(-translationX, -translationY);
        }
    }

    /* renamed from: e */
    public final void m40618e(PageRenderNodeInfo pageNodeInfo, Canvas canvas) {
        BitmapShader bitmapShader;
        RectF rectF = new RectF(pageNodeInfo.toRenderNodePositionRect());
        m40619f();
        if (this.blurBitmap == null || (bitmapShader = this.blurBitmapShader) == null) {
            return;
        }
        float width = r9.getWidth() / 2.0f;
        float height = r9.getHeight() / 2.0f;
        float width2 = canvas.getWidth() / 2.0f;
        float height2 = canvas.getHeight() / 2.0f;
        this.pageBorderPaint.setAntiAlias(false);
        Matrix matrix = new Matrix();
        matrix.setRotate(180.0f, width, height);
        bitmapShader.setLocalMatrix(matrix);
        this.pageBorderPaint.setShader(bitmapShader);
        canvas.drawRect(rectF.left - r9.getWidth(), rectF.top, rectF.left, rectF.bottom, this.pageBorderPaint);
        canvas.rotate(180.0f, width2, height2);
        canvas.drawRect(rectF.left - r9.getWidth(), rectF.top, rectF.left, rectF.bottom, this.pageBorderPaint);
        canvas.rotate(180.0f, width2, height2);
        matrix.setRotate(270.0f, width, height);
        bitmapShader.setLocalMatrix(matrix);
        this.pageBorderPaint.setShader(bitmapShader);
        canvas.drawRect(rectF.left, rectF.top - r9.getWidth(), rectF.right, rectF.top, this.pageBorderPaint);
        canvas.rotate(180.0f, width2, height2);
        canvas.drawRect(rectF.left, rectF.top - r9.getWidth(), rectF.right, rectF.top, this.pageBorderPaint);
        canvas.rotate(180.0f, width2, height2);
        log("drawPageShadow, rn.id = " + pageNodeInfo.getRenderNode().getUniqueId());
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void evict(@NotNull Set<String> keepList) {
        Map map;
        BoxInfo virtualPageBoxInfo;
        IRenderNode renderNode;
        Intrinsics.checkNotNullParameter(keepList, "keepList");
        map = MapsKt__MapsKt.toMap(this.pageRenderNodeMap);
        for (Map.Entry entry : map.entrySet()) {
            if (!keepList.contains(entry.getKey())) {
                PageRenderNodeInfo remove = this.pageRenderNodeMap.remove(entry.getKey());
                if (remove != null && (renderNode = remove.getRenderNode()) != null) {
                    renderNode.discardDisplayList();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("evict, ");
                sb.append((remove == null || (virtualPageBoxInfo = remove.getVirtualPageBoxInfo()) == null) ? null : virtualPageBoxInfo.getId());
                log(sb.toString());
            }
        }
    }

    /* renamed from: f */
    public final void m40619f() {
        int m40621h = m40621h();
        if (m40621h != this.currentBorderColor || this.blurBitmap == null || this.blurBitmapShader == null) {
            Bitmap bitmap = this.blurBitmap;
            if (bitmap != null) {
                bitmap.recycle();
            }
            Bitmap m40617c = m40617c(this.borderShadowWidth, m40621h);
            this.blurBitmap = m40617c;
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.blurBitmapShader = new BitmapShader(m40617c, tileMode, tileMode);
            this.currentBorderColor = m40621h;
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean flushShapeToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        return IRenderHandler.DefaultImpls.flushShapeToPage(this, shapeFlushInfo);
    }

    /* renamed from: g */
    public final Paint m40620g() {
        return (Paint) this.blurBitmapPaint.getValue();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public String getDisplayDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + '\n');
        sb.append("pageRenderNodeMap.size = " + this.pageRenderNodeMap.size() + '\n');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @Nullable
    public PageRenderNodeInfo getPageRenderNodeInfo(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.pageRenderNodeMap.get(pageId);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @Nullable
    public PageSliceInfo getPageSliceInfo(@NotNull String str) {
        return IRenderHandler.DefaultImpls.getPageSliceInfo(this, str);
    }

    /* renamed from: h */
    public final int m40621h() {
        return UniversalThemeUtils.INSTANCE.getBgOverlayColor();
    }

    /* renamed from: i */
    public final void m40622i(final BoxInfo virtualPageBoxInfo) {
        LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
        String id = virtualPageBoxInfo.getId();
        final Function1<String, PageRenderNodeInfo> function1 = new Function1<String, PageRenderNodeInfo>() { // from class: com.onyx.android.sdk.universal.editor.display.PageBorderRenderHandler$refreshPage$pageNodeInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PageRenderNodeInfo invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new PageRenderNodeInfo(BoxInfo.this, null, 2, null);
            }
        };
        PageRenderNodeInfo computeIfAbsent = linkedHashMap.computeIfAbsent(id, new Function() { // from class: com.sunia.HTREnginev2.vrk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PageRenderNodeInfo m40616j;
                m40616j = PageBorderRenderHandler.m40616j(Function1.this, obj);
                return m40616j;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        PageRenderNodeInfo pageRenderNodeInfo = computeIfAbsent;
        pageRenderNodeInfo.setVisible(false);
        if (pageRenderNodeInfo.updateRenderNodeBoxInfo(virtualPageBoxInfo)) {
            pageRenderNodeInfo.setVisible(true);
            m40623k(pageRenderNodeInfo);
        }
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

    /* renamed from: k */
    public final void m40623k(PageRenderNodeInfo pageNodeInfo) {
        Rect renderNodePositionRect = pageNodeInfo.toRenderNodePositionRect();
        IRenderNode renderNode = pageNodeInfo.getRenderNode();
        renderNode.setPosition(renderNodePositionRect);
        renderNode.setClipToBounds(false);
        try {
            m40618e(pageNodeInfo, renderNode.beginRecording());
        } finally {
            renderNode.endRecording();
        }
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
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, PageRenderNodeInfo> entry : linkedHashMap.entrySet()) {
            if (entry.getValue().getIsVisible()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            if (!((PageRenderNodeInfo) entry2.getValue()).getRenderNode().hasDisplayList()) {
                log("no display list, re-record page render node, rn.id = " + ((PageRenderNodeInfo) entry2.getValue()).getRenderNode().getUniqueId());
                m40623k((PageRenderNodeInfo) entry2.getValue());
            }
            ((PageRenderNodeInfo) entry2.getValue()).getRenderNode().drawInto(canvas);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void removeRenderer(@NotNull String str) {
        IRenderHandler.DefaultImpls.removeRenderer(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean removeVerifyId(@NotNull Shape shape, @NotNull BoxInfo boxInfo) {
        return IRenderHandler.DefaultImpls.removeVerifyId(this, shape, boxInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public int rendererSize() {
        return IRenderHandler.DefaultImpls.rendererSize(this);
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
    public void setPageVisible(@NotNull BoxInfo virtualPageBoxInfo, boolean visible) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null || pageRenderNodeInfo.isNeedUpdateRenderNode(virtualPageBoxInfo)) {
            return;
        }
        pageRenderNodeInfo.setVisible(visible);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void updateExistsRenderNode(@NotNull BoxInfo virtualPageBoxInfo, boolean forceUpdate) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null) {
            return;
        }
        boolean updateRenderNodeBoxInfo = pageRenderNodeInfo.updateRenderNodeBoxInfo(virtualPageBoxInfo);
        if (forceUpdate || updateRenderNodeBoxInfo) {
            pageRenderNodeInfo.getRenderNode().discardDisplayList();
            m40623k(pageRenderNodeInfo);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void log(@NotNull Function0<String> function0) {
        IRenderHandler.DefaultImpls.log(this, function0);
    }
}
