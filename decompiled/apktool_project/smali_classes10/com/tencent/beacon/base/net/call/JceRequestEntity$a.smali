.class public final Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/base/net/call/JceRequestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/tencent/beacon/base/net/RequestType;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:[B

.field private k:Lcom/tencent/beacon/pack/AbstractJceStruct;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->d:I

    return-object p0
.end method

.method public a(Lcom/tencent/beacon/base/net/RequestType;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->f:Lcom/tencent/beacon/base/net/RequestType;

    return-object p0
.end method

.method public a(Lcom/tencent/beacon/pack/AbstractJceStruct;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->k:Lcom/tencent/beacon/pack/AbstractJceStruct;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->g:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public a()Lcom/tencent/beacon/base/net/call/JceRequestEntity;
    .locals 12

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "url || domain == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->h:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/beacon/base/net/b/d;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->f:Lcom/tencent/beacon/base/net/RequestType;

    sget-object v2, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    if-ne v1, v2, :cond_2

    .line 15
    iget-object v0, v0, Lcom/tencent/beacon/base/net/c;->f:Lcom/tencent/beacon/base/net/a/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/a/b;->c()Lcom/tencent/beacon/base/net/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->k:Lcom/tencent/beacon/pack/AbstractJceStruct;

    check-cast v1, Lcom/tencent/beacon/pack/RequestPackageV2;

    invoke-interface {v0, v1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->j:[B

    goto :goto_2

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->k:Lcom/tencent/beacon/pack/AbstractJceStruct;

    if-nez v1, :cond_3

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/tencent/beacon/pack/AbstractJceStruct;->toByteArray()[B

    move-result-object v1

    .line 17
    :goto_1
    iget v2, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->d:I

    iget-object v3, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->c:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/tencent/beacon/base/net/b/d;->a(I[BLjava/util/Map;Ljava/lang/String;)Lcom/tencent/beacon/pack/RequestPackage;

    move-result-object v1

    .line 18
    iget-object v0, v0, Lcom/tencent/beacon/base/net/c;->e:Lcom/tencent/beacon/base/net/a/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/a/a;->c()Lcom/tencent/beacon/base/net/a/c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->j:[B

    .line 19
    :goto_2
    new-instance v0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->f:Lcom/tencent/beacon/base/net/RequestType;

    iget-object v3, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->g:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b:I

    iget-object v6, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->j:[B

    iget-object v8, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->h:Ljava/util/Map;

    iget v9, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->d:I

    iget v10, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->e:I

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;-><init>(Lcom/tencent/beacon/base/net/RequestType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Map;IILcom/tencent/beacon/base/net/call/j;)V

    return-object v0

    .line 20
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "appKey == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(I)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->e:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
