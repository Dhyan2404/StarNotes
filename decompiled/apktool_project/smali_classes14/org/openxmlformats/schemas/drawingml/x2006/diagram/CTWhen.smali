.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;",
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

    const-string v2, "ctwhenc237type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAlg()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;
.end method

.method public abstract addNewChoose()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;
.end method

.method public abstract addNewConstrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTConstraints;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewForEach()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTForEach;
.end method

.method public abstract addNewLayoutNode()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;
.end method

.method public abstract addNewPresOf()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;
.end method

.method public abstract addNewRuleLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;
.end method

.method public abstract addNewShape()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;
.end method

.method public abstract getAlgArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;
.end method

.method public abstract getAlgArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;
.end method

.method public abstract getAlgList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArg()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;
.end method

.method public abstract getAxis()Ljava/util/List;
.end method

.method public abstract getChooseArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;
.end method

.method public abstract getChooseArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;
.end method

.method public abstract getChooseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCnt()Ljava/util/List;
.end method

.method public abstract getConstrLstArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTConstraints;
.end method

.method public abstract getConstrLstArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTConstraints;
.end method

.method public abstract getConstrLstList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTConstraints;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtLstArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtLstArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtLstList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForEachArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTForEach;
.end method

.method public abstract getForEachArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTForEach;
.end method

.method public abstract getForEachList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTForEach;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFunc()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;
.end method

.method public abstract getHideLastTrans()Ljava/util/List;
.end method

.method public abstract getLayoutNodeArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;
.end method

.method public abstract getLayoutNodeArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;
.end method

.method public abstract getLayoutNodeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOp()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;
.end method

.method public abstract getPresOfArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;
.end method

.method public abstract getPresOfArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;
.end method

.method public abstract getPresOfList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPtType()Ljava/util/List;
.end method

.method public abstract getRuleLstArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;
.end method

.method public abstract getRuleLstArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;
.end method

.method public abstract getRuleLstList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShapeArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;
.end method

.method public abstract getShapeArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;
.end method

.method public abstract getShapeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSt()Ljava/util/List;
.end method

.method public abstract getStep()Ljava/util/List;
.end method

.method public abstract getVal()Ljava/lang/Object;
.end method

.method public abstract insertNewAlg(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;
.end method

.method public abstract insertNewChoose(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;
.end method

.method public abstract insertNewConstrLst(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTConstraints;
.end method

.method public abstract insertNewExtLst(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract insertNewForEach(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTForEach;
.end method

.method public abstract insertNewLayoutNode(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;
.end method

.method public abstract insertNewPresOf(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;
.end method

.method public abstract insertNewRuleLst(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;
.end method

.method public abstract insertNewShape(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;
.end method

.method public abstract isSetArg()Z
.end method

.method public abstract isSetAxis()Z
.end method

.method public abstract isSetCnt()Z
.end method

.method public abstract isSetHideLastTrans()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetPtType()Z
.end method

.method public abstract isSetSt()Z
.end method

.method public abstract isSetStep()Z
.end method

.method public abstract removeAlg(I)V
.end method

.method public abstract removeChoose(I)V
.end method

.method public abstract removeConstrLst(I)V
.end method

.method public abstract removeExtLst(I)V
.end method

.method public abstract removeForEach(I)V
.end method

.method public abstract removeLayoutNode(I)V
.end method

.method public abstract removePresOf(I)V
.end method

.method public abstract removeRuleLst(I)V
.end method

.method public abstract removeShape(I)V
.end method

.method public abstract setAlgArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;)V
.end method

.method public abstract setAlgArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;)V
.end method

.method public abstract setArg(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;)V
.end method

.method public abstract setAxis(Ljava/util/List;)V
.end method

.method public abstract setChooseArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;)V
.end method

.method public abstract setChooseArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;)V
.end method

.method public abstract setCnt(Ljava/util/List;)V
.end method

.method public abstract setConstrLstArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTConstraints;)V
.end method

.method public abstract setConstrLstArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTConstraints;)V
.end method

.method public abstract setExtLstArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setExtLstArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setForEachArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTForEach;)V
.end method

.method public abstract setForEachArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTForEach;)V
.end method

.method public abstract setFunc(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;)V
.end method

.method public abstract setHideLastTrans(Ljava/util/List;)V
.end method

.method public abstract setLayoutNodeArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;)V
.end method

.method public abstract setLayoutNodeArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOp(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;)V
.end method

.method public abstract setPresOfArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;)V
.end method

.method public abstract setPresOfArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;)V
.end method

.method public abstract setPtType(Ljava/util/List;)V
.end method

.method public abstract setRuleLstArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;)V
.end method

.method public abstract setRuleLstArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;)V
.end method

.method public abstract setShapeArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;)V
.end method

.method public abstract setShapeArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;)V
.end method

.method public abstract setSt(Ljava/util/List;)V
.end method

.method public abstract setStep(Ljava/util/List;)V
.end method

.method public abstract setVal(Ljava/lang/Object;)V
.end method

.method public abstract sizeOfAlgArray()I
.end method

.method public abstract sizeOfChooseArray()I
.end method

.method public abstract sizeOfConstrLstArray()I
.end method

.method public abstract sizeOfExtLstArray()I
.end method

.method public abstract sizeOfForEachArray()I
.end method

.method public abstract sizeOfLayoutNodeArray()I
.end method

.method public abstract sizeOfPresOfArray()I
.end method

.method public abstract sizeOfRuleLstArray()I
.end method

.method public abstract sizeOfShapeArray()I
.end method

.method public abstract unsetArg()V
.end method

.method public abstract unsetAxis()V
.end method

.method public abstract unsetCnt()V
.end method

.method public abstract unsetHideLastTrans()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetPtType()V
.end method

.method public abstract unsetSt()V
.end method

.method public abstract unsetStep()V
.end method

.method public abstract xgetArg()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionArgument;
.end method

.method public abstract xgetAxis()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisTypes;
.end method

.method public abstract xgetCnt()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STUnsignedInts;
.end method

.method public abstract xgetFunc()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;
.end method

.method public abstract xgetHideLastTrans()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBooleans;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOp()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;
.end method

.method public abstract xgetPtType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementTypes;
.end method

.method public abstract xgetSt()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;
.end method

.method public abstract xgetStep()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionValue;
.end method

.method public abstract xsetArg(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionArgument;)V
.end method

.method public abstract xsetAxis(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisTypes;)V
.end method

.method public abstract xsetCnt(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STUnsignedInts;)V
.end method

.method public abstract xsetFunc(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;)V
.end method

.method public abstract xsetHideLastTrans(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBooleans;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOp(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;)V
.end method

.method public abstract xsetPtType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementTypes;)V
.end method

.method public abstract xsetSt(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;)V
.end method

.method public abstract xsetStep(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STInts;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionValue;)V
.end method
