package com.onyx.android.sdk.reader.api;

import android.graphics.RectF;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&J\b\u0010\u0005\u001a\u00020\u0000H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\tH&J\b\u0010\f\u001a\u00020\rH&J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&J\b\u0010\u000f\u001a\u00020\u0007H&J\b\u0010\u0010\u001a\u00020\rH&J\b\u0010\u0011\u001a\u00020\u0007H&J\b\u0010\u0012\u001a\u00020\u0013H&¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "", "charRectList", "", "Landroid/graphics/RectF;", "copy", "leftText", "", "linkType", "", "originText", "pageIndex", "pageRange", "Lcom/onyx/android/sdk/reader/api/PageRange;", "rectangles", "rightText", "selectionRange", "text", gon.f71267T, "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderSelection {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static String originText(@NotNull ReaderSelection readerSelection) {
            return readerSelection.text();
        }
    }

    @NotNull
    List<RectF> charRectList();

    @NotNull
    ReaderSelection copy();

    @NotNull
    String leftText();

    int linkType();

    @NotNull
    String originText();

    int pageIndex();

    @NotNull
    PageRange pageRange();

    @NotNull
    List<RectF> rectangles();

    @NotNull
    String rightText();

    @NotNull
    PageRange selectionRange();

    @NotNull
    String text();

    @NotNull
    ReaderWritingMode writingMode();
}
