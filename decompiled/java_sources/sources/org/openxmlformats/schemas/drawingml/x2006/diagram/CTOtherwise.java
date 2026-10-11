package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTOtherwise extends XmlObject {
    public static final DocumentFactory<CTOtherwise> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOtherwise> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctotherwisee1e7type");
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

    CTChoose getChooseArray(int i);

    CTChoose[] getChooseArray();

    List<CTChoose> getChooseList();

    CTConstraints getConstrLstArray(int i);

    CTConstraints[] getConstrLstArray();

    List<CTConstraints> getConstrLstList();

    CTOfficeArtExtensionList getExtLstArray(int i);

    CTOfficeArtExtensionList[] getExtLstArray();

    List<CTOfficeArtExtensionList> getExtLstList();

    CTForEach getForEachArray(int i);

    CTForEach[] getForEachArray();

    List<CTForEach> getForEachList();

    CTLayoutNode getLayoutNodeArray(int i);

    CTLayoutNode[] getLayoutNodeArray();

    List<CTLayoutNode> getLayoutNodeList();

    String getName();

    CTPresentationOf getPresOfArray(int i);

    CTPresentationOf[] getPresOfArray();

    List<CTPresentationOf> getPresOfList();

    CTRules getRuleLstArray(int i);

    CTRules[] getRuleLstArray();

    List<CTRules> getRuleLstList();

    CTShape getShapeArray(int i);

    CTShape[] getShapeArray();

    List<CTShape> getShapeList();

    CTAlgorithm insertNewAlg(int i);

    CTChoose insertNewChoose(int i);

    CTConstraints insertNewConstrLst(int i);

    CTOfficeArtExtensionList insertNewExtLst(int i);

    CTForEach insertNewForEach(int i);

    CTLayoutNode insertNewLayoutNode(int i);

    CTPresentationOf insertNewPresOf(int i);

    CTRules insertNewRuleLst(int i);

    CTShape insertNewShape(int i);

    boolean isSetName();

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

    void setChooseArray(int i, CTChoose cTChoose);

    void setChooseArray(CTChoose[] cTChooseArr);

    void setConstrLstArray(int i, CTConstraints cTConstraints);

    void setConstrLstArray(CTConstraints[] cTConstraintsArr);

    void setExtLstArray(int i, CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setExtLstArray(CTOfficeArtExtensionList[] cTOfficeArtExtensionListArr);

    void setForEachArray(int i, CTForEach cTForEach);

    void setForEachArray(CTForEach[] cTForEachArr);

    void setLayoutNodeArray(int i, CTLayoutNode cTLayoutNode);

    void setLayoutNodeArray(CTLayoutNode[] cTLayoutNodeArr);

    void setName(String str);

    void setPresOfArray(int i, CTPresentationOf cTPresentationOf);

    void setPresOfArray(CTPresentationOf[] cTPresentationOfArr);

    void setRuleLstArray(int i, CTRules cTRules);

    void setRuleLstArray(CTRules[] cTRulesArr);

    void setShapeArray(int i, CTShape cTShape);

    void setShapeArray(CTShape[] cTShapeArr);

    int sizeOfAlgArray();

    int sizeOfChooseArray();

    int sizeOfConstrLstArray();

    int sizeOfExtLstArray();

    int sizeOfForEachArray();

    int sizeOfLayoutNodeArray();

    int sizeOfPresOfArray();

    int sizeOfRuleLstArray();

    int sizeOfShapeArray();

    void unsetName();

    XmlString xgetName();

    void xsetName(XmlString xmlString);
}
