package com.onyx.android.sdk.data.common.cos;

import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import com.tencent.qcloud.core.auth.BasicLifecycleCredentialProvider;
import com.tencent.qcloud.core.auth.QCloudLifecycleCredentials;
import com.tencent.qcloud.core.auth.SessionQCloudCredentials;
import com.tencent.qcloud.core.common.QCloudClientException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cos/OnyxSessionCredentialProvider;", "Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;", "cosConfig", "Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;", "(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V", "fetchNewCredentials", "Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxSessionCredentialProvider extends BasicLifecycleCredentialProvider {

    @NotNull
    private CosConfigInfo cosConfig;

    public OnyxSessionCredentialProvider(@NotNull CosConfigInfo cosConfig) {
        Intrinsics.checkNotNullParameter(cosConfig, "cosConfig");
        this.cosConfig = cosConfig;
    }

    @Override // com.tencent.qcloud.core.auth.BasicLifecycleCredentialProvider
    @NotNull
    public QCloudLifecycleCredentials fetchNewCredentials() throws QCloudClientException {
        Response executeCall = RetrofitUtils.INSTANCE.executeCall(ServiceFactory.INSTANCE.getCertificatesService(this.cosConfig.getStsServer()).getCosStss());
        if (!executeCall.isSuccessful()) {
            throw new QCloudClientException(new IOException("Unexpected code " + executeCall));
        }
        CosStsBean data = ((CosStsResponse) executeCall.body()).getData();
        if (data == null) {
            throw new QCloudClientException(new IOException("sts data is null"));
        }
        try {
            return new SessionQCloudCredentials(data.getCredentials().getTmpSecretId(), data.getCredentials().getTmpSecretKey(), data.getCredentials().getToken(), System.currentTimeMillis() / 1000, Long.parseLong(data.getExpiredTime()));
        } catch (Exception e) {
            throw new QCloudClientException(e);
        }
    }
}
