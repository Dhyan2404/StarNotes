.class public Lorg/apache/poi/hsmf/datatypes/PropertyValue$ShortPropertyValue;
.super Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortPropertyValue"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V
    .locals 6

    sget-object v5, Lorg/apache/poi/hsmf/datatypes/Types;->SHORT:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$ShortPropertyValue;->getValue()Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Short;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getShort([B)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public setValue(S)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method
