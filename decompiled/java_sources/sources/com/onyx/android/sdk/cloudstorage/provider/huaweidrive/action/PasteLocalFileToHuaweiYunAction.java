package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action;

import com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import io.reactivex.rxjava3.core.Observable;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0014¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/PasteLocalFileToHuaweiYunAction;", "Lcom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction;", "()V", "getMaxQueryLimit", "", "processAfterDelete", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "delResult", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PasteLocalFileToHuaweiYunAction extends PasteLocalFileToCloudAction {

    /* renamed from: h */
    public static final long f41639h = 5;

    @Override // com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction
    public int getMaxQueryLimit() {
        return 100;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction
    @NotNull
    public Observable<CloudFileListResult> processAfterDelete(@NotNull CloudFileListResult delResult) {
        Intrinsics.checkNotNullParameter(delResult, "delResult");
        Observable<CloudFileListResult> delay = super.processAfterDelete(delResult).delay(delResult.isSuccessful() ? 5L : 0L, TimeUnit.SECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "delay(...)");
        return delay;
    }
}
