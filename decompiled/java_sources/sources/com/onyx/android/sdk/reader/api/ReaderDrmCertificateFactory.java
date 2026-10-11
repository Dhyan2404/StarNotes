package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\b\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\t\u001a\u0004\u0018\u00010\u0001H&J\b\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;", "", "getBookId", "", "getDeviceId", "getDocumentDecrypt", "getDrmCertificate", "getPin", "getRandom", "getTag", "isWholeBook", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderDrmCertificateFactory {
    @Nullable
    String getBookId();

    @Nullable
    String getDeviceId();

    @Nullable
    String getDocumentDecrypt();

    @Nullable
    String getDrmCertificate();

    @Nullable
    String getPin();

    @Nullable
    String getRandom();

    @Nullable
    Object getTag();

    boolean isWholeBook();
}
