.class public Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;,
        Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;"
    }
.end annotation


# instance fields
.field public volatile e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Boolean;

.field public final h:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->f:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->h:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->h:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {v0, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;->onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    invoke-interface {v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;->getId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->isAlwaysRecoverAssistModel()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->a(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->e:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->h:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;

    invoke-interface {p0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-interface {v0, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;->onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->g:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->g:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
