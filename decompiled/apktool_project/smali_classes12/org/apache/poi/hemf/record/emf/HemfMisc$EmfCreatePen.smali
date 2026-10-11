.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;
.super Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCreatePen"
.end annotation


# instance fields
.field protected penIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->penIndex:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->createPen:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/tkh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ukh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ukh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;)V

    const-string p0, "base"

    const-string v2, "penIndex"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getPenIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->penIndex:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->penIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p3

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->dimension:Ljava/awt/geom/Dimension2D;

    int-to-double v0, p2

    int-to-double p2, p3

    invoke-virtual {p4, v0, v1, p2, p3}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 p2, 0x10

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
