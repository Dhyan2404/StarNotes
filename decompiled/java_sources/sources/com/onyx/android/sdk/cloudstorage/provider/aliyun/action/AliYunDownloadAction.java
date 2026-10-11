package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileLink;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunGetFileLinkRequest;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunQueryFileInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014J\b\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\f\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "oldFileBean", "fetchFileInfoFromCloud", "fileBean", "", "queryDownloadLink", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "getProvider", "i", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "", "cloudFileBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunDownloadAction extends DownloadFileByUrlAction {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunDownloadAction(@NotNull AliYunProvider aliYunProvider, @NotNull List<CloudFileBean> cloudFileBeans) {
        super(cloudFileBeans);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(cloudFileBeans, "cloudFileBeans");
        this.aliYunProvider = aliYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean oldFileBean) {
        Intrinsics.checkNotNullParameter(oldFileBean, "oldFileBean");
        CloudFileBean cloudFile = this.aliYunProvider.toCloudFile(new AliYunQueryFileInfoRequest(this.aliYunProvider, oldFileBean).execute());
        cloudFile.setParentId(oldFileBean.getParentId());
        if (!oldFileBean.getUniqueId().equals(cloudFile.getUniqueId())) {
            this.aliYunProvider.getCloudStorageRecordProvider().delete(oldFileBean);
        }
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public String queryDownloadLink(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        AliYunProvider aliYunProvider = this.aliYunProvider;
        String uniqueId = fileBean.getUniqueId();
        Intrinsics.checkNotNull(uniqueId);
        AliYunFileLink execute = new AliYunGetFileLinkRequest(aliYunProvider, uniqueId).execute();
        Debug.INSTANCE.m32035d(AliYunDownloadAction.class, "get aliyun drive file link:" + execute, new Object[0]);
        String url = execute.getUrl();
        Intrinsics.checkNotNull(url);
        return url;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public AliYunProvider getWebDavProvider() {
        return this.aliYunProvider;
    }
}
