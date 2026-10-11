.class public Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/concurrent/Callable;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

.field public final synthetic g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->e:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

    invoke-static {v1, v0, v2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->a(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Ljava/lang/Object;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

    invoke-static {v1, v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->b(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Ljava/lang/Exception;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method
