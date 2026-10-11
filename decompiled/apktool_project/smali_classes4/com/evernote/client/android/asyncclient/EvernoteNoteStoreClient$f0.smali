.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->updateNoteAsync(Lcom/evernote/edam/type/Note;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/edam/type/Note;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/edam/type/Note;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Note;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;->e:Lcom/evernote/edam/type/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;->e:Lcom/evernote/edam/type/Note;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->updateNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;->a()Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method
