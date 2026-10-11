package com.onyx.android.sdk.cloudstorage.provider.onedrive.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriveUploadRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0003H\u0014J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0010\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveUploadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lio/reactivex/rxjava3/core/Observable;", "createParent", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createUploadRequest", "r", "toCloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "", "files", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveUploadAction extends UploadFileAction<OneDriverFileInfo> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriveUploadAction$a */
    /* loaded from: classes7.dex */
    public static final class C7328a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41766e;

        public C7328a(CloudFileBean cloudFileBean) {
            this.f41766e = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41766e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriveUploadAction(@NotNull OneDriveProvider oneDriveProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.oneDriveProvider = oneDriveProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public Observable<CloudFileBean> createParent(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Observable map = new OneDriverCreateFolderAction(this.oneDriveProvider, fileBean).create().map(new C7328a(fileBean));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public TransferCloudFileRequest<OneDriverFileInfo> createUploadRequest(@NotNull CloudFileBean cloudFile) throws Exception {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new OneDriveUploadRequest(this.oneDriveProvider, cloudFile);
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OneDriveProvider getOneDriveProvider() {
        return this.oneDriveProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public CloudFileBean toCloudFile(@NotNull OneDriverFileInfo r) {
        Intrinsics.checkNotNullParameter(r, "r");
        return OneDriverFileInfo.INSTANCE.toCloudFile(this.oneDriveProvider.getCloudStorageRecordProvider(), r, this.oneDriveProvider.getAccountId());
    }
}
