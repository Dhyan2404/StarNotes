.class public Lcom/tencent/qimei/v/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/v/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/v/e;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/qimei/v/e;Lcom/tencent/qimei/v/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/v/e$a;->a:Lcom/tencent/qimei/v/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/tencent/qimei/v/g;->a()Lcom/tencent/qimei/v/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/v/e$a;->a:Lcom/tencent/qimei/v/e;

    invoke-static {v1}, Lcom/tencent/qimei/v/e;->b(Lcom/tencent/qimei/v/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qimei/v/e$a;->a:Lcom/tencent/qimei/v/e;

    invoke-static {v2}, Lcom/tencent/qimei/v/e;->c(Lcom/tencent/qimei/v/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qimei/v/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/qimei/v/e$a;->a:Lcom/tencent/qimei/v/e;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    return-void
.end method
