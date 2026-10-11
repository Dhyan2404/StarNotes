.class final Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$executeBeginSignInRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->q(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/gms/auth/api/identity/BeginSignInResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/google/android/gms/auth/api/identity/BeginSignInResult;",
        "kotlin.jvm.PlatformType",
        "invoke"
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
.field final synthetic this$0:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$executeBeginSignInRequest$1;->this$0:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/identity/BeginSignInResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$executeBeginSignInRequest$1;->invoke(Lcom/google/android/gms/auth/api/identity/BeginSignInResult;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/google/android/gms/auth/api/identity/BeginSignInResult;)V
    .locals 9

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$executeBeginSignInRequest$1;->this$0:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;

    invoke-static {v0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->access$getFragment$p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/BeginSignInResult;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$executeBeginSignInRequest$1;->this$0:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;

    invoke-static {p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->access$getRequestCode$p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "google auth failed,couldn\'t start One Tap UI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "RequestGoogleAuthAction"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
