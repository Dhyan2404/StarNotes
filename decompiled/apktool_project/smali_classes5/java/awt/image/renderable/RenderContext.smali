.class public Ljava/awt/image/renderable/RenderContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field aoi:Ljava/awt/Shape;

.field hints:Ljava/awt/RenderingHints;

.field usr2dev:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;Ljava/awt/RenderingHints;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;Ljava/awt/RenderingHints;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;Ljava/awt/RenderingHints;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;Ljava/awt/RenderingHints;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Ljava/awt/image/renderable/RenderContext;->hints:Ljava/awt/RenderingHints;

    .line 3
    iput-object p2, p0, Ljava/awt/image/renderable/RenderContext;->aoi:Ljava/awt/Shape;

    .line 4
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/AffineTransform;

    iput-object p1, p0, Ljava/awt/image/renderable/RenderContext;->usr2dev:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/awt/image/renderable/RenderContext;

    iget-object v1, p0, Ljava/awt/image/renderable/RenderContext;->usr2dev:Ljava/awt/geom/AffineTransform;

    iget-object v2, p0, Ljava/awt/image/renderable/RenderContext;->aoi:Ljava/awt/Shape;

    iget-object p0, p0, Ljava/awt/image/renderable/RenderContext;->hints:Ljava/awt/RenderingHints;

    invoke-direct {v0, v1, v2, p0}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;Ljava/awt/RenderingHints;)V

    return-object v0
.end method

.method public concatenateTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/image/renderable/RenderContext;->concetenateTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public concetenateTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Ljava/awt/image/renderable/RenderContext;->usr2dev:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public getAreaOfInterest()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/RenderContext;->aoi:Ljava/awt/Shape;

    return-object p0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/RenderContext;->hints:Ljava/awt/RenderingHints;

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/RenderContext;->usr2dev:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public preConcatenateTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/image/renderable/RenderContext;->preConcetenateTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public preConcetenateTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Ljava/awt/image/renderable/RenderContext;->usr2dev:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public setAreaOfInterest(Ljava/awt/Shape;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/image/renderable/RenderContext;->aoi:Ljava/awt/Shape;

    return-void
.end method

.method public setRenderingHints(Ljava/awt/RenderingHints;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/image/renderable/RenderContext;->hints:Ljava/awt/RenderingHints;

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/AffineTransform;

    iput-object p1, p0, Ljava/awt/image/renderable/RenderContext;->usr2dev:Ljava/awt/geom/AffineTransform;

    return-void
.end method
