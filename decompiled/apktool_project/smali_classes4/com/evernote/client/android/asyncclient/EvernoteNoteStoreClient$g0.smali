.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getSyncChunkAsync(IIZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
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

.field public final synthetic g:Z

.field public final synthetic h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->e:I

    iput p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->f:I

    iput-boolean p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->g:Z

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

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->e:I

    iget v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->f:I

    iget-boolean p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->g:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getSyncChunk(IIZ)Lcom/evernote/edam/notestore/SyncChunk;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;->a()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method
