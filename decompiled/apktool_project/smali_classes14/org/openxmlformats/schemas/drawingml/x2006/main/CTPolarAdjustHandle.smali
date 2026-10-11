.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;",
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

    const-string v2, "ctpolaradjusthandled0a6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
.end method

.method public abstract getGdRefAng()Ljava/lang/String;
.end method

.method public abstract getGdRefR()Ljava/lang/String;
.end method

.method public abstract getMaxAng()Ljava/lang/Object;
.end method

.method public abstract getMaxR()Ljava/lang/Object;
.end method

.method public abstract getMinAng()Ljava/lang/Object;
.end method

.method public abstract getMinR()Ljava/lang/Object;
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
.end method

.method public abstract isSetGdRefAng()Z
.end method

.method public abstract isSetGdRefR()Z
.end method

.method public abstract isSetMaxAng()Z
.end method

.method public abstract isSetMaxR()Z
.end method

.method public abstract isSetMinAng()Z
.end method

.method public abstract isSetMinR()Z
.end method

.method public abstract setGdRefAng(Ljava/lang/String;)V
.end method

.method public abstract setGdRefR(Ljava/lang/String;)V
.end method

.method public abstract setMaxAng(Ljava/lang/Object;)V
.end method

.method public abstract setMaxR(Ljava/lang/Object;)V
.end method

.method public abstract setMinAng(Ljava/lang/Object;)V
.end method

.method public abstract setMinR(Ljava/lang/Object;)V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V
.end method

.method public abstract unsetGdRefAng()V
.end method

.method public abstract unsetGdRefR()V
.end method

.method public abstract unsetMaxAng()V
.end method

.method public abstract unsetMaxR()V
.end method

.method public abstract unsetMinAng()V
.end method

.method public abstract unsetMinR()V
.end method

.method public abstract xgetGdRefAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;
.end method

.method public abstract xgetGdRefR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;
.end method

.method public abstract xgetMaxAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;
.end method

.method public abstract xgetMaxR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xgetMinAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;
.end method

.method public abstract xgetMinR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xsetGdRefAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;)V
.end method

.method public abstract xsetGdRefR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;)V
.end method

.method public abstract xsetMaxAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;)V
.end method

.method public abstract xsetMaxR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method

.method public abstract xsetMinAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;)V
.end method

.method public abstract xsetMinR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method
