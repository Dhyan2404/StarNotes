.class public final synthetic Lcom/sunia/HTREnginev2/tao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final synthetic f:Landroidx/work/impl/WorkManagerImpl;

.field public final synthetic g:Landroidx/work/WorkRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tao;->e:Landroidx/work/impl/utils/futures/SettableFuture;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tao;->f:Landroidx/work/impl/WorkManagerImpl;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/tao;->g:Landroidx/work/WorkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tao;->e:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tao;->f:Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tao;->g:Landroidx/work/WorkRequest;

    invoke-static {v0, v1, p0}, Landroidx/work/impl/WorkerUpdater;->b(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V

    return-void
.end method
