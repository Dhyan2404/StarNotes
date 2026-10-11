.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetMiterLimit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSetMiterLimit"
.end annotation


# instance fields
.field protected miterLimit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetMiterLimit;->miterLimit:I

    int-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenMiterLimit(D)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->setMiterLimit:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/dlh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dlh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetMiterLimit;)V

    const-string p0, "miterLimit"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMiterLimit()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetMiterLimit;->miterLimit:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetMiterLimit;->miterLimit:I

    const-wide/16 p0, 0x4

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
