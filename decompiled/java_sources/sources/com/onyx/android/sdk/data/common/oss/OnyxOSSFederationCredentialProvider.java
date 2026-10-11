package com.onyx.android.sdk.data.common.oss;

import com.alibaba.sdk.android.oss.common.auth.OSSFederationCredentialProvider;
import com.alibaba.sdk.android.oss.common.auth.OSSFederationToken;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.cloud.p025v1.OnyxCertificatesService;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.oss.OSSTokenResult;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;", "Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;", "ossConfig", "Lcom/onyx/android/sdk/data/common/oss/OssConfig;", "(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V", "getFederationToken", "Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxOSSFederationCredentialProvider extends OSSFederationCredentialProvider {

    @NotNull
    private static final String BEARER_TOKEN_PREFIX = "Bearer ";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private final OssConfig ossConfig;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;", "", "()V", "BEARER_TOKEN_PREFIX", "", "getBearerToken", "token", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getBearerToken(@NotNull String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            return "Bearer " + token;
        }

        private Companion() {
        }
    }

    public OnyxOSSFederationCredentialProvider(@NotNull OssConfig ossConfig) {
        Intrinsics.checkNotNullParameter(ossConfig, "ossConfig");
        this.ossConfig = ossConfig;
    }

    @Override // com.alibaba.sdk.android.oss.common.auth.OSSFederationCredentialProvider, com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider
    @Nullable
    public OSSFederationToken getFederationToken() {
        OSSTokenResult.OSSToken data;
        OSSTokenResult.OSSToken data2;
        OSSTokenResult.OSSToken data3;
        OSSTokenResult.OSSToken data4;
        try {
            ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
            String server = this.ossConfig.getOssSTS().getServer();
            Intrinsics.checkNotNull(server);
            OnyxCertificatesService certificatesService = serviceFactory.getCertificatesService(server);
            RetrofitUtils retrofitUtils = RetrofitUtils.INSTANCE;
            Companion companion = INSTANCE;
            String token = this.ossConfig.getToken();
            String str = "";
            if (token == null) {
                token = "";
            }
            Response executeCall = retrofitUtils.executeCall(certificatesService.getStss(companion.getBearerToken(token)));
            if (!executeCall.isSuccessful()) {
                Debug.INSTANCE.m32044e(OnyxOSSFederationCredentialProvider.class, "errorBody:" + executeCall.errorBody().string(), new Object[0]);
                return null;
            }
            OSSTokenResult oSSTokenResult = (OSSTokenResult) JSONUtils.INSTANCE.parseObject((String) executeCall.body(), OSSTokenResult.class);
            if (!OSSTokenResult.INSTANCE.hasData(oSSTokenResult)) {
                Debug.INSTANCE.m32044e(OnyxOSSFederationCredentialProvider.class, executeCall.message(), new Object[0]);
                return null;
            }
            String accessKeyId = (oSSTokenResult == null || (data4 = oSSTokenResult.getData()) == null) ? null : data4.getAccessKeyId();
            if (accessKeyId == null) {
                accessKeyId = "";
            }
            String accessKeySecret = (oSSTokenResult == null || (data3 = oSSTokenResult.getData()) == null) ? null : data3.getAccessKeySecret();
            if (accessKeySecret == null) {
                accessKeySecret = "";
            }
            String securityToken = (oSSTokenResult == null || (data2 = oSSTokenResult.getData()) == null) ? null : data2.getSecurityToken();
            if (securityToken == null) {
                securityToken = "";
            }
            String expiration = (oSSTokenResult == null || (data = oSSTokenResult.getData()) == null) ? null : data.getExpiration();
            if (expiration != null) {
                str = expiration;
            }
            return new OSSFederationToken(accessKeyId, accessKeySecret, securityToken, str);
        } catch (Exception e) {
            Debug.INSTANCE.m32045e(OnyxOSSFederationCredentialProvider.class, e);
            return null;
        }
    }
}
