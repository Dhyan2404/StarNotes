.class public Lsun/java2d/pipe/SpanShapeRenderer$Composite;
.super Lsun/java2d/pipe/SpanShapeRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/pipe/SpanShapeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Composite"
.end annotation


# instance fields
.field comppipe:Lsun/java2d/pipe/CompositePipe;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/CompositePipe;)V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/SpanShapeRenderer;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/SpanShapeRenderer$Composite;->comppipe:Lsun/java2d/pipe/CompositePipe;

    return-void
.end method


# virtual methods
.method public endSequence(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/SpanShapeRenderer$Composite;->comppipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {p0, p1}, Lsun/java2d/pipe/CompositePipe;->endSequence(Ljava/lang/Object;)V

    return-void
.end method

.method public renderBox(Ljava/lang/Object;IIII)V
    .locals 9

    iget-object v0, p0, Lsun/java2d/pipe/SpanShapeRenderer$Composite;->comppipe:Lsun/java2d/pipe/CompositePipe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v0 .. v8}, Lsun/java2d/pipe/CompositePipe;->renderPathTile(Ljava/lang/Object;[BIIIIII)V

    return-void
.end method

.method public startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/SpanShapeRenderer$Composite;->comppipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/CompositePipe;->startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
