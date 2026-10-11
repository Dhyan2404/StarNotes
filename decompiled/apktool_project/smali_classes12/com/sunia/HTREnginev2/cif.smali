.class public final synthetic Lcom/sunia/HTREnginev2/cif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic e:Ljava/awt/geom/Point2D;

.field public final synthetic f:F

.field public final synthetic g:Ljava/awt/geom/Point2D;

.field public final synthetic h:Ljava/awt/geom/AffineTransform;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cif;->e:Ljava/awt/geom/Point2D;

    iput p2, p0, Lcom/sunia/HTREnginev2/cif;->f:F

    iput-object p3, p0, Lcom/sunia/HTREnginev2/cif;->g:Ljava/awt/geom/Point2D;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/cif;->h:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cif;->e:Ljava/awt/geom/Point2D;

    iget v1, p0, Lcom/sunia/HTREnginev2/cif;->f:F

    iget-object v2, p0, Lcom/sunia/HTREnginev2/cif;->g:Ljava/awt/geom/Point2D;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/cif;->h:Ljava/awt/geom/AffineTransform;

    move-object v4, p1

    check-cast v4, [F

    move-object v5, p2

    check-cast v5, [Ljava/awt/Color;

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/sl/draw/DrawPaint;->b(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;[F[Ljava/awt/Color;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method
