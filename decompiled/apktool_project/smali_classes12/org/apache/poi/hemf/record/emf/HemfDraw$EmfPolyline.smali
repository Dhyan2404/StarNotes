.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyline;
.super Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPolyline"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;-><init>()V

    return-void
.end method


# virtual methods
.method public addClose()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->polyline:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    return-object p0
.end method
