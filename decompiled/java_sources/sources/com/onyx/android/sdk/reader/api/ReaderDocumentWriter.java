package com.onyx.android.sdk.reader.api;

import android.graphics.Bitmap;
import android.graphics.RectF;
import androidx.annotation.IntRange;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.PdfBookmark;
import com.onyx.android.sdk.neopdf.PdfCallback;
import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.neopdf.PdfShapeUpdateOptions;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001:\u0001VB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0011H&J\u0018\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0006H&J,\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0018H\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u001f\u001a\u00020 H&J\u0018\u0010!\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0011H\u0016J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010$\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'H\u0016J\b\u0010)\u001a\u00020\u0004H\u0016J\b\u0010*\u001a\u00020\u0004H\u0016J\u0018\u0010+\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0018\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u00101\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0011H\u0016J\u0018\u00103\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u0011H\u0016J\u0010\u00105\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u00106\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0018\u00107\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0011H\u0016J\u0018\u00108\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u0011H\u0016J\b\u00109\u001a\u00020\u0004H\u0016J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020;H\u0016J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010<\u001a\u00020\u0004H\u0016J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0006\u0010=\u001a\u00020\u0011H\u0016J\u0018\u0010>\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\rH\u0016J\u0018\u0010@\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u0011H\u0016J(\u0010E\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\u00112\u0006\u0010H\u001a\u00020IH\u0016J0\u0010E\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\u00112\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u0011H\u0016J\u0012\u0010K\u001a\u00020L2\b\b\u0001\u0010M\u001a\u00020\u0006H\u0016J\u0018\u0010N\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0011H\u0016J\u0010\u0010O\u001a\u00020L2\u0006\u0010P\u001a\u00020QH\u0016J \u0010R\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020SH\u0016J\u0018\u0010T\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\rH\u0016J\u0018\u0010U\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010A\u001a\u00020BH\u0016¨\u0006W"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;", "", "()V", "addOnyxBookmark", "", "page", "", SyncConstant.LOCAL_BOOKMARK_DIR_NAME, "Lcom/onyx/android/sdk/neopdf/PdfBookmark;", "copyPage", "pageIndex", "dstIndex", "createHighlight", "Lcom/onyx/android/sdk/reader/api/ReaderHighlight;", "data", "Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;", "getCommitId", "", "getFileIdFromFile", "getHighlightObjId", "highlightObjId", "getOnyxBookmark", "getPageAnnotations", "highlights", "", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "shapes", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "getPageId", "getPageSize", "Landroid/graphics/RectF;", "getShapeFactory", "Lcom/onyx/android/sdk/reader/api/ReaderShapeFactory;", "getShapeObjId", "shapeId", "hasOnyxBookmark", "insertPage", CouchFieldKey.KEY_TOC_PAGE_ID, "width", "", "height", "isExported", "isNewDocument", "movePage", "openDocument", "path", "options", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "removeBackground", "removeHighlight", "highlightId", "removeHighlightByObjId", "objId", "removeOnyxBookmark", "removePage", "removeShape", "removeShapeByObjId", "reopenDocument", "saveAs", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;", "savePagesWithAnnotation", "fileId", "saveHighlight", "highlight", "saveShape", "shape", "Lcom/onyx/android/sdk/reader/api/ReaderShape;", "setAuthor", NotificationCompat.CarExtender.f4973i, "setBackground", "imageId", CouchFieldKey.KEY_RESOURCE_ID, "bitmap", "Landroid/graphics/Bitmap;", "extraAttr", "setDocumentSaveQuality", "", "quality", "setPageId", "setPdfCallback", "pdfCallback", "Lcom/onyx/android/sdk/neopdf/PdfCallback;", "updateShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;", "writeHighlight", "writeShape", "SaveOptions", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class ReaderDocumentWriter {

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\u001f\u0010 J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;", "", "", "component1", "", "component2", "component3", "fileId", "exporting", "exportOnlyPagesWithAnnotations", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFileId", "()Ljava/lang/String;", "setFileId", "(Ljava/lang/String;)V", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getExporting", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setExporting", "(Z)V", "c", "getExportOnlyPagesWithAnnotations", "setExportOnlyPagesWithAnnotations", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ZZ)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class SaveOptions {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public String fileId;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public boolean exporting;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public boolean exportOnlyPagesWithAnnotations;

        public SaveOptions() {
            this(null, false, false, 7, null);
        }

        public static /* synthetic */ SaveOptions copy$default(SaveOptions saveOptions, String str, boolean z, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = saveOptions.fileId;
            }
            if ((i & 2) != 0) {
                z = saveOptions.exporting;
            }
            if ((i & 4) != 0) {
                z2 = saveOptions.exportOnlyPagesWithAnnotations;
            }
            return saveOptions.copy(str, z, z2);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getFileId() {
            return this.fileId;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getExporting() {
            return this.exporting;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getExportOnlyPagesWithAnnotations() {
            return this.exportOnlyPagesWithAnnotations;
        }

        @NotNull
        public final SaveOptions copy(@NotNull String fileId, boolean exporting, boolean exportOnlyPagesWithAnnotations) {
            Intrinsics.checkNotNullParameter(fileId, "fileId");
            return new SaveOptions(fileId, exporting, exportOnlyPagesWithAnnotations);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SaveOptions)) {
                return false;
            }
            SaveOptions saveOptions = (SaveOptions) other;
            return Intrinsics.areEqual(this.fileId, saveOptions.fileId) && this.exporting == saveOptions.exporting && this.exportOnlyPagesWithAnnotations == saveOptions.exportOnlyPagesWithAnnotations;
        }

        public final boolean getExportOnlyPagesWithAnnotations() {
            return this.exportOnlyPagesWithAnnotations;
        }

        public final boolean getExporting() {
            return this.exporting;
        }

        @NotNull
        public final String getFileId() {
            return this.fileId;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.fileId.hashCode() * 31;
            boolean z = this.exporting;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode + i) * 31;
            boolean z2 = this.exportOnlyPagesWithAnnotations;
            return i2 + (z2 ? 1 : z2 ? 1 : 0);
        }

        public final void setExportOnlyPagesWithAnnotations(boolean z) {
            this.exportOnlyPagesWithAnnotations = z;
        }

        public final void setExporting(boolean z) {
            this.exporting = z;
        }

        public final void setFileId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.fileId = str;
        }

        @NotNull
        public String toString() {
            return "SaveOptions(fileId=" + this.fileId + ", exporting=" + this.exporting + ", exportOnlyPagesWithAnnotations=" + this.exportOnlyPagesWithAnnotations + ')';
        }

        public SaveOptions(@NotNull String fileId, boolean z, boolean z2) {
            Intrinsics.checkNotNullParameter(fileId, "fileId");
            this.fileId = fileId;
            this.exporting = z;
            this.exportOnlyPagesWithAnnotations = z2;
        }

        public /* synthetic */ SaveOptions(String str, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
        }
    }

    public boolean addOnyxBookmark(int page, @NotNull PdfBookmark bookmark) {
        Intrinsics.checkNotNullParameter(bookmark, "bookmark");
        return false;
    }

    public boolean copyPage(int pageIndex, int dstIndex) {
        return false;
    }

    @NotNull
    public abstract ReaderHighlight createHighlight(@NotNull ReaderHighlightData data);

    @NotNull
    public abstract String getCommitId();

    @NotNull
    public abstract String getFileIdFromFile();

    @NotNull
    public String getHighlightObjId(int page, @NotNull String highlightObjId) {
        Intrinsics.checkNotNullParameter(highlightObjId, "highlightObjId");
        return "";
    }

    @Nullable
    public abstract PdfBookmark getOnyxBookmark(int page);

    public boolean getPageAnnotations(int page, @NotNull List<PdfHighlightInfo> highlights, @NotNull List<PdfShapeInfo> shapes) {
        Intrinsics.checkNotNullParameter(highlights, "highlights");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        return false;
    }

    @NotNull
    public String getPageId(int page) {
        return "";
    }

    @NotNull
    public abstract RectF getPageSize(int page);

    @NotNull
    public abstract ReaderShapeFactory getShapeFactory();

    @NotNull
    public String getShapeObjId(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        return "";
    }

    public boolean hasOnyxBookmark(int page) {
        return false;
    }

    public boolean insertPage(int pageIndex, @NotNull String pageId, float width, float height) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return false;
    }

    public boolean isExported() {
        return false;
    }

    public boolean isNewDocument() {
        return true;
    }

    public boolean movePage(int pageIndex, int dstIndex) {
        return false;
    }

    public boolean openDocument(@NotNull String path, @NotNull ReaderDocumentOptions options) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(options, "options");
        return false;
    }

    public boolean removeBackground(int page) {
        return false;
    }

    public boolean removeHighlight(int page, @NotNull String highlightId) {
        Intrinsics.checkNotNullParameter(highlightId, "highlightId");
        return false;
    }

    public boolean removeHighlightByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return false;
    }

    public boolean removeOnyxBookmark(int page) {
        return false;
    }

    public boolean removePage(int pageIndex) {
        return false;
    }

    public boolean removeShape(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        return false;
    }

    public boolean removeShapeByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return false;
    }

    public boolean reopenDocument() {
        return false;
    }

    public boolean saveAs(@NotNull String path, @NotNull SaveOptions options) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(options, "options");
        return false;
    }

    public boolean saveHighlight(int page, @NotNull ReaderHighlight highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return false;
    }

    public boolean saveShape(int page, @NotNull ReaderShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return false;
    }

    public boolean setAuthor(@NotNull String author) {
        Intrinsics.checkNotNullParameter(author, "author");
        return false;
    }

    public boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return false;
    }

    public void setDocumentSaveQuality(@IntRange(from = 1, m281to = 100) int quality) {
    }

    public boolean setPageId(int pageIndex, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return false;
    }

    public void setPdfCallback(@NotNull PdfCallback pdfCallback) {
        Intrinsics.checkNotNullParameter(pdfCallback, "pdfCallback");
    }

    public boolean updateShape(int page, @NotNull PdfShapeInfo shape, @NotNull PdfShapeUpdateOptions options) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(options, "options");
        return false;
    }

    public boolean writeHighlight(int page, @NotNull ReaderHighlight highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return false;
    }

    public boolean writeShape(int page, @NotNull ReaderShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return false;
    }

    public boolean saveAs(@NotNull String path, @NotNull String fileId) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        return false;
    }

    public boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap, @NotNull String extraAttr) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        return false;
    }

    public boolean saveAs(@NotNull String path, boolean savePagesWithAnnotation) {
        Intrinsics.checkNotNullParameter(path, "path");
        return false;
    }
}
