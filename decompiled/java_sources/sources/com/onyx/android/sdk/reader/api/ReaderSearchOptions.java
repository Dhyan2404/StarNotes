package com.onyx.android.sdk.reader.api;

import java.io.Closeable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0005H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\nH&J\b\u0010\f\u001a\u00020\nH&J\b\u0010\r\u001a\u00020\u0005H&J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "", "abortChapterContentSearch", "", "contextLength", "", "fromPage", "fromPosition", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "isCaseSensitive", "", "isExcludeStartPosition", "isMatchWholeWord", "limit", "pattern", "", "progressCallback", "Lcom/onyx/android/sdk/reader/api/ReaderSearchProgressCallback;", "setCurrentChapterAbortCall", "closeable", "Ljava/io/Closeable;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderSearchOptions {
    void abortChapterContentSearch();

    int contextLength();

    int fromPage();

    @Nullable
    ReaderPosition fromPosition();

    boolean isCaseSensitive();

    boolean isExcludeStartPosition();

    boolean isMatchWholeWord();

    int limit();

    @Nullable
    String pattern();

    @Nullable
    ReaderSearchProgressCallback progressCallback();

    void setCurrentChapterAbortCall(@Nullable Closeable closeable);
}
