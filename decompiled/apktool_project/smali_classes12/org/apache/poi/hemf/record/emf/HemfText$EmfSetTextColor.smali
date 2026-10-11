.class public Lorg/apache/poi/hemf/record/emf/HemfText$EmfSetTextColor;
.super Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSetTextColor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->setTextColor:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfSetTextColor;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfSetTextColor;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
