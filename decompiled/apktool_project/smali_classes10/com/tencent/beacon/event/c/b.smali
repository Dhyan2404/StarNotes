.class public final Lcom/tencent/beacon/event/c/b;
.super Lcom/tencent/beacon/base/net/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/event/c/b$b;,
        Lcom/tencent/beacon/event/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/beacon/base/net/a/c$a<",
        "Lcom/tencent/beacon/event/EventBean;",
        "Lcom/tencent/beacon/event/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/beacon/event/c/b$b;

.field private final b:Lcom/tencent/beacon/event/c/b$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/beacon/base/net/a/c$a;-><init>()V

    new-instance v0, Lcom/tencent/beacon/event/c/b$b;

    invoke-direct {v0}, Lcom/tencent/beacon/event/c/b$b;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/b;->a:Lcom/tencent/beacon/event/c/b$b;

    new-instance v0, Lcom/tencent/beacon/event/c/b$a;

    invoke-direct {v0}, Lcom/tencent/beacon/event/c/b$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/b;->b:Lcom/tencent/beacon/event/c/b$a;

    return-void
.end method

.method public static a()Lcom/tencent/beacon/event/c/b;
    .locals 1

    new-instance v0, Lcom/tencent/beacon/event/c/b;

    invoke-direct {v0}, Lcom/tencent/beacon/event/c/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/tencent/beacon/base/net/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/beacon/base/net/a/c<",
            "Lcom/tencent/beacon/event/EventBean;",
            "Lcom/tencent/beacon/event/a/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/event/c/b;->b:Lcom/tencent/beacon/event/c/b$a;

    return-object p0
.end method

.method public c()Lcom/tencent/beacon/base/net/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/beacon/base/net/a/c<",
            "Lcom/tencent/beacon/event/a/b;",
            "Lcom/tencent/beacon/event/EventBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/event/c/b;->a:Lcom/tencent/beacon/event/c/b$b;

    return-object p0
.end method
