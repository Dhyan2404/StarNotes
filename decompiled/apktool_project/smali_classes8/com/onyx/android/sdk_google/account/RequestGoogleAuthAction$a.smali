.class public final Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$a;->e:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$a;->e:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;

    invoke-static {p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->access$getDialog$p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$a;->a(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    return-void
.end method
