.class public Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePatternBrush;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfCreatePatternBrush"
.end annotation


# instance fields
.field private pattern:Lorg/apache/poi/hwmf/record/HwmfBitmap16;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePatternBrush;->pattern:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushBitmap(Ljava/awt/image/BufferedImage;)V

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_PATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/t5i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/t5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePatternBrush;)V

    const-string p0, "pattern"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPattern()Lorg/apache/poi/hwmf/record/HwmfBitmap16;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePatternBrush;->pattern:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->createPatternBrush:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;-><init>(Z)V

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePatternBrush;->pattern:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p0

    return p0
.end method
