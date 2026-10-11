.class public Lcom/evernote/clients/BusinessNoteStoreClient;
.super Lcom/evernote/clients/LinkedNoteStoreClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/edam/userstore/AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/evernote/clients/LinkedNoteStoreClient;-><init>(Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/edam/userstore/AuthenticationResult;)V

    return-void
.end method


# virtual methods
.method public createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->getClient()Lcom/evernote/clients/NoteStoreClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/clients/NoteStoreClient;->createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->getSharedNotebooks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/SharedNotebook;

    new-instance v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebook;->getShareKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/evernote/edam/type/LinkedNotebook;->setShareKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->setShareName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->a()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getUser()Lcom/evernote/edam/type/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->a()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getUser()Lcom/evernote/edam/type/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->getShardId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->setShardId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->b()Lcom/evernote/clients/NoteStoreClient;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/evernote/clients/NoteStoreClient;->createLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public listNotebooks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->listNotebooks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v1}, Lcom/evernote/edam/type/LinkedNotebook;->isSetBusinessId()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
