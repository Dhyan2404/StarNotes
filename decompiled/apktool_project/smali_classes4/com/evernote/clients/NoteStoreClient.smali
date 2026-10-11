.class public Lcom/evernote/clients/NoteStoreClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final client:Lcom/evernote/edam/notestore/NoteStore$Client;

.field protected token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 6
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-direct {v0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/clients/NoteStoreClient;->client:Lcom/evernote/edam/notestore/NoteStore$Client;

    .line 7
    iput-object p3, p0, Lcom/evernote/clients/NoteStoreClient;->token:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TProtocol and Token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-direct {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/clients/NoteStoreClient;->client:Lcom/evernote/edam/notestore/NoteStore$Client;

    .line 3
    iput-object p2, p0, Lcom/evernote/clients/NoteStoreClient;->token:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TProtocol and Token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/clients/NoteStoreClient;->token:Ljava/lang/String;

    return-object p0
.end method

.method public authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToSharedNotebook(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public copyNote(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public createLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public createSearch(Lcom/evernote/edam/type/SavedSearch;)Lcom/evernote/edam/type/SavedSearch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0
.end method

.method public createSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createTag(Lcom/evernote/edam/type/Tag;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0
.end method

.method public deleteNote(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->deleteNote(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public emailNote(Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    return-void
.end method

.method public expungeInactiveNotes()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeInactiveNotes(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeLinkedNotebook(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeNote(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeNote(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeNotebook(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeNotebook(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeNotes(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeNotes(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public expungeSearch(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeSearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeSharedNotebooks(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public expungeTag(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeTag(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public findNoteCounts(Lcom/evernote/edam/notestore/NoteFilter;Z)Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)Lcom/evernote/edam/notestore/NoteCollectionCounts;

    move-result-object p0

    return-object p0
.end method

.method public findNoteOffset(Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public findNotes(Lcom/evernote/edam/notestore/NoteFilter;II)Lcom/evernote/edam/notestore/NoteList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)Lcom/evernote/edam/notestore/NoteList;

    move-result-object p0

    return-object p0
.end method

.method public findNotesMetadata(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object p0

    return-object p0
.end method

.method public findRelated(Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)Lcom/evernote/edam/notestore/RelatedResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)Lcom/evernote/edam/notestore/RelatedResult;

    move-result-object p0

    return-object p0
.end method

.method public getClient()Lcom/evernote/edam/notestore/NoteStore$Client;
    .locals 0

    iget-object p0, p0, Lcom/evernote/clients/NoteStoreClient;->client:Lcom/evernote/edam/notestore/NoteStore$Client;

    return-object p0
.end method

.method public getDefaultNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->getDefaultNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getFilteredSyncChunk(IILcom/evernote/edam/notestore/SyncChunkFilter;)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebookSyncChunk(Lcom/evernote/edam/type/LinkedNotebook;IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/edam/notestore/NoteStore$Client;->getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebookSyncState(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getNote(Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Note;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationData(Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteSearchText(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteTagNames(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNoteVersion(Ljava/lang/String;IZZZ)Lcom/evernote/edam/type/Note;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public getNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getPublicNotebook(ILjava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getPublicNotebook(ILjava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getResource(Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAlternateData(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationData(Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAttributes(Ljava/lang/String;)Lcom/evernote/edam/type/ResourceAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/ResourceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getResourceByHash(Ljava/lang/String;[BZZZ)Lcom/evernote/edam/type/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getResourceData(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceRecognition(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceSearchText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearch(Ljava/lang/String;)Lcom/evernote/edam/type/SavedSearch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSearch(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0
.end method

.method public getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public getSyncChunk(IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSyncChunk(Ljava/lang/String;IIZ)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getSyncState()Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSyncState(Ljava/lang/String;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStateWithMetrics(Lcom/evernote/edam/notestore/ClientUsageMetrics;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/lang/String;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getTag(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0
.end method

.method public listLinkedNotebooks()Ljava/util/List;
    .locals 1
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
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listLinkedNotebooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listNoteVersions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NoteVersionId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->listNoteVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listNotebooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listSearches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listSearches(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listSharedNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listSharedNotebooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listTagsByNotebook(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)I

    return-void
.end method

.method public shareNote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->shareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public stopSharingNote(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public untagAll(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->untagAll(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)I

    move-result p0

    return p0
.end method

.method public updateNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public updateNotebook(Lcom/evernote/edam/type/Notebook;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)I

    move-result p0

    return p0
.end method

.method public updateResource(Lcom/evernote/edam/type/Resource;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)I

    move-result p0

    return p0
.end method

.method public updateSearch(Lcom/evernote/edam/type/SavedSearch;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)I

    move-result p0

    return p0
.end method

.method public updateSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)I

    move-result p0

    return p0
.end method

.method public updateTag(Lcom/evernote/edam/type/Tag;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)I

    move-result p0

    return p0
.end method
