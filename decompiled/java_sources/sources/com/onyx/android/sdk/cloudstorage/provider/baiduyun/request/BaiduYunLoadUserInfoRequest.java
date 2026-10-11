package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUserBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR$\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@BX\u0086.¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunLoadUserInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "loadFromCloud", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "<set-?>", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "getUserBean", "()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "userBean", "", "isForceLoad", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Z)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunLoadUserInfoRequest extends LoadAccountInfoRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    public BaiduYunUserBean userBean;

    public /* synthetic */ BaiduYunLoadUserInfoRequest(BaiduYunProvider baiduYunProvider, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(baiduYunProvider, (i & 2) != 0 ? false : z);
    }

    @NotNull
    public final BaiduYunUserBean getUserBean() {
        BaiduYunUserBean baiduYunUserBean = this.userBean;
        if (baiduYunUserBean != null) {
            return baiduYunUserBean;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userBean");
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
    @NotNull
    public AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) {
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunUserBean>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunLoadUserInfoRequest$loadFromCloud$response$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunUserBean> invoke(@NotNull BaiduYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.panNasRequest(BaiduYunConstant.UINFO);
            }
        });
        if (!executeCall.isSuccessful()) {
            throw new Exception(executeCall.raw().message());
        }
        Object body = executeCall.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        this.userBean = (BaiduYunUserBean) body;
        return BaiduYunUtils.INSTANCE.createAccountInfoBean(getUserBean());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunLoadUserInfoRequest(@NotNull BaiduYunProvider baiduYunProvider, boolean z) {
        super(Provider.BAIDU_YUN, z);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        this.baiduYunProvider = baiduYunProvider;
    }
}
