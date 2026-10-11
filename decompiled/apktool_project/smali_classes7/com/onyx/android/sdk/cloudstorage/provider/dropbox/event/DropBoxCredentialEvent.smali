.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;",
        "",
        "Lcom/dropbox/core/oauth/DbxCredential;",
        "a",
        "Lcom/dropbox/core/oauth/DbxCredential;",
        "getCredential",
        "()Lcom/dropbox/core/oauth/DbxCredential;",
        "setCredential",
        "(Lcom/dropbox/core/oauth/DbxCredential;)V",
        "credential",
        "<init>",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/dropbox/core/oauth/DbxCredential;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/oauth/DbxCredential;)V
    .locals 0
    .param p1    # Lcom/dropbox/core/oauth/DbxCredential;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;->a:Lcom/dropbox/core/oauth/DbxCredential;

    return-void
.end method


# virtual methods
.method public final getCredential()Lcom/dropbox/core/oauth/DbxCredential;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;->a:Lcom/dropbox/core/oauth/DbxCredential;

    return-object p0
.end method

.method public final setCredential(Lcom/dropbox/core/oauth/DbxCredential;)V
    .locals 0
    .param p1    # Lcom/dropbox/core/oauth/DbxCredential;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;->a:Lcom/dropbox/core/oauth/DbxCredential;

    return-void
.end method
