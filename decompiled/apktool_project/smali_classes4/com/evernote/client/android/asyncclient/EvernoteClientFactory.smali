.class public Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

.field public e:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

.field public h:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

.field public final i:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

.field public j:Lcom/evernote/edam/userstore/AuthenticationResult;

.field protected final mByteStore:Lcom/evernote/client/conn/mobile/ByteStore;

.field protected final mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

.field protected final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHttpClient:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession;Lcom/squareup/okhttp/OkHttpClient;Lcom/evernote/client/conn/mobile/ByteStore;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/EvernoteSession;",
            "Lcom/squareup/okhttp/OkHttpClient;",
            "Lcom/evernote/client/conn/mobile/ByteStore;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/EvernoteSession;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-static {p2}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/OkHttpClient;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-static {p3}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/conn/mobile/ByteStore;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mByteStore:Lcom/evernote/client/conn/mobile/ByteStore;

    iput-object p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mHeaders:Ljava/util/Map;

    invoke-static {p5}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->a:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->b:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->c:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->f:Ljava/util/Map;

    new-instance p2, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$a;

    invoke-direct {p2, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$a;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;Ljava/util/concurrent/ExecutorService;)V

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->i:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    return-void
.end method


# virtual methods
.method public final authenticateToBusiness()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->isBusinessAuthExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getUserStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->j:Lcom/evernote/edam/userstore/AuthenticationResult;

    :cond_0
    return-void
.end method

.method public checkLoggedIn()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "user not logged in"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createBinaryProtocol(Ljava/lang/String;)Lcom/evernote/thrift/protocol/TBinaryProtocol;
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    new-instance v1, Lcom/evernote/client/conn/mobile/TAndroidTransport;

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mByteStore:Lcom/evernote/client/conn/mobile/ByteStore;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mHeaders:Ljava/util/Map;

    invoke-direct {v1, v2, v3, p1, p0}, Lcom/evernote/client/conn/mobile/TAndroidTransport;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/evernote/client/conn/mobile/ByteStore;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;)V

    return-object v0
.end method

.method public createBusinessNotebookHelper()Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->authenticateToBusiness()V

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->j:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->j:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->j:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getUser()Lcom/evernote/edam/type/User;

    move-result-object v1

    new-instance v2, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->getShardId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public declared-synchronized createEvernoteNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createNoteStoreClient(Ljava/lang/String;)Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object p1

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, p2, v1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;-><init>(Lcom/evernote/edam/notestore/NoteStore$Client;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createEvernoteSearchHelper()Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;
    .locals 2

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;-><init>(Lcom/evernote/client/android/EvernoteSession;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public createHtmlHelper(Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    .locals 3

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;-><init>(Lcom/squareup/okhttp/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    return-object p2

    :cond_2
    if-nez p2, :cond_3

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createLinkedNotebookHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;
    .locals 3
    .param p1    # Lcom/evernote/edam/type/LinkedNotebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getShareKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->authenticateToSharedNotebook(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0

    new-instance v1, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v0, p1, p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method public createNoteStoreClient(Ljava/lang/String;)Lcom/evernote/edam/notestore/NoteStore$Client;
    .locals 1

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createBinaryProtocol(Ljava/lang/String;)Lcom/evernote/thrift/protocol/TBinaryProtocol;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;)V

    return-object v0
.end method

.method public createUserStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;
    .locals 1

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createBinaryProtocol(Ljava/lang/String;)Lcom/evernote/thrift/protocol/TBinaryProtocol;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;)V

    new-instance p1, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0, p2, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;-><init>(Lcom/evernote/edam/userstore/UserStore$Client;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method

.method public declared-synchronized getBusinessNotebookHelper()Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->d:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->isBusinessAuthExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createBusinessNotebookHelper()Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->d:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    :cond_1
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->d:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBusinessNotebookHelperAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->i:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    new-instance v1, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$c;

    invoke-direct {v1, p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$c;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;)V

    invoke-virtual {v0, v1, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getEvernoteSearchHelper()Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;
    .locals 1

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->checkLoggedIn()V

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->h:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createEvernoteSearchHelper()Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->h:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    :cond_0
    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->h:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    return-object p0
.end method

.method public declared-synchronized getHtmlHelperBusiness()Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->g:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->authenticateToBusiness()V

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->j:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createHtmlHelper(Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->g:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->g:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHtmlHelperBusinessAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->i:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    new-instance v1, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$e;

    invoke-direct {v1, p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$e;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;)V

    invoke-virtual {v0, v1, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getHtmlHelperDefault()Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->checkLoggedIn()V

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->e:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createHtmlHelper(Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->e:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->e:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLinkedHtmlHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    .locals 3
    .param p1    # Lcom/evernote/edam/type/LinkedNotebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getShareKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->authenticateToSharedNotebook(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createHtmlHelper(Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->f:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getLinkedHtmlHelperAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1    # Lcom/evernote/edam/type/LinkedNotebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->i:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    new-instance v1, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;

    invoke-direct {v1, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {v0, v1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getLinkedNotebookHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;
    .locals 2
    .param p1    # Lcom/evernote/edam/type/LinkedNotebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createLinkedNotebookHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    move-result-object v1

    iget-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLinkedNotebookHelperAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1    # Lcom/evernote/edam/type/LinkedNotebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->i:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    new-instance v1, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$b;

    invoke-direct {v1, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$b;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {v0, v1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->checkLoggedIn()V

    .line 2
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createEvernoteNoteStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->checkLoggedIn()V

    .line 2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    .line 4
    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/edam/user"

    .line 5
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->mEvernoteSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getUserStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->createUserStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    move-result-object v1

    .line 12
    iget-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->a:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isBusinessAuthExpired()Z
    .locals 4

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->j:Lcom/evernote/edam/userstore/AuthenticationResult;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->getExpiration()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
