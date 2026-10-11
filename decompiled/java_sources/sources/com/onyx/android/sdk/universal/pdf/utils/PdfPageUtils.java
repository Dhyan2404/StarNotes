package com.onyx.android.sdk.universal.pdf.utils;

import android.graphics.Bitmap;
import com.onyx.android.sdk.neopdf.export.PdfExport;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfPageUtils;", "", "()V", "ensurePdfNotEmpty", "", "pdfExport", "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "width", "", "height", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PdfPageUtils {

    @NotNull
    public static final PdfPageUtils INSTANCE = new PdfPageUtils();

    public final void ensurePdfNotEmpty(@NotNull PdfExport pdfExport, int width, int height) {
        Intrinsics.checkNotNullParameter(pdfExport, "pdfExport");
        if (pdfExport.pageCount() > 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        arrayList.add(createBitmap);
        pdfExport.appendPage(arrayList, width, height);
        createBitmap.recycle();
    }
}
