.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;",
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

    const-string v2, "ctpresentationof4100type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getAxis()Ljava/util/List;
.end method

.method public abstract getCnt()Ljava/util/List;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getHideLastTrans()Ljava/util/List;
.end method

.method public abstract getPtType()Ljava/util/List;
.end method

.method public abstract getSt()Ljava/util/List;
.end method

.method public abstract getStep()Ljava/util/List;
.end method

.method public abstract isSetAxis()Z
.end method

.method public abstract isSetCnt()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHideLastTrans()Z
.end method

.method public abstract isSetPtType()Z
.end method

.method public abstract isSetSt()Z
.end method

.method public abstract isSetStep()Z
.end method

.method public abstract setAxis(Ljava/util/List;)V
.end method

.method public abstract setCnt(Ljava/util/List;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setHideLastTrans(Ljava/util/List;)V
.end method

.method public abstract setPtType(Ljava/util/List;)V
.end method

.method public abstract setSt(Ljava/util/List;)V
.end method

.method public abstract setStep(Ljava/util/List;)V
.end method

.method public abstract unsetAxis()V
.end method

.method public abstract unsetCnt()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHideLastTrans()V
.end method

.method public abstract unsetPtType()V
.end method

.method public abstract unsetSt()V
.end method

.method public abstract unsetStep()V
.end method

.method public abstract xgetAxis()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisTypes;
.end method

.method public abstract xgetCnt()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STUnsignedInts;
.end method

.method public abstract xgetHideLastTrans()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBooleans;
.end method

.method public abstract xgetPtType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementTypes;
.end method

.method public abstract xgetSt()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;
.end method

.method public abstract xgetStep()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;
.end method

.method public abstract xsetAxis(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisTypes;)V
.end method

.method public abstract xsetCnt(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STUnsignedInts;)V
.end method

.method public abstract xsetHideLastTrans(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBooleans;)V
.end method

.method public abstract xsetPtType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementTypes;)V
.end method

.method public abstract xsetSt(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;)V
.end method

.method public abstract xsetStep(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;)V
.end method
