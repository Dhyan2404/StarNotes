package com.onyx.android.sdk.neopdf.export;

import android.graphics.Bitmap;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.PdfImportContext;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J&\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H&J.\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H&J\b\u0010\u0016\u001a\u00020\u000eH&J\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH&J\u001a\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001d\u001a\u00020\u0019H&J\b\u0010\u001e\u001a\u00020\u0013H&J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0016\u0010 \u001a\u00020\u000e2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0010H&R\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00020\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "", "importContextList", "", "Lcom/onyx/android/sdk/neopdf/PdfImportContext;", "getImportContextList", "()Ljava/util/List;", "setImportContextList", "(Ljava/util/List;)V", "pdfNative", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "getPdfNative", "()Lcom/onyx/android/sdk/neopdf/NeoPdf;", "appendPage", "", "bitmaps", "", "Landroid/graphics/Bitmap;", "pageWidth", "", "pageHeight", CouchFieldKey.KEY_PAGE_NUMBER, "close", BaiduYunConstant.CREATE, "path", "", "args", "Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;", "open", "password", "pageCount", "save", "setTocEntry", "tocEntries", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface PdfExport {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void open$default(PdfExport pdfExport, String str, String str2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: open");
            }
            if ((i & 2) != 0) {
                str2 = "";
            }
            pdfExport.open(str, str2);
        }
    }

    void appendPage(@NotNull List<Bitmap> bitmaps, int pageWidth, int pageHeight);

    void appendPage(@NotNull List<Bitmap> bitmaps, int pageWidth, int pageHeight, int pageNumber);

    void close();

    void create(@NotNull String path, @NotNull PdfCreateArgs args);

    @NotNull
    List<PdfImportContext> getImportContextList();

    @NotNull
    NeoPdf getPdfNative();

    void open(@NotNull String path, @NotNull String password);

    int pageCount();

    void save(@NotNull String path);

    void setImportContextList(@NotNull List<PdfImportContext> list);

    void setTocEntry(@NotNull List<PdfTocEntry> tocEntries);
}
