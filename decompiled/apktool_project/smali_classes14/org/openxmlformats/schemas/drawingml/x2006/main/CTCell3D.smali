.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;",
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

    const-string v2, "ctcell3d10eetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBevel()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewLightRig()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;
.end method

.method public abstract getBevel()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getLightRig()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;
.end method

.method public abstract getPrstMaterial()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetLightRig()Z
.end method

.method public abstract isSetPrstMaterial()Z
.end method

.method public abstract setBevel(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setLightRig(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;)V
.end method

.method public abstract setPrstMaterial(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetLightRig()V
.end method

.method public abstract unsetPrstMaterial()V
.end method

.method public abstract xgetPrstMaterial()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;
.end method

.method public abstract xsetPrstMaterial(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;)V
.end method
