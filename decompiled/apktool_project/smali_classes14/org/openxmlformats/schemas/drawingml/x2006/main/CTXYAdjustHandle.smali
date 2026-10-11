.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;",
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

    const-string v2, "ctxyadjusthandlefaf3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
.end method

.method public abstract getGdRefX()Ljava/lang/String;
.end method

.method public abstract getGdRefY()Ljava/lang/String;
.end method

.method public abstract getMaxX()Ljava/lang/Object;
.end method

.method public abstract getMaxY()Ljava/lang/Object;
.end method

.method public abstract getMinX()Ljava/lang/Object;
.end method

.method public abstract getMinY()Ljava/lang/Object;
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
.end method

.method public abstract isSetGdRefX()Z
.end method

.method public abstract isSetGdRefY()Z
.end method

.method public abstract isSetMaxX()Z
.end method

.method public abstract isSetMaxY()Z
.end method

.method public abstract isSetMinX()Z
.end method

.method public abstract isSetMinY()Z
.end method

.method public abstract setGdRefX(Ljava/lang/String;)V
.end method

.method public abstract setGdRefY(Ljava/lang/String;)V
.end method

.method public abstract setMaxX(Ljava/lang/Object;)V
.end method

.method public abstract setMaxY(Ljava/lang/Object;)V
.end method

.method public abstract setMinX(Ljava/lang/Object;)V
.end method

.method public abstract setMinY(Ljava/lang/Object;)V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V
.end method

.method public abstract unsetGdRefX()V
.end method

.method public abstract unsetGdRefY()V
.end method

.method public abstract unsetMaxX()V
.end method

.method public abstract unsetMaxY()V
.end method

.method public abstract unsetMinX()V
.end method

.method public abstract unsetMinY()V
.end method

.method public abstract xgetGdRefX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;
.end method

.method public abstract xgetGdRefY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;
.end method

.method public abstract xgetMaxX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xgetMaxY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xgetMinX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xgetMinY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xsetGdRefX(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;)V
.end method

.method public abstract xsetGdRefY(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;)V
.end method

.method public abstract xsetMaxX(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method

.method public abstract xsetMaxY(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method

.method public abstract xsetMinX(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method

.method public abstract xsetMinY(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method
