.class final Lcom/tencent/beacon/base/net/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/base/net/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/a/c<",
        "[B",
        "Lcom/tencent/beacon/pack/ResponsePackageV2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b([B)[B
    .locals 2

    invoke-static {}, Lcom/tencent/beacon/d/h;->d()Lcom/tencent/beacon/d/h;

    move-result-object p0

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->w()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/beacon/d/h;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p1, v1, v0, p0}, Lcom/tencent/beacon/base/util/b;->a([BIILjava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lcom/tencent/beacon/base/util/b;->a([BI)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a([B)Lcom/tencent/beacon/pack/ResponsePackageV2;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/a/b$b;->b([B)[B

    move-result-object p0

    .line 3
    new-instance p1, Lcom/tencent/beacon/pack/ResponsePackageV2;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/ResponsePackageV2;-><init>()V

    .line 4
    new-instance v0, Lcom/tencent/beacon/pack/a;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/pack/a;-><init>([B)V

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/pack/ResponsePackageV2;->readFrom(Lcom/tencent/beacon/pack/a;)V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a/b$b;->a([B)Lcom/tencent/beacon/pack/ResponsePackageV2;

    move-result-object p0

    return-object p0
.end method
