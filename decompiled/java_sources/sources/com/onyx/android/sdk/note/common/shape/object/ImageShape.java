package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SVGDrawableManager;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J \u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J0\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "Landroid/graphics/Matrix;", "matrix", "Landroid/graphics/Bitmap;", "backgroundBitmap", "", "b", "", "width", "height", "Lcom/onyx/android/sdk/base/data/Size;", "bitmapSize", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImageShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageShape.kt\ncom/onyx/android/sdk/note/common/shape/object/ImageShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"})
/* loaded from: classes8.dex */
public class ImageShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 19;

    /* renamed from: a */
    public final boolean m33861a(Matrix matrix, RenderContext renderContext, float width, float height, Size bitmapSize) {
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(this);
        if (resource == null || renderContext.getBitmap() == null) {
            return false;
        }
        Size size = new Size(0, 0, 3, null);
        if (!BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(resource.getPath(), size)) {
            Debug.INSTANCE.m32044e(getClass(), "decodeBitmapSizeSupportExif fail", new Object[0]);
            return false;
        }
        int width2 = size.getWidth();
        int height2 = size.getHeight();
        bitmapSize.setWidth(width2);
        bitmapSize.setHeight(height2);
        matrix.postScale(width / bitmapSize.getWidth(), height / bitmapSize.getHeight());
        matrix.postTranslate(getDownPoint().getX(), getDownPoint().getY());
        matrix.postConcat(getRenderMatrix(renderContext));
        return true;
    }

    /* renamed from: b */
    public final void m33862b(RenderContext renderContext, Matrix matrix, Bitmap backgroundBitmap) {
        Bitmap loadResource;
        if (ShapePersistOptionsKt.isLocked(this) && (loadResource = SVGDrawableManager.INSTANCE.getInstance().loadResource(new Matrix(), C7485R.drawable.lock_indicator)) != null) {
            Matrix copy = MatrixKt.copy(matrix);
            copy.postConcat(MatrixKt.invertMatrix(getRenderMatrix(renderContext)));
            copy.postTranslate(getOriginRect().width(), 0.0f);
            Matrix shapeMatrix = getShapeMatrix();
            if (shapeMatrix != null) {
                copy.postConcat(shapeMatrix);
            }
            copy.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(this));
            Matrix shapeMatrix2 = getShapeMatrix();
            float matrixRotateAngel = shapeMatrix2 != null ? MatrixKt.getMatrixRotateAngel(shapeMatrix2, RectFKt.copy(getOriginRect())) : 0.0f;
            Matrix matrix2 = new Matrix();
            matrix2.postTranslate(-loadResource.getWidth(), 0.0f);
            if (!(((float) ((int) matrixRotateAngel)) == 0.0f)) {
                matrix2.postRotate(matrixRotateAngel);
            }
            matrix2.postTranslate(MatrixKt.getTransX(copy), MatrixKt.getTransY(copy));
            matrix2.postConcat(renderContext.getMatrix());
            renderContext.getCanvas().drawBitmap(loadResource, matrix2, renderContext.getPaint());
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        String path;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(this);
        if (resource == null) {
            Debug.INSTANCE.m32044e(getClass(), "empty resource", new Object[0]);
            return false;
        }
        if (!resource.isImageResource()) {
            Debug.INSTANCE.m32044e(getClass(), "not image resource", new Object[0]);
            return false;
        }
        if (!resource.isLocalExist()) {
            Debug.INSTANCE.m32044e(getClass(), "resource not exist:" + resource.toPathString(), new Object[0]);
            return false;
        }
        float width = getOriginRect().width();
        float height = getOriginRect().height();
        if (width <= 0.0f || height <= 0.0f) {
            Debug.INSTANCE.m32044e(getClass(), "origin rect width or height is error.", new Object[0]);
            return false;
        }
        Matrix matrix = new Matrix();
        Bitmap bitmap = null;
        Size size = new Size(0, 0, 3, null);
        if (!m33861a(matrix, renderContext, width, height, size) || (path = resource.getPath()) == null) {
            return false;
        }
        try {
            bitmap = ImageManager.INSTANCE.decodeImageAsBitmap(path, size.getWidth(), size.getHeight(), false);
        } catch (Exception unused) {
            Debug.INSTANCE.m32044e(getClass(), "image shape decodeImageAsBitmap:" + path + ',' + FileUtils.INSTANCE.getFileSize(path), new Object[0]);
        }
        if (!BitmapKt.isValid(bitmap)) {
            Debug.INSTANCE.m32044e(getClass(), "bitmap not valid", new Object[0]);
            return false;
        }
        Debug.INSTANCE.m32035d(getClass(), "decodeBitmap = " + BitmapKt.boundingRectF(bitmap) + ", scale = " + MatrixKt.getMaxScale(matrix), new Object[0]);
        ShapeRenders shapeRenders = ShapeRenders.INSTANCE;
        shapeRenders.applyStrokeStyle(this, renderContext);
        shapeRenders.updateBitmapRenderPaint(this, renderContext.getPaint());
        renderContext.getCanvas().drawBitmap(bitmap, matrix, renderContext.getPaint());
        m33862b(renderContext, matrix, bitmap);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createImageShape(), embedShapeBean);
        pdfShapeConvertUtils.setImageBitmap(initPdfShape, embedShapeBean);
        return initPdfShape;
    }
}
