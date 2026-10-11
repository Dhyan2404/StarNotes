.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getFilteredSyncChunkAsync(IILcom/evernote/edam/notestore/SyncChunkFilter;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
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
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/evernote/edam/notestore/SyncChunkFilter;

.field public final synthetic h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;IILcom/evernote/edam/notestore/SyncChunkFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->e:I

    iput p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->f:I

    iput-object p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->g:Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->e:I

    iget v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->f:I

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->g:Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-virtual {v0, v1, v2, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getFilteredSyncChunk(IILcom/evernote/edam/notestore/SyncChunkFilter;)Lcom/evernote/edam/notestore/SyncChunk;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;->a()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method
