package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunQueryFileInfoRequest;
import com.onyx.android.sdk.data.common.download.data.action.DownloadAction;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0014J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0014J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0010\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBean", "", "url", "Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;", "createDownloadAction", "oldFileBean", "fetchFileInfoFromCloud", "fileBean", "queryDownloadLink", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "getProvider", "i", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "", "cloudFileBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunDownloadAction extends DownloadFileByUrlAction {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HuaweiYunDownloadAction(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull List<CloudFileBean> cloudFileBeans) {
        super(cloudFileBeans);
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(cloudFileBeans, "cloudFileBeans");
        this.huaweiYunProvider = huaweiYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public DownloadAction createDownloadAction(@NotNull CloudFileBean cloudFileBean, @NotNull String url) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        Intrinsics.checkNotNullParameter(url, "url");
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(fileUtils.getParent(cloudFileBean.getLocalFilePath()));
        String uniqueId = cloudFileBean.getUniqueId();
        Intrinsics.checkNotNull(uniqueId);
        String localFilePath = cloudFileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        String absolutePath = new File(localFilePath).getAbsolutePath();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Authorization", this.huaweiYunProvider.getBearAccessToken());
        Debug.INSTANCE.m32035d(HuaweiYunDownloadAction.class, "downloading cloud file:" + url + "\r\n" + absolutePath, new Object[0]);
        DownloadAction downloadAction = new DownloadAction(url, absolutePath + ".1", uniqueId, null);
        downloadAction.setHeaderParams(linkedHashMap);
        downloadAction.setFileSize(Long.valueOf(cloudFileBean.getSize()));
        downloadAction.setTargetPath(absolutePath);
        return downloadAction;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean oldFileBean) throws Exception {
        Intrinsics.checkNotNullParameter(oldFileBean, "oldFileBean");
        CloudFileBean cloudFile = this.huaweiYunProvider.toCloudFile(new HuaweiYunQueryFileInfoRequest(this.huaweiYunProvider, oldFileBean).execute());
        cloudFile.setParentId(oldFileBean.getParentId());
        if (!oldFileBean.getUniqueId().equals(cloudFile.getUniqueId())) {
            this.huaweiYunProvider.getCloudStorageRecordProvider().delete(oldFileBean);
        }
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public String queryDownloadLink(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        return "https://driveapis.cloud.huawei.com.cn/drive/v1/files/" + fileBean.getUniqueId() + "?form=content";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public HuaweiYunProvider getOnyxCloudProvider() {
        return this.huaweiYunProvider;
    }
}
