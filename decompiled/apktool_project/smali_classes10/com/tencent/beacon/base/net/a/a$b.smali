.class final Lcom/tencent/beacon/base/net/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/base/net/a/a;
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
        "Lcom/tencent/beacon/pack/ResponsePackage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b([B)Lcom/tencent/beacon/pack/ResponsePackage;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    array-length p0, p1

    if-lez p0, :cond_0

    new-instance p0, Lcom/tencent/beacon/pack/c;

    invoke-direct {p0}, Lcom/tencent/beacon/pack/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/c;->a([B)V

    new-instance p1, Lcom/tencent/beacon/pack/ResponsePackage;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/ResponsePackage;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "detail"

    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/pack/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/pack/ResponsePackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private c([B)[B
    .locals 2

    invoke-static {}, Lcom/tencent/beacon/d/h;->d()Lcom/tencent/beacon/d/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/d/h;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {p1, v0, v1, p0}, Lcom/tencent/beacon/base/util/b;->a([BIILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([B)Lcom/tencent/beacon/pack/ResponsePackage;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/a/a$b;->c([B)[B

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/a/a$b;->b([B)Lcom/tencent/beacon/pack/ResponsePackage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a/a$b;->a([B)Lcom/tencent/beacon/pack/ResponsePackage;

    move-result-object p0

    return-object p0
.end method
