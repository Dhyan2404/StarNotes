package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.extension.PaintKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0012\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\t\u001a\u00020\bH\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Landroid/graphics/Bitmap;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "m", "Landroid/graphics/Paint;", "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Landroid/graphics/RectF;", "i", "Landroid/graphics/RectF;", "bitmapLimitRect", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDrawNoteShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawNoteShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,90:1\n1855#2,2:91\n344#3,3:93\n*S KotlinDebug\n*F\n+ 1 DrawNoteShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction\n*L\n56#1:91,2\n77#1:93,3\n*E\n"})
/* loaded from: classes8.dex */
public final class DrawNoteShapeAction extends RxBaseAppAction<Bitmap> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final RectF bitmapLimitRect;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DrawNoteShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10058a<T, R> implements Function {
        public C10058a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FindVisibleBoxInfoByNotePageIdRequest> apply(@NotNull DrawNoteShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DrawNoteShapeAction drawNoteShapeAction = DrawNoteShapeAction.this;
            return ComputeBoxListActionsKt.findVisibleBoxInfoByNotePageId$default(drawNoteShapeAction, drawNoteShapeAction.shape.getPageUniqueId(), false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DrawNoteShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10059b<T, R> implements Function {
        public C10059b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DrawNoteShapeAction drawNoteShapeAction = DrawNoteShapeAction.this;
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            return drawNoteShapeAction.m40173m(virtualPageBoxInfo != null ? virtualPageBoxInfo.copy() : null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawNoteShapeAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape, @NotNull RectF bitmapLimitRect) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(bitmapLimitRect, "bitmapLimitRect");
        this.shape = shape;
        this.bitmapLimitRect = bitmapLimitRect;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Bitmap> create() {
        Observable<Bitmap> map = Observable.just(this).flatMap(new C10058a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C10059b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Paint m40172l() {
        Paint paint = new Paint();
        PaintKt.updateShapeDrawPaintStyle(paint);
        return paint;
    }

    /* renamed from: m */
    public final Bitmap m40173m(BoxInfo virtualBoxInfo) {
        NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), this.shape.getPageUniqueId());
        Intrinsics.checkNotNull(notePage);
        ShapeCopyUtils shapeCopyUtils = ShapeCopyUtils.INSTANCE;
        Shape shape = this.shape;
        Shape cloneNewShape = shapeCopyUtils.cloneNewShape(shape, shape.getType());
        ShapeOptions.INSTANCE.resetTransformMatrix(cloneNewShape);
        cloneNewShape.setShapeMatrix(new Matrix());
        this.shape = cloneNewShape;
        float f = 0;
        float f2 = f - cloneNewShape.getOriginRect().left;
        float f3 = f - this.shape.getOriginRect().top;
        Iterator<T> it2 = this.shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints().iterator();
        while (it2.hasNext()) {
            ((TouchPoint) it2.next()).offset(f2, f3);
        }
        this.shape.updatePoints();
        if (virtualBoxInfo != null) {
            virtualBoxInfo.setScale(1.0f);
        }
        RectF copy = RectFKt.copy(this.shape.getOriginRect());
        float fitWithinRect = RectFKt.fitWithinRect(copy, this.bitmapLimitRect);
        BitmapUtils.INSTANCE.checkBitmapDecodeSize(Float.valueOf(copy.width()), Float.valueOf(copy.height()));
        Bitmap createBitmap = Bitmap.createBitmap((int) copy.width(), (int) copy.height(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        createBitmap.eraseColor(0);
        Matrix matrix = new Matrix();
        matrix.postScale(fitWithinRect, fitWithinRect);
        RenderContext renderContext = new RenderContext(m40172l(), matrix);
        renderContext.setBitmap(createBitmap);
        renderContext.updatePageInfo(notePage.getPageInfo());
        Rect rect = new Rect();
        copy.roundOut(rect);
        renderContext.updateRect(rect);
        renderContext.setClipRect(copy);
        renderContext.setShapeShaderManager(EditorBundleKt.noteBundle(getEditorBundle()).getShapeShaderManager());
        this.shape.render(renderContext);
        return createBitmap;
    }
}
