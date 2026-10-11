.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;",
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

    const-string v2, "ctlinenumber99ebtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCountBy()Ljava/math/BigInteger;
.end method

.method public abstract getDistance()Ljava/lang/Object;
.end method

.method public abstract getRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineNumberRestart$Enum;
.end method

.method public abstract getStart()Ljava/math/BigInteger;
.end method

.method public abstract isSetCountBy()Z
.end method

.method public abstract isSetDistance()Z
.end method

.method public abstract isSetRestart()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract setCountBy(Ljava/math/BigInteger;)V
.end method

.method public abstract setDistance(Ljava/lang/Object;)V
.end method

.method public abstract setRestart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineNumberRestart$Enum;)V
.end method

.method public abstract setStart(Ljava/math/BigInteger;)V
.end method

.method public abstract unsetCountBy()V
.end method

.method public abstract unsetDistance()V
.end method

.method public abstract unsetRestart()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract xgetCountBy()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetDistance()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineNumberRestart;
.end method

.method public abstract xgetStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetCountBy(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetDistance(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetRestart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineNumberRestart;)V
.end method

.method public abstract xsetStart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
