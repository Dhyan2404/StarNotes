package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLNextActionType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLPreviousActionType;

/* loaded from: classes14.dex */
public interface CTTLTimeNodeSequence extends XmlObject {
    public static final DocumentFactory<CTTLTimeNodeSequence> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTimeNodeSequence> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltimenodesequenced31dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonTimeNodeData addNewCTn();

    CTTLTimeConditionList addNewNextCondLst();

    CTTLTimeConditionList addNewPrevCondLst();

    CTTLCommonTimeNodeData getCTn();

    boolean getConcurrent();

    STTLNextActionType.Enum getNextAc();

    CTTLTimeConditionList getNextCondLst();

    STTLPreviousActionType.Enum getPrevAc();

    CTTLTimeConditionList getPrevCondLst();

    boolean isSetConcurrent();

    boolean isSetNextAc();

    boolean isSetNextCondLst();

    boolean isSetPrevAc();

    boolean isSetPrevCondLst();

    void setCTn(CTTLCommonTimeNodeData cTTLCommonTimeNodeData);

    void setConcurrent(boolean z);

    void setNextAc(STTLNextActionType.Enum r1);

    void setNextCondLst(CTTLTimeConditionList cTTLTimeConditionList);

    void setPrevAc(STTLPreviousActionType.Enum r1);

    void setPrevCondLst(CTTLTimeConditionList cTTLTimeConditionList);

    void unsetConcurrent();

    void unsetNextAc();

    void unsetNextCondLst();

    void unsetPrevAc();

    void unsetPrevCondLst();

    XmlBoolean xgetConcurrent();

    STTLNextActionType xgetNextAc();

    STTLPreviousActionType xgetPrevAc();

    void xsetConcurrent(XmlBoolean xmlBoolean);

    void xsetNextAc(STTLNextActionType sTTLNextActionType);

    void xsetPrevAc(STTLPreviousActionType sTTLPreviousActionType);
}
