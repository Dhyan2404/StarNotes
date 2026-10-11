package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public /* synthetic */ class HuaweiYunSearchFileListAction$searchCloudFileList$1 extends FunctionReferenceImpl implements Function1<HuaweiYunFileListResult.File, CloudFileBean> {
    public HuaweiYunSearchFileListAction$searchCloudFileList$1(Object obj) {
        super(1, obj, HuaweiYunProvider.class, "toCloudFile", "toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final CloudFileBean invoke(@NotNull HuaweiYunFileListResult.File p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return ((HuaweiYunProvider) this.receiver).toCloudFile(p0);
    }
}
