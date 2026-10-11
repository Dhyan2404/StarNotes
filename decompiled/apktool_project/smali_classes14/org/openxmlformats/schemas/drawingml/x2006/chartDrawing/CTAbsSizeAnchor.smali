.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;",
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

    const-string v2, "ctabssizeanchor81c0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnector;
.end method

.method public abstract addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract addNewFrom()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTMarker;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTGraphicFrame;
.end method

.method public abstract addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTGroupShape;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTPicture;
.end method

.method public abstract addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTShape;
.end method

.method public abstract getCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnector;
.end method

.method public abstract getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTMarker;
.end method

.method public abstract getGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTGraphicFrame;
.end method

.method public abstract getGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTGroupShape;
.end method

.method public abstract getPic()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTPicture;
.end method

.method public abstract getSp()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTShape;
.end method

.method public abstract isSetCxnSp()Z
.end method

.method public abstract isSetGraphicFrame()Z
.end method

.method public abstract isSetGrpSp()Z
.end method

.method public abstract isSetPic()Z
.end method

.method public abstract isSetSp()Z
.end method

.method public abstract setCxnSp(Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnector;)V
.end method

.method public abstract setExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
.end method

.method public abstract setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTMarker;)V
.end method

.method public abstract setGraphicFrame(Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTGraphicFrame;)V
.end method

.method public abstract setGrpSp(Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTGroupShape;)V
.end method

.method public abstract setPic(Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTPicture;)V
.end method

.method public abstract setSp(Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTShape;)V
.end method

.method public abstract unsetCxnSp()V
.end method

.method public abstract unsetGraphicFrame()V
.end method

.method public abstract unsetGrpSp()V
.end method

.method public abstract unsetPic()V
.end method

.method public abstract unsetSp()V
.end method
