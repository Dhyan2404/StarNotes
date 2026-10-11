package com.onyx.android.sdk.reader.extension;

import android.graphics.RectF;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.neopdf.PdfTextSelection;
import com.onyx.android.sdk.reader.api.PageRange;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;", "sel", "Lcom/onyx/android/sdk/neopdf/PdfTextSelection;", "sdk-readercore_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderSelectionImplKt {
    @NotNull
    public static final ReaderSelectionImpl create(@NotNull ReaderSelectionImpl.Companion companion, @NotNull PdfTextSelection sel) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(sel, "sel");
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.setPageIndex(sel.pageIndex);
        PageRange.Companion companion2 = PageRange.INSTANCE;
        readerSelectionImpl.setPageRange(companion2.createFixedPageRange(sel.pageIndex));
        readerSelectionImpl.setSelectionRange(companion2.createSelectionRange(sel.startIndex, sel.endIndex));
        List<RectF> rectangles = sel.rectangles;
        Intrinsics.checkNotNullExpressionValue(rectangles, "rectangles");
        readerSelectionImpl.setRectList(rectangles);
        String str = sel.text;
        if (str == null) {
            str = "";
        }
        readerSelectionImpl.setText(str);
        String str2 = sel.leftText;
        if (str2 == null) {
            str2 = "";
        }
        readerSelectionImpl.setLeftText(str2);
        String str3 = sel.rightText;
        readerSelectionImpl.setRightText(str3 != null ? str3 : "");
        return readerSelectionImpl;
    }
}
