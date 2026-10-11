package com.onyx.galaxy.note.common.action;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.action.OnyxStatisticBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticReportService;
import com.onyx.android.sdk.data.StatistConfig;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/GetStatisticConfigAction;", "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "Lcom/onyx/android/sdk/data/StatistConfig;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GetStatisticConfigAction extends OnyxStatisticBaseAction<StatistConfig> {

    /* renamed from: e */
    @NotNull
    public static final String f55899e = "GetStatisticConfigAction";

    /* renamed from: f */
    @NotNull
    public static final String f55900f = "GetStatisticConfigAction get StatistConfig failed from server";

    /* renamed from: com.onyx.galaxy.note.common.action.GetStatisticConfigAction$a */
    /* loaded from: classes9.dex */
    public static final class C11571a<T, R> implements Function {
        public C11571a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StatistConfig apply(@NotNull GetStatisticConfigAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetStatisticConfigAction.this.m44892l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StatistConfig> create() {
        Observable<StatistConfig> map = Observable.just(this).observeOn(getObserveOn()).map(new C11571a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final StatistConfig m44892l() {
        Response<ResultData<StatistConfig>> execute = ((OnyxStatisticReportService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OnyxStatisticReportService.class)).getStatisticConfig().execute();
        if (!execute.isSuccessful() || !execute.body().isSuccessful()) {
            LogUtils.file(f55899e, f55900f);
            throw new Exception(f55900f);
        }
        StatistConfig data = execute.body().getData();
        Intrinsics.checkNotNull(data);
        return data;
    }
}
