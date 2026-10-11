package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavCreateFolderRequest;
import com.onyx.android.sdk.data.common.data.ResponeData;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCreateFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "getCheckExist", Constants.BOOLEAN_VALUE_SIG, "setCheckExist", "(Z)V", "checkExist", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavCreateFolderAction extends CreateCloudFolderAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean checkExist;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavCreateFolderAction(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileBean cloudFile) {
        super(cloudFile);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.webDavProvider = webDavProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction
    @NotNull
    public ResponeData<CloudFileBean> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        String cloudFilePath = this.webDavProvider.getCloudStorageRecordProvider().getCloudFilePath(cloudFile.getParentId(), "", true);
        if (StringKt.isNotBlank(cloudFile.getName())) {
            cloudFilePath = FilenameUtils.concat(cloudFilePath, cloudFile.getName() + File.separator);
        }
        Debug.INSTANCE.m32035d(WebDavCreateFolderAction.class, cloudFile.getUniqueId() + " id " + cloudFile.getName() + " create folder, parent cloud Dir:" + cloudFilePath, new Object[0]);
        WebDavClient webDavClient = this.webDavProvider.getWebDavClient();
        Intrinsics.checkNotNull(cloudFilePath);
        WebDavCreateFolderRequest webDavCreateFolderRequest = new WebDavCreateFolderRequest(webDavClient, cloudFilePath);
        webDavCreateFolderRequest.setCheckExist(this.checkExist);
        DavResource execute = webDavCreateFolderRequest.execute();
        ResponeData<CloudFileBean> responeData = new ResponeData<>();
        if (ResultCode.INSTANCE.isSuccessful(responeData.getCode())) {
            responeData.setData(WebDavUtils.INSTANCE.toCloudFile(this.webDavProvider.getCloudStorageRecordProvider(), execute, this.webDavProvider.getAccountId()));
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
    public WebDavProvider getOnyxCloudProvider() {
        return this.webDavProvider;
    }
}
