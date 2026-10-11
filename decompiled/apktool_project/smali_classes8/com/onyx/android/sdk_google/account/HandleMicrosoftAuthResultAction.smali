.class public final Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Landroid/content/Intent;",
        "e",
        "Landroid/content/Intent;",
        "data",
        "<init>",
        "(Landroid/content/Intent;)V",
        "sdk-google_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Intent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;->e:Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$getResult(Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;)Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;->l()Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction$a;-><init>(Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;->e:Landroid/content/Intent;

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v2, "MICROSOFT_ID_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    :goto_1
    iget-object v0, p0, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;->e:Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v2, "MICROSOFT_ID_TOKEN_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    move-object v4, v1

    :goto_3
    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;->e:Landroid/content/Intent;

    if-eqz p0, :cond_5

    const-string v0, "MICROSOFT_ACCESS_TOKEN_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, p0

    goto :goto_5

    :cond_5
    :goto_4
    move-object v5, v1

    :goto_5
    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
