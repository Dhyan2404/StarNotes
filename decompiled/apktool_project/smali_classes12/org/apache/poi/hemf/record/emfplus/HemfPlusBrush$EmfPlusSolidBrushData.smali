.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusSolidBrushData"
.end annotation


# instance fields
.field private solidColor:Ljava/awt/Color;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;->solidColor:Ljava/awt/Color;

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;->solidColor:Ljava/awt/Color;

    invoke-direct {p2, p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushTransform(Ljava/awt/geom/AffineTransform;)V

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    return-void
.end method

.method public applyPen(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;->solidColor:Ljava/awt/Color;

    invoke-direct {p2, p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/wnh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;)V

    const-string p0, "solidColor"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->SOLID_COLOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;->solidColor:Ljava/awt/Color;

    const-wide/16 p0, 0x4

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
