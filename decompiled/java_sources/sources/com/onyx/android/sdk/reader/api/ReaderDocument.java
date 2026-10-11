package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "", "close", "", "createDocumentConverter", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;", "createDocumentExporter", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;", "createDocumentWriter", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;", "getDocumentFeatures", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "getPageDataProvider", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "getView", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "readCover", "readImage", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "readMetadata", "metadata", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;", "readTableOfContent", SyncConstant.LOCAL_TOC_DIR_NAME, "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "updateDocumentOptions", "", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "pluginOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderDocument {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @Nullable
        public static ReaderDocumentConverter createDocumentConverter(@NotNull ReaderDocument readerDocument) {
            return null;
        }

        @Nullable
        public static ReaderDocumentExporter createDocumentExporter(@NotNull ReaderDocument readerDocument) {
            return null;
        }

        @Nullable
        public static ReaderDocumentWriter createDocumentWriter(@NotNull ReaderDocument readerDocument) {
            return null;
        }

        public static boolean readCover(@NotNull ReaderDocument readerDocument, @NotNull ReaderImage readImage) {
            Intrinsics.checkNotNullParameter(readImage, "readImage");
            return false;
        }

        public static boolean readMetadata(@NotNull ReaderDocument readerDocument, @NotNull ReaderDocumentMetadata metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            return false;
        }

        public static void updateDocumentOptions(@NotNull ReaderDocument readerDocument, @NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) {
            Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
            Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        }
    }

    boolean close();

    @Nullable
    ReaderDocumentConverter createDocumentConverter();

    @Nullable
    ReaderDocumentExporter createDocumentExporter();

    @Nullable
    ReaderDocumentWriter createDocumentWriter();

    @NotNull
    ReaderDocumentFeatures getDocumentFeatures();

    @NotNull
    ReaderPageDataProvider getPageDataProvider();

    @NotNull
    ReaderView getView();

    boolean readCover(@NotNull ReaderImage readImage);

    boolean readMetadata(@NotNull ReaderDocumentMetadata metadata);

    boolean readTableOfContent(@NotNull ReaderDocumentTableOfContent toc);

    void updateDocumentOptions(@NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions);
}
