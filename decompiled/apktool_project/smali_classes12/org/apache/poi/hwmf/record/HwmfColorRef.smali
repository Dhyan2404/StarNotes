.class public Lorg/apache/poi/hwmf/record/HwmfColorRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# instance fields
.field private colorRef:Ljava/awt/Color;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    .line 8
    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

    .line 5
    iget-object p1, p1, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->copy()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    return-object v0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

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

    new-instance v0, Lcom/sunia/HTREnginev2/z1i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/z1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    const-string p0, "color"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    new-instance p1, Ljava/awt/Color;

    invoke-direct {p1, v0, v1, v2}, Ljava/awt/Color;-><init>(III)V

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

    const/4 p0, 0x4

    return p0
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfColorRef;->colorRef:Ljava/awt/Color;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
