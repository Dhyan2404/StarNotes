.class final Lcom/tencent/beacon/event/c/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/a/c<",
        "Lcom/tencent/beacon/event/a/b;",
        "Lcom/tencent/beacon/event/EventBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/event/a/b;)Lcom/tencent/beacon/event/EventBean;
    .locals 2

    .line 2
    iget-object p0, p1, Lcom/tencent/beacon/event/a/b;->e:[B

    invoke-static {p0}, Lcom/tencent/beacon/base/util/b;->a([B)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, p0, Lcom/tencent/beacon/event/EventBean;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Lcom/tencent/beacon/event/EventBean;

    .line 5
    iget-wide v0, p1, Lcom/tencent/beacon/event/a/b;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/event/EventBean;->setCid(J)V

    return-object p0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/beacon/event/a/b;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/c/b$b;->a(Lcom/tencent/beacon/event/a/b;)Lcom/tencent/beacon/event/EventBean;

    move-result-object p0

    return-object p0
.end method
