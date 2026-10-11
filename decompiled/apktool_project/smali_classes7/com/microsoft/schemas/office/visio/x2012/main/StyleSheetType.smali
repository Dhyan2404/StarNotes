.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;",
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

    const-string v2, "stylesheettypeebcbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getID()J
.end method

.method public abstract getIsCustomName()Z
.end method

.method public abstract getIsCustomNameU()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameU()Ljava/lang/String;
.end method

.method public abstract isSetIsCustomName()Z
.end method

.method public abstract isSetIsCustomNameU()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNameU()Z
.end method

.method public abstract setID(J)V
.end method

.method public abstract setIsCustomName(Z)V
.end method

.method public abstract setIsCustomNameU(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNameU(Ljava/lang/String;)V
.end method

.method public abstract unsetIsCustomName()V
.end method

.method public abstract unsetIsCustomNameU()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNameU()V
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIsCustomName()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIsCustomNameU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNameU()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIsCustomName(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIsCustomNameU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNameU(Lorg/apache/xmlbeans/XmlString;)V
.end method
