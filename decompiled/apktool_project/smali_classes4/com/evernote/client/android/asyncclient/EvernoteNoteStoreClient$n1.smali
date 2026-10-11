.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getLinkedNotebookSyncChunkAsync(Lcom/evernote/edam/type/LinkedNotebook;IIZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/edam/notestore/SyncChunk;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/edam/type/LinkedNotebook;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->i:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->e:Lcom/evernote/edam/type/LinkedNotebook;

    iput p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->f:I

    iput p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->g:I

    iput-boolean p5, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->i:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->e:Lcom/evernote/edam/type/LinkedNotebook;

    iget v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->f:I

    iget v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->g:I

    iget-boolean p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->h:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getLinkedNotebookSyncChunk(Lcom/evernote/edam/type/LinkedNotebook;IIZ)Lcom/evernote/edam/notestore/SyncChunk;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;->a()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method
