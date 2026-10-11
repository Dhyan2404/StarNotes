package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunQueryFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\n\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014J\b\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "oldFileBean", "fetchFileInfoFromCloud", "fileBean", "", "queryDownloadLink", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "i", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "j", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "fileInfo", "", "cloudFileBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunDownloadAction extends DownloadFileByUrlAction {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public BaiduYunFileInfo fileInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunDownloadAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull List<CloudFileBean> cloudFileBeans) {
        super(cloudFileBeans);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(cloudFileBeans, "cloudFileBeans");
        this.baiduYunProvider = baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean oldFileBean) {
        BaiduYunFileInfo baiduYunFileInfo;
        Object first;
        Intrinsics.checkNotNullParameter(oldFileBean, "oldFileBean");
        List<BaiduYunFileInfo> execute = new BaiduYunQueryFileRequest(this.baiduYunProvider, oldFileBean).execute();
        if (execute != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) execute);
            baiduYunFileInfo = (BaiduYunFileInfo) first;
        } else {
            baiduYunFileInfo = null;
        }
        this.fileInfo = baiduYunFileInfo;
        if (baiduYunFileInfo == null) {
            return oldFileBean;
        }
        BaiduYunFileInfo.Companion companion = BaiduYunFileInfo.INSTANCE;
        Intrinsics.checkNotNull(baiduYunFileInfo);
        CloudFileBean cloudFile = companion.toCloudFile(baiduYunFileInfo, this.baiduYunProvider.getAccountId());
        cloudFile.setParentId(oldFileBean.getParentId());
        if (oldFileBean.getUniqueId().equals(cloudFile.getUniqueId())) {
            this.baiduYunProvider.getCloudStorageRecordProvider().delete(oldFileBean);
        }
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getWebDavProvider() {
        return this.baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public String queryDownloadLink(@NotNull CloudFileBean fileBean) {
        BaiduYunFileInfo baiduYunFileInfo;
        Object first;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        if (this.fileInfo == null) {
            List<BaiduYunFileInfo> execute = new BaiduYunQueryFileRequest(this.baiduYunProvider, fileBean).execute();
            if (execute != null) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) execute);
                baiduYunFileInfo = (BaiduYunFileInfo) first;
            } else {
                baiduYunFileInfo = null;
            }
            this.fileInfo = baiduYunFileInfo;
        }
        StringBuilder sb = new StringBuilder();
        BaiduYunFileInfo baiduYunFileInfo2 = this.fileInfo;
        sb.append(baiduYunFileInfo2 != null ? baiduYunFileInfo2.getDlink() : null);
        sb.append("&access_token=");
        sb.append(this.baiduYunProvider.getAccessToken());
        return sb.toString();
    }
}
