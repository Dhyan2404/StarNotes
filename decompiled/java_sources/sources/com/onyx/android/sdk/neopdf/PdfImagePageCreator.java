package com.onyx.android.sdk.neopdf;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.neopdf.lib.UUIDUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002J$\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002J \u0010\u000f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfImagePageCreator;", "", "", "dstPath", "Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;", "saveOptions", "", "exportAs", "path", "", "b", "page", "Landroid/graphics/Bitmap;", "bitmap", "c", "a", Constants.STRING_SIG, "srcPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PdfImagePageCreator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String srcPath;

    public PdfImagePageCreator(@NotNull String srcPath) {
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        this.srcPath = srcPath;
    }

    /* renamed from: a */
    public final boolean m33542a(String path, PdfSaveOptions saveOptions, Bitmap bitmap) {
        NeoPdf ensureNewPdfNative = PdfBundle.INSTANCE.getInstance().ensureNewPdfNative();
        try {
            boolean z = false;
            if (FileUtils.INSTANCE.fileExist(path)) {
                if (ensureNewPdfNative.openDocument(path) != 0) {
                    return false;
                }
            } else if (!ensureNewPdfNative.createNewDocument(path)) {
                return false;
            }
            if (!ensureNewPdfNative.appendPage(bitmap.getWidth(), bitmap.getHeight())) {
                return false;
            }
            int pageCount = ensureNewPdfNative.pageCount() - 1;
            UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
            if (ensureNewPdfNative.setBackground(pageCount, uUIDUtils.shortUUID(), uUIDUtils.shortUUID(), bitmap)) {
                z = ensureNewPdfNative.save(saveOptions);
            }
            return z;
        } finally {
            ensureNewPdfNative.closeDocument();
        }
    }

    /* renamed from: b */
    public final int m33543b(String path) {
        NeoPdf ensureNewPdfNative = PdfBundle.INSTANCE.getInstance().ensureNewPdfNative();
        if (ensureNewPdfNative.openDocument(path) != 0) {
            return 0;
        }
        try {
            int pageCount = ensureNewPdfNative.pageCount();
            if (pageCount > 0) {
                return pageCount;
            }
            Debug.INSTANCE.m32044e(PdfImagePageCreator.class, "invalid page count: " + pageCount, new Object[0]);
            return 0;
        } finally {
            ensureNewPdfNative.closeDocument();
        }
    }

    /* renamed from: c */
    public final Bitmap m33544c(String path, int page, Bitmap bitmap) {
        NeoPdf ensureNewPdfNative = PdfBundle.INSTANCE.getInstance().ensureNewPdfNative();
        if (ensureNewPdfNative.openDocument(path) == 0) {
            try {
                float[] fArr = new float[2];
                if (!ensureNewPdfNative.pageSize(page, fArr)) {
                    return null;
                }
                int i = (int) fArr[0];
                int i2 = (int) fArr[1];
                if (bitmap == null || bitmap.getWidth() != i || bitmap.getHeight() != i2) {
                    bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                }
                Intrinsics.checkNotNull(bitmap);
                bitmap.eraseColor(-1);
                ensureNewPdfNative.setRenderOnyxAnnotations(true);
                r8 = ensureNewPdfNative.renderPage(page, 0, 0, i, i2, 0, bitmap) ? bitmap : null;
            } finally {
                ensureNewPdfNative.closeDocument();
            }
        }
        return r8;
    }

    public final boolean exportAs(@NotNull String dstPath, @NotNull PdfSaveOptions saveOptions) {
        Intrinsics.checkNotNullParameter(dstPath, "dstPath");
        Intrinsics.checkNotNullParameter(saveOptions, "saveOptions");
        int m33543b = m33543b(this.srcPath);
        if (m33543b <= 0) {
            return false;
        }
        FileUtils.INSTANCE.deleteFile(dstPath);
        Bitmap bitmap = null;
        for (int i = 0; i < m33543b; i++) {
            bitmap = m33544c(this.srcPath, i, bitmap);
            if (bitmap == null || !m33542a(dstPath, saveOptions, bitmap)) {
                return false;
            }
        }
        return true;
    }
}
