.class public Lcom/tencent/beacon/base/net/call/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/a<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/i;->a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/base/net/call/i;)Lcom/tencent/beacon/base/net/call/JceRequestEntity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/i;->a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/beacon/base/net/call/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/beacon/base/net/call/i;->b:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/base/net/call/f;

    invoke-direct {v1, p0, p1}, Lcom/tencent/beacon/base/net/call/f;-><init>(Lcom/tencent/beacon/base/net/call/i;Lcom/tencent/beacon/base/net/call/Callback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/base/net/call/Callback;Lcom/tencent/beacon/a/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;",
            "Lcom/tencent/beacon/a/b/b;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/tencent/beacon/base/net/call/g;

    invoke-direct {v0, p0, p1}, Lcom/tencent/beacon/base/net/call/g;-><init>(Lcom/tencent/beacon/base/net/call/i;Lcom/tencent/beacon/base/net/call/Callback;)V

    invoke-virtual {p2, v0}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/base/net/call/i;->b:J

    .line 3
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/i;->a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    new-instance v2, Lcom/tencent/beacon/base/net/call/h;

    invoke-direct {v2, p0, p1}, Lcom/tencent/beacon/base/net/call/h;-><init>(Lcom/tencent/beacon/base/net/call/i;Lcom/tencent/beacon/base/net/call/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void
.end method
