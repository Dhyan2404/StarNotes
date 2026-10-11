package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverRefreshTokenRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "", "b", Constants.STRING_SIG, "refreshToken", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverRefreshTokenRequest extends RxBaseRequest<OneDriveTokenResponse> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String refreshToken;

    public OneDriverRefreshTokenRequest(@NotNull OneDriveProvider oneDriveProvider, @NotNull String refreshToken) {
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.oneDriveProvider = oneDriveProvider;
        this.refreshToken = refreshToken;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public OneDriveTokenResponse execute() {
        Response<OneDriveTokenResponse> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService("https://login.microsoftonline.com/").refreshToken(this.oneDriveProvider.getProviderContext().getClientID(), CloudStorageConstants.ONE_DRIVE_AUTH_SUCCESS_CALLBACK_URL, this.oneDriveProvider.getProviderContext().getSecret(), this.refreshToken, "refresh_token").execute();
        if (execute.isSuccessful()) {
            OneDriveTokenResponse body = execute.body();
            Debug.INSTANCE.m32038d(CloudStorageConstants.CLOUD_STORAGE_TAG, "onedriver refresh token success: " + JSONUtils.INSTANCE.toJson(body), new Object[0]);
            Intrinsics.checkNotNull(body);
            return body;
        }
        LogUtils.file(OneDriverRefreshTokenRequest.class.getSimpleName() + ";onedrive refresh token failed:" + execute.errorBody().string());
        throw new TokenExpiredException(this.oneDriveProvider.getProviderType());
    }
}
