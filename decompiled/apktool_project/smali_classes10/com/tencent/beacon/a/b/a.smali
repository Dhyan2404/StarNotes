.class Lcom/tencent/beacon/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/b/b;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/a/b/b;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/d/b;->e()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/base/net/c;->a(I)V

    iget-object v0, p0, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/b;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/tencent/beacon/a/b/b;->a(JI)V

    iget-object p0, p0, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/b;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/beacon/a/b/b;->a(Lcom/tencent/beacon/a/b/b;Z)Z

    return-void
.end method
