package com.onyx.android.sdk.data.common.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.cloud.p026v2.GuideInfoService;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.common.data.ResponeData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/request/LoadGuideInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "functionId", "", "version", "", "lang", "(Ljava/lang/String;ILjava/lang/String;)V", "getLang", "()Ljava/lang/String;", "getVersion", "()I", "execute", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoadGuideInfoRequest extends RxBaseRequest<List<? extends GuideInfo>> {

    @NotNull
    private final String functionId;

    @NotNull
    private final String lang;
    private final int version;

    public LoadGuideInfoRequest(@NotNull String functionId, int i, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(functionId, "functionId");
        Intrinsics.checkNotNullParameter(lang, "lang");
        this.functionId = functionId;
        this.version = i;
        this.lang = lang;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    public final int getVersion() {
        return this.version;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<? extends GuideInfo> execute() {
        Response<ResponeData<List<GuideInfo>>> execute = ((GuideInfoService) ServiceFactory.INSTANCE.getOnyxApiV2Service(GuideInfoService.class)).getGuideInfo(this.functionId, String.valueOf(this.version), this.lang).execute();
        if (execute.isSuccessful() && execute.body() != null && execute.body().getData() != null) {
            List<GuideInfo> data = execute.body().getData();
            Intrinsics.checkNotNull(data);
            return data;
        }
        return new ArrayList();
    }
}
