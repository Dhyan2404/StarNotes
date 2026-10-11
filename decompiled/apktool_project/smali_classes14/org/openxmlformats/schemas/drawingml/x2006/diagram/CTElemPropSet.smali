.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTElemPropSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTElemPropSet;",
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

    const-string v2, "ctelempropset806btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTElemPropSet;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTElemPropSet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPresLayoutVars()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;
.end method

.method public abstract addNewStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract getCoherent3DOff()Z
.end method

.method public abstract getCsCatId()Ljava/lang/String;
.end method

.method public abstract getCsTypeId()Ljava/lang/String;
.end method

.method public abstract getCustAng()I
.end method

.method public abstract getCustFlipHor()Z
.end method

.method public abstract getCustFlipVert()Z
.end method

.method public abstract getCustLinFactNeighborX()Ljava/lang/Object;
.end method

.method public abstract getCustLinFactNeighborY()Ljava/lang/Object;
.end method

.method public abstract getCustLinFactX()Ljava/lang/Object;
.end method

.method public abstract getCustLinFactY()Ljava/lang/Object;
.end method

.method public abstract getCustRadScaleInc()Ljava/lang/Object;
.end method

.method public abstract getCustRadScaleRad()Ljava/lang/Object;
.end method

.method public abstract getCustScaleX()Ljava/lang/Object;
.end method

.method public abstract getCustScaleY()Ljava/lang/Object;
.end method

.method public abstract getCustSzX()I
.end method

.method public abstract getCustSzY()I
.end method

.method public abstract getCustT()Z
.end method

.method public abstract getLoCatId()Ljava/lang/String;
.end method

.method public abstract getLoTypeId()Ljava/lang/String;
.end method

.method public abstract getPhldr()Z
.end method

.method public abstract getPhldrT()Ljava/lang/String;
.end method

.method public abstract getPresAssocID()Ljava/lang/Object;
.end method

.method public abstract getPresLayoutVars()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;
.end method

.method public abstract getPresName()Ljava/lang/String;
.end method

.method public abstract getPresStyleCnt()I
.end method

.method public abstract getPresStyleIdx()I
.end method

.method public abstract getPresStyleLbl()Ljava/lang/String;
.end method

.method public abstract getQsCatId()Ljava/lang/String;
.end method

.method public abstract getQsTypeId()Ljava/lang/String;
.end method

.method public abstract getStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract isSetCoherent3DOff()Z
.end method

.method public abstract isSetCsCatId()Z
.end method

.method public abstract isSetCsTypeId()Z
.end method

.method public abstract isSetCustAng()Z
.end method

.method public abstract isSetCustFlipHor()Z
.end method

.method public abstract isSetCustFlipVert()Z
.end method

.method public abstract isSetCustLinFactNeighborX()Z
.end method

.method public abstract isSetCustLinFactNeighborY()Z
.end method

.method public abstract isSetCustLinFactX()Z
.end method

.method public abstract isSetCustLinFactY()Z
.end method

.method public abstract isSetCustRadScaleInc()Z
.end method

.method public abstract isSetCustRadScaleRad()Z
.end method

.method public abstract isSetCustScaleX()Z
.end method

.method public abstract isSetCustScaleY()Z
.end method

.method public abstract isSetCustSzX()Z
.end method

.method public abstract isSetCustSzY()Z
.end method

.method public abstract isSetCustT()Z
.end method

.method public abstract isSetLoCatId()Z
.end method

.method public abstract isSetLoTypeId()Z
.end method

.method public abstract isSetPhldr()Z
.end method

.method public abstract isSetPhldrT()Z
.end method

.method public abstract isSetPresAssocID()Z
.end method

.method public abstract isSetPresLayoutVars()Z
.end method

.method public abstract isSetPresName()Z
.end method

.method public abstract isSetPresStyleCnt()Z
.end method

.method public abstract isSetPresStyleIdx()Z
.end method

.method public abstract isSetPresStyleLbl()Z
.end method

.method public abstract isSetQsCatId()Z
.end method

.method public abstract isSetQsTypeId()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract setCoherent3DOff(Z)V
.end method

.method public abstract setCsCatId(Ljava/lang/String;)V
.end method

.method public abstract setCsTypeId(Ljava/lang/String;)V
.end method

.method public abstract setCustAng(I)V
.end method

.method public abstract setCustFlipHor(Z)V
.end method

.method public abstract setCustFlipVert(Z)V
.end method

.method public abstract setCustLinFactNeighborX(Ljava/lang/Object;)V
.end method

.method public abstract setCustLinFactNeighborY(Ljava/lang/Object;)V
.end method

.method public abstract setCustLinFactX(Ljava/lang/Object;)V
.end method

.method public abstract setCustLinFactY(Ljava/lang/Object;)V
.end method

.method public abstract setCustRadScaleInc(Ljava/lang/Object;)V
.end method

.method public abstract setCustRadScaleRad(Ljava/lang/Object;)V
.end method

.method public abstract setCustScaleX(Ljava/lang/Object;)V
.end method

.method public abstract setCustScaleY(Ljava/lang/Object;)V
.end method

.method public abstract setCustSzX(I)V
.end method

.method public abstract setCustSzY(I)V
.end method

.method public abstract setCustT(Z)V
.end method

.method public abstract setLoCatId(Ljava/lang/String;)V
.end method

.method public abstract setLoTypeId(Ljava/lang/String;)V
.end method

.method public abstract setPhldr(Z)V
.end method

.method public abstract setPhldrT(Ljava/lang/String;)V
.end method

.method public abstract setPresAssocID(Ljava/lang/Object;)V
.end method

.method public abstract setPresLayoutVars(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;)V
.end method

.method public abstract setPresName(Ljava/lang/String;)V
.end method

.method public abstract setPresStyleCnt(I)V
.end method

.method public abstract setPresStyleIdx(I)V
.end method

.method public abstract setPresStyleLbl(Ljava/lang/String;)V
.end method

.method public abstract setQsCatId(Ljava/lang/String;)V
.end method

.method public abstract setQsTypeId(Ljava/lang/String;)V
.end method

.method public abstract setStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;)V
.end method

.method public abstract unsetCoherent3DOff()V
.end method

.method public abstract unsetCsCatId()V
.end method

.method public abstract unsetCsTypeId()V
.end method

.method public abstract unsetCustAng()V
.end method

.method public abstract unsetCustFlipHor()V
.end method

.method public abstract unsetCustFlipVert()V
.end method

.method public abstract unsetCustLinFactNeighborX()V
.end method

.method public abstract unsetCustLinFactNeighborY()V
.end method

.method public abstract unsetCustLinFactX()V
.end method

.method public abstract unsetCustLinFactY()V
.end method

.method public abstract unsetCustRadScaleInc()V
.end method

.method public abstract unsetCustRadScaleRad()V
.end method

.method public abstract unsetCustScaleX()V
.end method

.method public abstract unsetCustScaleY()V
.end method

.method public abstract unsetCustSzX()V
.end method

.method public abstract unsetCustSzY()V
.end method

.method public abstract unsetCustT()V
.end method

.method public abstract unsetLoCatId()V
.end method

.method public abstract unsetLoTypeId()V
.end method

.method public abstract unsetPhldr()V
.end method

.method public abstract unsetPhldrT()V
.end method

.method public abstract unsetPresAssocID()V
.end method

.method public abstract unsetPresLayoutVars()V
.end method

.method public abstract unsetPresName()V
.end method

.method public abstract unsetPresStyleCnt()V
.end method

.method public abstract unsetPresStyleIdx()V
.end method

.method public abstract unsetPresStyleLbl()V
.end method

.method public abstract unsetQsCatId()V
.end method

.method public abstract unsetQsTypeId()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract xgetCoherent3DOff()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCsCatId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCsTypeId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCustAng()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetCustFlipHor()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCustFlipVert()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCustLinFactNeighborX()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustLinFactNeighborY()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustLinFactX()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustLinFactY()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustRadScaleInc()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustRadScaleRad()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustScaleX()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustScaleY()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;
.end method

.method public abstract xgetCustSzX()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetCustSzY()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetCustT()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLoCatId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLoTypeId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPhldr()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPhldrT()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPresAssocID()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetPresName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPresStyleCnt()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetPresStyleIdx()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetPresStyleLbl()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetQsCatId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetQsTypeId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetCoherent3DOff(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCsCatId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCsTypeId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCustAng(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetCustFlipHor(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCustFlipVert(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCustLinFactNeighborX(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustLinFactNeighborY(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustLinFactX(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustLinFactY(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustRadScaleInc(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustRadScaleRad(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustScaleX(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustScaleY(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPrSetCustVal;)V
.end method

.method public abstract xsetCustSzX(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetCustSzY(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetCustT(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLoCatId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLoTypeId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPhldr(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPhldrT(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPresAssocID(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetPresName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPresStyleCnt(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetPresStyleIdx(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetPresStyleLbl(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetQsCatId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetQsTypeId(Lorg/apache/xmlbeans/XmlString;)V
.end method
