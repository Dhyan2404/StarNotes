.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDiagramDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDiagramDefinition;",
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

    const-string v2, "ctdiagramdefinition3655type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDiagramDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDiagramDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCatLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCategories;
.end method

.method public abstract addNewClrData()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;
.end method

.method public abstract addNewDesc()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDescription;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewLayoutNode()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;
.end method

.method public abstract addNewSampData()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;
.end method

.method public abstract addNewStyleData()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;
.end method

.method public abstract addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTName;
.end method

.method public abstract getCatLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCategories;
.end method

.method public abstract getClrData()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;
.end method

.method public abstract getDefStyle()Ljava/lang/String;
.end method

.method public abstract getDescArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDescription;
.end method

.method public abstract getDescArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDescription;
.end method

.method public abstract getDescList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getLayoutNode()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;
.end method

.method public abstract getMinVer()Ljava/lang/String;
.end method

.method public abstract getSampData()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;
.end method

.method public abstract getStyleData()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;
.end method

.method public abstract getTitleArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTName;
.end method

.method public abstract getTitleArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTName;
.end method

.method public abstract getTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method

.method public abstract insertNewDesc(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDescription;
.end method

.method public abstract insertNewTitle(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTName;
.end method

.method public abstract isSetCatLst()Z
.end method

.method public abstract isSetClrData()Z
.end method

.method public abstract isSetDefStyle()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMinVer()Z
.end method

.method public abstract isSetSampData()Z
.end method

.method public abstract isSetStyleData()Z
.end method

.method public abstract isSetUniqueId()Z
.end method

.method public abstract removeDesc(I)V
.end method

.method public abstract removeTitle(I)V
.end method

.method public abstract setCatLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCategories;)V
.end method

.method public abstract setClrData(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;)V
.end method

.method public abstract setDefStyle(Ljava/lang/String;)V
.end method

.method public abstract setDescArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDescription;)V
.end method

.method public abstract setDescArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDescription;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setLayoutNode(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;)V
.end method

.method public abstract setMinVer(Ljava/lang/String;)V
.end method

.method public abstract setSampData(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;)V
.end method

.method public abstract setStyleData(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;)V
.end method

.method public abstract setTitleArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTName;)V
.end method

.method public abstract setTitleArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTName;)V
.end method

.method public abstract setUniqueId(Ljava/lang/String;)V
.end method

.method public abstract sizeOfDescArray()I
.end method

.method public abstract sizeOfTitleArray()I
.end method

.method public abstract unsetCatLst()V
.end method

.method public abstract unsetClrData()V
.end method

.method public abstract unsetDefStyle()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMinVer()V
.end method

.method public abstract unsetSampData()V
.end method

.method public abstract unsetStyleData()V
.end method

.method public abstract unsetUniqueId()V
.end method

.method public abstract xgetDefStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMinVer()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUniqueId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetDefStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMinVer(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUniqueId(Lorg/apache/xmlbeans/XmlString;)V
.end method
