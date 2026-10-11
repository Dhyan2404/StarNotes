.class final Lcom/tencent/beacon/base/net/a/a$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/a/c<",
        "Lcom/tencent/beacon/pack/RequestPackage;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)[B
    .locals 2

    .line 6
    invoke-static {}, Lcom/tencent/beacon/d/h;->d()Lcom/tencent/beacon/d/h;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/tencent/beacon/d/h;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 8
    invoke-static {p1, v0, v1, p0}, Lcom/tencent/beacon/base/util/b;->b([BIILjava/lang/String;)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Lcom/tencent/beacon/pack/RequestPackage;)[B
    .locals 1

    new-instance p0, Lcom/tencent/beacon/pack/c;

    invoke-direct {p0}, Lcom/tencent/beacon/pack/c;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/c;->a(I)V

    const-string v0, "test"

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/c;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/c;->a(Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/pack/c;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/beacon/pack/c;->a()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/beacon/pack/RequestPackage;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a/a$a;->a(Lcom/tencent/beacon/pack/RequestPackage;)[B

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/tencent/beacon/pack/RequestPackage;)[B
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[BeaconNet]"

    invoke-static {v3, v0, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/a/a$a;->b(Lcom/tencent/beacon/pack/RequestPackage;)[B

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/a/a$a;->a([B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request package after processing size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method
