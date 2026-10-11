.class public Lcom/tencent/qimei/q/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/q/c;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/tencent/qimei/q/i;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/q/i;Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/q/g;->e:Lcom/tencent/qimei/q/i;

    iput-object p2, p0, Lcom/tencent/qimei/q/g;->a:Lcom/tencent/qimei/q/c;

    iput-object p3, p0, Lcom/tencent/qimei/q/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qimei/q/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/qimei/q/g;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qimei/q/g;->e:Lcom/tencent/qimei/q/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/q/g;->e:Lcom/tencent/qimei/q/i;

    iget-object v2, p0, Lcom/tencent/qimei/q/g;->a:Lcom/tencent/qimei/q/c;

    iget-object v3, p0, Lcom/tencent/qimei/q/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/qimei/q/g;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/qimei/q/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/tencent/qimei/q/i;->a(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
