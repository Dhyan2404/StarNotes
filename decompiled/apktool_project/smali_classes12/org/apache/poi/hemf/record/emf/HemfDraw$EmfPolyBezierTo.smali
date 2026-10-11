.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezierTo;
.super Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPolyBezierTo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->access$000(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Path2D;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->polyBezierTo:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public hasStartPoint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
