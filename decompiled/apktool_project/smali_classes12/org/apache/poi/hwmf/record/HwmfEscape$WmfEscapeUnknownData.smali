.class public Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfEscape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfEscapeUnknownData"
.end annotation


# instance fields
.field private escapeDataBytes:[B

.field escapeFunction:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEscapeDataBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;->escapeDataBytes:[B

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

    new-instance v0, Lcom/sunia/HTREnginev2/h3i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/h3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;)V

    const-string p0, "escapeDataBytes"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;->escapeFunction:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

    long-to-int p2, p2

    const p3, 0xffff

    invoke-static {p1, p2, p3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;->escapeDataBytes:[B

    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
