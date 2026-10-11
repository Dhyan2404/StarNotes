.class public Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->authenticateLongSessionAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
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

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Z

.field public final synthetic l:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->l:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->j:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->l:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->j:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->k:Z

    invoke-virtual/range {v0 .. v7}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;->a()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method
