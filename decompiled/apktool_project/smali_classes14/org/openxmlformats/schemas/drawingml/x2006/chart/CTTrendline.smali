.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;",
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

    const-string v2, "cttrendlinec5f5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBackward()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewDispEq()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewDispRSqr()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewForward()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewIntercept()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrder;
.end method

.method public abstract addNewPeriod()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPeriod;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewTrendlineLbl()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendlineLbl;
.end method

.method public abstract addNewTrendlineType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendlineType;
.end method

.method public abstract getBackward()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getDispEq()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getDispRSqr()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getForward()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getIntercept()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrder;
.end method

.method public abstract getPeriod()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPeriod;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getTrendlineLbl()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendlineLbl;
.end method

.method public abstract getTrendlineType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendlineType;
.end method

.method public abstract isSetBackward()Z
.end method

.method public abstract isSetDispEq()Z
.end method

.method public abstract isSetDispRSqr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetForward()Z
.end method

.method public abstract isSetIntercept()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetOrder()Z
.end method

.method public abstract isSetPeriod()Z
.end method

.method public abstract isSetSpPr()Z
.end method

.method public abstract isSetTrendlineLbl()Z
.end method

.method public abstract setBackward(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setDispEq(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setDispRSqr(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setForward(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setIntercept(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOrder(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrder;)V
.end method

.method public abstract setPeriod(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPeriod;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setTrendlineLbl(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendlineLbl;)V
.end method

.method public abstract setTrendlineType(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendlineType;)V
.end method

.method public abstract unsetBackward()V
.end method

.method public abstract unsetDispEq()V
.end method

.method public abstract unsetDispRSqr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetForward()V
.end method

.method public abstract unsetIntercept()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetOrder()V
.end method

.method public abstract unsetPeriod()V
.end method

.method public abstract unsetSpPr()V
.end method

.method public abstract unsetTrendlineLbl()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
