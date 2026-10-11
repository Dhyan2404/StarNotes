package com.onyx.galaxy.note.member.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.data.CreateOrderArgs;
import com.onyx.android.sdk.pay.service.OrderService;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/action/CreateOrderAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;", "getCreateOrderArgs", "()Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;", "createOrderArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CreateOrderAction extends RxBaseNoteAppAction<OrderBean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final CreateOrderArgs createOrderArgs;

    /* renamed from: com.onyx.galaxy.note.member.action.CreateOrderAction$a */
    /* loaded from: classes9.dex */
    public static final class C12592a<T, R> implements Function {
        public C12592a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OrderBean apply(@NotNull CreateOrderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateOrderAction.this.m50440l();
        }
    }

    public CreateOrderAction(@NotNull CreateOrderArgs createOrderArgs) {
        Intrinsics.checkNotNullParameter(createOrderArgs, "createOrderArgs");
        this.createOrderArgs = createOrderArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OrderBean> create() {
        Observable<OrderBean> map = Observable.just(this).observeOn(getCloudScheduler()).map(new C12592a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final CreateOrderArgs getCreateOrderArgs() {
        return this.createOrderArgs;
    }

    /* renamed from: l */
    public final OrderBean m50440l() {
        return (OrderBean) RetrofitExt.INSTANCE.executeAndGetData(((OrderService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OrderService.class)).createOrder(this.createOrderArgs));
    }
}
