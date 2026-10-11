.class public Lcom/liulishuo/okdownload/core/breakpoint/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

.field public b:J


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor$a;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-direct {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;-><init>(Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor$a;)V

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/breakpoint/a;-><init>(Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;)V

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;)V
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    const-wide/16 v0, 0x5dc

    .line 4
    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->b:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->b(I)V

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->postRemoveInfo(I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->a(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->postRemoveFreeId(I)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->postSync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->postRemoveFreeId(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->postRemoveFreeId(I)V

    throw v0
.end method

.method public c(I)Z
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->a(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->b(I)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    iget-wide v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->b:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->postSyncInfoDelay(IJ)V

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/a;->a:Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor;->d()V

    return-void
.end method
