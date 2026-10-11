package com.onyx.android.sdk.reader.api;

import android.graphics.Bitmap;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.PdfTextRun;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0010\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J \u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J \u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H&J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H&J \u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\fH&J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\fH&JC\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020 H&¢\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\fH&J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J(\u0010$\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0017H&J \u0010'\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H&J \u0010(\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H&J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010+\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J(\u0010,\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\fH&J \u0010-\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\fH&J\u0018\u0010.\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\fH&J\u0018\u0010/\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;", "", "createAreaEraseShape", "Lcom/onyx/android/sdk/reader/api/ReaderShape;", "data", "Lcom/onyx/android/sdk/reader/api/ReaderShapeData;", "vertices", "", "createAttachmentShape", "fileAttachmentPath", "", "bitmap", "Landroid/graphics/Bitmap;", "createAudioShape", "renderBitmap", "wavData", "", "createBrushStrokeShape", "realPoints", "renderPoints", "createCharcoalStrokeShape", "createCircleShape", CouchFieldKey.KEY_FILL_COLOR, "", "createFreeTextShape", "text", "fontColor", "runArray", "", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "richText", gon.f71257J, "", "(Lcom/onyx/android/sdk/reader/api/ReaderShapeData;Ljava/lang/String;I[Lcom/onyx/android/sdk/neopdf/PdfTextRun;Ljava/lang/String;F)Lcom/onyx/android/sdk/reader/api/ReaderShape;", "createImageShape", "createLineShape", "createLinkShape", "linkDest", "linkType", "createMarkerStrokeShape", "createNeoBrushStrokeShape", "createOverlayEraseShape", "createPencilStrokeShape", "createPolyLineShape", "createPolygonShape", "createSquareShape", "createStampShape", "createWaveLineShape", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderShapeFactory {
    @NotNull
    ReaderShape createAreaEraseShape(@NotNull ReaderShapeData data, @NotNull float[] vertices);

    @NotNull
    ReaderShape createAttachmentShape(@NotNull ReaderShapeData data, @NotNull String fileAttachmentPath, @NotNull Bitmap bitmap);

    @NotNull
    ReaderShape createAudioShape(@NotNull ReaderShapeData data, @NotNull Bitmap renderBitmap, @NotNull byte[] wavData);

    @NotNull
    ReaderShape createBrushStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull float[] renderPoints);

    @NotNull
    ReaderShape createCharcoalStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull Bitmap renderBitmap);

    @NotNull
    ReaderShape createCircleShape(@NotNull ReaderShapeData data, int fillColor, @NotNull Bitmap bitmap);

    @NotNull
    ReaderShape createFreeTextShape(@NotNull ReaderShapeData data, @NotNull String text, int fontColor, @NotNull PdfTextRun[] runArray, @NotNull String richText, float fontSize);

    @NotNull
    ReaderShape createImageShape(@NotNull ReaderShapeData data, @NotNull Bitmap renderBitmap);

    @NotNull
    ReaderShape createLineShape(@NotNull ReaderShapeData data, @NotNull float[] vertices);

    @NotNull
    ReaderShape createLinkShape(@NotNull ReaderShapeData data, @NotNull Bitmap bitmap, @NotNull String linkDest, int linkType);

    @NotNull
    ReaderShape createMarkerStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull float[] renderPoints);

    @NotNull
    ReaderShape createNeoBrushStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] realPoints, @NotNull float[] renderPoints);

    @NotNull
    ReaderShape createOverlayEraseShape(@NotNull ReaderShapeData data, @NotNull float[] vertices);

    @NotNull
    ReaderShape createPencilStrokeShape(@NotNull ReaderShapeData data, @NotNull float[] vertices);

    @NotNull
    ReaderShape createPolyLineShape(@NotNull ReaderShapeData data, @NotNull float[] vertices);

    @NotNull
    ReaderShape createPolygonShape(@NotNull ReaderShapeData data, @NotNull float[] vertices, int fillColor, @NotNull Bitmap bitmap);

    @NotNull
    ReaderShape createSquareShape(@NotNull ReaderShapeData data, int fillColor, @NotNull Bitmap bitmap);

    @NotNull
    ReaderShape createStampShape(@NotNull ReaderShapeData data, @NotNull Bitmap renderBitmap);

    @NotNull
    ReaderShape createWaveLineShape(@NotNull ReaderShapeData data, @NotNull float[] vertices);
}
