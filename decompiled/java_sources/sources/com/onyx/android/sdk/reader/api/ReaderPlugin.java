package com.onyx.android.sdk.reader.api;

import androidx.core.content.FileProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&J \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0013\u001a\u00020\u0014H\u0016¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "", "abortCurrentJob", "", "clearAbortFlag", "createDrmManager", "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "destroy", FileProvider.f5230t, "", "getPluginFeatures", "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;", "open", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "path", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "pluginOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "reopen", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderPlugin {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @Nullable
        public static ReaderDrmManager createDrmManager(@NotNull ReaderPlugin readerPlugin) {
            return null;
        }

        public static void destroy(@NotNull ReaderPlugin readerPlugin) {
        }

        public static boolean reopen(@NotNull ReaderPlugin readerPlugin) {
            return true;
        }
    }

    void abortCurrentJob();

    void clearAbortFlag();

    @Nullable
    ReaderDrmManager createDrmManager();

    void destroy();

    @NotNull
    String displayName();

    @NotNull
    ReaderPluginFeatures getPluginFeatures();

    @NotNull
    ReaderDocument open(@NotNull String path, @NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) throws ReaderException;

    boolean reopen();
}
