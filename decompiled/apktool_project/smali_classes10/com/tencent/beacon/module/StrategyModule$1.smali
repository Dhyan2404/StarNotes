.class Lcom/tencent/beacon/module/StrategyModule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/module/StrategyModule;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/module/StrategyModule;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/module/StrategyModule;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/module/StrategyModule$1;->a:Lcom/tencent/beacon/module/StrategyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/beacon/module/StrategyModule$1;->a:Lcom/tencent/beacon/module/StrategyModule;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/beacon/module/StrategyModule$1;->a:Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {v1}, Lcom/tencent/beacon/module/StrategyModule;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/beacon/module/StrategyModule$1;->a:Lcom/tencent/beacon/module/StrategyModule;

    invoke-static {v1}, Lcom/tencent/beacon/module/StrategyModule;->a(Lcom/tencent/beacon/module/StrategyModule;)Lcom/tencent/beacon/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/d/i;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/tencent/beacon/module/StrategyModule$1;->a:Lcom/tencent/beacon/module/StrategyModule;

    invoke-static {p0}, Lcom/tencent/beacon/module/StrategyModule;->b(Lcom/tencent/beacon/module/StrategyModule;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 0

    return-void
.end method
