package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "", "isBlankContent", "", "isDamagedFile", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderDocumentFeatures {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean isBlankContent(@NotNull ReaderDocumentFeatures readerDocumentFeatures) {
            return false;
        }

        public static boolean isDamagedFile(@NotNull ReaderDocumentFeatures readerDocumentFeatures) {
            return false;
        }
    }

    boolean isBlankContent();

    boolean isDamagedFile();
}
