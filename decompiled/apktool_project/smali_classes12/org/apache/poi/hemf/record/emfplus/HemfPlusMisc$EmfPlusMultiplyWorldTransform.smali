.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusMultiplyWorldTransform;
.super Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusMultiplyWorldTransform"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getInitTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;->getMatrixData()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->multiplyWorldTransform:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method
