.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;",
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

    const-string v2, "facenametype3e71type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCharSets()Ljava/lang/String;
.end method

.method public abstract getFlags()J
.end method

.method public abstract getNameU()Ljava/lang/String;
.end method

.method public abstract getPanos()Ljava/lang/String;
.end method

.method public abstract getPanose()Ljava/lang/String;
.end method

.method public abstract getUnicodeRanges()Ljava/lang/String;
.end method

.method public abstract isSetCharSets()Z
.end method

.method public abstract isSetFlags()Z
.end method

.method public abstract isSetPanos()Z
.end method

.method public abstract isSetPanose()Z
.end method

.method public abstract isSetUnicodeRanges()Z
.end method

.method public abstract setCharSets(Ljava/lang/String;)V
.end method

.method public abstract setFlags(J)V
.end method

.method public abstract setNameU(Ljava/lang/String;)V
.end method

.method public abstract setPanos(Ljava/lang/String;)V
.end method

.method public abstract setPanose(Ljava/lang/String;)V
.end method

.method public abstract setUnicodeRanges(Ljava/lang/String;)V
.end method

.method public abstract unsetCharSets()V
.end method

.method public abstract unsetFlags()V
.end method

.method public abstract unsetPanos()V
.end method

.method public abstract unsetPanose()V
.end method

.method public abstract unsetUnicodeRanges()V
.end method

.method public abstract xgetCharSets()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFlags()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetNameU()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPanos()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPanose()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUnicodeRanges()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetCharSets(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFlags(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetNameU(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPanos(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPanose(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUnicodeRanges(Lorg/apache/xmlbeans/XmlString;)V
.end method
