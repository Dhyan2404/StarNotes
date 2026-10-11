package com.onyx.android.sdk.reader.plugins.caj;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.util.SizeF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.ImageRender;
import com.onyx.android.sdk.neocaj.NeoCajNative;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b \u0010!J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\bJ\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\fH\u0002R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper;", "", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "", "init", "", "path", "", "openDocument", "", "pageCount", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "root", "tocTree", "pageIndex", "Landroid/graphics/RectF;", "pageSize", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "drawArgs", "drawPage", "closeDocument", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "rootEntry", "a", "", "J", "getHandle", "()J", "setHandle", "(J)V", "handle", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCajHnWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CajHnWrapper.kt\ncom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1855#2,2:88\n*S KotlinDebug\n*F\n+ 1 CajHnWrapper.kt\ncom/onyx/android/sdk/reader/plugins/caj/CajHnWrapper\n*L\n75#1:88,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CajHnWrapper {

    /* renamed from: b */
    @NotNull
    public static final String f44919b = "CajHnWrapper";

    /* renamed from: a, reason: from kotlin metadata */
    public long handle;

    /* renamed from: a */
    public final void m34718a(PdfTocEntry rootEntry, ReaderDocumentTableOfContentEntry root) {
        List<PdfTocEntry> children = rootEntry.getChildren();
        if (CollectionKt.isNullOrEmpty(children)) {
            return;
        }
        for (Iterator it2 = children.iterator(); it2.hasNext(); it2 = it2) {
            PdfTocEntry pdfTocEntry = (PdfTocEntry) it2.next();
            ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry = new ReaderDocumentTableOfContentEntry(pdfTocEntry.getTitle(), pdfTocEntry.getPage(), null, null, false, false, false, 0L, false, null, 1020, null);
            root.getChildren().add(readerDocumentTableOfContentEntry);
            m34718a(pdfTocEntry, readerDocumentTableOfContentEntry);
        }
    }

    public final boolean closeDocument() {
        return NeoCajNative.INSTANCE.closeDocument(this.handle);
    }

    public final boolean drawPage(@NotNull DrawArgs drawArgs) {
        Intrinsics.checkNotNullParameter(drawArgs, "drawArgs");
        int pageIndex = drawArgs.getPagePosition().getPageIndex();
        Benchmark benchmark = new Benchmark();
        Bitmap loadPageImage = NeoCajNative.INSTANCE.loadPageImage(this.handle, pageIndex);
        benchmark.report("CajHnWrapper, loadPageImage, pageIndex = " + pageIndex);
        if (loadPageImage == null) {
            return false;
        }
        benchmark.restart();
        new ImageRender().renderToTargetBitmap(new ImageRender.RenderArgs("", drawArgs.getBitmap(), drawArgs.getDisplayRect(), 1.0f, drawArgs.getRotation(), null, 32, null), drawArgs.getBitmap(), loadPageImage);
        benchmark.report("CajHnWrapper, renderToTargetBitmap, pageIndex = " + pageIndex);
        return true;
    }

    public final long getHandle() {
        return this.handle;
    }

    public final void init(@NotNull ReaderPluginOptions pluginOptions) {
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        NeoCajNative.INSTANCE.init(pluginOptions.getFontDirectories());
    }

    public final boolean openDocument(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        long openDocument = NeoCajNative.INSTANCE.openDocument(path);
        this.handle = openDocument;
        return openDocument != 0;
    }

    public final int pageCount() {
        return NeoCajNative.INSTANCE.pageCount(this.handle);
    }

    @NotNull
    public final RectF pageSize(int pageIndex) {
        Benchmark benchmark = new Benchmark();
        SizeF pageSize = NeoCajNative.INSTANCE.getPageSize(this.handle, pageIndex);
        benchmark.report("CajHnWrapper, pageSize, page = " + pageIndex);
        return new RectF(0.0f, 0.0f, pageSize.getWidth(), pageSize.getHeight());
    }

    public final void setHandle(long j) {
        this.handle = j;
    }

    public final boolean tocTree(@NotNull ReaderDocumentTableOfContentEntry root) {
        Intrinsics.checkNotNullParameter(root, "root");
        PdfTocEntry pdfTocEntry = new PdfTocEntry(0L, null, 0, null, 15, null);
        if (!NeoCajNative.INSTANCE.getTocTree(this.handle, pdfTocEntry)) {
            return false;
        }
        m34718a(pdfTocEntry, root);
        return true;
    }
}
