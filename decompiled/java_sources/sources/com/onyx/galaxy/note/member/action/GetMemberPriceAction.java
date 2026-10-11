package com.onyx.galaxy.note.member.action;

import android.content.Context;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.BasePayment;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.android.sdk.pay.constants.Constants;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.member.data.ChargeFeatureBean;
import com.onyx.galaxy.note.member.data.ChargeProduct;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001c\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", Constants.KEY_GOOGLE_PRODUCT_ID, "l", "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", C6998g.f39679a, "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "featureChargeArgs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GetMemberPriceAction extends RxBaseNoteAppAction<List<? extends ProductInfoBean>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final FeatureChargeArgs featureChargeArgs;

    /* renamed from: com.onyx.galaxy.note.member.action.GetMemberPriceAction$a */
    /* loaded from: classes9.dex */
    public static final class C12593a<T, R> implements Function {
        public C12593a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ChargeFeatureBean> apply(@NotNull GetMemberPriceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new QueryMemberChargeInfoAction(GetMemberPriceAction.this.featureChargeArgs).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.GetMemberPriceAction$b */
    /* loaded from: classes9.dex */
    public static final class C12594b<T> implements Predicate {

        /* renamed from: e */
        public static final C12594b<T> f61247e = new C12594b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ChargeFeatureBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChargeProduct chargeProduct = it2.getCom.sunia.HTREnginev2.sod.x java.lang.String();
            return (chargeProduct != null ? chargeProduct.getGoogleProductId() : null) != null;
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.GetMemberPriceAction$c */
    /* loaded from: classes9.dex */
    public static final class C12595c<T, R> implements Function {
        public C12595c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<ProductInfoBean>> apply(@NotNull ChargeFeatureBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GetMemberPriceAction getMemberPriceAction = GetMemberPriceAction.this;
            ChargeProduct chargeProduct = it2.getCom.sunia.HTREnginev2.sod.x java.lang.String();
            String googleProductId = chargeProduct != null ? chargeProduct.getGoogleProductId() : null;
            Intrinsics.checkNotNull(googleProductId);
            return getMemberPriceAction.m50442l(googleProductId);
        }
    }

    public GetMemberPriceAction(@NotNull FeatureChargeArgs featureChargeArgs) {
        Intrinsics.checkNotNullParameter(featureChargeArgs, "featureChargeArgs");
        this.featureChargeArgs = featureChargeArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<ProductInfoBean>> create() {
        Observable<List<ProductInfoBean>> flatMap = Observable.just(this).flatMap(new C12593a()).filter(C12594b.f61247e).flatMap(new C12595c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<ProductInfoBean>> m50442l(String productId) {
        ArrayList arrayListOf;
        BasePayment findIapPayment = PayBundle.INSTANCE.findIapPayment();
        if (findIapPayment == null) {
            Observable<List<ProductInfoBean>> just = Observable.just(new ArrayList());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Context appContext = ResManager.INSTANCE.getAppContext();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(productId);
        BasePayAction<List<ProductInfoBean>> productInfoByProductIdAction = findIapPayment.getProductInfoByProductIdAction(appContext, arrayListOf);
        if (productInfoByProductIdAction != null) {
            return productInfoByProductIdAction.build();
        }
        Observable<List<ProductInfoBean>> just2 = Observable.just(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }
}
