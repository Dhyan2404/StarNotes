package com.onyx.galaxy.note.settings.request;

import com.blankj.utilcode.util.DeviceUtils;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.utils.MarketUtils;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.cloud.p026v2.FeedbacksParams;
import com.onyx.android.sdk.data.common.cloud.p026v2.OnyxLogService;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.galaxy.note.settings.data.SubmitFeedbackContext;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "", "execute", "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;", "a", "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;", "submitContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SubmitFeedbackRequest extends BaseCloudRequest {

    /* renamed from: b */
    @NotNull
    public static final String f61568b = "galaxy";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SubmitFeedbackContext submitContext;

    public SubmitFeedbackRequest(@NotNull SubmitFeedbackContext submitContext) {
        Intrinsics.checkNotNullParameter(submitContext, "submitContext");
        this.submitContext = submitContext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72424execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72424execute() throws Exception {
        List mutableListOf;
        OnyxLogService onyxLogService = (OnyxLogService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OnyxLogService.class);
        String bearerToken = BaseCloudRequest.INSTANCE.getBearerToken(AccountDataBundle.INSTANCE.getAccountToken());
        String model = DeviceUtils.getModel();
        String manufacturer = DeviceUtils.getManufacturer();
        String str = PackageUtils.INSTANCE.getAppVersionNameAndCode() + " dev_version:" + ContextKt.getMetaData$default(ResManager.INSTANCE.getAppContext(), Constant.DEV_VERSION_TAG, null, 2, null) + " channel:" + MarketUtils.INSTANCE.getMarketChannel();
        int type = this.submitContext.getType();
        String memo = this.submitContext.getMemo();
        String email = this.submitContext.getEmail();
        String str2 = manufacturer + NameUtil.USCORE + model;
        String key = this.submitContext.getKey();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this.submitContext.getZipFileUrl());
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, onyxLogService.feedbacks(bearerToken, "galaxy", new FeedbacksParams(type, memo, email, str, str2, key, mutableListOf)), false, 1, null);
    }
}
