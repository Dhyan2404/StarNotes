package com.onyx.android.sdk.note.request.selection;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012¢\u0006\u0004\b8\u00109J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00103\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u00107\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010.\u001a\u0004\b5\u00100\"\u0004\b6\u00102¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", C6998g.f39679a, C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "i", "Ljava/util/List;", "shapeList", "", "j", "getRenderingShapeTypes", "()Ljava/util/List;", "setRenderingShapeTypes", "(Ljava/util/List;)V", "renderingShapeTypes", "", C4921e.f26537n, "F", "getRenderingShapeMinScale", "()F", "setRenderingShapeMinScale", "(F)V", "renderingShapeMinScale", "Landroid/graphics/Bitmap;", "l", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "m", Constants.HASIDCALL_INDEX_SIG, "getUpdateSelectionBitmap", Constants.BOOLEAN_VALUE_SIG, "setUpdateSelectionBitmap", "(Z)V", "updateSelectionBitmap", GoogleApiAvailabilityLight.f29016b, "getClearRender", "setClearRender", "clearRender", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateSelectionBitmapRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateSelectionBitmapRequest.kt\ncom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n344#2,3:119\n1855#3,2:122\n*S KotlinDebug\n*F\n+ 1 UpdateSelectionBitmapRequest.kt\ncom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest\n*L\n74#1:119,3\n76#1:122,2\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateSelectionBitmapRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<Integer> renderingShapeTypes;

    /* renamed from: k, reason: from kotlin metadata */
    public float renderingShapeMinScale;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean updateSelectionBitmap;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean clearRender;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateSelectionBitmapRequest(@NotNull NoteBundle noteBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList) {
        super(noteBundle);
        List<Integer> listOf;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeList = shapeList;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(16);
        this.renderingShapeTypes = listOf;
        this.renderingShapeMinScale = 3.5f;
        this.updateSelectionBitmap = true;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        RectF originRect;
        RectF copy;
        BoxInfo noteInfo;
        Shape shape;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null || (originRect = selectionRect.getOriginRect()) == null || (copy = RectFKt.copy(originRect)) == null || (noteInfo = this.virtualBoxInfo.getNoteInfo()) == null) {
            return;
        }
        RectFKt.scaleRect(copy, noteInfo.getActualScale());
        Matrix matrix = new Matrix();
        SelectionRect selectionRect2 = this.renderContext.getSelectionRect();
        matrix.postConcat(MatrixKt.invertMatrix(selectionRect2 != null ? selectionRect2.getMatrix() : null));
        matrix.postScale(noteInfo.getActualScale(), noteInfo.getActualScale());
        matrix.postTranslate(-copy.left, -copy.top);
        RectF offsetToOrigin = RectFKt.offsetToOrigin(RectFKt.copy(copy));
        float fitSafeRect = RectFKt.fitSafeRect(offsetToOrigin, BitmapKt.getBITMAP_SAFE_SIZE());
        RectFKt.scaleRect(copy, fitSafeRect);
        matrix.postScale(fitSafeRect, fitSafeRect);
        RenderContext renderContext = new RenderContext(this.renderContext.getPaint(), matrix);
        renderContext.setShapeShaderManager(noteBundle.getShapeShaderManager());
        renderContext.setShowExcerptIndicator(false);
        this.bitmap = Bitmap.createBitmap((int) offsetToOrigin.width(), (int) offsetToOrigin.height(), Bitmap.Config.ARGB_8888);
        RectF copy2 = RectFKt.copy(copy);
        copy2.offsetTo(0.0f, 0.0f);
        renderContext.setBitmap(this.bitmap);
        renderContext.updateCanvas();
        Rect rect = new Rect();
        copy2.roundOut(rect);
        renderContext.updateRect(rect);
        ArrayList arrayList = new ArrayList();
        for (Shape shape2 : this.shapeList) {
            if (noteInfo.getActualScale() < this.renderingShapeMinScale || !this.renderingShapeTypes.contains(Integer.valueOf(shape2.getType()))) {
                if (this.clearRender) {
                    shape2.clearRender();
                }
                if (shape2.underContent()) {
                    shape = ShapeCopyUtils.INSTANCE.clone(shape2);
                    ShapePersistOptionsKt.setUnderContent(shape, false);
                } else {
                    shape = shape2;
                }
                if (m34195g(shape) && m34194f(shape)) {
                    if (shape == shape2) {
                        shape = ShapeCopyUtils.INSTANCE.clone(shape);
                    }
                    if (ColorKt.isColorOpaque(shape.getStrokeColor())) {
                        shape.setStrokeColor(ColorUtils.INSTANCE.getColorWithAlpha(shape.getStrokeColor(), 0.85f, false));
                    }
                    if (ColorKt.isColorOpaque(shape.getFillColor())) {
                        shape.setFillColor(ColorUtils.INSTANCE.getColorWithAlpha(shape.getFillColor(), 0.85f, false));
                    }
                }
                if (shape != shape2) {
                    shape.updateShapeRect();
                }
                shape.render(renderContext);
            } else {
                arrayList.add(shape2);
            }
        }
        if (this.updateSelectionBitmap) {
            this.renderContext.getSelectionArgs().setSelectionRenderingShapes(arrayList);
            this.renderContext.getSelectionArgs().setSelectionBitmap(this.bitmap);
        }
    }

    /* renamed from: f */
    public final boolean m34194f(Shape shape) {
        return ColorKt.isColorOpaque(shape.getStrokeColor()) || ColorKt.isColorOpaque(shape.getFillColor());
    }

    /* renamed from: g */
    public final boolean m34195g(Shape shape) {
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        return shapeTypes.isMarkerPenShape(shape) || shapeTypes.isMarkerPenShape(ShapePersistOptionsKt.getSubShapeType$default(shape, 0, 1, null));
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final boolean getClearRender() {
        return this.clearRender;
    }

    public final float getRenderingShapeMinScale() {
        return this.renderingShapeMinScale;
    }

    @NotNull
    public final List<Integer> getRenderingShapeTypes() {
        return this.renderingShapeTypes;
    }

    public final boolean getUpdateSelectionBitmap() {
        return this.updateSelectionBitmap;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setClearRender(boolean z) {
        this.clearRender = z;
    }

    public final void setRenderingShapeMinScale(float f) {
        this.renderingShapeMinScale = f;
    }

    public final void setRenderingShapeTypes(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.renderingShapeTypes = list;
    }

    public final void setUpdateSelectionBitmap(boolean z) {
        this.updateSelectionBitmap = z;
    }
}
