package com.onyx.android.sdk.reader.plugins.neopdf;

import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.reader.api.ReaderShape;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;", "Lcom/onyx/android/sdk/reader/api/ReaderShape;", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "a", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "getPdfShape", "()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "pdfShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoPdfShape implements ReaderShape {
    public static final float AREA_ERASER_STROKE_WIDTH = 0.1f;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PdfShapeInfo pdfShape;

    public NeoPdfShape(@NotNull PdfShapeInfo pdfShape) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        this.pdfShape = pdfShape;
    }

    @NotNull
    public final PdfShapeInfo getPdfShape() {
        return this.pdfShape;
    }
}
