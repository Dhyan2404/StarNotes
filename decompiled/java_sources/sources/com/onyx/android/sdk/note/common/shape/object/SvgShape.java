package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import com.caverock.androidsvg.RenderOptions;
import com.caverock.androidsvg.SVG;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SVGDrawableManager;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\"\u0010\u0015\u001a\u00020\u000e8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/SvgShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "Landroid/graphics/Matrix;", "matrix", "", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSvgShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SvgShape.kt\ncom/onyx/android/sdk/note/common/shape/object/SvgShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"})
/* loaded from: classes8.dex */
public final class SvgShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 35;

    /* renamed from: a */
    public final void m33872a(RenderContext renderContext, Matrix matrix) {
        if (ShapePersistOptionsKt.isLocked(this)) {
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
            Bitmap loadResource = SVGDrawableManager.INSTANCE.getInstance().loadResource(new Matrix(), C7485R.drawable.lock_indicator);
            if (loadResource == null) {
                return;
            }
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
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(this);
        if (resource == null) {
            Debug.INSTANCE.m32044e(SvgShape.class, "empty resource", new Object[0]);
            return false;
        }
        String path = resource.getPath();
        if (path == null || StringUtils.isBlank(path)) {
            Debug.INSTANCE.m32044e(SvgShape.class, "invalid resource path" + path, new Object[0]);
            return false;
        }
        if (!FileUtils.INSTANCE.fileExist(path)) {
            Debug.INSTANCE.m32044e(SvgShape.class, "resource file not exist" + path, new Object[0]);
            return false;
        }
        SVG decodeSvg = SvgUtil.INSTANCE.decodeSvg(path);
        if (decodeSvg == null) {
            Debug.INSTANCE.m32044e(SvgShape.class, "decoded svg null , resourcePath : " + path, new Object[0]);
            return false;
        }
        RectF copy = RectFKt.copy(getOriginRect());
        copy.offsetTo(0.0f, 0.0f);
        float floatValue = ((Number) AnyKt.takeIf(Float.valueOf(decodeSvg.getDocumentWidth()), new Function1<Float, Boolean>() { // from class: com.onyx.android.sdk.note.common.shape.object.SvgShape$render$documentWidth$1
            @NotNull
            public final Boolean invoke(float f) {
                return Boolean.valueOf(f <= 0.0f);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Float f) {
                return invoke(f.floatValue());
            }
        }, new Function1<Float, Float>() { // from class: com.onyx.android.sdk.note.common.shape.object.SvgShape$render$documentWidth$2
            {
                super(1);
            }

            @NotNull
            public final Float invoke(float f) {
                return Float.valueOf(SvgShape.this.getOriginRect().width());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Float invoke(Float f) {
                return invoke(f.floatValue());
            }
        })).floatValue();
        float floatValue2 = ((Number) AnyKt.takeIf(Float.valueOf(decodeSvg.getDocumentHeight()), new Function1<Float, Boolean>() { // from class: com.onyx.android.sdk.note.common.shape.object.SvgShape$render$documentHeight$1
            @NotNull
            public final Boolean invoke(float f) {
                return Boolean.valueOf(f <= 0.0f);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Float f) {
                return invoke(f.floatValue());
            }
        }, new Function1<Float, Float>() { // from class: com.onyx.android.sdk.note.common.shape.object.SvgShape$render$documentHeight$2
            {
                super(1);
            }

            @NotNull
            public final Float invoke(float f) {
                return Float.valueOf(SvgShape.this.getOriginRect().height());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Float invoke(Float f) {
                return invoke(f.floatValue());
            }
        })).floatValue();
        float width = copy.width() / floatValue;
        float height = copy.height() / floatValue2;
        Matrix matrix = new Matrix();
        matrix.postScale(width, height);
        matrix.postTranslate(getOriginRect().left, getOriginRect().top);
        matrix.postConcat(getRenderMatrix(renderContext));
        Picture renderToPicture = decodeSvg.renderToPicture(RenderOptions.create().viewPort(0.0f, 0.0f, floatValue, floatValue2));
        renderContext.getCanvas().save();
        renderContext.getCanvas().setMatrix(matrix);
        renderToPicture.draw(renderContext.getCanvas());
        renderContext.getCanvas().restore();
        m33872a(renderContext, matrix);
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
        return PdfShapeConvertUtils.INSTANCE.createImagePdfShape(this, embedShapeBean);
    }
}
