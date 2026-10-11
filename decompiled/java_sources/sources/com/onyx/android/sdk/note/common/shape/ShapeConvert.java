package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeConvert;", "", "toPdfHighlight", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "embedShapeBean", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "toPdfShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeConvert {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @Nullable
        public static PdfHighlightInfo toPdfHighlight(@NotNull ShapeConvert shapeConvert, @NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            return null;
        }
    }

    @Nullable
    PdfHighlightInfo toPdfHighlight(@NotNull EmbedShapeBean embedShapeBean);

    @NotNull
    PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean);
}
