.class public final Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b;->e:Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;)Z
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getProduct()Lcom/onyx/galaxy/note/member/data/ChargeProduct;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getGoogleProductId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/member/action/GetMemberPriceAction$b;->a(Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;)Z

    move-result p0

    return p0
.end method
