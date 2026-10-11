package com.onyx.android.sdk.neopdf;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.neopdf.export.ExportPdfPageLinks;
import com.onyx.android.sdk.neopdf.lib.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bA\u0010BJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\nJ\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\nJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000f2\b\b\u0002\u0010\r\u001a\u00020\nJ4\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J4\u0010\u0019\u001a\u0004\u0018\u00010\u00172\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J2\u0010\u0019\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0018\u0010!\u001a\u00020 2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0011\u001a\u00020\u0010J\u001c\u0010#\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u00040\"2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0016\u0010$\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0004J(\u0010+\u001a\u00020*2\b\u0010%\u001a\u0004\u0018\u00010\u001a2\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020\u00102\u0006\u0010)\u001a\u00020(JT\u00102\u001a\u00020*2\b\u0010%\u001a\u0004\u0018\u00010\u001a2\u0006\u0010&\u001a\u00020\u001a2\"\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-0,j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-`.2\u0006\u0010'\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u0004J2\u00103\u001a\u00020*2\u0006\u0010&\u001a\u00020\u001a2\"\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-0,j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-`.J\u001a\u00105\u001a\u00020\u00042\b\u00104\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J<\u00108\u001a\u00020\u00102\"\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-0,j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020-`.2\u0006\u00106\u001a\u00020-2\u0006\u00107\u001a\u00020\u0004H\u0002R\u0014\u00109\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010;\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010:R\u0014\u0010<\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u0010:R\u0014\u0010@\u001a\u00020=8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfUtils;", "", "", "cm", "", "pdfCMToPx", "mm", "pdfMMToPx", ExtUnits.UNIT_PX, "pdfPxToMM", "", "pdfMMToPxScale", "pageSize", "dpi", "pdfPageSizeToSizeFormatPx", "Landroid/graphics/RectF;", "", "path", "pageIndex", "width", "height", "Landroid/graphics/Bitmap$Config;", AbstractLogger.CONFIG, "Landroid/graphics/Bitmap;", "renderGlobalBKPdfPageBitmap", "pdfPageBitmap", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "pdfNative", "globalBKPdfPageCount", "newPdfPageCount", "openNewPdf", "openPdf", "", "saveWithTagInfo", "", "loadPageUniqueIdMap", "loadPageSize", "srcPdfNative", "exportPdfNative", "srcFilePath", "", NotificationCompat.WearableExtender.f5053s, "", "updateExportPdfLinks", "Ljava/util/LinkedHashMap;", "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;", "Lkotlin/collections/LinkedHashMap;", "pendingPdfPageLinkMap", "srcPageIndex", "exportPageIndex", "collectPendingPdfLinks", "flushPendingPdfLinks", "neoPdf", "c", "pdfPageLinks", "pageDest", "a", "PDF_STANDARD_DPI", "F", "MM_TO_IN_VALUE", "ONYX_SIZE_FORMAT_FIX_DPI", "Lcom/onyx/android/sdk/neopdf/PdfBundle;", "b", "()Lcom/onyx/android/sdk/neopdf/PdfBundle;", "pdfBundle", Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPdfUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfUtils.kt\ncom/onyx/android/sdk/neopdf/PdfUtils\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,296:1\n337#2:297\n13404#3,3:298\n1864#4,3:301\n1855#4:304\n1864#4,2:305\n1866#4:312\n1856#4:313\n41#5,5:307\n526#6:314\n511#6,6:315\n*S KotlinDebug\n*F\n+ 1 PdfUtils.kt\ncom/onyx/android/sdk/neopdf/PdfUtils\n*L\n59#1:297\n198#1:298,3\n239#1:301,3\n256#1:304\n267#1:305,2\n267#1:312\n256#1:313\n271#1:307,5\n292#1:314\n292#1:315,6\n*E\n"})
/* loaded from: classes7.dex */
public final class PdfUtils {

    @NotNull
    public static final PdfUtils INSTANCE = new PdfUtils();
    public static final float MM_TO_IN_VALUE = 25.4f;
    public static final float ONYX_SIZE_FORMAT_FIX_DPI = 253.69f;
    public static final float PDF_STANDARD_DPI = 72.0f;

    public static /* synthetic */ int pdfPageSizeToSizeFormatPx$default(PdfUtils pdfUtils, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = 253.69f;
        }
        return pdfUtils.pdfPageSizeToSizeFormatPx(f, f2);
    }

    /* renamed from: a */
    public final String m33553a(LinkedHashMap<Integer, ExportPdfPageLinks> pendingPdfPageLinkMap, ExportPdfPageLinks pdfPageLinks, int pageDest) {
        Object firstOrNull;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Integer, ExportPdfPageLinks> entry : pendingPdfPageLinkMap.entrySet()) {
            if (Intrinsics.areEqual(entry.getValue().getSrcFilePath(), pdfPageLinks.getSrcFilePath()) && entry.getValue().getSrcPageIndex() == pageDest) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(linkedHashMap.values());
        ExportPdfPageLinks exportPdfPageLinks = (ExportPdfPageLinks) firstOrNull;
        return String.valueOf(exportPdfPageLinks != null ? Integer.valueOf(exportPdfPageLinks.getExportPageIndex()) : null);
    }

    /* renamed from: b */
    public final PdfBundle m33554b() {
        return PdfBundle.INSTANCE.getInstance();
    }

    /* renamed from: c */
    public final int m33555c(NeoPdf neoPdf, String path) {
        NeoPdf openPdf = openPdf(neoPdf, path);
        if (openPdf == null) {
            return 0;
        }
        try {
            return openPdf.pageCount();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public final void collectPendingPdfLinks(@Nullable NeoPdf srcPdfNative, @NotNull NeoPdf exportPdfNative, @NotNull LinkedHashMap<Integer, ExportPdfPageLinks> pendingPdfPageLinkMap, @NotNull String srcFilePath, int srcPageIndex, int exportPageIndex) {
        NeoPdf neoPdf;
        Intrinsics.checkNotNullParameter(exportPdfNative, "exportPdfNative");
        Intrinsics.checkNotNullParameter(pendingPdfPageLinkMap, "pendingPdfPageLinkMap");
        Intrinsics.checkNotNullParameter(srcFilePath, "srcFilePath");
        ExportPdfPageLinks exportPdfPageLinks = new ExportPdfPageLinks();
        exportPdfPageLinks.setSrcFilePath(srcFilePath);
        exportPdfPageLinks.setSrcPageIndex(srcPageIndex);
        exportPdfPageLinks.setExportPageIndex(exportPageIndex);
        pendingPdfPageLinkMap.put(Integer.valueOf(exportPageIndex), exportPdfPageLinks);
        ArrayList arrayList = new ArrayList();
        if (!exportPdfNative.getPageLinks(exportPageIndex, arrayList, true) || CollectionKt.isNullOrEmpty(arrayList)) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        if (srcPdfNative != null) {
            neoPdf = srcPdfNative;
        } else {
            neoPdf = new NeoPdf();
            try {
                neoPdf.openDocument(srcFilePath);
            } catch (Throwable unused) {
                neoPdf.closeDocument();
                return;
            }
        }
        neoPdf.getPageLinks(srcPageIndex, arrayList2, true);
        int i = 0;
        for (Object obj : arrayList2) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            exportPdfPageLinks.getLinkDestList().add(neoPdf.getLinkDest((PdfLink) obj));
            i = i2;
        }
        if (srcPdfNative == null) {
            neoPdf.closeDocument();
        }
    }

    public final void flushPendingPdfLinks(@NotNull NeoPdf exportPdfNative, @NotNull LinkedHashMap<Integer, ExportPdfPageLinks> pendingPdfPageLinkMap) {
        ExportPdfPageLinks exportPdfPageLinks;
        Object orNull;
        Integer intOrNull;
        int i;
        Intrinsics.checkNotNullParameter(exportPdfNative, "exportPdfNative");
        Intrinsics.checkNotNullParameter(pendingPdfPageLinkMap, "pendingPdfPageLinkMap");
        if (CollectionKt.isNullOrEmpty(pendingPdfPageLinkMap)) {
            return;
        }
        Benchmark benchmark = new Benchmark();
        ArrayList arrayList = new ArrayList();
        Set<Integer> keySet = pendingPdfPageLinkMap.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        for (Integer num : keySet) {
            ArrayList arrayList2 = new ArrayList();
            Intrinsics.checkNotNull(num);
            if (exportPdfNative.getPageLinks(num.intValue(), arrayList2, true) && !CollectionKt.isNullOrEmpty(arrayList2) && (exportPdfPageLinks = pendingPdfPageLinkMap.get(num)) != null) {
                Intrinsics.checkNotNull(exportPdfPageLinks);
                List<String> linkDestList = exportPdfPageLinks.getLinkDestList();
                if (!CollectionKt.isNullOrEmpty(linkDestList)) {
                    CollectionKt.safeAddAll(arrayList, arrayList2);
                    int i2 = 0;
                    for (Object obj : arrayList2) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        PdfLink pdfLink = (PdfLink) obj;
                        orNull = CollectionsKt___CollectionsKt.getOrNull(linkDestList, i2);
                        String str = (String) orNull;
                        if (str == null || str.length() == 0) {
                            i = 0;
                        } else {
                            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str);
                            i = intOrNull != null ? 1 : 2;
                        }
                        if (i == 1) {
                            PdfUtils pdfUtils = INSTANCE;
                            Intrinsics.checkNotNull(str);
                            str = pdfUtils.m33553a(pendingPdfPageLinkMap, exportPdfPageLinks, Integer.parseInt(str));
                        }
                        if (str == null) {
                            str = "";
                        }
                        exportPdfNative.updateLinkDesk(pdfLink, i, str);
                        i2 = i3;
                    }
                }
            }
        }
        benchmark.report("flushPendingPdfLinks:" + CollectionKt.getSize(arrayList));
        if (!arrayList.isEmpty()) {
            saveWithTagInfo(exportPdfNative, exportPdfNative.getFilePath());
        }
    }

    @WorkerThread
    public final int globalBKPdfPageCount(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return m33555c(m33554b().ensureGlobalPdfBKNative(), path);
    }

    @NotNull
    public final RectF loadPageSize(@NotNull NeoPdf pdfNative, int pageIndex) {
        Intrinsics.checkNotNullParameter(pdfNative, "pdfNative");
        float[] fArr = new float[2];
        pdfNative.pageSize(pageIndex, fArr);
        return new RectF(0.0f, 0.0f, fArr[0], fArr[1]);
    }

    @NotNull
    public final Map<String, Integer> loadPageUniqueIdMap(@NotNull NeoPdf pdfNative) {
        Intrinsics.checkNotNullParameter(pdfNative, "pdfNative");
        HashMap hashMap = new HashMap();
        int pageCount = pdfNative.pageCount();
        for (int i = 0; i < pageCount; i++) {
            hashMap.put(pdfNative.getPageId(i), Integer.valueOf(i));
        }
        return hashMap;
    }

    @WorkerThread
    public final int newPdfPageCount(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        int m33555c = m33555c(m33554b().ensureNewPdfNative(), path);
        m33554b().closeNewPdfNative();
        return m33555c;
    }

    @Nullable
    public final NeoPdf openNewPdf(@Nullable String path) {
        if ((path == null || path.length() == 0) || FileUtils.INSTANCE.isEmpty(path)) {
            return null;
        }
        return openPdf(m33554b().ensureNewPdfNative(), path);
    }

    @Nullable
    public final NeoPdf openPdf(@Nullable NeoPdf pdfNative, @Nullable String path) {
        if (!(path == null || path.length() == 0) && !FileUtils.INSTANCE.isEmpty(path)) {
            Intrinsics.checkNotNull(pdfNative);
            if (Intrinsics.areEqual(pdfNative.getFilePath(), path)) {
                return pdfNative;
            }
            try {
                if (pdfNative.openDocument(path) == 0) {
                    return pdfNative;
                }
                pdfNative.closeDocument();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                pdfNative.closeDocument();
            }
        }
        return null;
    }

    public final int pdfCMToPx(@NotNull Number cm) {
        Intrinsics.checkNotNullParameter(cm, "cm");
        return pdfMMToPx(Float.valueOf(cm.floatValue() / 10));
    }

    public final int pdfMMToPx(@NotNull Number mm) {
        Intrinsics.checkNotNullParameter(mm, "mm");
        return (int) Math.ceil((mm.floatValue() / 25.4f) * 72.0f);
    }

    public final float pdfMMToPxScale() {
        return 0.28346455f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.onyx.android.sdk.neopdf.PdfBundle] */
    @WorkerThread
    @Nullable
    public final Bitmap pdfPageBitmap(@Nullable String path, int pageIndex, int width, int height, @NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        NeoPdf openPdf = openPdf(m33554b().ensureNewPdfNative(), path);
        Bitmap bitmap = null;
        if (openPdf == null) {
            return null;
        }
        try {
            try {
                bitmap = pdfPageBitmap(openPdf, pageIndex, width, height, config);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return bitmap;
        } finally {
            this.m33554b().closeNewPdfNative();
        }
    }

    public final int pdfPageSizeToSizeFormatPx(float pageSize, float dpi) {
        return (int) Math.ceil((pageSize * dpi) / 72.0f);
    }

    public final int pdfPxToMM(int px) {
        return (int) Math.ceil((px * 25.4f) / 72.0f);
    }

    @WorkerThread
    @Nullable
    public final Bitmap renderGlobalBKPdfPageBitmap(@Nullable String path, int pageIndex, int width, int height, @NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        NeoPdf openPdf = openPdf(m33554b().ensureGlobalPdfBKNative(), path);
        if (openPdf == null) {
            return null;
        }
        try {
            return pdfPageBitmap(openPdf, pageIndex, width, height, config);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final boolean saveWithTagInfo(@Nullable NeoPdf pdfNative, @NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (pdfNative != null && pdfNative.setOnyxTagMetadata(NeoPdfOnyxTag.PDF_METADATA_KEY, StringKt.safelyGetStr(JSONUtils.INSTANCE.toJson(new NeoPdfOnyxTag(null, CommitIdUtils.INSTANCE.generateCommitId(), true, "galaxy", 1, null))))) {
            return NeoPdf.saveAs$default(pdfNative, path, null, 2, null);
        }
        return false;
    }

    public final void updateExportPdfLinks(@Nullable NeoPdf srcPdfNative, @NotNull NeoPdf exportPdfNative, @NotNull String srcFilePath, @NotNull int[] pages) {
        Intrinsics.checkNotNullParameter(exportPdfNative, "exportPdfNative");
        Intrinsics.checkNotNullParameter(srcFilePath, "srcFilePath");
        Intrinsics.checkNotNullParameter(pages, "pages");
        LinkedHashMap<Integer, ExportPdfPageLinks> linkedHashMap = new LinkedHashMap<>();
        int length = pages.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            INSTANCE.collectPendingPdfLinks(srcPdfNative, exportPdfNative, linkedHashMap, srcFilePath, pages[i2], i);
            i2++;
            i++;
        }
        flushPendingPdfLinks(exportPdfNative, linkedHashMap);
    }

    public static /* synthetic */ RectF pdfPageSizeToSizeFormatPx$default(PdfUtils pdfUtils, RectF rectF, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 253.69f;
        }
        return pdfUtils.pdfPageSizeToSizeFormatPx(rectF, f);
    }

    @NotNull
    public final RectF pdfPageSizeToSizeFormatPx(@NotNull RectF pageSize, float dpi) {
        Intrinsics.checkNotNullParameter(pageSize, "pageSize");
        return new RectF(new Rect(0, 0, pdfPageSizeToSizeFormatPx(pageSize.width(), dpi), pdfPageSizeToSizeFormatPx(pageSize.height(), dpi)));
    }

    @WorkerThread
    @Nullable
    public final Bitmap pdfPageBitmap(@NotNull NeoPdf pdfNative, int pageIndex, int width, int height, @NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(pdfNative, "pdfNative");
        Intrinsics.checkNotNullParameter(config, "config");
        if (pdfNative.pageCount() <= pageIndex) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, config);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        createBitmap.eraseColor(-1);
        pdfNative.setRenderOnyxAnnotations(true);
        pdfNative.renderPage(pageIndex, 0, 0, width, height, 0, createBitmap);
        return createBitmap;
    }
}
