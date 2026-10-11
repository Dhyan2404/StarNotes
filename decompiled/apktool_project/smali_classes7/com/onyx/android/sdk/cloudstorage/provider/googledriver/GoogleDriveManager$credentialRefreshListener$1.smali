.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$credentialRefreshListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$credentialRefreshListener$1",
        "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
        "onTokenErrorResponse",
        "",
        "credential",
        "Lcom/google/api/client/auth/oauth2/Credential;",
        "tokenErrorResponse",
        "Lcom/google/api/client/auth/oauth2/TokenErrorResponse;",
        "onTokenResponse",
        "tokenResponse",
        "Lcom/google/api/client/auth/oauth2/TokenResponse;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$credentialRefreshListener$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenErrorResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    .locals 0
    .param p1    # Lcom/google/api/client/auth/oauth2/Credential;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$credentialRefreshListener$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->getOnProviderAuthFailFunc()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onTokenResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenResponse;)V
    .locals 0
    .param p1    # Lcom/google/api/client/auth/oauth2/Credential;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/api/client/auth/oauth2/TokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
