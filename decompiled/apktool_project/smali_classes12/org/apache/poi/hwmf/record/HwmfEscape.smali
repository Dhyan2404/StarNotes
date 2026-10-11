.class public Lorg/apache/poi/hwmf/record/HwmfEscape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;,
        Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;,
        Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;,
        Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;
    }
.end annotation


# static fields
.field private static final MAX_OBJECT_SIZE:I = 0xffff


# instance fields
.field private escapeData:Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;

.field private escapeFunction:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    return-void
.end method

.method public getEscapeData()Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape;->escapeData:Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;

    return-object p0
.end method

.method public getEscapeFunction()Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape;->escapeFunction:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

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

    new-instance v0, Lcom/sunia/HTREnginev2/t2i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/t2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape;)V

    new-instance v1, Lcom/sunia/HTREnginev2/u2i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape;)V

    const-string p0, "escapeFunction"

    const-string v2, "escapeData"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->escape:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape;->escapeFunction:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    iget-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfEscape;->escapeFunction:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

    if-nez p3, :cond_0

    new-instance p3, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;

    invoke-direct {p3}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeUnknownData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;->access$000(Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;)Ljava/util/function/Supplier;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;

    :goto_0
    iput-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfEscape;->escapeData:Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;

    int-to-long v0, p2

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape;->escapeFunction:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

    invoke-interface {p3, p1, v0, v1, p0}, Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;->init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
