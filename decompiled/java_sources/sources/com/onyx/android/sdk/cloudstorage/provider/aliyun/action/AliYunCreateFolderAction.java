package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunCreateFolderRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction;
import com.onyx.android.sdk.data.common.data.ResponeData;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "getCheckExist", Constants.BOOLEAN_VALUE_SIG, "setCheckExist", "(Z)V", "checkExist", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunCreateFolderAction extends CreateCloudFolderAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean checkExist;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunCreateFolderAction(@NotNull AliYunProvider aliYunProvider, @NotNull CloudFileBean cloudFile) {
        super(cloudFile);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.aliYunProvider = aliYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction
    @NotNull
    public ResponeData<CloudFileBean> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        ResponeData<CloudFileBean> responeData = new ResponeData<>();
        try {
            AliYunCreateFolderRequest aliYunCreateFolderRequest = new AliYunCreateFolderRequest(this.aliYunProvider, cloudFile);
            AliYunFileInfo execute = aliYunCreateFolderRequest.execute();
            if (this.checkExist && aliYunCreateFolderRequest.getAlreadyExist()) {
                responeData.setCode(1001);
            } else {
                CloudFileBean cloudFile2 = this.aliYunProvider.toCloudFile(execute);
                cloudFile2.setParentId(cloudFile.getParentId());
                responeData.setData(cloudFile2);
            }
        } catch (Exception e) {
            if (CloudNoteException.INSTANCE.isConflictError(e)) {
                throw e;
            }
            responeData.setCode(1001);
        }
        return responeData;
    }

    public final boolean getCheckExist() {
        return this.checkExist;
    }

    public final void setCheckExist(boolean z) {
        this.checkExist = z;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public AliYunProvider getDropBoxProvider() {
        return this.aliYunProvider;
    }
}
