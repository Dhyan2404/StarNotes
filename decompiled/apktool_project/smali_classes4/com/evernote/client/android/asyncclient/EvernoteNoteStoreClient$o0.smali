.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getResourceAsync(Ljava/lang/String;ZZZZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/edam/type/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;ZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->j:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->f:Z

    iput-boolean p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->g:Z

    iput-boolean p5, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->h:Z

    iput-boolean p6, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/type/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->j:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->f:Z

    iget-boolean v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->g:Z

    iget-boolean v4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->h:Z

    iget-boolean v5, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->i:Z

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getResource(Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Resource;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;->a()Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method
