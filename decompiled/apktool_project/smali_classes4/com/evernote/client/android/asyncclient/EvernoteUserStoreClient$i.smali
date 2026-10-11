.class public Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->completeTwoFactorAuthenticationAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/edam/userstore/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->i:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->i:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;->a()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method
