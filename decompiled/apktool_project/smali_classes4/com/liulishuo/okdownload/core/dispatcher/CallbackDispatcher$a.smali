.class public Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->endTasksWithError(Ljava/util/Collection;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/Collection;

.field public final synthetic f:Ljava/lang/Exception;

.field public final synthetic g:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;Ljava/util/Collection;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$a;->g:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$a;->e:Ljava/util/Collection;

    iput-object p3, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$a;->f:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$a;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getListener()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v2

    sget-object v3, Lcom/liulishuo/okdownload/core/cause/EndCause;->ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$a;->f:Ljava/lang/Exception;

    invoke-interface {v2, v1, v3, v4}, Lcom/liulishuo/okdownload/DownloadListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method
