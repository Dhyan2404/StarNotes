.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;",
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

    const-string v2, "datarecordsettype3544type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoLinkComparison()Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;
.end method

.method public abstract addNewDataColumns()Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnsType;
.end method

.method public abstract addNewPrimaryKey()Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;
.end method

.method public abstract addNewRefreshConflict()Lcom/microsoft/schemas/office/visio/x2012/main/RefreshConflictType;
.end method

.method public abstract addNewRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract addNewRowMap()Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;
.end method

.method public abstract getAutoLinkComparisonArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;
.end method

.method public abstract getAutoLinkComparisonArray()[Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;
.end method

.method public abstract getAutoLinkComparisonList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChecksum()J
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method

.method public abstract getConnectionID()J
.end method

.method public abstract getDataColumns()Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnsType;
.end method

.method public abstract getID()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNextRowID()J
.end method

.method public abstract getOptions()J
.end method

.method public abstract getPrimaryKeyArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;
.end method

.method public abstract getPrimaryKeyArray()[Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;
.end method

.method public abstract getPrimaryKeyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefreshConflictArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/RefreshConflictType;
.end method

.method public abstract getRefreshConflictArray()[Lcom/microsoft/schemas/office/visio/x2012/main/RefreshConflictType;
.end method

.method public abstract getRefreshConflictList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RefreshConflictType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefreshInterval()J
.end method

.method public abstract getRefreshNoReconciliationUI()Z
.end method

.method public abstract getRefreshOverwriteAll()Z
.end method

.method public abstract getRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract getReplaceLinks()J
.end method

.method public abstract getRowMapArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;
.end method

.method public abstract getRowMapArray()[Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;
.end method

.method public abstract getRowMapList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRowOrder()Z
.end method

.method public abstract getTimeRefreshed()Ljava/util/Calendar;
.end method

.method public abstract insertNewAutoLinkComparison(I)Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;
.end method

.method public abstract insertNewPrimaryKey(I)Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;
.end method

.method public abstract insertNewRefreshConflict(I)Lcom/microsoft/schemas/office/visio/x2012/main/RefreshConflictType;
.end method

.method public abstract insertNewRowMap(I)Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;
.end method

.method public abstract isSetChecksum()Z
.end method

.method public abstract isSetCommand()Z
.end method

.method public abstract isSetConnectionID()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNextRowID()Z
.end method

.method public abstract isSetOptions()Z
.end method

.method public abstract isSetRefreshInterval()Z
.end method

.method public abstract isSetRefreshNoReconciliationUI()Z
.end method

.method public abstract isSetRefreshOverwriteAll()Z
.end method

.method public abstract isSetReplaceLinks()Z
.end method

.method public abstract isSetRowOrder()Z
.end method

.method public abstract isSetTimeRefreshed()Z
.end method

.method public abstract removeAutoLinkComparison(I)V
.end method

.method public abstract removePrimaryKey(I)V
.end method

.method public abstract removeRefreshConflict(I)V
.end method

.method public abstract removeRowMap(I)V
.end method

.method public abstract setAutoLinkComparisonArray(ILcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;)V
.end method

.method public abstract setAutoLinkComparisonArray([Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;)V
.end method

.method public abstract setChecksum(J)V
.end method

.method public abstract setCommand(Ljava/lang/String;)V
.end method

.method public abstract setConnectionID(J)V
.end method

.method public abstract setDataColumns(Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnsType;)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNextRowID(J)V
.end method

.method public abstract setOptions(J)V
.end method

.method public abstract setPrimaryKeyArray(ILcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;)V
.end method

.method public abstract setPrimaryKeyArray([Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;)V
.end method

.method public abstract setRefreshConflictArray(ILcom/microsoft/schemas/office/visio/x2012/main/RefreshConflictType;)V
.end method

.method public abstract setRefreshConflictArray([Lcom/microsoft/schemas/office/visio/x2012/main/RefreshConflictType;)V
.end method

.method public abstract setRefreshInterval(J)V
.end method

.method public abstract setRefreshNoReconciliationUI(Z)V
.end method

.method public abstract setRefreshOverwriteAll(Z)V
.end method

.method public abstract setRel(Lcom/microsoft/schemas/office/visio/x2012/main/RelType;)V
.end method

.method public abstract setReplaceLinks(J)V
.end method

.method public abstract setRowMapArray(ILcom/microsoft/schemas/office/visio/x2012/main/RowMapType;)V
.end method

.method public abstract setRowMapArray([Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;)V
.end method

.method public abstract setRowOrder(Z)V
.end method

.method public abstract setTimeRefreshed(Ljava/util/Calendar;)V
.end method

.method public abstract sizeOfAutoLinkComparisonArray()I
.end method

.method public abstract sizeOfPrimaryKeyArray()I
.end method

.method public abstract sizeOfRefreshConflictArray()I
.end method

.method public abstract sizeOfRowMapArray()I
.end method

.method public abstract unsetChecksum()V
.end method

.method public abstract unsetCommand()V
.end method

.method public abstract unsetConnectionID()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNextRowID()V
.end method

.method public abstract unsetOptions()V
.end method

.method public abstract unsetRefreshInterval()V
.end method

.method public abstract unsetRefreshNoReconciliationUI()V
.end method

.method public abstract unsetRefreshOverwriteAll()V
.end method

.method public abstract unsetReplaceLinks()V
.end method

.method public abstract unsetRowOrder()V
.end method

.method public abstract unsetTimeRefreshed()V
.end method

.method public abstract xgetChecksum()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCommand()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetConnectionID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNextRowID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetOptions()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRefreshInterval()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRefreshNoReconciliationUI()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRefreshOverwriteAll()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetReplaceLinks()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRowOrder()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTimeRefreshed()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xsetChecksum(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCommand(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetConnectionID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNextRowID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetOptions(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRefreshInterval(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRefreshNoReconciliationUI(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRefreshOverwriteAll(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetReplaceLinks(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRowOrder(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTimeRefreshed(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method
