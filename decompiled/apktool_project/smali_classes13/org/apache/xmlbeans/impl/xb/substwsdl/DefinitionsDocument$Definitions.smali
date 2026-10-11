.class public interface abstract Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Definitions"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;

    const-string v2, "definitions05ddelemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBinding()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewImport()Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract addNewMessage()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewPortType()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewService()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewTypes()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getBindingArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getBindingArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getBindingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImportArray(I)Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract getImportArray()[Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract getImportList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getMessageArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getMessageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPortTypeArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getPortTypeArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getPortTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getServiceArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getServiceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypesArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getTypesArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBinding(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewImport(I)Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract insertNewMessage(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewPortType(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewService(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewTypes(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract removeBinding(I)V
.end method

.method public abstract removeImport(I)V
.end method

.method public abstract removeMessage(I)V
.end method

.method public abstract removePortType(I)V
.end method

.method public abstract removeService(I)V
.end method

.method public abstract removeTypes(I)V
.end method

.method public abstract setBindingArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setBindingArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setImportArray(ILorg/apache/xmlbeans/impl/xb/substwsdl/TImport;)V
.end method

.method public abstract setImportArray([Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;)V
.end method

.method public abstract setMessageArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setMessageArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setPortTypeArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setPortTypeArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setServiceArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setServiceArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setTypesArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setTypesArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract sizeOfBindingArray()I
.end method

.method public abstract sizeOfImportArray()I
.end method

.method public abstract sizeOfMessageArray()I
.end method

.method public abstract sizeOfPortTypeArray()I
.end method

.method public abstract sizeOfServiceArray()I
.end method

.method public abstract sizeOfTypesArray()I
.end method
