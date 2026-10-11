.class public Lcom/tencent/qimei/t/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/t/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/t/b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/qimei/t/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/t/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/b/a;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v1

    const-string v2, "0"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "1"

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v4, v2

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    iget-object v1, p0, Lcom/tencent/qimei/t/b;->a:Ljava/lang/String;

    iget p0, p0, Lcom/tencent/qimei/t/b;->b:I

    int-to-long v5, p0

    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v3

    iget-object v7, v3, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v8, "p1"

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v7, "p2"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v5, "p3"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v4, "p4"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v8"

    const-string v2, "/report"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
