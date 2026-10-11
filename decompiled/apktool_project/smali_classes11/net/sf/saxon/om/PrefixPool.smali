.class public Lnet/sf/saxon/om/PrefixPool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/om/PrefixPool;->c:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->c:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/om/PrefixPool;->c:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public condense()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->c:Ljava/util/Map;

    return-void
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown prefix code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public obtainPrefixCode(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/PrefixPool;->a()V

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_4

    return v0

    :cond_2
    :goto_0
    iget v0, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/om/PrefixPool;->b:I

    iget-object v2, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_5

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lnet/sf/saxon/om/PrefixPool;->a:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object p0, p0, Lnet/sf/saxon/om/PrefixPool;->c:Ljava/util/Map;

    if-eqz p0, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v0
.end method
