.class final Lsun/awt/geom/Edge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final GROW_PARTS:I = 0xa

.field static final INIT_PARTS:I = 0x4


# instance fields
.field activey:D

.field ctag:I

.field curve:Lsun/awt/geom/Curve;

.field equivalence:I

.field etag:I

.field private lastEdge:Lsun/awt/geom/Edge;

.field private lastLimit:D

.field private lastResult:I


# direct methods
.method public constructor <init>(Lsun/awt/geom/Curve;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lsun/awt/geom/Edge;-><init>(Lsun/awt/geom/Curve;II)V

    return-void
.end method

.method public constructor <init>(Lsun/awt/geom/Curve;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lsun/awt/geom/Edge;->curve:Lsun/awt/geom/Curve;

    .line 4
    iput p2, p0, Lsun/awt/geom/Edge;->ctag:I

    .line 5
    iput p3, p0, Lsun/awt/geom/Edge;->etag:I

    return-void
.end method


# virtual methods
.method public compareTo(Lsun/awt/geom/Edge;[D)I
    .locals 7

    iget-object v0, p0, Lsun/awt/geom/Edge;->lastEdge:Lsun/awt/geom/Edge;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    aget-wide v3, p2, v1

    iget-wide v5, p0, Lsun/awt/geom/Edge;->lastLimit:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    aget-wide v0, p2, v2

    cmpl-double p1, v0, v5

    if-lez p1, :cond_0

    aput-wide v5, p2, v2

    :cond_0
    iget p0, p0, Lsun/awt/geom/Edge;->lastResult:I

    return p0

    :cond_1
    iget-object v0, p1, Lsun/awt/geom/Edge;->lastEdge:Lsun/awt/geom/Edge;

    if-ne p0, v0, :cond_3

    aget-wide v3, p2, v1

    iget-wide v5, p1, Lsun/awt/geom/Edge;->lastLimit:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3

    aget-wide v3, p2, v2

    cmpl-double p0, v3, v5

    if-lez p0, :cond_2

    aput-wide v5, p2, v2

    :cond_2
    iget p0, p1, Lsun/awt/geom/Edge;->lastResult:I

    sub-int/2addr v1, p0

    return v1

    :cond_3
    iget-object v0, p0, Lsun/awt/geom/Edge;->curve:Lsun/awt/geom/Curve;

    iget-object v1, p1, Lsun/awt/geom/Edge;->curve:Lsun/awt/geom/Curve;

    invoke-virtual {v0, v1, p2}, Lsun/awt/geom/Curve;->compareTo(Lsun/awt/geom/Curve;[D)I

    move-result v0

    iput-object p1, p0, Lsun/awt/geom/Edge;->lastEdge:Lsun/awt/geom/Edge;

    aget-wide p1, p2, v2

    iput-wide p1, p0, Lsun/awt/geom/Edge;->lastLimit:D

    iput v0, p0, Lsun/awt/geom/Edge;->lastResult:I

    return v0
.end method

.method public getCurve()Lsun/awt/geom/Curve;
    .locals 0

    iget-object p0, p0, Lsun/awt/geom/Edge;->curve:Lsun/awt/geom/Curve;

    return-object p0
.end method

.method public getCurveTag()I
    .locals 0

    iget p0, p0, Lsun/awt/geom/Edge;->ctag:I

    return p0
.end method

.method public getEdgeTag()I
    .locals 0

    iget p0, p0, Lsun/awt/geom/Edge;->etag:I

    return p0
.end method

.method public getEquivalence()I
    .locals 0

    iget p0, p0, Lsun/awt/geom/Edge;->equivalence:I

    return p0
.end method

.method public isActiveFor(DI)Z
    .locals 2

    iget v0, p0, Lsun/awt/geom/Edge;->etag:I

    if-ne v0, p3, :cond_0

    iget-wide v0, p0, Lsun/awt/geom/Edge;->activey:D

    cmpl-double p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public record(DI)V
    .locals 0

    iput-wide p1, p0, Lsun/awt/geom/Edge;->activey:D

    iput p3, p0, Lsun/awt/geom/Edge;->etag:I

    return-void
.end method

.method public setEdgeTag(I)V
    .locals 0

    iput p1, p0, Lsun/awt/geom/Edge;->etag:I

    return-void
.end method

.method public setEquivalence(I)V
    .locals 0

    iput p1, p0, Lsun/awt/geom/Edge;->equivalence:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edge["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/awt/geom/Edge;->curve:Lsun/awt/geom/Curve;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/awt/geom/Edge;->ctag:I

    if-nez v2, :cond_0

    const-string v2, "L"

    goto :goto_0

    :cond_0
    const-string v2, "R"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsun/awt/geom/Edge;->etag:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string p0, "I"

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    const-string p0, "O"

    goto :goto_1

    :cond_2
    const-string p0, "N"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
