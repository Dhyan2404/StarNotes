package com.onyx.android.sdk.reader.plugins.neopdf;

import android.graphics.Bitmap;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.PdfBookmark;
import com.onyx.android.sdk.neopdf.PdfCallback;
import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.neopdf.PdfShapeUpdateOptions;
import com.onyx.android.sdk.reader.api.ReaderDocumentOptions;
import com.onyx.android.sdk.reader.api.ReaderDocumentWriter;
import com.onyx.android.sdk.reader.api.ReaderHighlight;
import com.onyx.android.sdk.reader.api.ReaderHighlightData;
import com.onyx.android.sdk.reader.api.ReaderShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010X\u001a\u00020U¢\u0006\u0004\b\\\u0010]J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J,\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J \u0010\u0017\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0016H\u0016J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u0018\u0010!\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0002H\u0016J\u0018\u0010#\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u0002H\u0016J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0002H\u0016J\u0018\u0010'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0006H\u0016J\u0018\u0010'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u0002H\u0016J\u0018\u0010'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020)H\u0016J\u0010\u0010-\u001a\u00020,2\u0006\u0010+\u001a\u00020*H\u0016J\u0018\u0010/\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010.\u001a\u00020\u0002H\u0016J\u0018\u00100\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u0002H\u0016J\u0010\u00101\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u00103\u001a\u0004\u0018\u0001022\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u00105\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u00104\u001a\u000202H\u0016J\u0010\u00106\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u00107\u001a\u00020\u0006H\u0016J\b\u00108\u001a\u00020\u0002H\u0016J\b\u00109\u001a\u00020\u0006H\u0016J\b\u0010:\u001a\u00020\u0002H\u0016J\b\u0010;\u001a\u00020\u0006H\u0016J\u0010\u0010=\u001a\u00020,2\u0006\u0010<\u001a\u00020\bH\u0016J(\u0010C\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\b2\u0006\u0010?\u001a\u00020\u00022\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@H\u0016J\u0010\u0010E\u001a\u00020D2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010F\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\bH\u0016J\u0018\u0010H\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\b2\u0006\u0010G\u001a\u00020\bH\u0016J\u0018\u0010I\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\b2\u0006\u0010G\u001a\u00020\bH\u0016J\u0018\u0010J\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\b2\u0006\u0010?\u001a\u00020\u0002H\u0016J(\u0010O\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010K\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\u0006\u0010N\u001a\u00020MH\u0016J0\u0010O\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010K\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\u0006\u0010N\u001a\u00020M2\u0006\u0010P\u001a\u00020\u0002H\u0016J\u0010\u0010Q\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010R\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010.\u001a\u00020\u0002H\u0016J\u0018\u0010T\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010S\u001a\u00020\u0002H\u0016R\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010[\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010Z¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;", "", "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "options", "", "openDocument", "", "page", "", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "highlights", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "shapes", "getPageAnnotations", "getPageId", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;", "getShapeFactory", "Lcom/onyx/android/sdk/reader/api/ReaderShape;", "shape", "saveShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;", "updateShape", "writeShape", "Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;", "data", "Lcom/onyx/android/sdk/reader/api/ReaderHighlight;", "createHighlight", "highlight", "saveHighlight", "writeHighlight", "highlightId", "removeHighlight", "objId", "removeHighlightByObjId", NotificationCompat.CarExtender.f4973i, "setAuthor", "savePagesWithAnnotation", "saveAs", "fileId", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;", "Lcom/onyx/android/sdk/neopdf/PdfCallback;", "pdfCallback", "", "setPdfCallback", "shapeId", "removeShape", "removeShapeByObjId", "hasOnyxBookmark", "Lcom/onyx/android/sdk/neopdf/PdfBookmark;", "getOnyxBookmark", SyncConstant.LOCAL_BOOKMARK_DIR_NAME, "addOnyxBookmark", "removeOnyxBookmark", "isNewDocument", "getCommitId", "isExported", "getFileIdFromFile", "reopenDocument", "quality", "setDocumentSaveQuality", "pageIndex", CouchFieldKey.KEY_TOC_PAGE_ID, "", "width", "height", "insertPage", "Landroid/graphics/RectF;", "getPageSize", "removePage", "dstIndex", "movePage", "copyPage", "setPageId", "imageId", CouchFieldKey.KEY_RESOURCE_ID, "Landroid/graphics/Bitmap;", "bitmap", "setBackground", "extraAttr", "removeBackground", "getShapeObjId", "highlightObjId", "getHighlightObjId", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;", "a", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;", "wrapper", "b", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShapeFactory;", "shapeFactory", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoPdfDocumentWriter extends ReaderDocumentWriter {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NeoPdfJniWrapper wrapper;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public NeoPdfShapeFactory shapeFactory;

    public NeoPdfDocumentWriter(@NotNull NeoPdfJniWrapper wrapper) {
        Intrinsics.checkNotNullParameter(wrapper, "wrapper");
        this.wrapper = wrapper;
        this.shapeFactory = new NeoPdfShapeFactory();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean addOnyxBookmark(int page, @NotNull PdfBookmark bookmark) {
        Intrinsics.checkNotNullParameter(bookmark, "bookmark");
        return this.wrapper.addOnyxBookmark(page, bookmark);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean copyPage(int pageIndex, int dstIndex) {
        return this.wrapper.copyPage(pageIndex, dstIndex);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public ReaderHighlight createHighlight(@NotNull ReaderHighlightData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        PdfHighlightInfo pdfHighlightInfo = new PdfHighlightInfo();
        pdfHighlightInfo.highlightId = data.getHighlightId();
        pdfHighlightInfo.setObjId(data.getObjId());
        pdfHighlightInfo.setAuthor(data.getAuthor());
        pdfHighlightInfo.setStartPosition(data.getStartPosition().getStrPosition());
        pdfHighlightInfo.setEndPosition(data.getEndPosition().getStrPosition());
        pdfHighlightInfo.setNote(data.getNote());
        pdfHighlightInfo.setQuadPoints(data.getQuadPoints());
        pdfHighlightInfo.setStyle(data.getStyle());
        pdfHighlightInfo.setColor(data.getColor());
        pdfHighlightInfo.setLinkType(data.getLinkType());
        pdfHighlightInfo.setLinkDest(data.getLinkDest());
        pdfHighlightInfo.setVertical(data.isVertical());
        pdfHighlightInfo.setExtraAttr(data.getExtraAttr());
        pdfHighlightInfo.setCustomAttr(data.getCustomAttr());
        return new NeoPdfHighlight(pdfHighlightInfo);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public String getCommitId() {
        return StringKt.safelyGetStr(this.wrapper.commitId());
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public String getFileIdFromFile() {
        return StringKt.safelyGetStr(this.wrapper.getFileIdFromFile());
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public String getHighlightObjId(int page, @NotNull String highlightObjId) {
        Intrinsics.checkNotNullParameter(highlightObjId, "highlightObjId");
        return this.wrapper.getHighlightObjId(page, highlightObjId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @Nullable
    public PdfBookmark getOnyxBookmark(int page) {
        return this.wrapper.getOnyxBookmark(page);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean getPageAnnotations(int page, @NotNull List<PdfHighlightInfo> highlights, @NotNull List<PdfShapeInfo> shapes) {
        Intrinsics.checkNotNullParameter(highlights, "highlights");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        return this.wrapper.getPageAnnotations(page, highlights, shapes);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public String getPageId(int page) {
        return this.wrapper.getPageId(page);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public RectF getPageSize(int page) {
        float[] fArr = {0.0f, 0.0f};
        this.wrapper.pageSize(page, fArr);
        return new RectF(0.0f, 0.0f, fArr[0], fArr[1]);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public String getShapeObjId(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        return this.wrapper.getShapeObjId(page, shapeId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean hasOnyxBookmark(int page) {
        return this.wrapper.hasOnyxBookmark(page);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean insertPage(int pageIndex, @NotNull String pageId, float width, float height) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.wrapper.insertPage(pageIndex, pageId, width, height);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean isExported() {
        return this.wrapper.isExported();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean isNewDocument() {
        return this.wrapper.isNewDocument();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean movePage(int pageIndex, int dstIndex) {
        return this.wrapper.movePage(pageIndex, dstIndex);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean openDocument(@NotNull String path, @NotNull ReaderDocumentOptions options) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(options, "options");
        return true;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean removeBackground(int page) {
        return this.wrapper.removeBackground(page);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean removeHighlight(int page, @NotNull String highlightId) {
        Intrinsics.checkNotNullParameter(highlightId, "highlightId");
        return this.wrapper.removeHighlight(page, highlightId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean removeHighlightByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return this.wrapper.removeHighlightByObjId(page, objId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean removeOnyxBookmark(int page) {
        return this.wrapper.removeOnyxBookmark(page);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean removePage(int pageIndex) {
        return this.wrapper.removePage(pageIndex);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean removeShape(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        return this.wrapper.removeShape(page, shapeId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean removeShapeByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return this.wrapper.removeShapeByObjId(page, objId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean reopenDocument() {
        return this.wrapper.reopenDocument();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean saveAs(@NotNull String path, boolean savePagesWithAnnotation) {
        Intrinsics.checkNotNullParameter(path, "path");
        return this.wrapper.saveAs(path, savePagesWithAnnotation);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean saveHighlight(int page, @NotNull ReaderHighlight highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return this.wrapper.saveHighlight(page, (NeoPdfHighlight) highlight);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean saveShape(int page, @NotNull ReaderShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (Intrinsics.areEqual(shape.getClass(), PdfShapeInfo.class)) {
            return this.wrapper.saveShape(page, (NeoPdfShape) shape);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean setAuthor(@NotNull String author) {
        Intrinsics.checkNotNullParameter(author, "author");
        return this.wrapper.setAuthor(author);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return this.wrapper.setBackground(page, imageId, resourceId, bitmap);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public void setDocumentSaveQuality(int quality) {
        this.wrapper.setDocumentSaveQuality(quality);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean setPageId(int pageIndex, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.wrapper.setPageId(pageIndex, pageId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public void setPdfCallback(@NotNull PdfCallback pdfCallback) {
        Intrinsics.checkNotNullParameter(pdfCallback, "pdfCallback");
        this.wrapper.setPdfCallback(pdfCallback);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean updateShape(int page, @NotNull PdfShapeInfo shape, @NotNull PdfShapeUpdateOptions options) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(options, "options");
        return this.wrapper.updateShape(page, shape, options);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean writeHighlight(int page, @NotNull ReaderHighlight highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return this.wrapper.writeHighlight(page, (NeoPdfHighlight) highlight);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean writeShape(int page, @NotNull ReaderShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (Intrinsics.areEqual(shape.getClass(), PdfShapeInfo.class)) {
            return this.wrapper.writeShape(page, (NeoPdfShape) shape);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    @NotNull
    public NeoPdfShapeFactory getShapeFactory() {
        return this.shapeFactory;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean saveAs(@NotNull String path, @NotNull String fileId) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        return this.wrapper.saveAs(path, fileId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap, @NotNull String extraAttr) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        return this.wrapper.setBackground(page, imageId, resourceId, bitmap, extraAttr);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentWriter
    public boolean saveAs(@NotNull String path, @NotNull ReaderDocumentWriter.SaveOptions options) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(options, "options");
        return this.wrapper.saveAs(path, options);
    }
}
