.class public Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;
.super Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;
.source "SourceFile"


# instance fields
.field public final d:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->d:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-static {p3}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->e:Ljava/lang/String;

    invoke-static {p4}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->f:Ljava/lang/String;

    return-void
.end method

.method public static isBusinessNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/edam/type/LinkedNotebook;->isSetBusinessId()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createBusinessNotebook(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/EvernoteSession;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 0
    .param p1    # Lcom/evernote/edam/type/Notebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/EvernoteSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->createBusinessNotebook(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createBusinessNotebook(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 2
    .param p1    # Lcom/evernote/edam/type/Notebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->d:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->getSharedNotebooks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/SharedNotebook;

    .line 5
    new-instance v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebook;->getShareKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/evernote/edam/type/LinkedNotebook;->setShareKey(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->setShareName(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->setUsername(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->f:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/evernote/edam/type/LinkedNotebook;->setShardId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->createLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createBusinessNotebookAsync(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 0
    .param p1    # Lcom/evernote/edam/type/Notebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/EvernoteSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Notebook;",
            "Lcom/evernote/client/android/EvernoteSession;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->createBusinessNotebookAsync(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public createBusinessNotebookAsync(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Lcom/evernote/edam/type/Notebook;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Notebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getBusinessUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getBusinessUserShardId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->d:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    return-object p0
.end method

.method public listBusinessNotebooks(Lcom/evernote/client/android/EvernoteSession;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/evernote/client/android/EvernoteSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/EvernoteSession;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->listBusinessNotebooks(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listBusinessNotebooks(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->listLinkedNotebooks()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-static {v0}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->isBusinessNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public listBusinessNotebooksAsync(Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 0
    .param p1    # Lcom/evernote/client/android/EvernoteSession;
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
            "Lcom/evernote/client/android/EvernoteSession;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->listBusinessNotebooksAsync(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listBusinessNotebooksAsync(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
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
            "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
