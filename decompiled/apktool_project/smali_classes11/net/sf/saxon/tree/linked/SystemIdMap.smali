.class public Lnet/sf/saxon/tree/linked/SystemIdMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->a:[I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    return-void
.end method


# virtual methods
.method public getSystemId(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->a:[I

    aget v2, v2, v1

    if-le v2, p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->b:[Ljava/lang/String;

    sub-int/2addr v1, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->b:[Ljava/lang/String;

    sub-int/2addr v2, v0

    aget-object p0, p0, v2

    return-object p0
.end method

.method public setSystemId(ILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->a:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "System IDs of nodes are immutable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->a:[I

    array-length v1, v0

    iget v2, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    add-int/lit8 v3, v2, 0x1

    if-gt v1, v3, :cond_3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->a:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->b:[Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->b:[Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->a:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    aput p1, v0, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->b:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/linked/SystemIdMap;->c:I

    return-void
.end method
