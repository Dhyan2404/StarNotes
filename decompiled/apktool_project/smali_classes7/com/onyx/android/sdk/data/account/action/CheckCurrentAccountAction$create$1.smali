.class final Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;->create()Lio/reactivex/rxjava3/core/Observable;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "accept",
        "(Lkotlin/Unit;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$1;->this$0:Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$1;->accept(Lkotlin/Unit;)V

    return-void
.end method

.method public final accept(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$1;->this$0:Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;->access$checkIsCurrentAccount(Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;)V

    return-void
.end method
