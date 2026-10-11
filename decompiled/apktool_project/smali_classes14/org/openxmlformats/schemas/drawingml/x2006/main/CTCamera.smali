.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCamera;",
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

    const-string v2, "ctcamerac340type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCamera;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCamera;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRot()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSphereCoords;
.end method

.method public abstract getFov()I
.end method

.method public abstract getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;
.end method

.method public abstract getRot()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSphereCoords;
.end method

.method public abstract getZoom()Ljava/lang/Object;
.end method

.method public abstract isSetFov()Z
.end method

.method public abstract isSetRot()Z
.end method

.method public abstract isSetZoom()Z
.end method

.method public abstract setFov(I)V
.end method

.method public abstract setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;)V
.end method

.method public abstract setRot(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSphereCoords;)V
.end method

.method public abstract setZoom(Ljava/lang/Object;)V
.end method

.method public abstract unsetFov()V
.end method

.method public abstract unsetRot()V
.end method

.method public abstract unsetZoom()V
.end method

.method public abstract xgetFov()Lorg/openxmlformats/schemas/drawingml/x2006/main/STFOVAngle;
.end method

.method public abstract xgetPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType;
.end method

.method public abstract xgetZoom()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;
.end method

.method public abstract xsetFov(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFOVAngle;)V
.end method

.method public abstract xsetPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType;)V
.end method

.method public abstract xsetZoom(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;)V
.end method
