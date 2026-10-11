.class public Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->refreshAuthenticationAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
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
.field public final synthetic e:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$l;->e:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$l;->e:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->refreshAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$l;->a()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method
