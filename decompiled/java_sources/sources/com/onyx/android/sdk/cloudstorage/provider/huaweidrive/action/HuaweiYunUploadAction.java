package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunUploadRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0014J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0010\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunUploadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lio/reactivex/rxjava3/core/Observable;", "createParent", "r", "toCloudFile", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createUploadRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "", "files", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunUploadAction extends UploadFileAction<HuaweiYunFileListResult.File> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunUploadAction$a */
    /* loaded from: classes7.dex */
    public static final class C7318a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41638e;

        public C7318a(CloudFileBean cloudFileBean) {
            this.f41638e = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41638e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HuaweiYunUploadAction(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.huaweiYunProvider = huaweiYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public Observable<CloudFileBean> createParent(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Observable map = new HuaweiYunCreateFolderAction(this.huaweiYunProvider, fileBean).create().map(new C7318a(fileBean));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public TransferCloudFileRequest<HuaweiYunFileListResult.File> createUploadRequest(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new HuaweiYunUploadRequest(this.huaweiYunProvider, cloudFile);
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public HuaweiYunProvider getHuaweiYunProvider() {
        return this.huaweiYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public CloudFileBean toCloudFile(@NotNull HuaweiYunFileListResult.File r) {
        Intrinsics.checkNotNullParameter(r, "r");
        return this.huaweiYunProvider.toCloudFile(r);
    }
}
