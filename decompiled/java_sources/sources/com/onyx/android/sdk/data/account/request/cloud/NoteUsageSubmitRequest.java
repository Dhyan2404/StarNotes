package com.onyx.android.sdk.data.account.request.cloud;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.sync.OnyxSyncService;
import com.onyx.android.sdk.data.sync.bean.NoteUsageInfo;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/NoteUsageSubmitRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NoteUsageSubmitRequest extends BaseCloudRequest {

    @NotNull
    private final NoteUsageInfo info;

    public NoteUsageSubmitRequest(@NotNull NoteUsageInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.info = info;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72224execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72224execute() {
        RetrofitExt.INSTANCE.executeAndGetData(((OnyxSyncService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OnyxSyncService.class)).submitNoteUsageInfo(this.info));
    }
}
