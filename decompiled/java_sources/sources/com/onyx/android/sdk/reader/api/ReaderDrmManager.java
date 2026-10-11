package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "", "activateDeviceDRM", "", "factory", "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;", "isWholeBook", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderDrmManager {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean activateDeviceDRM(@NotNull ReaderDrmManager readerDrmManager, @NotNull ReaderDrmCertificateFactory factory) {
            Intrinsics.checkNotNullParameter(factory, "factory");
            return false;
        }

        public static boolean isWholeBook(@NotNull ReaderDrmManager readerDrmManager) {
            return true;
        }
    }

    boolean activateDeviceDRM(@NotNull ReaderDrmCertificateFactory factory);

    boolean isWholeBook();
}
