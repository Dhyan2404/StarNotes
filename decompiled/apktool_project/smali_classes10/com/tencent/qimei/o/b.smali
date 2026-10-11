.class public Lcom/tencent/qimei/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/e/d;

.field public final synthetic b:Lcom/tencent/qimei/o/d;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/o/b;->b:Lcom/tencent/qimei/o/d;

    iput-object p2, p0, Lcom/tencent/qimei/o/b;->a:Lcom/tencent/qimei/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qimei/o/b;->b:Lcom/tencent/qimei/o/d;

    invoke-static {v0}, Lcom/tencent/qimei/o/d;->b(Lcom/tencent/qimei/o/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/o/b;->b:Lcom/tencent/qimei/o/d;

    invoke-static {v1}, Lcom/tencent/qimei/o/d;->c(Lcom/tencent/qimei/o/d;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v1

    const-wide/16 v2, 0xa

    iput-wide v2, v1, Lcom/tencent/qimei/e/c;->d:J

    iget-object v1, p0, Lcom/tencent/qimei/o/b;->a:Lcom/tencent/qimei/e/d;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/tencent/qimei/e/d;->a(I)V

    iget-object p0, p0, Lcom/tencent/qimei/o/b;->b:Lcom/tencent/qimei/o/d;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tencent/qimei/o/d;->a(Lcom/tencent/qimei/o/d;Z)Z

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
