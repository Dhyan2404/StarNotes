.class final Lsun/awt/geom/AreaOp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lsun/awt/geom/Edge;

    invoke-virtual {p1}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object p0

    check-cast p2, Lsun/awt/geom/Edge;

    invoke-virtual {p2}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object p1

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v0

    invoke-virtual {p1}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v2

    cmpl-double p2, v0, v2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getXTop()D

    move-result-wide v0

    invoke-virtual {p1}, Lsun/awt/geom/Curve;->getXTop()D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
