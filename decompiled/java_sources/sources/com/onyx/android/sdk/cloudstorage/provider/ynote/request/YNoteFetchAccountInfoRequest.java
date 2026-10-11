package com.onyx.android.sdk.cloudstorage.provider.ynote.request;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteProvider;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNoteUser;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "", "credential", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "fetch", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;", CouchFieldKey.KEY_PROVIDER, "accessToken", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteFetchAccountInfoRequest extends FetchAccountInfoRequest<String> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final YNoteProvider provider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YNoteFetchAccountInfoRequest(@NotNull YNoteProvider provider, @NotNull String accessToken) {
        super(Provider.YNOTE.getTitle(), accessToken);
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.provider = provider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
    @NotNull
    public ProviderAccountModel fetch(@NotNull String credential) throws Exception {
        Intrinsics.checkNotNullParameter(credential, "credential");
        Response<YNoteUser> execute = this.provider.getNoteClient().getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).user().execute();
        if (execute.isSuccessful()) {
            YNoteUser body = execute.body();
            Debug.INSTANCE.m32035d(YNoteFetchAccountInfoRequest.class, "ynote,account:" + JSONUtils.INSTANCE.toJson(body), new Object[0]);
            AccountInfoBean accountInfoBean = new AccountInfoBean(body.getUser(), body.getUser(), body.getId());
            ProviderAccountModel providerAccountModel = new ProviderAccountModel(null, null, null, null, null, null, 63, null);
            String id = body.getId();
            if (id == null) {
                id = "";
            }
            providerAccountModel.setAccountId(id);
            providerAccountModel.setAccountInfoBean(accountInfoBean);
            providerAccountModel.setAccountCredentialJson(credential);
            providerAccountModel.setProviderName(getProviderName());
            providerAccountModel.setEnableFeatures(this.provider.getEnableFeatures());
            return providerAccountModel;
        }
        throw new Exception("code: " + execute.code() + ", message: " + execute.message() + ", error body: " + execute.errorBody());
    }
}
