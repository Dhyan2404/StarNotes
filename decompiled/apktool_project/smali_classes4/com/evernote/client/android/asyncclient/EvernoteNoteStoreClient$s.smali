.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->findNotesMetadataAsync(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/edam/notestore/NotesMetadataList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/edam/notestore/NoteFilter;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

.field public final synthetic i:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->i:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->e:Lcom/evernote/edam/notestore/NoteFilter;

    iput p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->f:I

    iput p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->g:I

    iput-object p5, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->h:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->i:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->e:Lcom/evernote/edam/notestore/NoteFilter;

    iget v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->f:I

    iget v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->g:I

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->h:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->findNotesMetadata(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;->a()Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object p0

    return-object p0
.end method
