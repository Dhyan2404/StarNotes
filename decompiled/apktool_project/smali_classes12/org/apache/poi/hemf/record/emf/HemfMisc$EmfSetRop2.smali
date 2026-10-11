.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetRop2;
.super Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSetRop2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->setRop2:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetRop2;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetRop2;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
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

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;->drawMode:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    const-wide/16 p0, 0x4

    return-wide p0
.end method
