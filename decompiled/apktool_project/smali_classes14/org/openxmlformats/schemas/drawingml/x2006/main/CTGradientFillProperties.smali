.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;",
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

    const-string v2, "ctgradientfillproperties81c1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;
.end method

.method public abstract addNewLin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;
.end method

.method public abstract addNewPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;
.end method

.method public abstract addNewTileRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
.end method

.method public abstract getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;
.end method

.method public abstract getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;
.end method

.method public abstract getLin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;
.end method

.method public abstract getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;
.end method

.method public abstract getRotWithShape()Z
.end method

.method public abstract getTileRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
.end method

.method public abstract isSetFlip()Z
.end method

.method public abstract isSetGsLst()Z
.end method

.method public abstract isSetLin()Z
.end method

.method public abstract isSetPath()Z
.end method

.method public abstract isSetRotWithShape()Z
.end method

.method public abstract isSetTileRect()Z
.end method

.method public abstract setFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)V
.end method

.method public abstract setGsLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;)V
.end method

.method public abstract setLin(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;)V
.end method

.method public abstract setPath(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;)V
.end method

.method public abstract setRotWithShape(Z)V
.end method

.method public abstract setTileRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V
.end method

.method public abstract unsetFlip()V
.end method

.method public abstract unsetGsLst()V
.end method

.method public abstract unsetLin()V
.end method

.method public abstract unsetPath()V
.end method

.method public abstract unsetRotWithShape()V
.end method

.method public abstract unsetTileRect()V
.end method

.method public abstract xgetFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;
.end method

.method public abstract xgetRotWithShape()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;)V
.end method

.method public abstract xsetRotWithShape(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
