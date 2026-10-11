package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.model.p028v2.WebDAVAuthAccount;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0014\u0010\b\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "credential", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "fetch", "", "url", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", CouchFieldKey.KEY_PROVIDER_NAME, "authAccount", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Ljava/lang/String;Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavFetchAccountInfoRequest extends FetchAccountInfoRequest<WebDAVAuthAccount> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavFetchAccountInfoRequest(@NotNull WebDavProvider webDavProvider, @NotNull String providerName, @NotNull WebDAVAuthAccount authAccount) {
        super(providerName, authAccount);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(authAccount, "authAccount");
        this.webDavProvider = webDavProvider;
    }

    /* renamed from: b */
    public final String m32873b(String url) {
        String str = File.separator;
        if (StringUtils.endsWithIgnoreCase(url, str)) {
            return url;
        }
        return url + str;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
    @NotNull
    public ProviderAccountModel fetch(@NotNull WebDAVAuthAccount credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        String objectId = credential.getObjectId();
        if (objectId == null || objectId.length() == 0) {
            credential.setObjectId(FileUtils.INSTANCE.computeMD5(credential.getUsername() + m32873b(credential.getWebDAVUrl())));
        }
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(credential.getUsername());
        accountInfoBean.setNickName(credential.getUsername());
        accountInfoBean.setId(credential.getObjectId());
        ProviderAccountModel providerAccountModel = new ProviderAccountModel(null, null, null, null, null, null, 63, null);
        String objectId2 = credential.getObjectId();
        if (objectId2 == null) {
            objectId2 = "";
        }
        providerAccountModel.setAccountId(objectId2);
        providerAccountModel.setAccountInfoBean(accountInfoBean);
        providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(credential));
        providerAccountModel.setProviderName(getProviderName());
        providerAccountModel.setEnableFeatures(this.webDavProvider.getEnableFeatures());
        return providerAccountModel;
    }
}
