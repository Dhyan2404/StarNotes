package com.onyx.galaxy.note.member.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.member.data.ChargeFeatureBean;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.member.service.MemberService;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", C6998g.f39679a, "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "featureChargeArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQueryMemberChargeInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryMemberChargeInfoAction.kt\ncom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,30:1\n214#2:31\n*S KotlinDebug\n*F\n+ 1 QueryMemberChargeInfoAction.kt\ncom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction\n*L\n22#1:31\n*E\n"})
/* loaded from: classes9.dex */
public final class QueryMemberChargeInfoAction extends RxBaseNoteAppAction<ChargeFeatureBean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final FeatureChargeArgs featureChargeArgs;

    /* renamed from: com.onyx.galaxy.note.member.action.QueryMemberChargeInfoAction$a */
    /* loaded from: classes9.dex */
    public static final class C12602a<T, R> implements Function {
        public C12602a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChargeFeatureBean apply(@NotNull QueryMemberChargeInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QueryMemberChargeInfoAction.this.m50458l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.QueryMemberChargeInfoAction$b */
    /* loaded from: classes9.dex */
    public static final class C12603b<T> implements Consumer {

        /* renamed from: e */
        public static final C12603b<T> f61262e = new C12603b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    public QueryMemberChargeInfoAction(@NotNull FeatureChargeArgs featureChargeArgs) {
        Intrinsics.checkNotNullParameter(featureChargeArgs, "featureChargeArgs");
        this.featureChargeArgs = featureChargeArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChargeFeatureBean> create() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnError = Observable.just(this).observeOn(getCloudScheduler()).map(new C12602a()).observeOn(AndroidSchedulers.mainThread()).doOnError(C12603b.f61262e);
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        Observable<ChargeFeatureBean> doOnError2 = doOnError.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.member.action.QueryMemberChargeInfoAction$create$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError2, "doOnError(...)");
        return doOnError2;
    }

    /* renamed from: l */
    public final ChargeFeatureBean m50458l() {
        return (ChargeFeatureBean) RetrofitExt.INSTANCE.executeAndGetData(((MemberService) ServiceFactory.INSTANCE.getOnyxApiV2Service(MemberService.class)).getMemberChargeData(this.featureChargeArgs.getFunctionFrom()));
    }
}
