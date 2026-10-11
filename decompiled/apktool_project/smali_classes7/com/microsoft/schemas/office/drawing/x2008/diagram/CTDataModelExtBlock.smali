.class public interface abstract Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTDataModelExtBlock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTDataModelExtBlock;",
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

    const-string v2, "ctdatamodelextblock49cctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTDataModelExtBlock;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTDataModelExtBlock;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getMinVer()Ljava/lang/String;
.end method

.method public abstract getRelId()Ljava/lang/String;
.end method

.method public abstract isSetMinVer()Z
.end method

.method public abstract isSetRelId()Z
.end method

.method public abstract setMinVer(Ljava/lang/String;)V
.end method

.method public abstract setRelId(Ljava/lang/String;)V
.end method

.method public abstract unsetMinVer()V
.end method

.method public abstract unsetRelId()V
.end method

.method public abstract xgetMinVer()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetRelId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetMinVer(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetRelId(Lorg/apache/xmlbeans/XmlString;)V
.end method
