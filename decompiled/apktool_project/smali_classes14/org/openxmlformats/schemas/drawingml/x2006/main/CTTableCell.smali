.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;",
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

    const-string v2, "cttablecell3ac1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
.end method

.method public abstract addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGridSpan()I
.end method

.method public abstract getHMerge()Z
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRowSpan()I
.end method

.method public abstract getTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
.end method

.method public abstract getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getVMerge()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGridSpan()Z
.end method

.method public abstract isSetHMerge()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetRowSpan()Z
.end method

.method public abstract isSetTcPr()Z
.end method

.method public abstract isSetTxBody()Z
.end method

.method public abstract isSetVMerge()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGridSpan(I)V
.end method

.method public abstract setHMerge(Z)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setRowSpan(I)V
.end method

.method public abstract setTcPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;)V
.end method

.method public abstract setTxBody(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract setVMerge(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGridSpan()V
.end method

.method public abstract unsetHMerge()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetRowSpan()V
.end method

.method public abstract unsetTcPr()V
.end method

.method public abstract unsetTxBody()V
.end method

.method public abstract unsetVMerge()V
.end method

.method public abstract xgetGridSpan()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetHMerge()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRowSpan()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetVMerge()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetGridSpan(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetHMerge(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRowSpan(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetVMerge(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
