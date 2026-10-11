.class final Lcom/tencent/beacon/event/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/Callback<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/tencent/beacon/event/h;

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/beacon/event/a/a;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/event/h;Ljava/lang/String;Lcom/tencent/beacon/event/a/a;Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/event/h;",
            "Ljava/lang/String;",
            "Lcom/tencent/beacon/event/a/a;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    iput-object p2, p0, Lcom/tencent/beacon/event/g;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/event/g;->g:Lcom/tencent/beacon/event/a/a;

    invoke-static {}, Lcom/tencent/beacon/base/util/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/g;->d:J

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/tencent/beacon/event/g;->a:Ljava/util/Set;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[EventReport("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/event/g;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/beacon/event/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/event/g;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/g;->a:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/beacon/event/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/g;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/beacon/event/g;)Lcom/tencent/beacon/event/a/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/g;->g:Lcom/tencent/beacon/event/a/a;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/beacon/event/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/tencent/beacon/event/g;)Lcom/tencent/beacon/event/h;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    return-object p0
.end method


# virtual methods
.method public a([B)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->c()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/tencent/beacon/event/g;->d:J

    sub-long/2addr v0, v2

    .line 4
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object p1

    sget-object v2, Lcom/tencent/beacon/module/ModuleName;->EVENT:Lcom/tencent/beacon/module/ModuleName;

    invoke-virtual {p1, v2}, Lcom/tencent/beacon/a/c/c;->a(Lcom/tencent/beacon/module/ModuleName;)Lcom/tencent/beacon/module/BeaconModule;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/module/EventModule;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/beacon/module/EventModule;->d()Lcom/tencent/beacon/event/i;

    move-result-object p1

    .line 6
    new-instance v2, Lcom/tencent/beacon/event/f;

    invoke-direct {v2, p0, v0, v1}, Lcom/tencent/beacon/event/f;-><init>(Lcom/tencent/beacon/event/g;J)V

    invoke-interface {p1, v2}, Lcom/tencent/beacon/event/i;->a(Ljava/lang/Runnable;)Z

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/tencent/beacon/event/g;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    const-string v2, "report success! offer task: %s! "

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/tencent/beacon/event/g;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/h;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    invoke-virtual {p0}, Lcom/tencent/beacon/event/h;->c()V

    .line 11
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/c;->a(I)V

    return-void
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/beacon/event/g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/d;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/event/g;->c:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "send failure reason: %s. LogID: %s."

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    iget-object v1, p0, Lcom/tencent/beacon/event/g;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/h;->a(Ljava/util/Set;)V

    iget-object p1, p1, Lcom/tencent/beacon/base/net/d;->b:Ljava/lang/String;

    const-string v0, "406"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/h;->a()V

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/beacon/event/g;->e:Lcom/tencent/beacon/event/h;

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/c;->e()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/g;->a([B)V

    return-void
.end method
