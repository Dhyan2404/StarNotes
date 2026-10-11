.class public final Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction$a;->e:Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;",
            ")",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/account/request/cloud/GoogleLogoffRequest;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction$a;->e:Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;->access$generateGoogleVerifyArgs(Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;)Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/GoogleLogoffRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/request/cloud/GoogleLogoffRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction$a;->a(Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method
