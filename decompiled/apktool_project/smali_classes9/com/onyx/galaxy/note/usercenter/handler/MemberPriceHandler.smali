.class public final Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemberPriceHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemberPriceHandler.kt\ncom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1549#2:86\n1620#2,3:87\n*S KotlinDebug\n*F\n+ 1 MemberPriceHandler.kt\ncom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler\n*L\n58#1:82\n58#1:83,3\n71#1:86\n71#1:87,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\t\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J.\u0010\u0010\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;",
        "",
        "",
        "productArgs",
        "Lcom/onyx/galaxy/note/ui/view/OnyxWebView;",
        "webView",
        "",
        "getVipPrice",
        "params",
        "getProductsPrice",
        "",
        "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
        "it",
        "Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;",
        "productsPrice",
        "Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;",
        "a",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMemberPriceHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemberPriceHandler.kt\ncom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1549#2:86\n1620#2,3:87\n*S KotlinDebug\n*F\n+ 1 MemberPriceHandler.kt\ncom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler\n*L\n58#1:82\n58#1:83,3\n71#1:86\n71#1:87,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleProductResult(Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;Ljava/util/List;Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;->a(Ljava/util/List;Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
            ">;",
            "Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;",
            "Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;",
            "Lcom/onyx/galaxy/note/ui/view/OnyxWebView;",
            ")V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/data/ProductPriceBean;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/usercenter/data/ProductPriceBean;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/usercenter/data/ProductPriceBean;->setProductId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;->getFinalAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/usercenter/data/ProductPriceBean;->setPrice(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;->setPriceList(Ljava/util/List;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;->getMessageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;->setMessageId(Ljava/lang/String;)V

    const-string v1, "window.onData"

    invoke-static {p2}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "toJSONString(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method

.method public final getProductsPrice(Ljava/lang/String;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/ui/view/OnyxWebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;->getProductList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;->getMessageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;->setMessageId(Ljava/lang/String;)V

    const-string v2, "window.onData"

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "toJSONString(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;->getProductList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/usercenter/data/ProductBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/usercenter/data/ProductBean;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/pay/PayBundle;->getProductInfoByProductIdAction(Landroid/content/Context;Ljava/util/List;)Lcom/onyx/android/sdk/pay/action/BasePayAction;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;-><init>(Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doOnNext(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getVipPrice(Ljava/lang/String;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/ui/view/OnyxWebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "productArgs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "webView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p0, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;

    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;->getData()Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;->getProductId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;->getPriceTypeId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;->setPriceTypeId(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->failed_to_get_product_info:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;->setPrice(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v2, "window.onData"

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "toJSONString(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void

    :cond_2
    new-instance p0, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p1, Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction;-><init>(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;

    invoke-direct {p1, p2, v0}, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;-><init>(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
