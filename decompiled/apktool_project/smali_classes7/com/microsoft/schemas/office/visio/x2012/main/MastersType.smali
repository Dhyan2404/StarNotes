.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;",
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

    const-string v2, "masterstypeaebatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/MastersType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewMaster()Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
.end method

.method public abstract addNewMasterShortcut()Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;
.end method

.method public abstract getMasterArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
.end method

.method public abstract getMasterArray()[Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
.end method

.method public abstract getMasterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMasterShortcutArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;
.end method

.method public abstract getMasterShortcutArray()[Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;
.end method

.method public abstract getMasterShortcutList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewMaster(I)Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
.end method

.method public abstract insertNewMasterShortcut(I)Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;
.end method

.method public abstract removeMaster(I)V
.end method

.method public abstract removeMasterShortcut(I)V
.end method

.method public abstract setMasterArray(ILcom/microsoft/schemas/office/visio/x2012/main/MasterType;)V
.end method

.method public abstract setMasterArray([Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;)V
.end method

.method public abstract setMasterShortcutArray(ILcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;)V
.end method

.method public abstract setMasterShortcutArray([Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;)V
.end method

.method public abstract sizeOfMasterArray()I
.end method

.method public abstract sizeOfMasterShortcutArray()I
.end method
