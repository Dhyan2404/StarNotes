.class public final Ljava/awt/geom/GeneralPath;
.super Ljava/awt/geom/Path2D$Float;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x738fca4bc2abc406L


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 1
    invoke-direct {p0, v0, v1}, Ljava/awt/geom/Path2D$Float;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x14

    .line 2
    invoke-direct {p0, p1, v0}, Ljava/awt/geom/Path2D$Float;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/awt/geom/Path2D$Float;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I[BI[FI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/awt/geom/Path2D$Float;-><init>()V

    .line 6
    iput p1, p0, Ljava/awt/geom/Path2D;->windingRule:I

    .line 7
    iput-object p2, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    .line 8
    iput p3, p0, Ljava/awt/geom/Path2D;->numTypes:I

    .line 9
    iput-object p4, p0, Ljava/awt/geom/Path2D$Float;->floatCoords:[F

    .line 10
    iput p5, p0, Ljava/awt/geom/Path2D;->numCoords:I

    return-void
.end method

.method public constructor <init>(Ljava/awt/Shape;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method
