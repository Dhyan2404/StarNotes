.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;",
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

    const-string v2, "ctspacingff2ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAfter()Ljava/lang/Object;
.end method

.method public abstract getAfterAutospacing()Ljava/lang/Object;
.end method

.method public abstract getAfterLines()Ljava/math/BigInteger;
.end method

.method public abstract getBefore()Ljava/lang/Object;
.end method

.method public abstract getBeforeAutospacing()Ljava/lang/Object;
.end method

.method public abstract getBeforeLines()Ljava/math/BigInteger;
.end method

.method public abstract getLine()Ljava/lang/Object;
.end method

.method public abstract getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;
.end method

.method public abstract isSetAfter()Z
.end method

.method public abstract isSetAfterAutospacing()Z
.end method

.method public abstract isSetAfterLines()Z
.end method

.method public abstract isSetBefore()Z
.end method

.method public abstract isSetBeforeAutospacing()Z
.end method

.method public abstract isSetBeforeLines()Z
.end method

.method public abstract isSetLine()Z
.end method

.method public abstract isSetLineRule()Z
.end method

.method public abstract setAfter(Ljava/lang/Object;)V
.end method

.method public abstract setAfterAutospacing(Ljava/lang/Object;)V
.end method

.method public abstract setAfterLines(Ljava/math/BigInteger;)V
.end method

.method public abstract setBefore(Ljava/lang/Object;)V
.end method

.method public abstract setBeforeAutospacing(Ljava/lang/Object;)V
.end method

.method public abstract setBeforeLines(Ljava/math/BigInteger;)V
.end method

.method public abstract setLine(Ljava/lang/Object;)V
.end method

.method public abstract setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V
.end method

.method public abstract unsetAfter()V
.end method

.method public abstract unsetAfterAutospacing()V
.end method

.method public abstract unsetAfterLines()V
.end method

.method public abstract unsetBefore()V
.end method

.method public abstract unsetBeforeAutospacing()V
.end method

.method public abstract unsetBeforeLines()V
.end method

.method public abstract unsetLine()V
.end method

.method public abstract unsetLineRule()V
.end method

.method public abstract xgetAfter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetAfterAutospacing()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetAfterLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetBefore()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetBeforeAutospacing()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetBeforeLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetLine()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;
.end method

.method public abstract xsetAfter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetAfterAutospacing(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetAfterLines(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetBefore(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetBeforeAutospacing(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetBeforeLines(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetLine(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;)V
.end method
