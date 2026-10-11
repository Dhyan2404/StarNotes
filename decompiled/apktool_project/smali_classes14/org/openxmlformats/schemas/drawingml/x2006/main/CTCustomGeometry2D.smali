.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;",
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

    const-string v2, "ctcustomgeometry2dca70type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;
.end method

.method public abstract addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;
.end method

.method public abstract addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;
.end method

.method public abstract addNewGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;
.end method

.method public abstract addNewPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;
.end method

.method public abstract addNewRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;
.end method

.method public abstract getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;
.end method

.method public abstract getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;
.end method

.method public abstract getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;
.end method

.method public abstract getGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;
.end method

.method public abstract getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;
.end method

.method public abstract getRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;
.end method

.method public abstract isSetAhLst()Z
.end method

.method public abstract isSetAvLst()Z
.end method

.method public abstract isSetCxnLst()Z
.end method

.method public abstract isSetGdLst()Z
.end method

.method public abstract isSetRect()Z
.end method

.method public abstract setAhLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;)V
.end method

.method public abstract setAvLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;)V
.end method

.method public abstract setCxnLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;)V
.end method

.method public abstract setGdLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;)V
.end method

.method public abstract setPathLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;)V
.end method

.method public abstract setRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;)V
.end method

.method public abstract unsetAhLst()V
.end method

.method public abstract unsetAvLst()V
.end method

.method public abstract unsetCxnLst()V
.end method

.method public abstract unsetGdLst()V
.end method

.method public abstract unsetRect()V
.end method
