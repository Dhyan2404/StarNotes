.class public Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;
.super Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;
.source "SourceFile"


# instance fields
.field public final d:Lcom/evernote/edam/userstore/UserStore$Client;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$Client;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Lcom/evernote/edam/userstore/UserStore$Client;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/edam/userstore/UserStore$Client;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/edam/userstore/UserStore$Client;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$g;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$g;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7, p6}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/evernote/edam/userstore/UserStore$Client;->authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateLongSessionAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$h;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    move-object/from16 v1, p8

    invoke-virtual {p0, v9, v1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->authenticateToBusiness(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToBusinessAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$k;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$k;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public checkVersion(Ljava/lang/String;SS)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/userstore/UserStore$Client;->checkVersion(Ljava/lang/String;SS)Z

    move-result p0

    return p0
.end method

.method public checkVersionAsync(Ljava/lang/String;SSLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "SS",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;SS)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/userstore/UserStore$Client;->completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public completeTwoFactorAuthenticationAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$i;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, p5}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBootstrapInfoAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/BootstrapInfo;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/BootstrapInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$f;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$f;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->getNoteStoreUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteStoreUrlAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$c;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$c;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->getPremiumInfo(Ljava/lang/String;)Lcom/evernote/edam/type/PremiumInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPremiumInfoAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/PremiumInfo;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/PremiumInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$b;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$b;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getPublicUserInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->getPublicUserInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/PublicUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPublicUserInfoAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/PublicUserInfo;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/PublicUserInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$a;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$a;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getUser()Lcom/evernote/edam/type/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->getUser(Ljava/lang/String;)Lcom/evernote/edam/type/User;

    move-result-object p0

    return-object p0
.end method

.method public getUserAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/User;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/User;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$m;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$m;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public isBusinessUser()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->getUser()Lcom/evernote/edam/type/User;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->getAccounting()Lcom/evernote/edam/type/Accounting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result p0

    return p0
.end method

.method public isBusinessUserAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$d;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$d;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public refreshAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->refreshAuthentication(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public refreshAuthenticationAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$l;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$l;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public revokeLongSession()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->d:Lcom/evernote/edam/userstore/UserStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->revokeLongSession(Ljava/lang/String;)V

    return-void
.end method

.method public revokeLongSessionAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$j;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$j;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
