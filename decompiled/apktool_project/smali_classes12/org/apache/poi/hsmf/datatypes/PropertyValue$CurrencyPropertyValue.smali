.class public Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;
.super Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrencyPropertyValue"
.end annotation


# static fields
.field private static final SHIFT:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;->SHIFT:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V
    .locals 6

    sget-object v5, Lorg/apache/poi/hsmf/datatypes/Types;->CURRENCY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

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
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;->SHIFT:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/math/BigInteger;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    :cond_0
    sget-object v0, Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;->SHIFT:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->data:[B

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    return-void
.end method
