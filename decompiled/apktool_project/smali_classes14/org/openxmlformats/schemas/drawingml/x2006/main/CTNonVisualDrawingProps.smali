.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;",
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

    const-string v2, "ctnonvisualdrawingprops8fb0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract addNewHlinkHover()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getDescr()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getHlinkHover()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isSetDescr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetHlinkClick()Z
.end method

.method public abstract isSetHlinkHover()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract setDescr(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setHlinkClick(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setHlinkHover(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract unsetDescr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetHlinkClick()V
.end method

.method public abstract unsetHlinkHover()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract xgetDescr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTitle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetDescr(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTitle(Lorg/apache/xmlbeans/XmlString;)V
.end method
