package com.onyx.android.sdk.reader.data;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0003"}, m61528d2 = {"isValid", "", "Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;", "sdk-reader_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OpenDocumentArgsKt {
    public static final boolean isValid(@Nullable OpenDocumentArgs openDocumentArgs) {
        return openDocumentArgs != null && openDocumentArgs.getPath().length() > 0;
    }
}
