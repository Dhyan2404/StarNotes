.class public Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field private embeddedType:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmbeddedType()Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->embeddedType:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    return-object p0
.end method

.method public getRawData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->data:[B

    return-object p0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->data:[B

    return-void
.end method

.method public setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->embeddedType:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    return-void
.end method
