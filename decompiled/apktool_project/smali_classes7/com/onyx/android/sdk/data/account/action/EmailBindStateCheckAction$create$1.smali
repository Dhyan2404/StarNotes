.class final Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction$create$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
        "apply"
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
.field final synthetic this$0:Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction$create$1;->this$0:Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/AccountDataBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction$create$1;->this$0:Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;->access$checkEmailBindState(Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction$create$1;->apply(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
