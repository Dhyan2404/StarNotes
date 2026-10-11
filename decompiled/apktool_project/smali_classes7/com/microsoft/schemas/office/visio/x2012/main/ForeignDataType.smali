.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/ForeignDataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/ForeignDataType;",
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

    const-string v2, "foreigndatatypefe8dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ForeignDataType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ForeignDataType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract getCompressionLevel()D
.end method

.method public abstract getCompressionType()Ljava/lang/String;
.end method

.method public abstract getExtentX()D
.end method

.method public abstract getExtentY()D
.end method

.method public abstract getForeignType()Ljava/lang/String;
.end method

.method public abstract getMappingMode()I
.end method

.method public abstract getObjectHeight()D
.end method

.method public abstract getObjectType()J
.end method

.method public abstract getObjectWidth()D
.end method

.method public abstract getRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract getShowAsIcon()Z
.end method

.method public abstract isSetCompressionLevel()Z
.end method

.method public abstract isSetCompressionType()Z
.end method

.method public abstract isSetExtentX()Z
.end method

.method public abstract isSetExtentY()Z
.end method

.method public abstract isSetMappingMode()Z
.end method

.method public abstract isSetObjectHeight()Z
.end method

.method public abstract isSetObjectType()Z
.end method

.method public abstract isSetObjectWidth()Z
.end method

.method public abstract isSetShowAsIcon()Z
.end method

.method public abstract setCompressionLevel(D)V
.end method

.method public abstract setCompressionType(Ljava/lang/String;)V
.end method

.method public abstract setExtentX(D)V
.end method

.method public abstract setExtentY(D)V
.end method

.method public abstract setForeignType(Ljava/lang/String;)V
.end method

.method public abstract setMappingMode(I)V
.end method

.method public abstract setObjectHeight(D)V
.end method

.method public abstract setObjectType(J)V
.end method

.method public abstract setObjectWidth(D)V
.end method

.method public abstract setRel(Lcom/microsoft/schemas/office/visio/x2012/main/RelType;)V
.end method

.method public abstract setShowAsIcon(Z)V
.end method

.method public abstract unsetCompressionLevel()V
.end method

.method public abstract unsetCompressionType()V
.end method

.method public abstract unsetExtentX()V
.end method

.method public abstract unsetExtentY()V
.end method

.method public abstract unsetMappingMode()V
.end method

.method public abstract unsetObjectHeight()V
.end method

.method public abstract unsetObjectType()V
.end method

.method public abstract unsetObjectWidth()V
.end method

.method public abstract unsetShowAsIcon()V
.end method

.method public abstract xgetCompressionLevel()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetCompressionType()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetExtentX()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetExtentY()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetForeignType()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetMappingMode()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetObjectHeight()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetObjectType()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetObjectWidth()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetShowAsIcon()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetCompressionLevel(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetCompressionType(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetExtentX(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetExtentY(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetForeignType(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetMappingMode(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetObjectHeight(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetObjectType(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetObjectWidth(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetShowAsIcon(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
