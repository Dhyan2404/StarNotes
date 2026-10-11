.class final Lcom/tencent/beacon/event/c/b$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/a/c<",
        "Lcom/tencent/beacon/event/EventBean;",
        "Lcom/tencent/beacon/event/a/b;",
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
.method public a(Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/a/b;
    .locals 2

    .line 2
    new-instance p0, Lcom/tencent/beacon/event/a/b;

    invoke-direct {p0}, Lcom/tencent/beacon/event/a/b;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/tencent/beacon/event/EventBean;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/a/b;->b:J

    .line 4
    invoke-virtual {p1}, Lcom/tencent/beacon/event/EventBean;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/a/b;->d:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/Object;)[B

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/tencent/beacon/event/a/b;->e:[B

    if-eqz p1, :cond_0

    .line 7
    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/beacon/event/a/b;->c:J

    :cond_0
    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/c/b$a;->a(Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/a/b;

    move-result-object p0

    return-object p0
.end method
