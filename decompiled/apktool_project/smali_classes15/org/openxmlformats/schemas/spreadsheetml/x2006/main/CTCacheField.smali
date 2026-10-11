.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;",
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

    const-string v2, "ctcachefieldae21type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFieldGroup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;
.end method

.method public abstract addNewMpMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract addNewSharedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;
.end method

.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getDatabaseField()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFieldGroup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;
.end method

.method public abstract getFormula()Ljava/lang/String;
.end method

.method public abstract getHierarchy()I
.end method

.method public abstract getLevel()J
.end method

.method public abstract getMappingCount()J
.end method

.method public abstract getMemberPropertyField()Z
.end method

.method public abstract getMpMapArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getMpMapArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getMpMapList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getPropertyName()Ljava/lang/String;
.end method

.method public abstract getServerField()Z
.end method

.method public abstract getSharedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;
.end method

.method public abstract getSqlType()I
.end method

.method public abstract getUniqueList()Z
.end method

.method public abstract insertNewMpMap(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract isSetCaption()Z
.end method

.method public abstract isSetDatabaseField()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFieldGroup()Z
.end method

.method public abstract isSetFormula()Z
.end method

.method public abstract isSetHierarchy()Z
.end method

.method public abstract isSetLevel()Z
.end method

.method public abstract isSetMappingCount()Z
.end method

.method public abstract isSetMemberPropertyField()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetPropertyName()Z
.end method

.method public abstract isSetServerField()Z
.end method

.method public abstract isSetSharedItems()Z
.end method

.method public abstract isSetSqlType()Z
.end method

.method public abstract isSetUniqueList()Z
.end method

.method public abstract removeMpMap(I)V
.end method

.method public abstract setCaption(Ljava/lang/String;)V
.end method

.method public abstract setDatabaseField(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFieldGroup(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;)V
.end method

.method public abstract setFormula(Ljava/lang/String;)V
.end method

.method public abstract setHierarchy(I)V
.end method

.method public abstract setLevel(J)V
.end method

.method public abstract setMappingCount(J)V
.end method

.method public abstract setMemberPropertyField(Z)V
.end method

.method public abstract setMpMapArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract setMpMapArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setPropertyName(Ljava/lang/String;)V
.end method

.method public abstract setServerField(Z)V
.end method

.method public abstract setSharedItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;)V
.end method

.method public abstract setSqlType(I)V
.end method

.method public abstract setUniqueList(Z)V
.end method

.method public abstract sizeOfMpMapArray()I
.end method

.method public abstract unsetCaption()V
.end method

.method public abstract unsetDatabaseField()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFieldGroup()V
.end method

.method public abstract unsetFormula()V
.end method

.method public abstract unsetHierarchy()V
.end method

.method public abstract unsetLevel()V
.end method

.method public abstract unsetMappingCount()V
.end method

.method public abstract unsetMemberPropertyField()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetPropertyName()V
.end method

.method public abstract unsetServerField()V
.end method

.method public abstract unsetSharedItems()V
.end method

.method public abstract unsetSqlType()V
.end method

.method public abstract unsetUniqueList()V
.end method

.method public abstract xgetCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDatabaseField()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFormula()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHierarchy()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetLevel()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMappingCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMemberPropertyField()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetPropertyName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetServerField()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSqlType()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetUniqueList()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDatabaseField(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFormula(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHierarchy(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetLevel(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMappingCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMemberPropertyField(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetPropertyName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetServerField(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSqlType(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetUniqueList(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
