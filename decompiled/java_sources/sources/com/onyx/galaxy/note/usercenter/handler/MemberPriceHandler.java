package com.onyx.galaxy.note.usercenter.handler;

import com.alibaba.fastjson2.JSON;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.constant.WebJSConstants;
import com.onyx.galaxy.note.member.action.GetMemberPriceAction;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.usercenter.data.ProductArgs;
import com.onyx.galaxy.note.usercenter.data.ProductBean;
import com.onyx.galaxy.note.usercenter.data.ProductPriceBean;
import com.onyx.galaxy.note.usercenter.data.ProductsPrice;
import com.onyx.galaxy.note.usercenter.data.VipPriceArgs;
import com.onyx.galaxy.note.usercenter.data.VipProductArgs;
import com.onyx.galaxy.note.usercenter.data.VipProductBean;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J.\u0010\u0010\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;", "", "", "productArgs", "Lcom/onyx/galaxy/note/ui/view/OnyxWebView;", "webView", "", "getVipPrice", "params", "getProductsPrice", "", "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", OcrValues.LANG_ITALIAN, "Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;", "productsPrice", "Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;", "a", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMemberPriceHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemberPriceHandler.kt\ncom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1549#2:86\n1620#2,3:87\n*S KotlinDebug\n*F\n+ 1 MemberPriceHandler.kt\ncom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler\n*L\n58#1:82\n58#1:83,3\n71#1:86\n71#1:87,3\n*E\n"})
/* loaded from: classes9.dex */
public final class MemberPriceHandler {

    /* renamed from: com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12837a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ProductsPrice f62322f;

        /* renamed from: g */
        public final /* synthetic */ ProductArgs f62323g;

        /* renamed from: h */
        public final /* synthetic */ OnyxWebView f62324h;

        public C12837a(ProductsPrice productsPrice, ProductArgs productArgs, OnyxWebView onyxWebView) {
            this.f62322f = productsPrice;
            this.f62323g = productArgs;
            this.f62324h = onyxWebView;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ProductInfoBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MemberPriceHandler memberPriceHandler = MemberPriceHandler.this;
            ProductsPrice productsPrice = this.f62322f;
            ProductArgs productArgs = this.f62323g;
            Intrinsics.checkNotNullExpressionValue(productArgs, "$productArgs");
            memberPriceHandler.m51494a(it2, productsPrice, productArgs, this.f62324h);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12838b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ OnyxWebView f62325e;

        /* renamed from: f */
        public final /* synthetic */ VipPriceArgs f62326f;

        public C12838b(OnyxWebView onyxWebView, VipPriceArgs vipPriceArgs) {
            this.f62325e = onyxWebView;
            this.f62326f = vipPriceArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ProductInfoBean> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            ProductInfoBean productInfoBean = (ProductInfoBean) firstOrNull;
            if (productInfoBean == null) {
                OnyxWebView onyxWebView = this.f62325e;
                String jSONString = JSON.toJSONString(this.f62326f);
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                OnyxWebView.executeJavascriptSentence$default(onyxWebView, WebJSConstants.WINDOW_ON_DATA, jSONString, (Function1) null, (Function1) null, 12, (Object) null);
                return;
            }
            this.f62326f.setPrice(productInfoBean.getFinalAmount());
            OnyxWebView onyxWebView2 = this.f62325e;
            String jSONString2 = JSON.toJSONString(this.f62326f);
            Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
            OnyxWebView.executeJavascriptSentence$default(onyxWebView2, WebJSConstants.WINDOW_ON_DATA, jSONString2, (Function1) null, (Function1) null, 12, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m51494a(List<ProductInfoBean> it2, ProductsPrice productsPrice, ProductArgs productArgs, OnyxWebView webView) {
        int collectionSizeOrDefault;
        List<ProductInfoBean> list = it2;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProductInfoBean productInfoBean : list) {
            ProductPriceBean productPriceBean = new ProductPriceBean();
            productPriceBean.setProductId(productInfoBean.getProductId());
            productPriceBean.setPrice(productInfoBean.getFinalAmount());
            arrayList.add(productPriceBean);
        }
        productsPrice.setPriceList(arrayList);
        productsPrice.setMessageId(productArgs.getMessageId());
        String jSONString = JSON.toJSONString(productsPrice);
        Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.WINDOW_ON_DATA, jSONString, (Function1) null, (Function1) null, 12, (Object) null);
    }

    public final void getProductsPrice(@NotNull String params, @NotNull OnyxWebView webView) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(webView, "webView");
        ProductArgs productArgs = (ProductArgs) JSON.parseObject(params, ProductArgs.class);
        ProductsPrice productsPrice = new ProductsPrice();
        if (productArgs.getProductList().isEmpty()) {
            productsPrice.setMessageId(productArgs.getMessageId());
            String jSONString = JSON.toJSONString(productsPrice);
            Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
            OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.WINDOW_ON_DATA, jSONString, (Function1) null, (Function1) null, 12, (Object) null);
            return;
        }
        List<ProductBean> productList = productArgs.getProductList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(productList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = productList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ProductBean) it2.next()).getProductId());
        }
        BasePayAction<List<ProductInfoBean>> productInfoByProductIdAction = PayBundle.INSTANCE.getProductInfoByProductIdAction(ResManager.INSTANCE.getAppContext(), arrayList);
        if (productInfoByProductIdAction == null) {
            return;
        }
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<List<ProductInfoBean>> doOnNext = productInfoByProductIdAction.build().doOnNext(new C12837a(productsPrice, productArgs, webView));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    public final void getVipPrice(@NotNull String productArgs, @NotNull OnyxWebView webView) {
        String str;
        Intrinsics.checkNotNullParameter(productArgs, "productArgs");
        Intrinsics.checkNotNullParameter(webView, "webView");
        VipProductArgs vipProductArgs = (VipProductArgs) JSON.parseObject(productArgs, VipProductArgs.class);
        VipProductBean data = vipProductArgs.getData();
        if (data == null || (str = data.getProductId()) == null) {
            str = "";
        }
        VipPriceArgs vipPriceArgs = new VipPriceArgs();
        vipPriceArgs.setPriceTypeId(vipProductArgs.getPriceTypeId());
        vipPriceArgs.setPrice(ResManager.INSTANCE.getStringSafely(C10651R.string.failed_to_get_product_info));
        if (StringKt.isEmpty(str)) {
            String jSONString = JSON.toJSONString(vipPriceArgs);
            Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
            OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.WINDOW_ON_DATA, jSONString, (Function1) null, (Function1) null, 12, (Object) null);
        } else {
            FeatureChargeArgs featureChargeArgs = new FeatureChargeArgs();
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<List<? extends ProductInfoBean>> doOnNext = new GetMemberPriceAction(featureChargeArgs).build().doOnNext(new C12838b(webView, vipPriceArgs));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
        }
    }
}
