.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControlPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControlPr;",
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

    const-string v2, "ctcontrolpr8f1etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControlPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControlPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnchor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;
.end method

.method public abstract getAltText()Ljava/lang/String;
.end method

.method public abstract getAnchor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;
.end method

.method public abstract getAutoFill()Z
.end method

.method public abstract getAutoLine()Z
.end method

.method public abstract getAutoPict()Z
.end method

.method public abstract getCf()Ljava/lang/String;
.end method

.method public abstract getDefaultSize()Z
.end method

.method public abstract getDisabled()Z
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLinkedCell()Ljava/lang/String;
.end method

.method public abstract getListFillRange()Ljava/lang/String;
.end method

.method public abstract getLocked()Z
.end method

.method public abstract getMacro()Ljava/lang/String;
.end method

.method public abstract getPrint()Z
.end method

.method public abstract getRecalcAlways()Z
.end method

.method public abstract getUiObject()Z
.end method

.method public abstract isSetAltText()Z
.end method

.method public abstract isSetAutoFill()Z
.end method

.method public abstract isSetAutoLine()Z
.end method

.method public abstract isSetAutoPict()Z
.end method

.method public abstract isSetCf()Z
.end method

.method public abstract isSetDefaultSize()Z
.end method

.method public abstract isSetDisabled()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLinkedCell()Z
.end method

.method public abstract isSetListFillRange()Z
.end method

.method public abstract isSetLocked()Z
.end method

.method public abstract isSetMacro()Z
.end method

.method public abstract isSetPrint()Z
.end method

.method public abstract isSetRecalcAlways()Z
.end method

.method public abstract isSetUiObject()Z
.end method

.method public abstract setAltText(Ljava/lang/String;)V
.end method

.method public abstract setAnchor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;)V
.end method

.method public abstract setAutoFill(Z)V
.end method

.method public abstract setAutoLine(Z)V
.end method

.method public abstract setAutoPict(Z)V
.end method

.method public abstract setCf(Ljava/lang/String;)V
.end method

.method public abstract setDefaultSize(Z)V
.end method

.method public abstract setDisabled(Z)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setLinkedCell(Ljava/lang/String;)V
.end method

.method public abstract setListFillRange(Ljava/lang/String;)V
.end method

.method public abstract setLocked(Z)V
.end method

.method public abstract setMacro(Ljava/lang/String;)V
.end method

.method public abstract setPrint(Z)V
.end method

.method public abstract setRecalcAlways(Z)V
.end method

.method public abstract setUiObject(Z)V
.end method

.method public abstract unsetAltText()V
.end method

.method public abstract unsetAutoFill()V
.end method

.method public abstract unsetAutoLine()V
.end method

.method public abstract unsetAutoPict()V
.end method

.method public abstract unsetCf()V
.end method

.method public abstract unsetDefaultSize()V
.end method

.method public abstract unsetDisabled()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLinkedCell()V
.end method

.method public abstract unsetListFillRange()V
.end method

.method public abstract unsetLocked()V
.end method

.method public abstract unsetMacro()V
.end method

.method public abstract unsetPrint()V
.end method

.method public abstract unsetRecalcAlways()V
.end method

.method public abstract unsetUiObject()V
.end method

.method public abstract xgetAltText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetAutoFill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoLine()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoPict()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCf()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDefaultSize()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDisabled()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetLinkedCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetListFillRange()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetLocked()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMacro()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetPrint()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRecalcAlways()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUiObject()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAltText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetAutoFill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoLine(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoPict(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCf(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDefaultSize(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDisabled(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetLinkedCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetListFillRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetLocked(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMacro(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetPrint(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRecalcAlways(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUiObject(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
