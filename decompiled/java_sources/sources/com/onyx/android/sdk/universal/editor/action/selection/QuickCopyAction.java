package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PaintKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionArgs;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.selection.UpdateSelectionBitmapRequest;
import com.onyx.android.sdk.universal.common.drag.BitmapDragShadowBuilder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u0002H\u0002J\u0018\u0010\t\u001a\u00020\b2\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Ljava/util/concurrent/atomic/AtomicReference;", "Landroid/graphics/Bitmap;", "m", "selectionBitmap", "", "p", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Landroid/graphics/RectF;", "rectF", "l", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "shapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class QuickCopyAction extends RxBaseAppAction<QuickCopyAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuickCopyAction$a */
    /* loaded from: classes8.dex */
    public static final class C9916a<T, R> implements Function {
        public C9916a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AtomicReference<Bitmap>> apply(@NotNull QuickCopyAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuickCopyAction.this.m39917m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuickCopyAction$b */
    /* loaded from: classes8.dex */
    public static final class C9917b<T> implements Consumer {
        public C9917b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AtomicReference<Bitmap> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QuickCopyAction.this.m39920p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuickCopyAction$c */
    /* loaded from: classes8.dex */
    public static final class C9918c<T, R> implements Function {
        public C9918c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends QuickCopyAction> apply(@NotNull AtomicReference<Bitmap> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuickCopyAction.this.m39918n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuickCopyAction$d */
    /* loaded from: classes8.dex */
    public static final class C9919d<T, R> implements Function {
        public C9919d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final QuickCopyAction apply(@NotNull DrawSelectionRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuickCopyAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public QuickCopyAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapes = shapes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<QuickCopyAction> create() {
        Observable<QuickCopyAction> flatMap = Observable.just(this).flatMap(new C9916a()).observeOn(getMainUIScheduler()).doOnNext(new C9917b()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9918c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final RectF m39916l(RectF rectF) {
        float max = (float) Math.max(rectF.width(), rectF.height());
        float f = max / 2;
        float centerX = rectF.centerX() - f;
        float centerY = rectF.centerY() - f;
        return new RectF(centerX, centerY, centerX + max, max + centerY);
    }

    /* renamed from: m */
    public final Observable<AtomicReference<Bitmap>> m39917m() {
        if (!this.renderContext.getSelectionArgs().getSelectionRenderingShapes().isEmpty()) {
            return DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, AtomicReference<Bitmap>>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuickCopyAction$getSelectionBitmap$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final AtomicReference<Bitmap> invoke(@NotNull NoteBundle it2) {
                    RenderContext renderContext;
                    BoxInfo boxInfo;
                    List list;
                    List<Integer> emptyList;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    renderContext = QuickCopyAction.this.renderContext;
                    boxInfo = QuickCopyAction.this.virtualBoxInfo;
                    list = QuickCopyAction.this.shapes;
                    UpdateSelectionBitmapRequest updateSelectionBitmapRequest = new UpdateSelectionBitmapRequest(it2, renderContext, boxInfo, list);
                    updateSelectionBitmapRequest.setUpdateSelectionBitmap(false);
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    updateSelectionBitmapRequest.setRenderingShapeTypes(emptyList);
                    updateSelectionBitmapRequest.execute2();
                    return new AtomicReference<>(updateSelectionBitmapRequest.getBitmap());
                }
            });
        }
        Observable<AtomicReference<Bitmap>> just = Observable.just(new AtomicReference(this.renderContext.getSelectionArgs().getSelectionBitmap()));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: n */
    public final Observable<QuickCopyAction> m39918n() {
        Observable map = new DrawSelectionRectAction(getEditorBundle(), this.renderContext, this.virtualBoxInfo, CollectionKt.ensureList(this.shapes), false, 16, null).configureSelectionRender(false, ShapeTransformAction.QuickCopy).build().map(new C9919d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Bitmap m39919o(AtomicReference<Bitmap> selectionBitmap) {
        SelectionArgs selectionArgs = this.renderContext.getSelectionArgs();
        Bitmap bitmap = selectionBitmap.get();
        if (bitmap == null) {
            return null;
        }
        SelectionRect selectionRect = selectionArgs.getSelectionRect();
        if (selectionRect == null) {
            return bitmap;
        }
        RectF copy = RectFKt.copy(selectionRect.getOriginRect());
        RectFKt.scaleRect(copy, this.virtualBoxInfo.getActualScale());
        float scaleToWidth = RectFKt.scaleToWidth(BitmapKt.getRectF(bitmap), copy);
        Matrix scaleTranslate = MatrixKt.scaleTranslate(MatrixKt.copy(selectionRect.getMatrix()), this.virtualBoxInfo.getActualScale(), this.virtualBoxInfo.getActualScale());
        Matrix matrix = new Matrix();
        matrix.preScale(scaleToWidth, scaleToWidth);
        matrix.postTranslate(selectionRect.getOriginRect().left * this.virtualBoxInfo.getActualScale(), selectionRect.getOriginRect().top * this.virtualBoxInfo.getActualScale());
        matrix.postConcat(scaleTranslate);
        matrix.postTranslate(this.virtualBoxInfo.getVisibleRect().left, this.virtualBoxInfo.getVisibleRect().top);
        RectF rectF = BitmapKt.getRectF(bitmap);
        matrix.mapRect(rectF);
        RectF m39916l = m39916l(rectF);
        float width = m39916l.width();
        ResManager resManager = ResManager.INSTANCE;
        float min = (width > resManager.getScreenWidth() || m39916l.height() > resManager.getScreenHeight()) ? Math.min(resManager.getScreenWidth() / m39916l.width(), resManager.getScreenHeight() / m39916l.height()) : 1.0f;
        RectFKt.scale(m39916l, Float.valueOf(min));
        matrix.postTranslate(-m39916l.left, -m39916l.top);
        matrix.postScale(min, min);
        int width2 = (int) m39916l.width();
        int height = (int) m39916l.height();
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width2, height, config);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        Paint copy2 = PaintKt.copy(this.renderContext.getPaint());
        PaintKt.translucent(copy2);
        canvas.drawBitmap(bitmap, matrix, copy2);
        return createBitmap;
    }

    /* renamed from: p */
    public final void m39920p(AtomicReference<Bitmap> selectionBitmap) {
        Bitmap m39919o;
        View editorView = EditorBundleKt.editorView(getEditorBundle());
        if (editorView == null || (m39919o = m39919o(selectionBitmap)) == null) {
            return;
        }
        ViewCompat.startDragAndDrop(editorView, null, new BitmapDragShadowBuilder(m39919o), EditorConstants.LOCAL_STATE_START_QUICK_COPY, 0);
    }
}
