package com.onyx.android.sdk.note.common.shape.graphical;

import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.PolygonShapeUtils;
import com.onyx.android.sdk.note.common.utils.ShapeConstant;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0011\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\b\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\f¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "L", "I", "getType", "()I", "setType", "(I)V", "type", "M", "getSideNum", "setSideNum", "sideNum", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RegularHexagonShape extends RegularPolygonShape {

    /* renamed from: L, reason: from kotlin metadata */
    public int type = 27;

    /* renamed from: M, reason: from kotlin metadata */
    public int sideNum = ShapeConstant.INSTANCE.getSHAPE_REGULAR_HEXAGON_SIZE_NUM();

    @Override // com.onyx.android.sdk.note.common.shape.graphical.RegularPolygonShape
    public int getSideNum() {
        return this.sideNum;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.RegularPolygonShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.RegularPolygonShape
    public void setSideNum(int i) {
        this.sideNum = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.RegularPolygonShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.RegularPolygonShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createPolygonShape(), embedShapeBean);
        initPdfShape.setVertices(pdfShapeConvertUtils.getPolyLineVertices(PolygonShapeUtils.INSTANCE.calculatePolygonPoints(embedShapeBean.getPointList(), ShapeConstant.INSTANCE.getSHAPE_REGULAR_HEXAGON_SIZE_NUM()), embedShapeBean.getMatrixValues()));
        pdfShapeConvertUtils.setGraphicalFillBitmap(initPdfShape, embedShapeBean);
        return initPdfShape;
    }
}
