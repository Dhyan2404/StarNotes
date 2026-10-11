package com.onyx.android.sdk.data.serverconvert.convertor;

import com.tencent.qcloud.core.auth.BasicLifecycleCredentialProvider;
import com.tencent.qcloud.core.auth.QCloudLifecycleCredentials;
import com.tencent.qcloud.core.auth.SessionQCloudCredentials;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;", "Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;", "tmpSecretId", "", "tmpSecretKey", "sessionToken", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "fetchNewCredentials", "Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TempSessionCredentialProvider extends BasicLifecycleCredentialProvider {

    @NotNull
    private final String sessionToken;

    @NotNull
    private final String tmpSecretId;

    @NotNull
    private final String tmpSecretKey;

    public TempSessionCredentialProvider(@NotNull String tmpSecretId, @NotNull String tmpSecretKey, @NotNull String sessionToken) {
        Intrinsics.checkNotNullParameter(tmpSecretId, "tmpSecretId");
        Intrinsics.checkNotNullParameter(tmpSecretKey, "tmpSecretKey");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        this.tmpSecretId = tmpSecretId;
        this.tmpSecretKey = tmpSecretKey;
        this.sessionToken = sessionToken;
    }

    @Override // com.tencent.qcloud.core.auth.BasicLifecycleCredentialProvider
    @NotNull
    public QCloudLifecycleCredentials fetchNewCredentials() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j = 60;
        return new SessionQCloudCredentials(this.tmpSecretId, this.tmpSecretKey, this.sessionToken, currentTimeMillis, currentTimeMillis * j * j);
    }
}
