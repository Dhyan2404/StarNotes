.class public abstract Lcom/tencent/qimei/ae/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/ae/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/qimei/ae/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ae/c$a;->c:Lcom/tencent/qimei/ae/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/qimei/ae/c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qimei/ae/c$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/ae/c$a;->c:Lcom/tencent/qimei/ae/c;

    iget-object p0, p0, Lcom/tencent/qimei/ae/c$a;->b:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p1, p0, p3}, Lcom/tencent/qimei/ae/c;->a(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "HidTask"

    const-string p2, "pull content from server,code = %d"

    invoke-static {p1, p2, p0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lcom/tencent/qimei/ae/c$a;->c:Lcom/tencent/qimei/ae/c;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ae/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qimei/ae/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/qimei/ae/c$a;->c:Lcom/tencent/qimei/ae/c;

    iget-object p0, p0, Lcom/tencent/qimei/ae/c$a;->b:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/tencent/qimei/ae/c;->a(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
