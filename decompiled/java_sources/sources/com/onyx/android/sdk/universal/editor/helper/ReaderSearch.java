package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSearchOptions;
import com.onyx.android.sdk.reader.api.ReaderSearchProgressCallback;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch;", "", "()V", "createReaderSearchOptions", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "position", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "keyword", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderSearch {

    @NotNull
    public static final ReaderSearch INSTANCE = new ReaderSearch();

    @NotNull
    public final ReaderSearchOptions createReaderSearchOptions(@NotNull final ReaderPosition position, @NotNull final String keyword) {
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        return new ReaderSearchOptions() { // from class: com.onyx.android.sdk.universal.editor.helper.ReaderSearch$createReaderSearchOptions$1
            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public void abortChapterContentSearch() {
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public int contextLength() {
                return 100;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public int fromPage() {
                return position.getPageIndex();
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            @NotNull
            /* renamed from: fromPosition, reason: from getter */
            public ReaderPosition getF52445b() {
                return position;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public boolean isCaseSensitive() {
                return false;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public boolean isExcludeStartPosition() {
                return false;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public boolean isMatchWholeWord() {
                return false;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public int limit() {
                return 10;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            @NotNull
            /* renamed from: pattern, reason: from getter */
            public String getF52444a() {
                return keyword;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            @Nullable
            public ReaderSearchProgressCallback progressCallback() {
                return null;
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderSearchOptions
            public void setCurrentChapterAbortCall(@Nullable Closeable closeable) {
            }
        };
    }
}
