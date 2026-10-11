package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0000H&J\b\u0010\b\u001a\u00020\u0000H&J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005H&J\b\u0010\u000f\u001a\u00020\u0003H&¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "", "asInteger", "", "asString", "", "compare", "otherPosition", "copy", "fromInteger", "value", "fromPageIndex", "pageIndex", "fromString", "string", "getPageIndex", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderPosition {
    int asInteger();

    @NotNull
    String asString();

    int compare(@NotNull ReaderPosition otherPosition);

    @NotNull
    ReaderPosition copy();

    @NotNull
    ReaderPosition fromInteger(int value);

    @NotNull
    ReaderPosition fromPageIndex(int pageIndex);

    @NotNull
    ReaderPosition fromString(@NotNull String string);

    int getPageIndex();
}
