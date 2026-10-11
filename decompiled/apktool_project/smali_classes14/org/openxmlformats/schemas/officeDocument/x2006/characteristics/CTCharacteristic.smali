.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;",
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

    const-string v2, "ctcharacteristic2b69type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRelation()Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;
.end method

.method public abstract getVal()Ljava/lang/String;
.end method

.method public abstract getVocabulary()Ljava/lang/String;
.end method

.method public abstract isSetVocabulary()Z
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setRelation(Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;)V
.end method

.method public abstract setVal(Ljava/lang/String;)V
.end method

.method public abstract setVocabulary(Ljava/lang/String;)V
.end method

.method public abstract unsetVocabulary()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRelation()Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;
.end method

.method public abstract xgetVal()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetVocabulary()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRelation(Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;)V
.end method

.method public abstract xsetVal(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetVocabulary(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
