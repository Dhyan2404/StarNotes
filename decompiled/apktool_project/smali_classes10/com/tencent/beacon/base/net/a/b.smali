.class public Lcom/tencent/beacon/base/net/a/b;
.super Lcom/tencent/beacon/base/net/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/base/net/a/b$b;,
        Lcom/tencent/beacon/base/net/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/beacon/base/net/a/c$a<",
        "[B",
        "Lcom/tencent/beacon/pack/AbstractJceStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/beacon/base/net/a/b$a;

.field private final b:Lcom/tencent/beacon/base/net/a/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/beacon/base/net/a/c$a;-><init>()V

    new-instance v0, Lcom/tencent/beacon/base/net/a/b$a;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/a/b$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/a/b;->a:Lcom/tencent/beacon/base/net/a/b$a;

    new-instance v0, Lcom/tencent/beacon/base/net/a/b$b;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/a/b$b;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/a/b;->b:Lcom/tencent/beacon/base/net/a/b$b;

    return-void
.end method

.method public static a()Lcom/tencent/beacon/base/net/a/b;
    .locals 1

    new-instance v0, Lcom/tencent/beacon/base/net/a/b;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/a/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/tencent/beacon/base/net/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/beacon/base/net/a/c<",
            "[B",
            "Lcom/tencent/beacon/pack/ResponsePackageV2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/base/net/a/b;->b:Lcom/tencent/beacon/base/net/a/b$b;

    return-object p0
.end method

.method public c()Lcom/tencent/beacon/base/net/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/beacon/base/net/a/c<",
            "Lcom/tencent/beacon/pack/RequestPackageV2;",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/base/net/a/b;->a:Lcom/tencent/beacon/base/net/a/b$a;

    return-object p0
.end method
