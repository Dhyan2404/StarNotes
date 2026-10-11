.class public Lcom/tencent/qimei/q/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/g/c;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/qimei/q/a;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/q/i;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/q/a;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/qimei/q/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qimei/q/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qimei/q/h;->c:Lcom/tencent/qimei/q/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/qimei/q/h;->b:Ljava/lang/String;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "REPORT"

    const-string p3, "Report failed. error: %s,%d,%s type = %s"

    invoke-static {p2, p3, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/qimei/q/h;->c:Lcom/tencent/qimei/q/a;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/tencent/qimei/v/e;

    invoke-virtual {p0}, Lcom/tencent/qimei/v/e;->a()V

    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qimei/q/h;->c:Lcom/tencent/qimei/q/a;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/tencent/qimei/v/e;

    invoke-virtual {p0}, Lcom/tencent/qimei/v/e;->b()V

    :cond_0
    return-void
.end method
