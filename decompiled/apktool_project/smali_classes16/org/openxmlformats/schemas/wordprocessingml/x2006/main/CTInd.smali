.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctind4b93type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getEnd()Ljava/lang/Object;
.end method

.method public abstract getEndChars()Ljava/math/BigInteger;
.end method

.method public abstract getFirstLine()Ljava/lang/Object;
.end method

.method public abstract getFirstLineChars()Ljava/math/BigInteger;
.end method

.method public abstract getHanging()Ljava/lang/Object;
.end method

.method public abstract getHangingChars()Ljava/math/BigInteger;
.end method

.method public abstract getLeft()Ljava/lang/Object;
.end method

.method public abstract getLeftChars()Ljava/math/BigInteger;
.end method

.method public abstract getRight()Ljava/lang/Object;
.end method

.method public abstract getRightChars()Ljava/math/BigInteger;
.end method

.method public abstract getStart()Ljava/lang/Object;
.end method

.method public abstract getStartChars()Ljava/math/BigInteger;
.end method

.method public abstract isSetEnd()Z
.end method

.method public abstract isSetEndChars()Z
.end method

.method public abstract isSetFirstLine()Z
.end method

.method public abstract isSetFirstLineChars()Z
.end method

.method public abstract isSetHanging()Z
.end method

.method public abstract isSetHangingChars()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetLeftChars()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetRightChars()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract isSetStartChars()Z
.end method

.method public abstract setEnd(Ljava/lang/Object;)V
.end method

.method public abstract setEndChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setFirstLine(Ljava/lang/Object;)V
.end method

.method public abstract setFirstLineChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setHanging(Ljava/lang/Object;)V
.end method

.method public abstract setHangingChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setLeft(Ljava/lang/Object;)V
.end method

.method public abstract setLeftChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setRight(Ljava/lang/Object;)V
.end method

.method public abstract setRightChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setStart(Ljava/lang/Object;)V
.end method

.method public abstract setStartChars(Ljava/math/BigInteger;)V
.end method

.method public abstract unsetEnd()V
.end method

.method public abstract unsetEndChars()V
.end method

.method public abstract unsetFirstLine()V
.end method

.method public abstract unsetFirstLineChars()V
.end method

.method public abstract unsetHanging()V
.end method

.method public abstract unsetHangingChars()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetLeftChars()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetRightChars()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract unsetStartChars()V
.end method

.method public abstract xgetEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetEndChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetFirstLine()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetFirstLineChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetHanging()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetHangingChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetLeftChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetRightChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetStartChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetEnd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetEndChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetFirstLine(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetFirstLineChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetHanging(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetHangingChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetLeft(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetLeftChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetRight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetRightChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetStart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetStartChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
