package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveClient;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveService;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverCreateFolderRequest extends RxBaseRequest<OneDriverFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveClient oneDriveClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean cloudFile;

    public OneDriverCreateFolderRequest(@NotNull OneDriveClient oneDriveClient, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(oneDriveClient, "oneDriveClient");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.oneDriveClient = oneDriveClient;
        this.cloudFile = cloudFile;
    }

    /* renamed from: a */
    public final String m32773a() throws Exception {
        if (StringKt.isNotBlank(this.cloudFile.getParentId())) {
            String parentId = this.cloudFile.getParentId();
            Intrinsics.checkNotNull(parentId);
            return parentId;
        }
        String id = new EnsureCreateRootFolderRequest(this.oneDriveClient).execute().getId();
        Intrinsics.checkNotNull(id);
        return id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public OneDriverFileInfo execute() {
        String name = this.cloudFile.getName();
        if (name == null || name.length() == 0) {
            return new EnsureCreateRootFolderRequest(this.oneDriveClient).execute();
        }
        OneDriveService oneDriveService = this.oneDriveClient.getOneDriveService();
        String m32773a = m32773a();
        OneDriverUtils oneDriverUtils = OneDriverUtils.INSTANCE;
        String name2 = this.cloudFile.getName();
        Intrinsics.checkNotNull(name2);
        Response<OneDriverFileInfo> execute = oneDriveService.createFolder(m32773a, oneDriverUtils.createFolderMap(name2)).execute();
        if (execute.isSuccessful()) {
            OneDriverFileInfo body = execute.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return body;
        }
        OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
        Intrinsics.checkNotNull(execute);
        throw companion.parseError(execute);
    }
}
