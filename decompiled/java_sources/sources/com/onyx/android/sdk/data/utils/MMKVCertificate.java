package com.onyx.android.sdk.data.utils;

import com.onyx.android.sdk.data.common.data.Certificates;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u0004J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/MMKVCertificate;", "", "()V", "PROVIDER_CERTIFICATES_KEY", "", "SDK_CERTIFICATES_KEY", "getProviderCertificates", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "key", "saveProviderCertificates", "", "certificate", "Lcom/onyx/android/sdk/data/common/data/Certificates;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MMKVCertificate {

    @NotNull
    public static final MMKVCertificate INSTANCE = new MMKVCertificate();

    @NotNull
    public static final String PROVIDER_CERTIFICATES_KEY = "provider_certificates_key";

    @NotNull
    public static final String SDK_CERTIFICATES_KEY = "sdk_certificates_key";

    private MMKVCertificate() {
    }

    @Nullable
    public final ProviderCertificate getProviderCertificates(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (ProviderCertificate) JSONUtils.INSTANCE.parseObject(MMKVUtils.INSTANCE.getString(key, ""), ProviderCertificate.class);
    }

    public final void saveProviderCertificates(@NotNull String key, @NotNull Certificates certificate) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        String cert = certificate.getCert();
        if (cert == null) {
            cert = "";
        }
        mMKVUtils.putString(key, cert);
    }
}
