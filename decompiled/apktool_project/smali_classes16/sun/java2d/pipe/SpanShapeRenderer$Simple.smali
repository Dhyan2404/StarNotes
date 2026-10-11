.class public Lsun/java2d/pipe/SpanShapeRenderer$Simple;
.super Lsun/java2d/pipe/SpanShapeRenderer;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/LoopBasedPipe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/pipe/SpanShapeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/SpanShapeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public endSequence(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public renderBox(Ljava/lang/Object;IIII)V
    .locals 7

    move-object v1, p1

    check-cast v1, Lsun/java2d/SunGraphics2D;

    invoke-virtual {v1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    iget-object p0, v1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, p0, Lsun/java2d/loops/RenderLoops;->fillRectLoop:Lsun/java2d/loops/FillRect;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/java2d/loops/FillRect;->FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    return-void
.end method

.method public startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
