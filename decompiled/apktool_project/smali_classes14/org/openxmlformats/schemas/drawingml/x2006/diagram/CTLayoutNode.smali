.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;",
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

    const-string v2, "ctlayoutnodecd25type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;->type:Lorg/apache/xmlbeans/SchemaType;

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

.method public abstract addNewVarLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;
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

.method public abstract getChOrder()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STChildOrderType$Enum;
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

.method public abstract getMoveWith()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
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

.method public abstract getStyleLbl()Ljava/lang/String;
.end method

.method public abstract getVarLstArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;
.end method

.method public abstract getVarLstArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;
.end method

.method public abstract getVarLstList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;",
            ">;"
        }
    .end annotation
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

.method public abstract insertNewVarLst(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;
.end method

.method public abstract isSetChOrder()Z
.end method

.method public abstract isSetMoveWith()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetStyleLbl()Z
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

.method public abstract removeVarLst(I)V
.end method

.method public abstract setAlgArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;)V
.end method

.method public abstract setAlgArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;)V
.end method

.method public abstract setChOrder(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STChildOrderType$Enum;)V
.end method

.method public abstract setChooseArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;)V
.end method

.method public abstract setChooseArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;)V
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

.method public abstract setLayoutNodeArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;)V
.end method

.method public abstract setLayoutNodeArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutNode;)V
.end method

.method public abstract setMoveWith(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPresOfArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;)V
.end method

.method public abstract setPresOfArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPresentationOf;)V
.end method

.method public abstract setRuleLstArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;)V
.end method

.method public abstract setRuleLstArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRules;)V
.end method

.method public abstract setShapeArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;)V
.end method

.method public abstract setShapeArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;)V
.end method

.method public abstract setStyleLbl(Ljava/lang/String;)V
.end method

.method public abstract setVarLstArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;)V
.end method

.method public abstract setVarLstArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;)V
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

.method public abstract sizeOfVarLstArray()I
.end method

.method public abstract unsetChOrder()V
.end method

.method public abstract unsetMoveWith()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetStyleLbl()V
.end method

.method public abstract xgetChOrder()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STChildOrderType;
.end method

.method public abstract xgetMoveWith()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetStyleLbl()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetChOrder(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STChildOrderType;)V
.end method

.method public abstract xsetMoveWith(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetStyleLbl(Lorg/apache/xmlbeans/XmlString;)V
.end method
