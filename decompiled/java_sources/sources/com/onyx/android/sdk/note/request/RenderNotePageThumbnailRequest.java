package com.onyx.android.sdk.note.request;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.genericshape.GeoLayoutMarginBase;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.NoteThumbnailRenderArgs;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.note.extension.PaintKt;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u001a¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u0010\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\u0014\u0010\u0016\u001a\u00020\u0004*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0014H\u0002J$\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "j", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "l", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "m", "Landroid/graphics/Paint;", C6998g.f39679a, "Landroid/graphics/Matrix;", "Landroid/graphics/RectF;", "displayRectF", GoogleApiAvailabilityLight.f29016b, "i", "shapes", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;", "Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderNotePageThumbnailRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageThumbnailRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n344#2,3:148\n766#3:151\n857#3,2:152\n1855#3,2:155\n1#4:154\n*S KotlinDebug\n*F\n+ 1 RenderNotePageThumbnailRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest\n*L\n57#1:148,3\n73#1:151\n73#1:152,2\n107#1:155,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderNotePageThumbnailRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public NoteThumbnailRenderArgs args;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderNotePageThumbnailRequest(@NotNull NoteBundle noteBundle, @NotNull NoteThumbnailRenderArgs args) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    /* renamed from: k */
    public static final boolean m34142k(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(noteBundle.getNoteDoc(), this.args.getPageId());
        if (notePage == null) {
            return;
        }
        m34146j(notePage);
    }

    /* renamed from: g */
    public final Paint m34143g() {
        Paint paint = new Paint();
        PaintKt.updateShapeDrawPaintStyle(paint);
        return paint;
    }

    @NotNull
    public final NoteThumbnailRenderArgs getArgs() {
        return this.args;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public final List<Shape> m34144h(NotePage notePage, List<? extends Shape> shapes) {
        return this.args.getRenderOutOfPageShape() ? shapes : NoteDocumentKt.filterInPageRectShapeList(getNoteBundle().getNoteDoc(), notePage, shapes);
    }

    /* renamed from: i */
    public final RectF m34145i() {
        return this.args.getDisplayRectF();
    }

    /* renamed from: j */
    public final boolean m34146j(NotePage notePage) {
        List<? extends Shape> mutableList;
        RectF m34145i = m34145i();
        if (m34145i.isEmpty()) {
            return false;
        }
        RectF clipRectFOrBitmapBoundingRectF = this.args.getClipRectFOrBitmapBoundingRectF();
        Bitmap bitmap = this.args.getBitmap();
        RenderContext renderContext = new RenderContext(m34143g(), new Matrix());
        renderContext.setBitmap(bitmap);
        renderContext.setShapeShaderManager(getNoteBundle().getShapeShaderManager());
        Rect rect = new Rect();
        clipRectFOrBitmapBoundingRectF.roundOut(rect);
        renderContext.updateRect(rect);
        renderContext.setClipRect(clipRectFOrBitmapBoundingRectF);
        renderContext.updatePageInfo(notePage.getPageInfo());
        Matrix matrix = renderContext.getMatrix();
        matrix.postConcat(this.args.getRotationMatrix());
        m34149n(matrix, m34145i);
        renderContext.setMatrix(matrix);
        renderContext.setShowExcerptIndicator(this.args.getShowExcerptIndicator());
        m34147l(renderContext);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) m34144h(notePage, NotePageShape.INSTANCE.getRenderShapeList(notePage)));
        if (!this.args.getRenderReferenceShape()) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : mutableList) {
                if (!ShapeTypes.INSTANCE.isReferenceShape((Shape) obj)) {
                    arrayList.add(obj);
                }
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        }
        if (!this.args.getShowTape()) {
            final RenderNotePageThumbnailRequest$render$2 renderNotePageThumbnailRequest$render$2 = new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest$render$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Shape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(ShapeKt.isTapeShape(it2));
                }
            };
            mutableList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.nkl
                @Override // java.util.function.Predicate
                public final boolean test(Object obj2) {
                    boolean m34142k;
                    m34142k = RenderNotePageThumbnailRequest.m34142k(Function1.this, obj2);
                    return m34142k;
                }
            });
        }
        NoteDocumentKt.ensureInitReferenceShape$default(getNoteBundle().getNoteDoc(), mutableList, null, 2, null);
        m34148m(mutableList, renderContext);
        return true;
    }

    /* renamed from: l */
    public final void m34147l(RenderContext renderContext) {
        BoxInfo virtualPageBoxInfo = this.args.getVirtualPageBoxInfo();
        if (this.args.getRenderPageMarin() && virtualPageBoxInfo.hasMargin()) {
            GeoLayoutMargin loadFromFileOrDefault = GeoLayoutMargin.INSTANCE.loadFromFileOrDefault(TemplateResourceConstant.INSTANCE.getPageMarginTemplateFile(getNoteBundle().getDocumentId(), virtualPageBoxInfo.getMarginStyle().getTemplateResourceId()));
            Matrix matrix = renderContext.getMatrix();
            if (!(virtualPageBoxInfo.getRotation() == 0.0f)) {
                BoxInfo copy = virtualPageBoxInfo.copy();
                BoxInfo.Companion companion = BoxInfo.INSTANCE;
                companion.rotate(copy, -virtualPageBoxInfo.getRotation());
                Matrix rotate = companion.rotate(copy.copy(), virtualPageBoxInfo.getRotation());
                rotate.postConcat(matrix);
                matrix = rotate;
                virtualPageBoxInfo = copy;
            }
            RectF copy2 = RectFKt.copy(virtualPageBoxInfo.getOriginRectF());
            loadFromFileOrDefault.setMargin(virtualPageBoxInfo.getMarginPercent(), virtualPageBoxInfo.getMarginStyle());
            loadFromFileOrDefault.setMatrix(matrix);
            loadFromFileOrDefault.setContentRect(copy2);
            GeoLayoutMarginBase.draw$default(loadFromFileOrDefault, renderContext.getCanvas(), false, null, 6, null);
        }
    }

    /* renamed from: m */
    public final void m34148m(List<? extends Shape> shapeList, final RenderContext renderContext) {
        for (Shape shape : shapeList) {
            if (this.args.getLayerId() < 0 || this.args.getLayerId() == shape.getLayerId()) {
                if (this.args.getLayerId() >= 0 || renderContext.isLayerVisibleById(shape.getLayerId())) {
                    final String shapeUniqueId = ShapeTypes.INSTANCE.getTargetShape(shape).getShapeUniqueId();
                    Set<String> renderedShapeIds = this.args.getRenderedShapeIds();
                    boolean z = false;
                    if (renderedShapeIds != null && renderedShapeIds.contains(shapeUniqueId)) {
                        z = true;
                    }
                    if (!z) {
                        AnyKt.runCatching(shape, true, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest$renderShapes$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            @Nullable
                            public final Boolean invoke(@NotNull Shape runCatching) {
                                Intrinsics.checkNotNullParameter(runCatching, "$this$runCatching");
                                runCatching.render(RenderContext.this);
                                Set<String> renderedShapeIds2 = this.getArgs().getRenderedShapeIds();
                                if (renderedShapeIds2 != null) {
                                    return Boolean.valueOf(renderedShapeIds2.add(shapeUniqueId));
                                }
                                return null;
                            }
                        });
                    }
                }
            }
        }
    }

    /* renamed from: n */
    public final void m34149n(Matrix matrix, RectF rectF) {
        matrix.postScale(this.args.getScale(), this.args.getScale());
        matrix.postTranslate(rectF.left, rectF.top);
    }

    public final void setArgs(@NotNull NoteThumbnailRenderArgs noteThumbnailRenderArgs) {
        Intrinsics.checkNotNullParameter(noteThumbnailRenderArgs, "<set-?>");
        this.args = noteThumbnailRenderArgs;
    }
}
