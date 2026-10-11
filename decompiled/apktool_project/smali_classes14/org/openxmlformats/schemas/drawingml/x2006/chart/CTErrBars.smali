.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;",
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

    const-string v2, "cterrbarsa201type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewErrBarType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;
.end method

.method public abstract addNewErrDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;
.end method

.method public abstract addNewErrValType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewMinus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
.end method

.method public abstract addNewNoEndCap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewPlus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getErrBarType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;
.end method

.method public abstract getErrDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;
.end method

.method public abstract getErrValType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getMinus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
.end method

.method public abstract getNoEndCap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getPlus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract isSetErrDir()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMinus()Z
.end method

.method public abstract isSetNoEndCap()Z
.end method

.method public abstract isSetPlus()Z
.end method

.method public abstract isSetSpPr()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setErrBarType(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;)V
.end method

.method public abstract setErrDir(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;)V
.end method

.method public abstract setErrValType(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setMinus(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
.end method

.method public abstract setNoEndCap(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setPlus(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract unsetErrDir()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMinus()V
.end method

.method public abstract unsetNoEndCap()V
.end method

.method public abstract unsetPlus()V
.end method

.method public abstract unsetSpPr()V
.end method

.method public abstract unsetVal()V
.end method
