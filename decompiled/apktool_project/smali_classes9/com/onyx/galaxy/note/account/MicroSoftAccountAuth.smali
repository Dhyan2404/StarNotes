.class public final Lcom/onyx/galaxy/note/account/MicroSoftAccountAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016J*\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J \u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001a2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/MicroSoftAccountAuth;",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "()V",
        "createAccountAuthServiceIntent",
        "Landroid/content/Intent;",
        "activityContext",
        "Landroid/app/Activity;",
        "createAuthResultAction",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;",
        "context",
        "Landroid/content/Context;",
        "data",
        "createRequestAuth",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "dialog",
        "Landroid/app/Dialog;",
        "requestCode",
        "",
        "getAccountAuthAuthorization",
        "",
        "result",
        "Landroidx/activity/result/ActivityResult;",
        "parseAuthResultFromIntent",
        "Lkotlin/Pair;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccountAuthServiceIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createAuthResultAction(Landroid/content/Context;Landroid/content/Intent;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;-><init>(Landroid/content/Intent;)V

    return-object p0
.end method

.method public createRequestAuth(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)Lcom/onyx/android/sdk/base/rx/RxBaseAction;
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/app/Dialog;",
            "I)",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "fragment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;-><init>(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)V

    return-object p0
.end method

.method public getAccountAuthAuthorization(Landroidx/activity/result/ActivityResult;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroidx/activity/result/ActivityResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseAuthResultFromIntent(Landroid/content/Intent;)Lkotlin/Pair;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
