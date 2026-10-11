package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;", "", "supportDrm", "", "supportNoteEmbeded", "supportSaveOptions", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderPluginFeatures {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean supportDrm(@NotNull ReaderPluginFeatures readerPluginFeatures) {
            return false;
        }

        public static boolean supportNoteEmbeded(@NotNull ReaderPluginFeatures readerPluginFeatures) {
            return false;
        }

        public static boolean supportSaveOptions(@NotNull ReaderPluginFeatures readerPluginFeatures) {
            return true;
        }
    }

    boolean supportDrm();

    boolean supportNoteEmbeded();

    boolean supportSaveOptions();
}
