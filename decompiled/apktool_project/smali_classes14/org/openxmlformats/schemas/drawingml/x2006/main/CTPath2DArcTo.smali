.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;",
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

    const-string v2, "ctpath2darctodaa7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getHR()Ljava/lang/Object;
.end method

.method public abstract getStAng()Ljava/lang/Object;
.end method

.method public abstract getSwAng()Ljava/lang/Object;
.end method

.method public abstract getWR()Ljava/lang/Object;
.end method

.method public abstract setHR(Ljava/lang/Object;)V
.end method

.method public abstract setStAng(Ljava/lang/Object;)V
.end method

.method public abstract setSwAng(Ljava/lang/Object;)V
.end method

.method public abstract setWR(Ljava/lang/Object;)V
.end method

.method public abstract xgetHR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xgetStAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;
.end method

.method public abstract xgetSwAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;
.end method

.method public abstract xgetWR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xsetHR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method

.method public abstract xsetStAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;)V
.end method

.method public abstract xsetSwAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;)V
.end method

.method public abstract xsetWR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method
