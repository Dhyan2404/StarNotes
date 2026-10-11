package com.onyx.android.sdk.note.common.shape.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "pdfShape", "shapeBean", "", "a", "", "L", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoBrushShape extends BrushScribbleShape {

    /* renamed from: L, reason: from kotlin metadata */
    public int type = 21;

    /* renamed from: a */
    public final void m33921a(PdfShapeInfo pdfShape, EmbedShapeBean shapeBean) {
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        List<TouchPoint> renderPointArray = companion.renderPointArray(MatrixKt.getMatrixByValues(shapeBean.getMatrixValues()), shapeBean.getPointList().getPoints());
        float revisedDisplayScale = shapeBean.getShapeCreateArgs().getRevisedDisplayScale();
        companion.scalePointList(renderPointArray, revisedDisplayScale);
        shapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String();
        shapeBean.getRenderScale();
        ArrayList arrayList = new ArrayList();
        pdfShape.setRealPoints(companion.realPointArray(renderPointArray));
        pdfShape.setRenderPoints(PdfShapeConvertUtils.INSTANCE.normalizeRenderPointList(arrayList, revisedDisplayScale));
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createNeoBrushStrokeShape(), embedShapeBean);
        m33921a(initPdfShape, embedShapeBean);
        return initPdfShape;
    }
}
