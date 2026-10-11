.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->u()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;",
        "onClick",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "davUrl",
        "",
        "account",
        "password",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

.field public final synthetic b:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p1, p0, p2, p3, p4}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->access$onAuthing(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Lio/reactivex/rxjava3/core/Observer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
