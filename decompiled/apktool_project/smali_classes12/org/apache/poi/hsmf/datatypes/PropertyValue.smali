.class public Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$TimePropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$DoublePropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$FloatPropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongLongPropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$ShortPropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$BooleanPropertyValue;,
        Lorg/apache/poi/hsmf/datatypes/PropertyValue$NullPropertyValue;
    }
.end annotation


# instance fields
.field private actualType:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

.field protected data:[B

.field private flags:J

.field private property:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V
    .locals 6

    .line 1
    iget-object v5, p1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->usualType:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->property:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    .line 4
    iput-wide p2, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->flags:J

    .line 5
    iput-object p4, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    .line 6
    iput-object p5, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->actualType:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    return-void
.end method


# virtual methods
.method public getActualType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->actualType:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    return-object p0
.end method

.method public getFlags()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->flags:J

    return-wide v0
.end method

.method public getProperty()Lorg/apache/poi/hsmf/datatypes/MAPIProperty;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->property:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    return-object p0
.end method

.method public getRawValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    return-object p0
.end method

.method public setRawValue([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "(No value available)"

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    invoke-static {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->toDebugFriendlyString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
