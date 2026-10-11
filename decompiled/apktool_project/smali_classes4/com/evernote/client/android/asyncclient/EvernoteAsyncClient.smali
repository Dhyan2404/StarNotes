.class public abstract Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/os/Handler;

.field public static final c:Ljava/lang/Thread;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->b:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->c:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Ljava/lang/Object;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->d(Ljava/lang/Object;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Ljava/lang/Exception;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->c(Ljava/lang/Exception;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;

    invoke-direct {v0, p0, p2, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    sget-object v0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->c:Ljava/lang/Thread;

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$a;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
