package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunFetchAllFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "loadAllFolderResult", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunLoadFolderTreeAction extends LoadFolderTreeAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunLoadFolderTreeAction(@NotNull AliYunProvider aliYunProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.aliYunProvider = aliYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getGoogleDriverProvider() {
        return this.aliYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction
    @NotNull
    public QueryListResult<CloudFileBean> loadAllFolderResult() {
        AliYunQueryArgs from = AliYunQueryArgs.INSTANCE.from(this.aliYunProvider.getDefaultDriveId(), getQueryArgs());
        from.setType(Constant.FOLDER);
        from.setLimit(100);
        List<AliYunFileInfo> execute = new AliYunFetchAllFileListRequest(this.aliYunProvider, from).execute();
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        if (queryListResult.isSuccessful()) {
            queryListResult.setList(this.aliYunProvider.toCloudFiles(execute));
            queryListResult.setCount(queryListResult.ensureList().size());
        }
        return queryListResult;
    }
}
