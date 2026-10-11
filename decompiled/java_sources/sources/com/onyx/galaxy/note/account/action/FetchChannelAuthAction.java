package com.onyx.galaxy.note.account.action;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.account.request.cloud.FetchChannelAuthRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0005H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FetchChannelAuthAction extends BaseRxAccountAction<ResultData<List<? extends String>>> {

    /* renamed from: com.onyx.galaxy.note.account.action.FetchChannelAuthAction$a */
    /* loaded from: classes9.dex */
    public static final class C10681a<T, R> implements Function {
        public C10681a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResultData<List<String>> apply(@NotNull FetchChannelAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchChannelAuthAction.this.m41769l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ResultData<List<String>>> create() {
        Observable<ResultData<List<String>>> map = Observable.just(this).observeOn(getCloudScheduler()).map(new C10681a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final ResultData<List<String>> m41769l() {
        try {
            return new ResultData<>(new FetchChannelAuthRequest().execute());
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            ResultData<List<String>> resultData = new ResultData<>();
            resultData.setCode(-1);
            resultData.setMessage(e.getLocalizedMessage());
            return resultData;
        }
    }
}
