package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUserBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "credential", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "fetch", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "tokenResponse", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunFetchAccountInfoRequest extends FetchAccountInfoRequest<BaiduYunTokenResponse> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunFetchAccountInfoRequest(@NotNull BaiduYunProvider baiduYunProvider, @NotNull BaiduYunTokenResponse tokenResponse) {
        super(Provider.BAIDU_YUN.getTitle(), tokenResponse);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(tokenResponse, "tokenResponse");
        this.baiduYunProvider = baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
    @NotNull
    public ProviderAccountModel fetch(@NotNull BaiduYunTokenResponse credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunUserBean>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchAccountInfoRequest$fetch$response$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunUserBean> invoke(@NotNull BaiduYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.panNasRequest(BaiduYunConstant.UINFO);
            }
        });
        if (executeCall.isSuccessful()) {
            BaiduYunUserBean baiduYunUserBean = (BaiduYunUserBean) executeCall.body();
            BaiduYunUtils baiduYunUtils = BaiduYunUtils.INSTANCE;
            Intrinsics.checkNotNull(baiduYunUserBean);
            AccountInfoBean createAccountInfoBean = baiduYunUtils.createAccountInfoBean(baiduYunUserBean);
            ProviderAccountModel providerAccountModel = new ProviderAccountModel(null, null, null, null, null, null, 63, null);
            providerAccountModel.setProviderName(getProviderName());
            String id = createAccountInfoBean.getId();
            if (id == null) {
                id = "";
            }
            providerAccountModel.setAccountId(id);
            providerAccountModel.setAccountInfoBean(createAccountInfoBean);
            providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(credential));
            providerAccountModel.setEnableFeatures(this.baiduYunProvider.getEnableFeatures());
            return providerAccountModel;
        }
        throw new Exception(executeCall.raw().message());
    }
}
