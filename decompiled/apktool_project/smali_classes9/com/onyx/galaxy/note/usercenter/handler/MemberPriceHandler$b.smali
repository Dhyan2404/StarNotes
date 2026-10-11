.class public final Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;->getVipPrice(Ljava/lang/String;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->e:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->f:Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;

    const-string v0, "toJSONString(...)"

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->e:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v2, "window.onData"

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->f:Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->f:Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;->getFinalAmount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;->setPrice(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->e:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v3, "window.onData"

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->f:Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$b;->a(Ljava/util/List;)V

    return-void
.end method
