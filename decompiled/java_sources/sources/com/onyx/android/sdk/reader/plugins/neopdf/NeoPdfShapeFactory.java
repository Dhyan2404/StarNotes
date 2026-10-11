package com.onyx.android.sdk.reader.plugins.neopdf;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.neopdf.PdfTextRun;
import com.onyx.android.sdk.reader.api.ReaderShape;
import com.onyx.android.sdk.reader.api.ReaderShapeData;
import com.onyx.android.sdk.reader.api.ReaderShapeFactory;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bH\u0016J \u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\rH\u0016J \u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\rH\u0016JC\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00182\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020!H\u0016¢\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J(\u0010%\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\u0018H\u0016J \u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bH\u0016J \u0010)\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u0018\u0010*\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010+\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010,\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J(\u0010-\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\rH\u0016J \u0010.\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010/\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u00100\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u0002022\u0006\u0010\u0005\u001a\u00020\u0006¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;", "Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;", "()V", "createAreaEraseShape", "Lcom/onyx/android/sdk/reader/api/ReaderShape;", "data", "Lcom/onyx/android/sdk/reader/api/ReaderShapeData;", "vertices", "", "createAttachmentShape", "fileAttachmentPath", "", "bitmap", "Landroid/graphics/Bitmap;", "createAudioShape", "renderBitmap", "wavData", "", "createBrushStrokeShape", "realPoints", "renderPoints", "createCharcoalStrokeShape", "createCircleShape", CouchFieldKey.KEY_FILL_COLOR, "", "createFreeTextShape", "text", "fontColor", "runArray", "", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "richText", gon.f71257J, "", "(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Ljava/lang/String;I[Lcom/onyx/android/sdk/neopdf/PdfTextRun;Ljava/lang/String;F)Lcom/onyx/android/sdk/reader/api/ReaderShape;", "createImageShape", "createLineShape", "createLinkShape", "linkDest", "linkType", "createMarkerStrokeShape", "createNeoBrushStrokeShape", "createOverlayEraseShape", "createPencilStrokeShape", "createPolyLineShape", "createPolygonShape", "createSquareShape", "createStampShape", "createWaveLineShape", "setupShapeWithData", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "shape", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoPdfShapeFactory implements ReaderShapeFactory {
    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createAreaEraseShape(@NotNull ReaderShapeData data, @NotNull float[] vertices) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createAreaEraserShape(), data);
        pdfShapeInfo.setVertices(vertices);
        pdfShapeInfo.setFillColor(-1);
        pdfShapeInfo.setColor(-1);
        pdfShapeInfo.setStrokeWidth(0.1f);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createAttachmentShape(@NotNull ReaderShapeData data, @NotNull String fileAttachmentPath, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(fileAttachmentPath, "fileAttachmentPath");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createAttachmentShape(), data);
        pdfShapeInfo.setBitmap(bitmap);
        pdfShapeInfo.setFileAttachmentPath(fileAttachmentPath);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createAudioShape(@NotNull ReaderShapeData data, @NotNull Bitmap renderBitmap, @NotNull byte[] wavData) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(renderBitmap, "renderBitmap");
        Intrinsics.checkNotNullParameter(wavData, "wavData");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createSoundShape(), data);
        pdfShapeInfo.setBitmap(renderBitmap);
        pdfShapeInfo.setWavData(wavData);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createBrushStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull float[] renderPoints) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(realPoints, "realPoints");
        Intrinsics.checkNotNullParameter(renderPoints, "renderPoints");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createBrushStrokeShape(), data);
        pdfShapeInfo.setRealPoints(realPoints);
        pdfShapeInfo.setRenderPoints(renderPoints);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createCharcoalStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull Bitmap renderBitmap) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(realPoints, "realPoints");
        Intrinsics.checkNotNullParameter(renderBitmap, "renderBitmap");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createCharcoalStrokeShape(), data);
        pdfShapeInfo.setRealPoints(realPoints);
        pdfShapeInfo.setBitmap(renderBitmap);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createCircleShape(@NotNull ReaderShapeData data, int fillColor, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createCircleShape(), data);
        pdfShapeInfo.setFillColor(fillColor);
        pdfShapeInfo.setBitmap(bitmap);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createFreeTextShape(@NotNull ReaderShapeData data, @NotNull String text, int fontColor, @NotNull PdfTextRun[] runArray, @NotNull String richText, float fontSize) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(runArray, "runArray");
        Intrinsics.checkNotNullParameter(richText, "richText");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createFreeTextShape(), data);
        pdfShapeInfo.setText(text);
        pdfShapeInfo.setFontcolor(fontColor);
        pdfShapeInfo.setRichText(richText);
        pdfShapeInfo.setTextRuns(runArray);
        pdfShapeInfo.setFontSize(fontSize);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createImageShape(@NotNull ReaderShapeData data, @NotNull Bitmap renderBitmap) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(renderBitmap, "renderBitmap");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createImageShape(), data);
        pdfShapeInfo.setBitmap(renderBitmap);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createLineShape(@NotNull ReaderShapeData data, @NotNull float[] vertices) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createLineShape(), data);
        pdfShapeInfo.setVertices(vertices);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createLinkShape(@NotNull ReaderShapeData data, @NotNull Bitmap bitmap, @NotNull String linkDest, int linkType) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(linkDest, "linkDest");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createLinkShape(), data);
        pdfShapeInfo.setBitmap(bitmap);
        pdfShapeInfo.setLinkDest(linkDest);
        pdfShapeInfo.setLinkType(linkType);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createMarkerStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull float[] renderPoints) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(realPoints, "realPoints");
        Intrinsics.checkNotNullParameter(renderPoints, "renderPoints");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createMarkerStrokeShape(), data);
        pdfShapeInfo.setRealPoints(realPoints);
        pdfShapeInfo.setRenderPoints(renderPoints);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createNeoBrushStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull float[] renderPoints) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(realPoints, "realPoints");
        Intrinsics.checkNotNullParameter(renderPoints, "renderPoints");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createNeoBrushStrokeShape(), data);
        pdfShapeInfo.setRealPoints(realPoints);
        pdfShapeInfo.setRenderPoints(renderPoints);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createOverlayEraseShape(@NotNull ReaderShapeData data, @NotNull float[] vertices) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createOverlayEraserShape(), data);
        pdfShapeInfo.setVertices(vertices);
        pdfShapeInfo.setColor(-1);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createPencilStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] vertices) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createPencilStrokeShape(), data);
        pdfShapeInfo.setVertices(vertices);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createPolyLineShape(@NotNull ReaderShapeData data, @NotNull float[] vertices) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createPolyLineShape(), data);
        pdfShapeInfo.setVertices(vertices);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createPolygonShape(@NotNull ReaderShapeData data, @NotNull float[] vertices, int fillColor, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createPolygonShape(), data);
        pdfShapeInfo.setVertices(vertices);
        pdfShapeInfo.setFillColor(fillColor);
        pdfShapeInfo.setBitmap(bitmap);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createSquareShape(@NotNull ReaderShapeData data, int fillColor, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createSquareShape(), data);
        pdfShapeInfo.setFillColor(fillColor);
        pdfShapeInfo.setBitmap(bitmap);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createStampShape(@NotNull ReaderShapeData data, @NotNull Bitmap renderBitmap) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(renderBitmap, "renderBitmap");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createStampShape(), data);
        pdfShapeInfo.setBitmap(renderBitmap);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderShapeFactory
    @NotNull
    public ReaderShape createWaveLineShape(@NotNull ReaderShapeData data, @NotNull float[] vertices) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        PdfShapeInfo pdfShapeInfo = setupShapeWithData(PdfShapeInfo.INSTANCE.createWavyLineShape(), data);
        pdfShapeInfo.setStrokeWavyLength(data.getStrokeWavyLength());
        pdfShapeInfo.setStrokeWavyPeak(data.getStrokeWavyPeak());
        pdfShapeInfo.setVertices(vertices);
        return new NeoPdfShape(pdfShapeInfo);
    }

    @NotNull
    public final PdfShapeInfo setupShapeWithData(@NotNull PdfShapeInfo shape, @NotNull ReaderShapeData data) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(data, "data");
        shape.setId(data.getId());
        shape.setObjId(data.getObjectId());
        shape.setLayerId(data.getLayerId());
        shape.setAuthor(data.getAuthor());
        shape.setRect(data.getBounds());
        shape.setColor(data.getStrokeColor());
        shape.setFillColor(data.getFillColor());
        shape.setStrokeWidth(data.getStrokeWidth());
        shape.setStrokeDashArray(data.getStrokeDashArray());
        shape.setStrokeDashPhase(data.getStrokeDashPhase());
        shape.setLineArrowDirection(data.getLineArrowDirection());
        shape.setResourceId(data.getResourceId());
        shape.setMatrix(MatrixKt.getMatrixValue(data.getMatrix()));
        shape.setExtraAttr(data.getExtraAttr());
        shape.setCustomAttr(data.getCustomAttr());
        return shape;
    }
}
