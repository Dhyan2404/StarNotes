.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->setResourceApplicationDataEntryAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->h:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;->a()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
