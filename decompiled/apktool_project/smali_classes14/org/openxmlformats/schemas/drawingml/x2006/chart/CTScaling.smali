.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;",
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

    const-string v2, "ctscaling1dfftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;
.end method

.method public abstract addNewMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;
.end method

.method public abstract getMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetLogBase()Z
.end method

.method public abstract isSetMax()Z
.end method

.method public abstract isSetMin()Z
.end method

.method public abstract isSetOrientation()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setLogBase(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;)V
.end method

.method public abstract setMax(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setMin(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setOrientation(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetLogBase()V
.end method

.method public abstract unsetMax()V
.end method

.method public abstract unsetMin()V
.end method

.method public abstract unsetOrientation()V
.end method
