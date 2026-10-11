.class public final Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;->getProductsPrice(Ljava/lang/String;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;

.field public final synthetic g:Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;

.field public final synthetic h:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->e:Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->f:Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;

    iput-object p3, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->g:Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;

    iput-object p4, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->h:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->e:Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->f:Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->g:Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;

    const-string v3, "$productArgs"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->h:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-static {v0, p1, v1, v2, p0}, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;->access$handleProductResult(Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;Ljava/util/List;Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;Lcom/onyx/galaxy/note/usercenter/data/ProductArgs;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler$a;->a(Ljava/util/List;)V

    return-void
.end method
