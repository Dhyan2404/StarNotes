.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureOptions;",
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

    const-string v2, "ctpictureoptions493ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureOptions;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureOptions;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewApplyToEnd()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewApplyToFront()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewApplyToSides()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewPictureFormat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureFormat;
.end method

.method public abstract addNewPictureStackUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureStackUnit;
.end method

.method public abstract getApplyToEnd()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getApplyToFront()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getApplyToSides()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getPictureFormat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureFormat;
.end method

.method public abstract getPictureStackUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureStackUnit;
.end method

.method public abstract isSetApplyToEnd()Z
.end method

.method public abstract isSetApplyToFront()Z
.end method

.method public abstract isSetApplyToSides()Z
.end method

.method public abstract isSetPictureFormat()Z
.end method

.method public abstract isSetPictureStackUnit()Z
.end method

.method public abstract setApplyToEnd(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setApplyToFront(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setApplyToSides(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setPictureFormat(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureFormat;)V
.end method

.method public abstract setPictureStackUnit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPictureStackUnit;)V
.end method

.method public abstract unsetApplyToEnd()V
.end method

.method public abstract unsetApplyToFront()V
.end method

.method public abstract unsetApplyToSides()V
.end method

.method public abstract unsetPictureFormat()V
.end method

.method public abstract unsetPictureStackUnit()V
.end method
