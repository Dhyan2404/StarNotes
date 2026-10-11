.class public Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;
.super Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;->getValue()Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setValue(Lorg/apache/poi/hsmf/datatypes/Chunk;)V
    .locals 0

    return-void
.end method
