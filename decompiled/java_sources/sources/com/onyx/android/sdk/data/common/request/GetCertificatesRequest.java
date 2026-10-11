package com.onyx.android.sdk.data.common.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.data.Certificates;
import com.onyx.android.sdk.data.utils.AESEncryptUtils;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/request/GetCertificatesRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/data/common/data/Certificates;", "api", "", "key", "decrypted", "", "(Ljava/lang/String;Ljava/lang/String;Z)V", "execute", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GetCertificatesRequest extends RxBaseRequest<Certificates> {

    @NotNull
    private final String api;
    private final boolean decrypted;

    @NotNull
    private final String key;

    public /* synthetic */ GetCertificatesRequest(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z);
    }

    public GetCertificatesRequest(@NotNull String api, @NotNull String key, boolean z) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(key, "key");
        this.api = api;
        this.key = key;
        this.decrypted = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Certificates execute() throws Exception {
        Certificates certificates = (Certificates) RetrofitUtils.INSTANCE.executeCall(ServiceFactory.INSTANCE.getCertificatesService(this.api).getCertificates(this.key)).body();
        String cert = certificates.getCert();
        if (!(cert == null || cert.length() == 0)) {
            if (!this.decrypted) {
                Intrinsics.checkNotNull(certificates);
                return certificates;
            }
            AESEncryptUtils aESEncryptUtils = AESEncryptUtils.INSTANCE;
            String key = certificates.getKey();
            Intrinsics.checkNotNull(key);
            String cert2 = certificates.getCert();
            Intrinsics.checkNotNull(cert2);
            return new Certificates(aESEncryptUtils.decrypt(key, cert2), certificates.getKey());
        }
        throw new Exception("empty certificates for " + this.key);
    }
}
