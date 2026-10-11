package com.onyx.android.sdk.data.account;

import com.dropbox.core.android.AuthActivity;
import com.onyx.android.sdk.data.account.bean.LoginWxResponse;
import com.onyx.android.sdk.data.account.bean.ResultData;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u0000 \n2\u00020\u0001:\u0001\nJ2\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u0007H'¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/WechatAppService;", "", "wechatLogin", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "Lcom/onyx/android/sdk/data/account/bean/LoginWxResponse;", "accessToken", "", "unionid", "openid", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface WechatAppService {

    @NotNull
    public static final String ACCESS_TOKEN = "access_token";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @NotNull
    public static final String OPEN_ID = "openid";

    @NotNull
    public static final String UNION_ID = "unionid";

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/WechatAppService$Companion;", "", "()V", AuthActivity.EXTRA_ACCESS_TOKEN, "", "OPEN_ID", "UNION_ID", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        public static final String ACCESS_TOKEN = "access_token";

        @NotNull
        public static final String OPEN_ID = "openid";

        @NotNull
        public static final String UNION_ID = "unionid";

        private Companion() {
        }
    }

    @FormUrlEncoded
    @POST("passport/wechat/app/login1")
    @NotNull
    Call<ResultData<LoginWxResponse>> wechatLogin(@Field("access_token") @NotNull String accessToken, @Field("unionid") @NotNull String unionid, @Field("openid") @NotNull String openid);
}
