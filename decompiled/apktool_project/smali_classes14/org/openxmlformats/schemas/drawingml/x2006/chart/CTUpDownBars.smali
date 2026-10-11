.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;",
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

    const-string v2, "ctupdownbarsd79ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDownBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBar;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewGapWidth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;
.end method

.method public abstract addNewUpBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBar;
.end method

.method public abstract getDownBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBar;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getGapWidth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;
.end method

.method public abstract getUpBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBar;
.end method

.method public abstract isSetDownBars()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGapWidth()Z
.end method

.method public abstract isSetUpBars()Z
.end method

.method public abstract setDownBars(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBar;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setGapWidth(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;)V
.end method

.method public abstract setUpBars(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBar;)V
.end method

.method public abstract unsetDownBars()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGapWidth()V
.end method

.method public abstract unsetUpBars()V
.end method
