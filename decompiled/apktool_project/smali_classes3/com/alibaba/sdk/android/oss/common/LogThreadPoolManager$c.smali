.class public Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$c;->e:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$c;->e:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->b(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$c;->e:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->c(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$c;->e:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->a(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
