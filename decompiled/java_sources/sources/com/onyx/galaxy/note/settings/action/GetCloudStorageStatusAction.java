package com.onyx.galaxy.note.settings.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.CloudStorageStatusBean;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.settings.request.GetCloudStorageStatusRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GetCloudStorageStatusAction extends RxBaseNoteAppAction<CloudStorageStatusBean> {

    /* renamed from: com.onyx.galaxy.note.settings.action.GetCloudStorageStatusAction$a */
    /* loaded from: classes9.dex */
    public static final class C12641a<T> implements Predicate {

        /* renamed from: e */
        public static final C12641a<T> f61428e = new C12641a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull GetCloudStorageStatusAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.isAlreadyLogin();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.GetCloudStorageStatusAction$b */
    /* loaded from: classes9.dex */
    public static final class C12642b<T, R> implements Function {
        public C12642b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudStorageStatusBean apply(@NotNull GetCloudStorageStatusAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetCloudStorageStatusAction.this.m50649l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudStorageStatusBean> create() {
        Observable<CloudStorageStatusBean> observeOn = Observable.just(this).filter(C12641a.f61428e).observeOn(getObserveOn()).map(new C12642b()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final CloudStorageStatusBean m50649l() {
        return new GetCloudStorageStatusRequest().execute();
    }
}
