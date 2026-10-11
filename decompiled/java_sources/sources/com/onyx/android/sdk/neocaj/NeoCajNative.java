package com.onyx.android.sdk.neocaj;

import android.graphics.Bitmap;
import android.util.SizeF;
import com.onyx.android.sdk.neopdf.NeoPdfNative;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0004J\u0016\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0016J\u0014\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001aJ\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0004J\u0011\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\fH\u0082 J\u0019\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082 J\u0011\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0082 J\u0011\u0010 \u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0082 J!\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#H\u0082 J\u001f\u0010$\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u001aH\u0082 J\u001b\u0010'\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0004H\u0082 J\u0011\u0010(\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000fH\u0082 J\u000e\u0010*\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000fJ\u000e\u0010+\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010,\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/neocaj/NeoCajNative;", "", "()V", "NEOCAJ_FORMAT_CAJ", "", "NEOCAJ_FORMAT_HN", "NEOCAJ_FORMAT_KDH", "NEOCAJ_FORMAT_PDF", "NEOCAJ_FORMAT_UNKNOWN", "closeDocument", "", "handle", "", "convertToPDF", "srcPath", "", "dstPath", "getPageSize", "Landroid/util/SizeF;", "page", "getTocTree", "root", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "init", "", "fontFolders", "", "loadPageImage", "Landroid/graphics/Bitmap;", "nativeCloseDocument", "nativeConvertToPDF", "nativeGetFormat", "nativeGetPageCount", "nativeGetPageSize", "size", "", "nativeGetTocEntries", "entries", "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;", "nativeLoadPageImage", "nativeOpenDocument", "path", "openDocument", "pageCount", "readDocumentFormat", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NeoCajNative {

    @NotNull
    public static final NeoCajNative INSTANCE;
    public static final int NEOCAJ_FORMAT_CAJ = 1;
    public static final int NEOCAJ_FORMAT_HN = 2;
    public static final int NEOCAJ_FORMAT_KDH = 3;
    public static final int NEOCAJ_FORMAT_PDF = 4;
    public static final int NEOCAJ_FORMAT_UNKNOWN = 0;

    static {
        NeoCajNative neoCajNative = new NeoCajNative();
        INSTANCE = neoCajNative;
        System.loadLibrary("engine_sdk");
        neoCajNative.init(NeoPdfNative.INSTANCE.defaultFontDirs());
    }

    private final native void nativeCloseDocument(long handle);

    private final native boolean nativeConvertToPDF(long handle, String dstPath);

    private final native int nativeGetFormat(long handle);

    private final native int nativeGetPageCount(long handle);

    private final native boolean nativeGetPageSize(long handle, int page, float[] size);

    private final native boolean nativeGetTocEntries(long handle, List<NeoCajTocEntry> entries);

    private final native Bitmap nativeLoadPageImage(long handle, int page);

    private final native long nativeOpenDocument(String path);

    public final boolean closeDocument(long handle) {
        nativeCloseDocument(handle);
        return true;
    }

    public final boolean convertToPDF(@NotNull String srcPath, @NotNull String dstPath) {
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        Intrinsics.checkNotNullParameter(dstPath, "dstPath");
        long openDocument = openDocument(srcPath);
        if (openDocument == 0) {
            return false;
        }
        try {
            return nativeConvertToPDF(openDocument, dstPath);
        } finally {
            closeDocument(openDocument);
        }
    }

    @NotNull
    public final SizeF getPageSize(long handle, int page) {
        float[] fArr = new float[2];
        return !nativeGetPageSize(handle, page, fArr) ? new SizeF(0.0f, 0.0f) : new SizeF(fArr[0], fArr[1]);
    }

    public final boolean getTocTree(long handle, @NotNull PdfTocEntry root) {
        Intrinsics.checkNotNullParameter(root, "root");
        ArrayList arrayList = new ArrayList();
        if (!nativeGetTocEntries(handle, arrayList)) {
            return false;
        }
        NeoCajTocEntry.INSTANCE.buildTocTree(root, arrayList);
        return true;
    }

    public final void init(@NotNull List<String> fontFolders) {
        Intrinsics.checkNotNullParameter(fontFolders, "fontFolders");
        NeoPdfNative.INSTANCE.ensureInitialized(fontFolders);
    }

    @Nullable
    public final Bitmap loadPageImage(long handle, int page) {
        return nativeLoadPageImage(handle, page);
    }

    public final long openDocument(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return nativeOpenDocument(path);
    }

    public final int pageCount(long handle) {
        return nativeGetPageCount(handle);
    }

    public final int readDocumentFormat(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        long openDocument = openDocument(path);
        if (openDocument == 0) {
            return 0;
        }
        try {
            return nativeGetFormat(openDocument);
        } finally {
            closeDocument(openDocument);
        }
    }
}
