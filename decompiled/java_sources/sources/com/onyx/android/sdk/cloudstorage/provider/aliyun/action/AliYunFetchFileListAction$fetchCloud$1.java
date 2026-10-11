package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public /* synthetic */ class AliYunFetchFileListAction$fetchCloud$1 extends FunctionReferenceImpl implements Function1<AliYunFileInfo, CloudFileBean> {
    public AliYunFetchFileListAction$fetchCloud$1(Object obj) {
        super(1, obj, AliYunProvider.class, "toCloudFile", "toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final CloudFileBean invoke(@NotNull AliYunFileInfo p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return ((AliYunProvider) this.receiver).toCloudFile(p0);
    }
}
