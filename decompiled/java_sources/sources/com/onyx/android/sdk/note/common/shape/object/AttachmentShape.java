package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeAttachmentUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/AttachmentShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AttachmentShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 34;

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
        float width = getOriginRect().width();
        float height = getOriginRect().height();
        if (width <= 0.0f || height <= 0.0f) {
            Debug.INSTANCE.m32044e(AttachmentShape.class, "origin rect width or height is error.", new Object[0]);
            return false;
        }
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(this);
        if (resource == null) {
            Debug.INSTANCE.m32044e(AttachmentShape.class, "resource is null", new Object[0]);
            return false;
        }
        Bitmap createAttachmentBitmap = ShapeAttachmentUtils.INSTANCE.createAttachmentBitmap(resource.getPath());
        if (createAttachmentBitmap == null || !BitmapKt.isValid(createAttachmentBitmap)) {
            Debug.INSTANCE.m32044e(AttachmentShape.class, "bitmap not valid：" + resource.toPathString(), new Object[0]);
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        Matrix matrix = new Matrix();
        matrix.postTranslate(getDownPoint().getX(), getDownPoint().getY());
        matrix.postScale(width / createAttachmentBitmap.getWidth(), height / createAttachmentBitmap.getHeight(), getDownPoint().getX(), getDownPoint().getY());
        matrix.postConcat(getRenderMatrix(renderContext));
        renderContext.getCanvas().drawBitmap(createAttachmentBitmap, matrix, renderContext.getPaint());
        createAttachmentBitmap.recycle();
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
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createAttachmentShape(), embedShapeBean);
        pdfShapeConvertUtils.setFileAttachment(initPdfShape, embedShapeBean);
        return initPdfShape;
    }
}
