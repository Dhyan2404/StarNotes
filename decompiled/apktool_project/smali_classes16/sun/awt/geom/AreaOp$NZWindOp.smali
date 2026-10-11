.class public Lsun/awt/geom/AreaOp$NZWindOp;
.super Lsun/awt/geom/AreaOp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NZWindOp"
.end annotation


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/awt/geom/AreaOp;-><init>(Lsun/awt/geom/AreaOp$1;)V

    return-void
.end method


# virtual methods
.method public classify(Lsun/awt/geom/Edge;)I
    .locals 2

    iget v0, p0, Lsun/awt/geom/AreaOp$NZWindOp;->count:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object p1

    invoke-virtual {p1}, Lsun/awt/geom/Curve;->getDirection()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lsun/awt/geom/AreaOp$NZWindOp;->count:I

    if-nez v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lsun/awt/geom/AreaOp$NZWindOp;->count:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public newRow()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsun/awt/geom/AreaOp$NZWindOp;->count:I

    return-void
.end method
