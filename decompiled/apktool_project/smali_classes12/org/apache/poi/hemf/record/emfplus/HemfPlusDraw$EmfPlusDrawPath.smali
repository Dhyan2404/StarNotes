.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusDrawPath"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private flags:I

.field private penId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;->penId:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getPath()Ljava/awt/geom/Path2D;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->draw(Ljava/awt/Shape;)V

    :cond_0
    return-void
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->drawPath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;->flags:I

    return p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/aph;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/aph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;)V

    new-instance v1, Lcom/sunia/HTREnginev2/bph;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;)V

    const-string p0, "flags"

    const-string v2, "penId"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;->getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getPenId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;->penId:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;->flags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;->penId:I

    const-wide/16 p0, 0x4

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
