package com.onyx.android.sdk.reader.api;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "", "searchInPage", "", "currentPage", "", "options", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", Constants.CLEAR_ATTRIBUTES, "searchNext", "searchPrevious", "searchResults", "", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderSearchManager {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean searchInPage(@NotNull ReaderSearchManager readerSearchManager, int i, @NotNull ReaderSearchOptions options, boolean z) {
            Intrinsics.checkNotNullParameter(options, "options");
            return false;
        }

        public static boolean searchNext(@NotNull ReaderSearchManager readerSearchManager, @NotNull ReaderSearchOptions options) {
            Intrinsics.checkNotNullParameter(options, "options");
            return false;
        }

        public static boolean searchPrevious(@NotNull ReaderSearchManager readerSearchManager, @NotNull ReaderSearchOptions options) {
            Intrinsics.checkNotNullParameter(options, "options");
            return false;
        }

        @NotNull
        public static List<ReaderSelection> searchResults(@NotNull ReaderSearchManager readerSearchManager) {
            List<ReaderSelection> emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    boolean searchInPage(int currentPage, @NotNull ReaderSearchOptions options, boolean clear);

    boolean searchNext(@NotNull ReaderSearchOptions options);

    boolean searchPrevious(@NotNull ReaderSearchOptions options);

    @NotNull
    List<ReaderSelection> searchResults();
}
