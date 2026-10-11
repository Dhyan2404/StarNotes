.class public final synthetic Lcom/sunia/HTREnginev2/iao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/work/impl/utils/WorkForegroundRunnable;

.field public final synthetic f:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iao;->e:Landroidx/work/impl/utils/WorkForegroundRunnable;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iao;->f:Landroidx/work/impl/utils/futures/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iao;->e:Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iao;->f:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {v0, p0}, Landroidx/work/impl/utils/WorkForegroundRunnable;->a(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V

    return-void
.end method
