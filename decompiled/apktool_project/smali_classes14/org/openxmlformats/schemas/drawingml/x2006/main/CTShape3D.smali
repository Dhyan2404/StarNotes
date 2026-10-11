.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;",
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

    const-string v2, "ctshape3d6783type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBevelB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract addNewBevelT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract addNewContourClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewExtrusionClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getBevelB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract getBevelT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract getContourClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getContourW()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtrusionClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getExtrusionH()J
.end method

.method public abstract getPrstMaterial()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;
.end method

.method public abstract getZ()Ljava/lang/Object;
.end method

.method public abstract isSetBevelB()Z
.end method

.method public abstract isSetBevelT()Z
.end method

.method public abstract isSetContourClr()Z
.end method

.method public abstract isSetContourW()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetExtrusionClr()Z
.end method

.method public abstract isSetExtrusionH()Z
.end method

.method public abstract isSetPrstMaterial()Z
.end method

.method public abstract isSetZ()Z
.end method

.method public abstract setBevelB(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;)V
.end method

.method public abstract setBevelT(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;)V
.end method

.method public abstract setContourClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setContourW(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setExtrusionClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setExtrusionH(J)V
.end method

.method public abstract setPrstMaterial(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;)V
.end method

.method public abstract setZ(Ljava/lang/Object;)V
.end method

.method public abstract unsetBevelB()V
.end method

.method public abstract unsetBevelT()V
.end method

.method public abstract unsetContourClr()V
.end method

.method public abstract unsetContourW()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetExtrusionClr()V
.end method

.method public abstract unsetExtrusionH()V
.end method

.method public abstract unsetPrstMaterial()V
.end method

.method public abstract unsetZ()V
.end method

.method public abstract xgetContourW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetExtrusionH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetPrstMaterial()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;
.end method

.method public abstract xgetZ()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;
.end method

.method public abstract xsetContourW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetExtrusionH(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetPrstMaterial(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;)V
.end method

.method public abstract xsetZ(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)V
.end method
