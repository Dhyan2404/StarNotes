.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipPath;
.super Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusSetClipPath"
.end annotation


# static fields
.field private static final COMBINE_MODE:Lorg/apache/poi/util/BitField;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipPath;->COMBINE_MODE:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getPath()Ljava/awt/geom/Path2D;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_COPY:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipPath;->getCombineMode()Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->regionMode:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setClip(Ljava/awt/Shape;Lorg/apache/poi/hwmf/record/HwmfRegionMode;Z)V

    return-void
.end method

.method public getCombineMode()Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipPath;->COMBINE_MODE:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    move-result-object p0

    return-object p0
.end method
