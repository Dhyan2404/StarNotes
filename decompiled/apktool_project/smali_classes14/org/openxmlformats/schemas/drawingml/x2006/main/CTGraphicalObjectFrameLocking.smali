.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;",
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

    const-string v2, "ctgraphicalobjectframelocking42adtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getNoChangeAspect()Z
.end method

.method public abstract getNoDrilldown()Z
.end method

.method public abstract getNoGrp()Z
.end method

.method public abstract getNoMove()Z
.end method

.method public abstract getNoResize()Z
.end method

.method public abstract getNoSelect()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetNoChangeAspect()Z
.end method

.method public abstract isSetNoDrilldown()Z
.end method

.method public abstract isSetNoGrp()Z
.end method

.method public abstract isSetNoMove()Z
.end method

.method public abstract isSetNoResize()Z
.end method

.method public abstract isSetNoSelect()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setNoChangeAspect(Z)V
.end method

.method public abstract setNoDrilldown(Z)V
.end method

.method public abstract setNoGrp(Z)V
.end method

.method public abstract setNoMove(Z)V
.end method

.method public abstract setNoResize(Z)V
.end method

.method public abstract setNoSelect(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetNoChangeAspect()V
.end method

.method public abstract unsetNoDrilldown()V
.end method

.method public abstract unsetNoGrp()V
.end method

.method public abstract unsetNoMove()V
.end method

.method public abstract unsetNoResize()V
.end method

.method public abstract unsetNoSelect()V
.end method

.method public abstract xgetNoChangeAspect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoDrilldown()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoGrp()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoMove()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoResize()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoSelect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetNoChangeAspect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoDrilldown(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoGrp(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoMove(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoResize(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoSelect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
