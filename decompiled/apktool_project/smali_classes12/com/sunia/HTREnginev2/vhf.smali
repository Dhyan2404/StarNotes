.class public final synthetic Lcom/sunia/HTREnginev2/vhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic e:Ljava/awt/geom/Point2D;

.field public final synthetic f:Ljava/awt/geom/Point2D;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vhf;->e:Ljava/awt/geom/Point2D;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vhf;->f:Ljava/awt/geom/Point2D;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vhf;->e:Ljava/awt/geom/Point2D;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vhf;->f:Ljava/awt/geom/Point2D;

    check-cast p1, [F

    check-cast p2, [Ljava/awt/Color;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->c(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method
