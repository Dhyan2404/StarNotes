.class public abstract Lcom/tencent/qimei/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/tencent/qimei/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/qimei/d/a;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qimei/d/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/d/a;->a:Lcom/tencent/qimei/d/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qimei/d/c;

    invoke-direct {v1}, Lcom/tencent/qimei/d/c;-><init>()V

    sput-object v1, Lcom/tencent/qimei/d/a;->a:Lcom/tencent/qimei/d/a;

    :cond_0
    sget-object v1, Lcom/tencent/qimei/d/a;->a:Lcom/tencent/qimei/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract a(JLjava/lang/Runnable;)V
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
