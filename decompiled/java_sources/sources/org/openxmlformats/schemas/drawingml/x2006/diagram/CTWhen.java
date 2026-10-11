package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STFunctionOperator;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STFunctionType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STVariableType;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTWhen extends XmlObject {
    public static final DocumentFactory<CTWhen> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWhen> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwhenc237type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAlgorithm addNewAlg();

    CTChoose addNewChoose();

    CTConstraints addNewConstrLst();

    CTOfficeArtExtensionList addNewExtLst();

    CTForEach addNewForEach();

    CTLayoutNode addNewLayoutNode();

    CTPresentationOf addNewPresOf();

    CTRules addNewRuleLst();

    CTShape addNewShape();

    CTAlgorithm getAlgArray(int i);

    CTAlgorithm[] getAlgArray();

    List<CTAlgorithm> getAlgList();

    STVariableType.Enum getArg();

    List getAxis();

    CTChoose getChooseArray(int i);

    CTChoose[] getChooseArray();

    List<CTChoose> getChooseList();

    List getCnt();

    CTConstraints getConstrLstArray(int i);

    CTConstraints[] getConstrLstArray();

    List<CTConstraints> getConstrLstList();

    CTOfficeArtExtensionList getExtLstArray(int i);

    CTOfficeArtExtensionList[] getExtLstArray();

    List<CTOfficeArtExtensionList> getExtLstList();

    CTForEach getForEachArray(int i);

    CTForEach[] getForEachArray();

    List<CTForEach> getForEachList();

    STFunctionType.Enum getFunc();

    List getHideLastTrans();

    CTLayoutNode getLayoutNodeArray(int i);

    CTLayoutNode[] getLayoutNodeArray();

    List<CTLayoutNode> getLayoutNodeList();

    String getName();

    STFunctionOperator.Enum getOp();

    CTPresentationOf getPresOfArray(int i);

    CTPresentationOf[] getPresOfArray();

    List<CTPresentationOf> getPresOfList();

    List getPtType();

    CTRules getRuleLstArray(int i);

    CTRules[] getRuleLstArray();

    List<CTRules> getRuleLstList();

    CTShape getShapeArray(int i);

    CTShape[] getShapeArray();

    List<CTShape> getShapeList();

    List getSt();

    List getStep();

    Object getVal();

    CTAlgorithm insertNewAlg(int i);

    CTChoose insertNewChoose(int i);

    CTConstraints insertNewConstrLst(int i);

    CTOfficeArtExtensionList insertNewExtLst(int i);

    CTForEach insertNewForEach(int i);

    CTLayoutNode insertNewLayoutNode(int i);

    CTPresentationOf insertNewPresOf(int i);

    CTRules insertNewRuleLst(int i);

    CTShape insertNewShape(int i);

    boolean isSetArg();

    boolean isSetAxis();

    boolean isSetCnt();

    boolean isSetHideLastTrans();

    boolean isSetName();

    boolean isSetPtType();

    boolean isSetSt();

    boolean isSetStep();

    void removeAlg(int i);

    void removeChoose(int i);

    void removeConstrLst(int i);

    void removeExtLst(int i);

    void removeForEach(int i);

    void removeLayoutNode(int i);

    void removePresOf(int i);

    void removeRuleLst(int i);

    void removeShape(int i);

    void setAlgArray(int i, CTAlgorithm cTAlgorithm);

    void setAlgArray(CTAlgorithm[] cTAlgorithmArr);

    void setArg(STVariableType.Enum r1);

    void setAxis(List list);

    void setChooseArray(int i, CTChoose cTChoose);

    void setChooseArray(CTChoose[] cTChooseArr);

    void setCnt(List list);

    void setConstrLstArray(int i, CTConstraints cTConstraints);

    void setConstrLstArray(CTConstraints[] cTConstraintsArr);

    void setExtLstArray(int i, CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setExtLstArray(CTOfficeArtExtensionList[] cTOfficeArtExtensionListArr);

    void setForEachArray(int i, CTForEach cTForEach);

    void setForEachArray(CTForEach[] cTForEachArr);

    void setFunc(STFunctionType.Enum r1);

    void setHideLastTrans(List list);

    void setLayoutNodeArray(int i, CTLayoutNode cTLayoutNode);

    void setLayoutNodeArray(CTLayoutNode[] cTLayoutNodeArr);

    void setName(String str);

    void setOp(STFunctionOperator.Enum r1);

    void setPresOfArray(int i, CTPresentationOf cTPresentationOf);

    void setPresOfArray(CTPresentationOf[] cTPresentationOfArr);

    void setPtType(List list);

    void setRuleLstArray(int i, CTRules cTRules);

    void setRuleLstArray(CTRules[] cTRulesArr);

    void setShapeArray(int i, CTShape cTShape);

    void setShapeArray(CTShape[] cTShapeArr);

    void setSt(List list);

    void setStep(List list);

    void setVal(Object obj);

    int sizeOfAlgArray();

    int sizeOfChooseArray();

    int sizeOfConstrLstArray();

    int sizeOfExtLstArray();

    int sizeOfForEachArray();

    int sizeOfLayoutNodeArray();

    int sizeOfPresOfArray();

    int sizeOfRuleLstArray();

    int sizeOfShapeArray();

    void unsetArg();

    void unsetAxis();

    void unsetCnt();

    void unsetHideLastTrans();

    void unsetName();

    void unsetPtType();

    void unsetSt();

    void unsetStep();

    STFunctionArgument xgetArg();

    STAxisTypes xgetAxis();

    STUnsignedInts xgetCnt();

    STFunctionType xgetFunc();

    STBooleans xgetHideLastTrans();

    XmlString xgetName();

    STFunctionOperator xgetOp();

    STElementTypes xgetPtType();

    STInts xgetSt();

    STInts xgetStep();

    STFunctionValue xgetVal();

    void xsetArg(STFunctionArgument sTFunctionArgument);

    void xsetAxis(STAxisTypes sTAxisTypes);

    void xsetCnt(STUnsignedInts sTUnsignedInts);

    void xsetFunc(STFunctionType sTFunctionType);

    void xsetHideLastTrans(STBooleans sTBooleans);

    void xsetName(XmlString xmlString);

    void xsetOp(STFunctionOperator sTFunctionOperator);

    void xsetPtType(STElementTypes sTElementTypes);

    void xsetSt(STInts sTInts);

    void xsetStep(STInts sTInts);

    void xsetVal(STFunctionValue sTFunctionValue);
}
