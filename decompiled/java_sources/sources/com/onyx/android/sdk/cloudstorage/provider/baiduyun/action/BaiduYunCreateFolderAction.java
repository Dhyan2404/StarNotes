package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunCreateFolderRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction;
import com.onyx.android.sdk.data.common.data.ResponeData;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\f\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "getProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;", "r", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunCreateFolderAction extends CreateCloudFolderAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunCreateFolderAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileBean cloudFile) {
        super(cloudFile);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.baiduYunProvider = baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction
    @NotNull
    public ResponeData<CloudFileBean> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        BaiduYunFileResponseBody execute = new BaiduYunCreateFolderRequest(this.baiduYunProvider, m32377r(cloudFile)).execute();
        ResponeData<CloudFileBean> responeData = new ResponeData<>();
        responeData.setCode(execute.mapToStandardError());
        if (ResultCode.INSTANCE.isSuccessful(responeData.getCode())) {
            responeData.setData(BaiduYunFileInfo.INSTANCE.toCloudFile(execute, this.baiduYunProvider.getAccountId()));
        }
        return responeData;
    }

    /* renamed from: r */
    public final BaiduYunQueryArgs m32377r(CloudFileBean cloudFile) {
        String cloudFilePath = this.baiduYunProvider.getCloudStorageRecordProvider().getCloudFilePath(cloudFile.getParentId(), "/");
        Debug.INSTANCE.m32035d(BaiduYunCreateFolderAction.class, cloudFile.getUniqueId() + " id " + cloudFile.getName() + " create folder, parent cloud Dir:" + cloudFilePath, new Object[0]);
        if (StringKt.isNotBlank(cloudFile.getName())) {
            cloudFilePath = cloudFilePath + File.separator + cloudFile.getName();
        }
        BaiduYunQueryArgs baiduYunQueryArgs = new BaiduYunQueryArgs();
        baiduYunQueryArgs.setMethod(BaiduYunConstant.CREATE);
        baiduYunQueryArgs.setPath(cloudFilePath);
        baiduYunQueryArgs.setIsdir(1);
        baiduYunQueryArgs.setRtype(0);
        baiduYunQueryArgs.setSize(0);
        return baiduYunQueryArgs;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public BaiduYunProvider getWebDavProvider() {
        return this.baiduYunProvider;
    }
}
