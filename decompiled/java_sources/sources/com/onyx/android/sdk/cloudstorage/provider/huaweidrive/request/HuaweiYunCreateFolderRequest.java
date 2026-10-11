package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunCreateFolderParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunCreateFolderRequest extends RxBaseRequest<HuaweiYunFileListResult.File> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean cloudFile;

    public HuaweiYunCreateFolderRequest(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.huaweiYunProvider = huaweiYunProvider;
        this.cloudFile = cloudFile;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public HuaweiYunFileListResult.File execute() {
        String name = this.cloudFile.getName();
        Intrinsics.checkNotNull(name);
        String[] strArr = {AliYunUtils.INSTANCE.normalizeToCloudParentId(this.cloudFile.getParentId())};
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        String format = dateTimeUtil.getDATE_FORMAT_RFC3339().format(Long.valueOf(this.cloudFile.getCreatedAt()));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        String format2 = dateTimeUtil.getDATE_FORMAT_RFC3339().format(Long.valueOf(this.cloudFile.getUpdatedAt()));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        final HuaweiYunCreateFolderParam huaweiYunCreateFolderParam = new HuaweiYunCreateFolderParam(name, strArr, format, format2);
        Object body = this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult.File>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunCreateFolderRequest$execute$fileResponse$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunFileListResult.File> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.createFolder(HuaweiYunCreateFolderParam.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (HuaweiYunFileListResult.File) body;
    }
}
