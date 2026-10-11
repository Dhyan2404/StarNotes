.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;",
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

    const-string v2, "ctlightrigad35type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRot()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSphereCoords;
.end method

.method public abstract getDir()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;
.end method

.method public abstract getRig()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigType$Enum;
.end method

.method public abstract getRot()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSphereCoords;
.end method

.method public abstract isSetRot()Z
.end method

.method public abstract setDir(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;)V
.end method

.method public abstract setRig(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigType$Enum;)V
.end method

.method public abstract setRot(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSphereCoords;)V
.end method

.method public abstract unsetRot()V
.end method

.method public abstract xgetDir()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;
.end method

.method public abstract xgetRig()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigType;
.end method

.method public abstract xsetDir(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;)V
.end method

.method public abstract xsetRig(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigType;)V
.end method
