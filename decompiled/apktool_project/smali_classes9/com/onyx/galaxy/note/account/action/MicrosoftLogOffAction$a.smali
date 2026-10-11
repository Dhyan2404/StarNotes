.class public final Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction$a;->e:Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;",
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

    new-instance p1, Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction$a;->e:Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;->access$generateMicrosoftVerifyArgs(Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;)Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction$a;->a(Lcom/onyx/galaxy/note/account/action/MicrosoftLogOffAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method
