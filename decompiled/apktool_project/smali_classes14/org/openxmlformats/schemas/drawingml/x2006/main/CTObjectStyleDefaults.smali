.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTObjectStyleDefaults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTObjectStyleDefaults;",
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

    const-string v2, "ctobjectstyledefaults61d5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTObjectStyleDefaults;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTObjectStyleDefaults;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewLnDef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;
.end method

.method public abstract addNewSpDef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;
.end method

.method public abstract addNewTxDef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getLnDef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;
.end method

.method public abstract getSpDef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;
.end method

.method public abstract getTxDef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetLnDef()Z
.end method

.method public abstract isSetSpDef()Z
.end method

.method public abstract isSetTxDef()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setLnDef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;)V
.end method

.method public abstract setSpDef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;)V
.end method

.method public abstract setTxDef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDefaultShapeDefinition;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetLnDef()V
.end method

.method public abstract unsetSpDef()V
.end method

.method public abstract unsetTxDef()V
.end method
