.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;",
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

    const-string v2, "ctview3daf66type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDepthPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewHPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;
.end method

.method public abstract addNewPerspective()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;
.end method

.method public abstract addNewRAngAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewRotX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;
.end method

.method public abstract addNewRotY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;
.end method

.method public abstract getDepthPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getHPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;
.end method

.method public abstract getPerspective()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;
.end method

.method public abstract getRAngAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getRotX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;
.end method

.method public abstract getRotY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;
.end method

.method public abstract isSetDepthPercent()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHPercent()Z
.end method

.method public abstract isSetPerspective()Z
.end method

.method public abstract isSetRAngAx()Z
.end method

.method public abstract isSetRotX()Z
.end method

.method public abstract isSetRotY()Z
.end method

.method public abstract setDepthPercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setHPercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;)V
.end method

.method public abstract setPerspective(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;)V
.end method

.method public abstract setRAngAx(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setRotX(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;)V
.end method

.method public abstract setRotY(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;)V
.end method

.method public abstract unsetDepthPercent()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHPercent()V
.end method

.method public abstract unsetPerspective()V
.end method

.method public abstract unsetRAngAx()V
.end method

.method public abstract unsetRotX()V
.end method

.method public abstract unsetRotY()V
.end method
