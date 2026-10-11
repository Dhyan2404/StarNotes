.class public Lcom/evernote/edam/notestore/NoteStore$Client;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TServiceClient;
.implements Lcom/evernote/edam/notestore/NoteStore$Iface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field protected iprot_:Lcom/evernote/thrift/protocol/TProtocol;

.field protected oprot_:Lcom/evernote/thrift/protocol/TProtocol;

.field protected seqid_:I


# direct methods
.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    .line 4
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_authenticateToSharedNote()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_authenticateToSharedNotebook()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Note;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_copyNote()Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createLinkedNotebook()Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createNote()Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)Lcom/evernote/edam/type/SavedSearch;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createSearch()Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0
.end method

.method public createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createSharedNotebook()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)Lcom/evernote/edam/type/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createTag()Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0
.end method

.method public deleteNote(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_deleteNote(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_deleteNote()I

    move-result p0

    return p0
.end method

.method public emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_emailNote()V

    return-void
.end method

.method public expungeInactiveNotes(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeInactiveNotes(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeInactiveNotes()I

    move-result p0

    return p0
.end method

.method public expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeLinkedNotebook()I

    move-result p0

    return p0
.end method

.method public expungeNote(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeNote(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeNote()I

    move-result p0

    return p0
.end method

.method public expungeNotebook(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeNotebook(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeNotebook()I

    move-result p0

    return p0
.end method

.method public expungeNotes(Ljava/lang/String;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeNotes(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeNotes()I

    move-result p0

    return p0
.end method

.method public expungeSearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeSearch(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeSearch()I

    move-result p0

    return p0
.end method

.method public expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeSharedNotebooks()I

    move-result p0

    return p0
.end method

.method public expungeTag(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeTag(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeTag()I

    move-result p0

    return p0
.end method

.method public findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNoteCounts()Lcom/evernote/edam/notestore/NoteCollectionCounts;

    move-result-object p0

    return-object p0
.end method

.method public findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNoteOffset()I

    move-result p0

    return p0
.end method

.method public findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)Lcom/evernote/edam/notestore/NoteList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNotes()Lcom/evernote/edam/notestore/NoteList;

    move-result-object p0

    return-object p0
.end method

.method public findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNotesMetadata()Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object p0

    return-object p0
.end method

.method public findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)Lcom/evernote/edam/notestore/RelatedResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findRelated()Lcom/evernote/edam/notestore/RelatedResult;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getDefaultNotebook(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getDefaultNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getFilteredSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getInputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-object p0
.end method

.method public getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getLinkedNotebookSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/notestore/SyncState;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getLinkedNotebookSyncState()Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Note;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNote()Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteApplicationData()Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteApplicationDataEntry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteSearchText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteTagNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)Lcom/evernote/edam/type/Note;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteVersion()Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public getNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNotebook(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getOutputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

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

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getPublicNotebook(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getPublicNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResource()Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceAlternateData()[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceApplicationData()Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceApplicationDataEntry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/ResourceAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceAttributes()Lcom/evernote/edam/type/ResourceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)Lcom/evernote/edam/type/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceByHash()Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getResourceData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceData()[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceRecognition()[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceSearchText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearch(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/SavedSearch;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSearch(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSearch()Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0
.end method

.method public getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSharedNotebookByAuth(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public getSyncChunk(Ljava/lang/String;IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSyncChunk(Ljava/lang/String;IIZ)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getSyncState(Ljava/lang/String;)Lcom/evernote/edam/notestore/SyncState;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSyncState(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSyncState()Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)Lcom/evernote/edam/notestore/SyncState;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSyncStateWithMetrics()Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getTag(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getTag()Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0
.end method

.method public listLinkedNotebooks(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listLinkedNotebooks(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listLinkedNotebooks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listNoteVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listNoteVersions(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listNoteVersions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listNotebooks(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listNotebooks(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listNotebooks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listSearches(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listSearches(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listSearches()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listSharedNotebooks(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listSharedNotebooks(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listSharedNotebooks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listTags(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listTags(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listTags()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listTagsByNotebook()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public recv_authenticateToSharedNote()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27700(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27800(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27900(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$28000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$28000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "authenticateToSharedNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27900(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27800(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "authenticateToSharedNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_authenticateToSharedNotebook()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$25900(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26100(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26200(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26200(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "authenticateToSharedNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26100(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "authenticateToSharedNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_copyNote()Lcom/evernote/edam/type/Note;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16000(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16100(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16200(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16300(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16300(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "copyNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16200(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16100(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "copyNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_createLinkedNotebook()Lcom/evernote/edam/type/LinkedNotebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24300(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24400(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24500(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24600(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24600(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "createLinkedNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24500(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24400(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "createLinkedNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_createNote()Lcom/evernote/edam/type/Note;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13700(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13800(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13900(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$14000(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$14000(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "createNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13900(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13800(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "createNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_createNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3000(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3100(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3200(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3200(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "createNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3100(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "createNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_createSearch()Lcom/evernote/edam/type/SavedSearch;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7400(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7500(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7600(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7600(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "createSearch failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7500(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "createSearch failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_createSharedNotebook()Lcom/evernote/edam/type/SharedNotebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$21900(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22000(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22100(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22200(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22200(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "createSharedNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22100(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22000(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "createSharedNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_createTag()Lcom/evernote/edam/type/Tag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5200(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5300(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5400(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5500(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5500(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "createTag failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5400(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5300(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "createTag failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_deleteNote()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14500(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14600(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14700(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14800(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14800(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "deleteNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14700(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14600(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "deleteNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_emailNote()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26700(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26800(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26900(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26900(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26800(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26700(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "emailNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeInactiveNotes()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15700(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15800(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15900(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15900(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeInactiveNotes failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15800(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeInactiveNotes failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeLinkedNotebook()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25500(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25600(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25700(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25800(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25800(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeLinkedNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25700(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25600(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeLinkedNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeNote()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$14900(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15000(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15100(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15200(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15200(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15100(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15000(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeNotebook()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3700(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3800(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3900(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$4000(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$4000(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3900(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3800(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeNotes()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15300(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15400(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15500(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15600(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15600(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeNotes failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15500(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15400(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeNotes failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeSearch()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8100(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8200(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8300(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8400(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8400(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeSearch failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8300(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8200(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeSearch failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeSharedNotebooks()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$23900(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24000(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24100(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24200(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24200(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeSharedNotebooks failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24100(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24000(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeSharedNotebooks failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_expungeTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6300(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6400(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6500(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6600(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6600(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "expungeTag failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6500(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6400(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "expungeTag failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_findNoteCounts()Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9700(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/notestore/NoteCollectionCounts;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9800(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9900(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$10000(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$10000(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "findNoteCounts failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9900(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9800(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "findNoteCounts failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_findNoteOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$8900(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9000(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9100(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9200(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9200(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "findNoteOffset failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9100(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9000(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "findNoteOffset failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_findNotes()Lcom/evernote/edam/notestore/NoteList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8500(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/notestore/NoteList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8600(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8700(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8800(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8800(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "findNotes failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8700(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8600(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "findNotes failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_findNotesMetadata()Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9300(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9400(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9500(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9600(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9600(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "findNotesMetadata failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9500(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9400(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "findNotesMetadata failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_findRelated()Lcom/evernote/edam/notestore/RelatedResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28100(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/notestore/RelatedResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28200(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28300(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28400(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28400(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "findRelated failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28300(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28200(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "findRelated failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getDefaultNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2700(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2800(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2900(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2900(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getDefaultNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2800(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getDefaultNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getFilteredSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$900(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1000(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1100(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1100(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getFilteredSyncChunk failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1000(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getFilteredSyncChunk failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getLinkedNotebookSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1600(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1700(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1800(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1900(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1900(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getLinkedNotebookSyncChunk failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1800(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1700(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getLinkedNotebookSyncChunk failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getLinkedNotebookSyncState()Lcom/evernote/edam/notestore/SyncState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1200(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1300(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1400(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1500(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1500(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getLinkedNotebookSyncState failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1400(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1300(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getLinkedNotebookSyncState failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNote()Lcom/evernote/edam/type/Note;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10100(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10200(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10300(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10400(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10400(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10300(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10200(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNoteApplicationData()Lcom/evernote/edam/type/LazyMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10500(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10600(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10700(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10800(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10800(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNoteApplicationData failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10700(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10600(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNoteApplicationData failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNoteApplicationDataEntry()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$10900(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11000(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11100(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11200(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11200(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNoteApplicationDataEntry failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11100(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11000(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNoteApplicationDataEntry failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNoteContent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12100(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12200(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12300(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12400(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12400(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNoteContent failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12300(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12200(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNoteContent failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNoteSearchText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12500(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12600(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12700(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12800(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12800(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNoteSearchText failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12700(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12600(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNoteSearchText failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNoteTagNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13300(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13400(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13500(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13600(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13600(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNoteTagNames failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13500(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13400(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNoteTagNames failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNoteVersion()Lcom/evernote/edam/type/Note;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$16800(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$16900(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17000(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17100(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17100(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNoteVersion failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17000(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$16900(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNoteVersion failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2300(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2400(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2500(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2600(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2600(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2500(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2400(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getPublicNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21600(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21700(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21800(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21800(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getPublicNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21700(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getPublicNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResource()Lcom/evernote/edam/type/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResource_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17200(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17300(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17400(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17500(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17500(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResource failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17400(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17300(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResource failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceAlternateData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$20800(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$20900(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21000(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21100(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21100(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceAlternateData failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21000(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$20900(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceAlternateData failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceApplicationData()Lcom/evernote/edam/type/LazyMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17600(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17700(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17800(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17900(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17900(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceApplicationData failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17800(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17700(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceApplicationData failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceApplicationDataEntry()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18000(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18100(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18200(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18300(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18300(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceApplicationDataEntry failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18200(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18100(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceApplicationDataEntry failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceAttributes()Lcom/evernote/edam/type/ResourceAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21200(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/type/ResourceAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21300(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21400(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21500(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21500(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceAttributes failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21400(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21300(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceAttributes failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceByHash()Lcom/evernote/edam/type/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20000(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20100(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20200(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20300(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20300(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceByHash failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20200(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20100(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceByHash failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19600(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19700(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19800(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19900(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19900(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceData failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19800(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19700(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceData failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceRecognition()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20400(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20500(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20600(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20700(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20700(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceRecognition failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20600(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20500(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceRecognition failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getResourceSearchText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$12900(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13000(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13100(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13200(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13200(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getResourceSearchText failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13100(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13000(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getResourceSearchText failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getSearch()Lcom/evernote/edam/type/SavedSearch;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7000(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7100(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7200(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7300(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7300(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getSearch failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7200(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7100(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getSearch failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26300(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26400(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26500(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26600(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26600(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getSharedNotebookByAuth failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26500(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26400(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getSharedNotebookByAuth failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$600(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$700(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$800(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$800(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getSyncChunk failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$700(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getSyncChunk failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getSyncState()Lcom/evernote/edam/notestore/SyncState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$000(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$100(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$200(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$200(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getSyncState failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$100(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getSyncState failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getSyncStateWithMetrics()Lcom/evernote/edam/notestore/SyncState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$300(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$400(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$500(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$500(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getSyncStateWithMetrics failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$400(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getSyncStateWithMetrics failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getTag()Lcom/evernote/edam/type/Tag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$4800(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$4900(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5000(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5100(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5100(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getTag failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5000(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$4900(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getTag failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_listLinkedNotebooks()Ljava/util/List;
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
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25100(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25200(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25300(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25400(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25400(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "listLinkedNotebooks failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25300(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25200(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "listLinkedNotebooks failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_listNoteVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16400(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16500(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16600(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16700(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16700(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "listNoteVersions failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16600(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16500(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "listNoteVersions failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_listNotebooks()Ljava/util/List;
    .locals 3
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

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2000(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2100(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2200(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2200(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "listNotebooks failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2100(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "listNotebooks failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_listSearches()Ljava/util/List;
    .locals 3
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

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6700(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6800(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6900(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6900(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "listSearches failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6800(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "listSearches failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_listSharedNotebooks()Ljava/util/List;
    .locals 3
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

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23500(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23600(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23700(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23800(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23800(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "listSharedNotebooks failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23700(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23600(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "listSharedNotebooks failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_listTags()Ljava/util/List;
    .locals 3
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

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4100(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4200(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4300(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4300(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "listTags failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4200(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "listTags failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_listTagsByNotebook()Ljava/util/List;
    .locals 3
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
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4400(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4500(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4600(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4700(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4700(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "listTagsByNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4600(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4500(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "listTagsByNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_sendMessageToSharedNotebookMembers()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23100(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23200(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23300(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23400(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23400(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "sendMessageToSharedNotebookMembers failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23300(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23200(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "sendMessageToSharedNotebookMembers failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_setNoteApplicationDataEntry()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11300(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11400(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11500(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11600(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11600(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "setNoteApplicationDataEntry failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11500(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11400(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "setNoteApplicationDataEntry failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_setResourceApplicationDataEntry()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18400(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18500(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18600(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18700(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18700(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "setResourceApplicationDataEntry failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18600(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18500(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "setResourceApplicationDataEntry failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_setSharedNotebookRecipientSettings()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22700(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22800(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22900(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$23000(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$23000(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "setSharedNotebookRecipientSettings failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22900(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22800(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "setSharedNotebookRecipientSettings failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_shareNote()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27000(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27100(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27200(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27300(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27300(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "shareNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27200(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27100(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "shareNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_stopSharingNote()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27400(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27500(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27600(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27600(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27500(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27400(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "stopSharingNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_unsetNoteApplicationDataEntry()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11700(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11800(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11900(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$12000(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$12000(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "unsetNoteApplicationDataEntry failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11900(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11800(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "unsetNoteApplicationDataEntry failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_unsetResourceApplicationDataEntry()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$18800(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$18900(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19000(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19100(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19100(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "unsetResourceApplicationDataEntry failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19000(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$18900(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "unsetResourceApplicationDataEntry failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_untagAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6000(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6100(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6200(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6200(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6100(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6000(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "untagAll failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_updateLinkedNotebook()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24700(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24800(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24900(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$25000(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$25000(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "updateLinkedNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24900(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24800(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "updateLinkedNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_updateNote()Lcom/evernote/edam/type/Note;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14100(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14200(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14300(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14400(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14400(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "updateNote failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14300(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14200(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "updateNote failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_updateNotebook()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3300(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3400(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3500(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3600(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3600(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "updateNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3500(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3400(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "updateNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_updateResource()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19200(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19300(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19400(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19500(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19500(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "updateResource failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19400(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19300(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "updateResource failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_updateSearch()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7700(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7800(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7900(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$8000(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$8000(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "updateSearch failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7900(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7800(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "updateSearch failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_updateSharedNotebook()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22300(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22400(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22500(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22600(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22600(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "updateSharedNotebook failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22500(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22400(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "updateSharedNotebook failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_updateTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5600(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5700(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5800(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5900(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5900(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "updateTag failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5800(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5700(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "updateTag failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_sendMessageToSharedNotebookMembers()I

    move-result p0

    return p0
.end method

.method public send_authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "authenticateToSharedNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->setNoteKey(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "authenticateToSharedNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;->setShareKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "copyNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->setNoteGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->setToNotebookGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "createLinkedNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "createNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->setNote(Lcom/evernote/edam/type/Note;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "createNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->setNotebook(Lcom/evernote/edam/type/Notebook;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "createSearch"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->setSearch(Lcom/evernote/edam/type/SavedSearch;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "createSharedNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->setSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "createTag"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;->setTag(Lcom/evernote/edam/type/Tag;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_deleteNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "deleteNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "emailNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->setParameters(Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeInactiveNotes(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeInactiveNotes"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeLinkedNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeNotes(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeNotes"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->setNoteGuids(Ljava/util/List;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeSearch"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeSharedNotebooks"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->setSharedNotebookIds(Ljava/util/List;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_expungeTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "expungeTag"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "findNoteCounts"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->setWithTrash(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "findNoteOffset"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "findNotes"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setOffset(I)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setMaxNotes(I)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "findNotesMetadata"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setOffset(I)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setMaxNotes(I)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setResultSpec(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "findRelated"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->setQuery(Lcom/evernote/edam/notestore/RelatedQuery;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->setResultSpec(Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getDefaultNotebook(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getDefaultNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getFilteredSyncChunk"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setAfterUSN(I)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setMaxEntries(I)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setFilter(Lcom/evernote/edam/notestore/SyncChunkFilter;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getLinkedNotebookSyncChunk"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setAfterUSN(I)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setMaxEntries(I)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setFullSyncOnly(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getLinkedNotebookSyncState"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithContent(Z)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesData(Z)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesRecognition(Z)V

    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesAlternateData(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNoteApplicationData"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNoteApplicationDataEntry"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNoteContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNoteContent"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNoteSearchText"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setNoteOnly(Z)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setTokenizeForIndexing(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNoteTagNames"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNoteVersion"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setNoteGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setUpdateSequenceNum(I)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesData(Z)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesRecognition(Z)V

    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesAlternateData(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getPublicNotebook(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getPublicNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->setUserId(I)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->setPublicUri(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResource"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithData(Z)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithRecognition(Z)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAttributes(Z)V

    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAlternateData(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceAlternateData"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceApplicationData"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceApplicationDataEntry"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceAttributes"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceByHash"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setNoteGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setContentHash([B)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithData(Z)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithRecognition(Z)V

    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithAlternateData(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceData"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceRecognition"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getResourceSearchText"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getSearch"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getSharedNotebookByAuth(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getSharedNotebookByAuth"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getSyncChunk(Ljava/lang/String;IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getSyncChunk"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setAfterUSN(I)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setMaxEntries(I)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setFullSyncOnly(Z)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getSyncState(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getSyncState"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getSyncStateWithMetrics"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;->setClientMetrics(Lcom/evernote/edam/notestore/ClientUsageMetrics;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "getTag"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_listLinkedNotebooks(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "listLinkedNotebooks"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_listNoteVersions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "listNoteVersions"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;->setNoteGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_listNotebooks(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "listNotebooks"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_listSearches(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "listSearches"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_listSharedNotebooks(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "listSharedNotebooks"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_listTags(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "listTags"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTags_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTags_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTags_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "listTagsByNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->setNotebookGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "sendMessageToSharedNotebookMembers"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setNotebookGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setMessageText(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setRecipients(Ljava/util/List;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "setNoteApplicationDataEntry"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "setResourceApplicationDataEntry"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "setSharedNotebookRecipientSettings"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setSharedNotebookId(J)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setRecipientSettings(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_shareNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "shareNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "stopSharingNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "unsetNoteApplicationDataEntry"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "unsetResourceApplicationDataEntry"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_untagAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "untagAll"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;->setGuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "updateLinkedNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "updateNote"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;->setNote(Lcom/evernote/edam/type/Note;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "updateNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;->setNotebook(Lcom/evernote/edam/type/Notebook;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "updateResource"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->setResource(Lcom/evernote/edam/type/Resource;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "updateSearch"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->setSearch(Lcom/evernote/edam/type/SavedSearch;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "updateSharedNotebook"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;->setSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    const-string v4, "updateTag"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->setTag(Lcom/evernote/edam/type/Tag;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_setNoteApplicationDataEntry()I

    move-result p0

    return p0
.end method

.method public setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_setResourceApplicationDataEntry()I

    move-result p0

    return p0
.end method

.method public setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_setSharedNotebookRecipientSettings()I

    move-result p0

    return p0
.end method

.method public shareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_shareNote(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_shareNote()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_stopSharingNote()V

    return-void
.end method

.method public unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_unsetNoteApplicationDataEntry()I

    move-result p0

    return p0
.end method

.method public unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_unsetResourceApplicationDataEntry()I

    move-result p0

    return p0
.end method

.method public untagAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_untagAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_untagAll()V

    return-void
.end method

.method public updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateLinkedNotebook()I

    move-result p0

    return p0
.end method

.method public updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateNote()Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateNotebook()I

    move-result p0

    return p0
.end method

.method public updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateResource()I

    move-result p0

    return p0
.end method

.method public updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateSearch()I

    move-result p0

    return p0
.end method

.method public updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateSharedNotebook()I

    move-result p0

    return p0
.end method

.method public updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateTag()I

    move-result p0

    return p0
.end method
