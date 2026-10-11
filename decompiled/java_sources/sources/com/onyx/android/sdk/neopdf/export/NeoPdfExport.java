package com.onyx.android.sdk.neopdf.export;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.FontManager;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.NeoPdfNative;
import com.onyx.android.sdk.neopdf.PdfBundle;
import com.onyx.android.sdk.neopdf.PdfImportContext;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import com.onyx.android.sdk.neopdf.PdfUtils;
import com.onyx.android.sdk.neopdf.lib.UUIDUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J.\u0010\u0012\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J&\u0010\u0012\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0016\u0010\u0015\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u000bH\u0016J\b\u0010\u0016\u001a\u00020\u000eH\u0016J\b\u0010\u0017\u001a\u00020\u0006H\u0016R\u0016\u0010\u001a\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R(\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020(8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;", "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "", "path", "Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;", "args", "", BaiduYunConstant.CREATE, "password", "open", "save", "", "Landroid/graphics/Bitmap;", "bitmaps", "", "pageWidth", "pageHeight", CouchFieldKey.KEY_PAGE_NUMBER, "appendPage", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "tocEntries", "setTocEntry", "pageCount", "close", "a", "I", "insertPageIndex", "", "Lcom/onyx/android/sdk/neopdf/PdfImportContext;", "b", "Ljava/util/List;", "getImportContextList", "()Ljava/util/List;", "setImportContextList", "(Ljava/util/List;)V", "importContextList", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "getPdfNative", "()Lcom/onyx/android/sdk/neopdf/NeoPdf;", "pdfNative", "Lcom/onyx/android/sdk/neopdf/PdfBundle;", "()Lcom/onyx/android/sdk/neopdf/PdfBundle;", "pdfBundle", Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoPdfExport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfExport.kt\ncom/onyx/android/sdk/neopdf/export/NeoPdfExport\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,96:1\n37#2,2:97\n*S KotlinDebug\n*F\n+ 1 NeoPdfExport.kt\ncom/onyx/android/sdk/neopdf/export/NeoPdfExport\n*L\n78#1:97,2\n*E\n"})
/* loaded from: classes7.dex */
public final class NeoPdfExport implements PdfExport {

    /* renamed from: a, reason: from kotlin metadata */
    public int insertPageIndex;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<PdfImportContext> importContextList;

    public NeoPdfExport() {
        NeoPdfNative.ensureInitialized$default(NeoPdfNative.INSTANCE, null, 1, null);
        this.importContextList = new ArrayList();
    }

    /* renamed from: a */
    public final PdfBundle m33557a() {
        return PdfBundle.INSTANCE.getInstance();
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void appendPage(@NotNull List<Bitmap> bitmaps, int pageWidth, int pageHeight, int pageNumber) {
        Intrinsics.checkNotNullParameter(bitmaps, "bitmaps");
        if (bitmaps.isEmpty()) {
            return;
        }
        getPdfNative().appendPage(pageWidth, pageHeight);
        Bitmap createBitmap = Bitmap.createBitmap(pageWidth, pageHeight, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        createBitmap.eraseColor(-1);
        Canvas canvas = new Canvas(createBitmap);
        Iterator<Bitmap> it2 = bitmaps.iterator();
        while (it2.hasNext()) {
            canvas.drawBitmap(it2.next(), (Rect) null, new Rect(0, 0, pageWidth, pageHeight), (Paint) null);
        }
        getPdfNative().setBackground(pageNumber, "", UUIDUtils.INSTANCE.shortUUID(), createBitmap);
        NeoPdf.save$default(getPdfNative(), null, 1, null);
        createBitmap.recycle();
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void close() {
        m33557a().closeNewPdfNative();
        this.insertPageIndex = 0;
        FontManager.destroy();
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void create(@NotNull String path, @NotNull PdfCreateArgs args) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(args, "args");
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(path);
        fileUtils.ensureFileExists(path);
        getPdfNative().createNewDocument(path);
        getPdfNative().getSaveOptions().setAuthor(args.getAuthor());
        getPdfNative().getSaveOptions().setCreator(args.getCreator());
        getPdfNative().getSaveOptions().setTitle(args.getTitle());
        this.insertPageIndex = 0;
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    @NotNull
    public List<PdfImportContext> getImportContextList() {
        return this.importContextList;
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    @NotNull
    public NeoPdf getPdfNative() {
        return m33557a().ensureNewPdfNative();
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void open(@NotNull String path, @NotNull String password) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        if (FileUtils.INSTANCE.isEmpty(path)) {
            getPdfNative().createNewDocument(path);
        } else {
            getPdfNative().openDocument(path, password);
        }
        this.insertPageIndex = getPdfNative().pageCount();
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public int pageCount() {
        return getPdfNative().pageCount();
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void save(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        PdfUtils.INSTANCE.saveWithTagInfo(getPdfNative(), path);
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void setImportContextList(@NotNull List<PdfImportContext> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.importContextList = list;
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void setTocEntry(@NotNull List<PdfTocEntry> tocEntries) {
        Intrinsics.checkNotNullParameter(tocEntries, "tocEntries");
        getPdfNative().setTableOfContent((PdfTocEntry[]) tocEntries.toArray(new PdfTocEntry[0]));
    }

    @Override // com.onyx.android.sdk.neopdf.export.PdfExport
    public void appendPage(@NotNull List<Bitmap> bitmaps, int pageWidth, int pageHeight) {
        Intrinsics.checkNotNullParameter(bitmaps, "bitmaps");
        appendPage(bitmaps, pageWidth, pageHeight, this.insertPageIndex);
        this.insertPageIndex++;
    }
}
