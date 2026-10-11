.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnits;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnits;",
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

    const-string v2, "ctdispunitsaa99type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnits;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnits;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBuiltInUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBuiltInUnit;
.end method

.method public abstract addNewCustUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewDispUnitsLbl()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnitsLbl;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getBuiltInUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBuiltInUnit;
.end method

.method public abstract getCustUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getDispUnitsLbl()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnitsLbl;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract isSetBuiltInUnit()Z
.end method

.method public abstract isSetCustUnit()Z
.end method

.method public abstract isSetDispUnitsLbl()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setBuiltInUnit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBuiltInUnit;)V
.end method

.method public abstract setCustUnit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setDispUnitsLbl(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnitsLbl;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract unsetBuiltInUnit()V
.end method

.method public abstract unsetCustUnit()V
.end method

.method public abstract unsetDispUnitsLbl()V
.end method

.method public abstract unsetExtLst()V
.end method
