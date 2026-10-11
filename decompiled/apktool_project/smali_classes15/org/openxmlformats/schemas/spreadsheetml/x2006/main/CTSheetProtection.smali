.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;",
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

    const-string v2, "ctsheetprotection22f7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getAutoFilter()Z
.end method

.method public abstract getDeleteColumns()Z
.end method

.method public abstract getDeleteRows()Z
.end method

.method public abstract getFormatCells()Z
.end method

.method public abstract getFormatColumns()Z
.end method

.method public abstract getFormatRows()Z
.end method

.method public abstract getHashValue()[B
.end method

.method public abstract getInsertColumns()Z
.end method

.method public abstract getInsertHyperlinks()Z
.end method

.method public abstract getInsertRows()Z
.end method

.method public abstract getObjects()Z
.end method

.method public abstract getPassword()[B
.end method

.method public abstract getPivotTables()Z
.end method

.method public abstract getSaltValue()[B
.end method

.method public abstract getScenarios()Z
.end method

.method public abstract getSelectLockedCells()Z
.end method

.method public abstract getSelectUnlockedCells()Z
.end method

.method public abstract getSheet()Z
.end method

.method public abstract getSort()Z
.end method

.method public abstract getSpinCount()J
.end method

.method public abstract isSetAlgorithmName()Z
.end method

.method public abstract isSetAutoFilter()Z
.end method

.method public abstract isSetDeleteColumns()Z
.end method

.method public abstract isSetDeleteRows()Z
.end method

.method public abstract isSetFormatCells()Z
.end method

.method public abstract isSetFormatColumns()Z
.end method

.method public abstract isSetFormatRows()Z
.end method

.method public abstract isSetHashValue()Z
.end method

.method public abstract isSetInsertColumns()Z
.end method

.method public abstract isSetInsertHyperlinks()Z
.end method

.method public abstract isSetInsertRows()Z
.end method

.method public abstract isSetObjects()Z
.end method

.method public abstract isSetPassword()Z
.end method

.method public abstract isSetPivotTables()Z
.end method

.method public abstract isSetSaltValue()Z
.end method

.method public abstract isSetScenarios()Z
.end method

.method public abstract isSetSelectLockedCells()Z
.end method

.method public abstract isSetSelectUnlockedCells()Z
.end method

.method public abstract isSetSheet()Z
.end method

.method public abstract isSetSort()Z
.end method

.method public abstract isSetSpinCount()Z
.end method

.method public abstract setAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setAutoFilter(Z)V
.end method

.method public abstract setDeleteColumns(Z)V
.end method

.method public abstract setDeleteRows(Z)V
.end method

.method public abstract setFormatCells(Z)V
.end method

.method public abstract setFormatColumns(Z)V
.end method

.method public abstract setFormatRows(Z)V
.end method

.method public abstract setHashValue([B)V
.end method

.method public abstract setInsertColumns(Z)V
.end method

.method public abstract setInsertHyperlinks(Z)V
.end method

.method public abstract setInsertRows(Z)V
.end method

.method public abstract setObjects(Z)V
.end method

.method public abstract setPassword([B)V
.end method

.method public abstract setPivotTables(Z)V
.end method

.method public abstract setSaltValue([B)V
.end method

.method public abstract setScenarios(Z)V
.end method

.method public abstract setSelectLockedCells(Z)V
.end method

.method public abstract setSelectUnlockedCells(Z)V
.end method

.method public abstract setSheet(Z)V
.end method

.method public abstract setSort(Z)V
.end method

.method public abstract setSpinCount(J)V
.end method

.method public abstract unsetAlgorithmName()V
.end method

.method public abstract unsetAutoFilter()V
.end method

.method public abstract unsetDeleteColumns()V
.end method

.method public abstract unsetDeleteRows()V
.end method

.method public abstract unsetFormatCells()V
.end method

.method public abstract unsetFormatColumns()V
.end method

.method public abstract unsetFormatRows()V
.end method

.method public abstract unsetHashValue()V
.end method

.method public abstract unsetInsertColumns()V
.end method

.method public abstract unsetInsertHyperlinks()V
.end method

.method public abstract unsetInsertRows()V
.end method

.method public abstract unsetObjects()V
.end method

.method public abstract unsetPassword()V
.end method

.method public abstract unsetPivotTables()V
.end method

.method public abstract unsetSaltValue()V
.end method

.method public abstract unsetScenarios()V
.end method

.method public abstract unsetSelectLockedCells()V
.end method

.method public abstract unsetSelectUnlockedCells()V
.end method

.method public abstract unsetSheet()V
.end method

.method public abstract unsetSort()V
.end method

.method public abstract unsetSpinCount()V
.end method

.method public abstract xgetAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetAutoFilter()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDeleteColumns()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDeleteRows()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFormatCells()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFormatColumns()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFormatRows()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHashValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetInsertColumns()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetInsertHyperlinks()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetInsertRows()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetObjects()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetPivotTables()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSaltValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetScenarios()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSelectLockedCells()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSelectUnlockedCells()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSheet()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSort()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSpinCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetAutoFilter(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDeleteColumns(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDeleteRows(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFormatCells(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFormatColumns(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFormatRows(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHashValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetInsertColumns(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetInsertHyperlinks(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetInsertRows(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetObjects(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetPivotTables(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSaltValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetScenarios(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSelectLockedCells(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSelectUnlockedCells(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSheet(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSort(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSpinCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
