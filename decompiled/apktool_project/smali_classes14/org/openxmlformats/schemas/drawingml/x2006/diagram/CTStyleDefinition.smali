.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleDefinition;",
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

    const-string v2, "ctstyledefinitiond9f7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCatLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDCategories;
.end method

.method public abstract addNewDesc()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDDescription;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract addNewStyleLbl()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleLabel;
.end method

.method public abstract addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDName;
.end method

.method public abstract getCatLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDCategories;
.end method

.method public abstract getDescArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDDescription;
.end method

.method public abstract getDescArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDDescription;
.end method

.method public abstract getDescList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getMinVer()Ljava/lang/String;
.end method

.method public abstract getScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract getStyleLblArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleLabel;
.end method

.method public abstract getStyleLblArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleLabel;
.end method

.method public abstract getStyleLblList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleLabel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitleArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDName;
.end method

.method public abstract getTitleArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDName;
.end method

.method public abstract getTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method

.method public abstract insertNewDesc(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDDescription;
.end method

.method public abstract insertNewStyleLbl(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleLabel;
.end method

.method public abstract insertNewTitle(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDName;
.end method

.method public abstract isSetCatLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMinVer()Z
.end method

.method public abstract isSetScene3D()Z
.end method

.method public abstract isSetUniqueId()Z
.end method

.method public abstract removeDesc(I)V
.end method

.method public abstract removeStyleLbl(I)V
.end method

.method public abstract removeTitle(I)V
.end method

.method public abstract setCatLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDCategories;)V
.end method

.method public abstract setDescArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDDescription;)V
.end method

.method public abstract setDescArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDDescription;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setMinVer(Ljava/lang/String;)V
.end method

.method public abstract setScene3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;)V
.end method

.method public abstract setStyleLblArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleLabel;)V
.end method

.method public abstract setStyleLblArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTStyleLabel;)V
.end method

.method public abstract setTitleArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDName;)V
.end method

.method public abstract setTitleArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSDName;)V
.end method

.method public abstract setUniqueId(Ljava/lang/String;)V
.end method

.method public abstract sizeOfDescArray()I
.end method

.method public abstract sizeOfStyleLblArray()I
.end method

.method public abstract sizeOfTitleArray()I
.end method

.method public abstract unsetCatLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMinVer()V
.end method

.method public abstract unsetScene3D()V
.end method

.method public abstract unsetUniqueId()V
.end method

.method public abstract xgetMinVer()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUniqueId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetMinVer(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUniqueId(Lorg/apache/xmlbeans/XmlString;)V
.end method
