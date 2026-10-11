package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/UpdateAvatarRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "avatar", "Ljava/io/File;", "(Ljava/io/File;)V", "execute", "", "updateAccountInfo", "cloudAccount", "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;", "localAccount", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UpdateAvatarRequest extends BaseCloudRequest {

    @NotNull
    private final File avatar;

    public UpdateAvatarRequest(@NotNull File avatar) {
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        this.avatar = avatar;
    }

    private final void updateAccountInfo(CloudOnyxAccount cloudAccount, OnyxAccountModel localAccount) {
        String avatarUrl = cloudAccount.getAvatarUrl();
        if (avatarUrl != null) {
            localAccount.setAvatarUrl(avatarUrl);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72233execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72233execute() {
        CloudAccountService cloudAccountService = (CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class);
        RetrofitUtils retrofitUtils = RetrofitUtils.INSTANCE;
        String absolutePath = this.avatar.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        CloudOnyxAccount cloudOnyxAccount = (CloudOnyxAccount) RetrofitExt.INSTANCE.executeAndGetData(cloudAccountService.updateUserAvatar(retrofitUtils.createFileBody(null, absolutePath)));
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        Intrinsics.checkNotNull(onyxAccount);
        updateAccountInfo(cloudOnyxAccount, onyxAccount);
        CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(onyxAccount);
    }
}
