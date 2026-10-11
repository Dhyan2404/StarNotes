.class public Lcom/graphbuilder/geom/PointFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphbuilder/geom/Point2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/geom/PointFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[D


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    iput-object v0, p0, Lcom/graphbuilder/geom/PointFactory$a;->a:[D

    return-void
.end method


# virtual methods
.method public getLocation()[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/geom/PointFactory$a;->a:[D

    return-object p0
.end method

.method public getX()D
    .locals 2

    iget-object p0, p0, Lcom/graphbuilder/geom/PointFactory$a;->a:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-object p0, p0, Lcom/graphbuilder/geom/PointFactory$a;->a:[D

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public setLocation(DD)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/graphbuilder/geom/PointFactory$a;->a:[D

    const/4 v0, 0x0

    aput-wide p1, p0, v0

    const/4 p1, 0x1

    .line 4
    aput-wide p3, p0, p1

    return-void
.end method

.method public setLocation([D)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/graphbuilder/geom/PointFactory$a;->a:[D

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    .line 2
    aget-wide v1, p1, v0

    aput-wide v1, p0, v0

    return-void
.end method
