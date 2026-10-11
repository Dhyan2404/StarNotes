.class public Lcom/graphbuilder/curve/MultiPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LINE_TO:Ljava/lang/Object;

.field public static final MOVE_TO:Ljava/lang/Object;


# instance fields
.field public e:[[D

.field public f:[Ljava/lang/Object;

.field public g:I

.field public h:D

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/MultiPath;->MOVE_TO:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    iput v1, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/graphbuilder/curve/MultiPath;->h:D

    if-lez p1, :cond_0

    iput p1, p0, Lcom/graphbuilder/curve/MultiPath;->i:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dimension > 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([DLjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_2

    array-length v0, p1

    iget v1, p0, Lcom/graphbuilder/curve/MultiPath;->i:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    if-nez v0, :cond_0

    sget-object p2, Lcom/graphbuilder/curve/MultiPath;->MOVE_TO:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphbuilder/curve/MultiPath;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    iget v1, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "p.length >= dimension required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureCapacity(I)V
    .locals 4

    iget-object v0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    array-length v1, v0

    if-ge v1, p1, :cond_3

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-array v0, p1, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    :goto_2
    iget v2, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput-object v0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    iput-object p1, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public get(I)[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getCapacity()I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    array-length p0, p0

    return p0
.end method

.method public getDimension()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/MultiPath;->i:I

    return p0
.end method

.method public getDistSq([D)D
    .locals 9

    if-eqz p1, :cond_4

    array-length v0, p1

    iget v1, p0, Lcom/graphbuilder/curve/MultiPath;->i:I

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/graphbuilder/curve/MultiPath;->getNumPoints()I

    move-result v0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v3

    iget v4, p0, Lcom/graphbuilder/curve/MultiPath;->i:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [D

    :goto_0
    if-ge v5, v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    iget v7, p0, Lcom/graphbuilder/curve/MultiPath;->i:I

    invoke-static {v6, v3, p1, v4, v7}, Lcom/graphbuilder/geom/Geom;->ptSegDistSq([D[D[D[DI)D

    move-result-wide v6

    cmpg-double v8, v6, v1

    if-gez v8, :cond_1

    move-wide v1, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-wide v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "p.length >= dimension required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFlatness()D
    .locals 2

    iget-wide v0, p0, Lcom/graphbuilder/curve/MultiPath;->h:D

    return-wide v0
.end method

.method public getNumPoints()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    return p0
.end method

.method public getType(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public lineTo([D)V
    .locals 1

    sget-object v0, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/graphbuilder/curve/MultiPath;->a([DLjava/lang/Object;)V

    return-void
.end method

.method public moveTo([D)V
    .locals 1

    sget-object v0, Lcom/graphbuilder/curve/MultiPath;->MOVE_TO:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/graphbuilder/curve/MultiPath;->a([DLjava/lang/Object;)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    if-eqz p2, :cond_2

    array-length v0, p2

    iget v1, p0, Lcom/graphbuilder/curve/MultiPath;->i:I

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    aput-object p2, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "p.length >= dimension required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFlatness(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/graphbuilder/curve/MultiPath;->h:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "flatness > 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNumPoints(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    return-void
.end method

.method public setType(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/graphbuilder/curve/MultiPath;->MOVE_TO:Ljava/lang/Object;

    if-eq p2, v0, :cond_1

    sget-object v1, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    aget-object v1, p0, p1

    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type[0] must always be MOVE_TO"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    aput-object p2, p0, p1

    return-void

    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public trimArray()V
    .locals 4

    iget v0, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    iget-object v1, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-array v0, v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    :goto_1
    iget v3, p0, Lcom/graphbuilder/curve/MultiPath;->g:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/graphbuilder/curve/MultiPath;->e:[[D

    iput-object v2, p0, Lcom/graphbuilder/curve/MultiPath;->f:[Ljava/lang/Object;

    :cond_2
    return-void
.end method
